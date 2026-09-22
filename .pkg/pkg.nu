#!/usr/bin/env nu

let pkg =  [
  [pkg_name];
# ['base-devel']
  ['brightnessctl']
  ['btop']
  ['chafa']
  ['dunst']
  ['fcitx5']
  ['fcitx5-gtk']
  ['fcitx5-qt']
  ['fcitx5-configtool']
  ['fcitx5-mozc']
  ['fd']
  ['ffmpeg']
  ['fish']
  ['git']
  ['gvfs']
  ['gvfs-mtp']
  ['hyprland']
  ['intel-media-driver']
  ['libcamera']
  ['nwg-look']
  ['man']
  ['mpv']
  ['neovim']
  ['otf-ipaexfont']
  ['pastel']
  ['pipewire']
  ['pipewire-alsa']
  ['pipewire-pulse']
  ['pipewire-zeroconf']
  ['playerctl']
  ['ripgrep']
  ['rmpc']
  ['slurp']
  ['stow']
  ['tree-sitter-cli']
  ['ttf-baekmuk']
  ['ttf-jetbrains-mono-nerd']
  ['ty']
  ['upower']
  ['uv']
  ['vulkan-tools']
  ['waybar']
  ['wget']
  ['wayland']
  ['wireplumber']
  ['wl-clipboard']
  ['wpaperd']
  ['xwayland-satellite']
  ['yazi']
  ['yt-dlp']
  ['zellij']
]

let pkg_groups = [
  [groups];
  ['texlive']
]

# let extras = [
#   [spec, uri, name];
#   ['GIT','https://github.com/kuokuo123/otter-launcher', 'otter-launcher']
#   ['SH', "curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh", 'rust']
#   ['RUST',',fsel', 'fsel']
#   ['RUST',',wl-screenrec', wl-screenrec]
#   ['RUST',',rio', 'rio']
# ]

for pg in $pkg.pkg_name {
  sudo pacman -S --needed $pg --noconfirm
}

print -n $"(ansi green_bold)[INFO](ansi reset) Do you want the following pkgs-groups installed?\n(ansi bo)($pkg_groups | get groups | to text)(ansi reset)\n"
input listen --types=['key'] | if $in.code == y { sudo pacman -S --noconfirm --needed ( $pkg_groups | get groups | to text | str replace "\n" " " -a) } else { print -n "Ok? i just\n" }

# print -n $"(ansi green_bold)[INFO](ansi reset) Do you want to have the following extras installed?\n(ansi bo)($extras | get name | to text)(ansi reset)"
#
# for extra in $extras {
#   match $extra.spec {
#     "GIT" => {git clone $extra.uri}
#     "SH" => {sh $extra.uri}
#     "RUST" => {cargo install $extra.uri}
#   }
# }
