import QtQuick
import Quickshell
import Quickshell.Io

QtObject {
  id: sysinfo

  property int cpuUsage: 0
  property int memUsage: 0
  property int volume: 0
  property bool mic: false
  property bool muted: false
  property int brightness: 0
  property int current: 0
  property int max: 1
  property int bat0: 0
  property int percent: 0
  property bool charging: false
  property string status: ""
  property int capacity: 0

  // CPU tracking
  property var lastCpuIdle: 0
  property var lastCpuTotal: 0

  // property Timer updateTimer: Timer {
  //   interval: 1500
  //   running: true
  //   repeat: true
  //   triggeredOnStart: true
  //   onTriggered: {
  //     currentFile.reload()
  //     maxFile.reload()
  //     nowFile.reload()
  //     fullFile.reload()
  //     statusFile.reload()
  //     volumeFile.reload()
  //     micFile.reload()
  //   }
  // }
  //
  // // property Timer updateTimersys: Timer {
  // //   interval: 2000
  // //   running: true
  // //   repeat: true
  // //   triggeredOnStart: true
  // //   onTriggered: {
  // //     cpuFile.reload()
  // //     memFile.reload()
  // //   }
  // // }
  //
  // // property FileView cpuFile: FileView {
  // //   path: "/tmp/cpu.txt"
  // //   onLoaded: {
  // //     sysinfo.cpuUsage = parseInt(text().trim())
  // //   }
  // // }
  // //
  // // property FileView memFile: FileView {
  // //   path: "/tmp/mem.txt"
  // //   onLoaded: {
  // //     sysinfo.memUsage = parseInt(text().trim())
  // //   }
  // // }
  //
  // property FileView currentFile: FileView {
  //   path: "/sys/class/backlight/intel_backlight/brightness"
  //   onLoaded: {
  //     sysinfo.current = parseInt(text().trim())
  //     sysinfo.updateBrightness()
  //   }
  // }
  //
  // property FileView maxFile: FileView {
  //   path: "/sys/class/backlight/intel_backlight/max_brightness"
  //   onLoaded: {
  //     sysinfo.max = parseInt(text().trim())
  //     sysinfo.updateBrightness()
  //   }
  // }
  //
  // function updateBrightness() {
  //   if (sysinfo.max > 0) {
  //     sysinfo.brightness = Math.round((sysinfo.current / sysinfo.max) * 100)
  //   }
  // }
  //
  // property FileView nowFile: FileView {
  //   path: "/sys/class/power_supply/BAT0/charge_now"
  //   onLoaded: update()
  // }
  //
  // property FileView fullFile: FileView {
  //   path: "/sys/class/power_supply/BAT0/charge_full_design"
  //   onLoaded: update()
  // }
  //
  // property FileView statusFile: FileView {
  //   path: "/sys/class/power_supply/BAT0/status"
  //   onLoaded: {
  //     sysinfo.charging = text().trim() === "Charging"
  //   }
  // }
  //
  // function update() {
  //   const now = parseInt(nowFile.text())
  //   const full = parseInt(fullFile.text())
  //
  //   if (full > 0) {
  //     percent = Math.round((now / full) * 100)
  //   }
  // }
  //
  // property FileView volumeFile: FileView {
  //   path: "/tmp/volume.txt"
  //   onLoaded: {
  //     const out = text().trim().split("\n")
  //     sysinfo.volume = parseInt(out[0])
  //     sysinfo.muted = (out[1] === "false")
  //   }
  // }
  // property FileView micFile: FileView {
  //   path: "/tmp/mic.txt"
  //   onLoaded: {
  //     const out = text().trim()
  //     sysinfo.mic = (out === "true")
  //   }
  // }
}
