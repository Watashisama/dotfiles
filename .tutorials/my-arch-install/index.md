# How I install arch

## Step 1. The ISO

I install the arch iso from this [link](https://mirrors.mit.edu/archlinux/iso/2026.05.01/archlinux-2026.05.01-x86_64.iso) and the sig from this [link](https://mirrors.mit.edu/archlinux/iso/2026.05.01/archlinux-2026.05.01-x86_64.iso.sig)

## Step 2. Verifing

Arch wiki
> [!NOTE]
> It is recommended to verify the image signature before use, especially when
> downloading from an HTTP mirror, where downloads are generally prone to be
> intercepted to serve malicious images.

## Step 3. Creating the install-media


```zsh
lsblk -f # To see all the block(blk) devices, ignore `lo`,... 
```
After that, look for something like sda, sdb, sd[x], or the appropriate external media.

With the install iso file, flash it with `dd`

```zsh
sudo dd if=/path/to/iso/file of=/dev/external-media bs=4M status=progress
```

Wait for it to finish, all exsisting data will be erased*

## Step 4. Booting into the install-media

Restart (or shutdown and then start) you laptop/desktop/etc and enter the bios.
From there change the boot order to make the usb appear on top.
Also disable secure-boot and allow booting from external media(if present).

## Step 5. The Install 

If the font is small due to high HiDPI screen, run
```zsh
setfont ter-132b
```

### Step 5.01. Connecting to internet

I recommend using ethernet(or usb tethering on andriod), It's fast and easy to setup

If not available, wifi can be use

Run the following
```zsh
iwctl device list # To list all the wifis
iwctl station $name_of_station scan # To scan
iwctl station $name_of_station get-networks
iwctl station $name_of_station connect $name_of_network # $name_of_network is the name found in `iwctl device list`(like wlan0,...)
```

The outputs look like this
```zsh 
iwctl device list
```
```txt
                                    Devices
--------------------------------------------------------------------------------
  Name                  Address               Powered     Adapter     Mode
--------------------------------------------------------------------------------
  wlan0                 address               on          phy0        station
```

```zsh
iwctl station $name_of_station scan # In this case $name_of_station=wlan0
```
```txt
# No output
```

```zsh
iwctl station $name_of_station get-networks
```
```txt
                               Available networks
--------------------------------------------------------------------------------
      Network name                      Security            Signal
--------------------------------------------------------------------------------
      Network-1                         psk                 ****
      Network-2                         psk                 ****
      Network-3                         psk                 ****
           :                             :                   :
```

```zsh
iwctl station $name_of_station connect $name_of_network 
# In the example
$name_of_network="Network-1"
$name_of_station="wlan0"
```
To check the validity of the connection, run

```zsh
iwctl station $name_of_station scan #Wait for like 3 seconds
iwctl station $name_of_station get-networks
```
```txt
                               Available networks
--------------------------------------------------------------------------------
      Network name                      Security            Signal
--------------------------------------------------------------------------------
  >   Network-1                         psk                 ****
      Network-2                         psk                 ****
      Network-3                         psk                 ****
           :                             :                   :
```
The `>` is what to look out for


To verify that the connection is working run
```zsh
ping ping.archlinux.org
```
If you get an error, then the connection is not working.

### Step 5.02. The Sysclock

To update/synchronize the system clock, run 
```zsh
timedatectl
```
### Step 5.03. Partitioning the disk

Use one of `lsblk` or `fdisk` to identify the block device of the laptop/desktop/etc that arch linux is being installed on

> [!CAUTION]
> Only format the EFI system partition if you created it during the
> partitioning step. If there already was an EFI system partition on disk
> beforehand, reformatting it can destroy the boot loaders of other installed
> operating systems.

Then partition with
```zsh
cfdisk /dev/path_to_block_device
```

> [!NOTE]
> Follow the table below for the partition advice

For UEFI (with GPT)
| Mount point on the installed system  | Partition | Partition type | Suggested size |
|--------------------------------------|-----------|----------------|----------------|
|/boot|/dev/efi_system_partition|EFI system partition|1GiB|
|[SWAP]|/dev/swap_partition|Linux swap|<=4GiB|
|/|/dev/root_partition|Linux x86-64 root (/)|Remainder of the block device(<= 22GiB-32GiB)|


For BIOS (with MBR)
| Mount point on the installed system  | Partition | Partition type | Suggested size |
|--------------------------------------|-----------|----------------|----------------|
|[SWAP]|/dev/swap_partition|Linux swap|<=4GiB|
|/|/dev/root_partition|Linux|Remainder of the block device(<= 22GiB-32GiB)|


Formating the partitions.

#### For the root partition, use any of the following
- mkfs.ext4
- mkfs.btrfs (Recommended)
- mkfs.xfs (Newer, may require kernel modules)

example
```zsh
mkfs.btrfs /dev/root_partition
```

#### For the efi partition

use
```zsh 
mkfs.fat -F 32 /dev/efi_system_partition
```

#### For the swap partition, use
```zsh
mkswap /dev/swap_partition
```

### Step 5.04. Mounting the file systems

The mount directory in linux is `/mnt`, this is where I will mount my partitions.

```zsh
mount /dev/root_partition /mnt # For the Root partition
mount --mkdir /dev/efi_system_partition /mnt/boot # For the EFI partition
swapon /dev/swap_partition
```


### Step 5.05. Selecting Mirrors

This step can be skipped because the server are pre-configure.
If a particular mirror not in the list, then add it to the /etc/pacman.conf file under its own field

```confini
[Name-of-mirror]
Server = https://link.to.mirror
SigLevel = Never # Or whatever it needs to be
```

### Step 5.06. The pacstrap

For ext4 file system format, run
```zsh
pacstrap -K /mnt base linux linux-firmware e2fsprogs
```
For btrfs file system format, run
```zsh
pacstrap -K /mnt base linux linux-firmware btrfs-progs
```
For xfs file system format, run
```zsh
pacstrap -K /mnt base linux linux-firmware xfsprogs
```

## Step 6. Configurating the system

- Fstab
    - Run `genfstab -U /mnt >> /mnt/etc/fstab`

### Step 6.01. Change Root (ChRoot)

Run
```zsh
arch-chroot /mnt
```
To enter the chroot environment.

The table is a one to one mapping of the commands to run for the stuff needed

|System environment Parameters|Command to run|
|-----------------------------|--------------|
|Time|ln -sf /usr/share/zoneinfo/Area/Location /etc/localtime|
|Hostname | echo "$hostname" >> /etc/hostname |


> [!NOTE]
> A hostname must contain from 1 to 63 characters, using only lowercase a to z,
> 0 to 9, and -, and must not start with -

Edit the /etc/locale.conf (if needed) the run `locale-gen`

### Step 6.02. Initial RAM File System(initramfs)

> [!NOTE]
> For LVM, system encryption or RAID, modify mkinitcpio.conf(5) and recreate
> the initramfs image. If you have changed the default console keymap, only
> recreating the initramfs is required

When done, run
```zsh
mkinitcpio -P
```

### Step 6.03. Root password
Run `passwd` and set a ***secure*** password

### Step 6.04 Boot Loader

> [!CAUTION]
> To successfully boot Arch, the boot loader needs access to the kernel and
> initramfs image(s) which typically reside in the /boot directory. That means
> the boot loader must have support for everything starting from the block
> devices, stacked block devices (LVM, RAID, dm-crypt, LUKS, etc.) and ending
> with the file system on which the kernel(s) and initramfs image(s) reside.
> Since almost no boot loader supports such stacked block devices and since file
> systems can introduce new features which may not yet be supported by any boot
> loader (e.g. archlinux/packaging/packages/grub#7, FS#79857, FS#59047, FS#58137,
> FS#51879, FS#46856, FS#38750, FS#21733 and fscrypt encrypted directories),
> using a separate /boot partition with a universally supported file system, such
> as FAT32, is oftentimes more feasible. 

For more info go to [arch-wiki](https://wiki.archlinux.org/title/Arch_boot_process#Boot_loader)

To install GRUB, run
```zsh
pacman -S grub --needed # Just to be safe
grub-install --target=i386-pc /dev/path_to_block_device
grub-mkconfig -o /boot/grub/grub.cfg
# The config for grub is now in /boot/grub/grub.cfg
# Any tweak to the config should be done there
```
### Step 6.05 Exiting the ChRoot

Type `exit` and hit enter or hit Ctrl+d

### Step 6.06 Reboot

Type `reboot` and hit enter

# Next chapter. Post install
<!-- ## Step 7.0 Choose a Desktop environment and config it!!!!!!!!! -->
Click [here](./docs/post-install.md) to continue.
