# MacOS VM

> Instructions and script to help you create a VirtualBox VM running MacOS.

---

## Links & Resources

* [`macos-virtualbox`](https://github.com/myspaghetti/macos-virtualbox) Push-button installer of macOS Catalina, Mojave, and High Sierra guests in Virtualbox for Windows, Linux, and macOS.
* [`macos-virtualbox-vm`](https://github.com/geerlingguy/macos-virtualbox-vm) Instructions and script to help you create a VirtualBox VM running macOS.

[](.)

* [`OSX-KVM`](https://github.com/kholia/OSX-KVM) Run macOS on QEMU/KVM.

---

## Dependencies

All the dependencies should be available through a package manager:
`bash` `coreutils` `gzip` `unzip` `wget` `xxd` `dmg2img`  `virtualbox`

* [VirtualBox](https://www.virtualbox.org/wiki/Downloads) ≥ 6.1.6, though versions as low as 5.2 may work.
* GNU `Bash` ≥ 4.3, on Windows run through [Cygwin](https://cygwin.com/install.html) or WSL - see [NEM](https://github.com/myspaghetti/macos-virtualbox/blob/master/README.md#virtualbox-native-execution-manager-nem)
* GNU `coreutils` ≥ 8.22, GNU `gzip` ≥ 1.5, Info-ZIP `unzip` ≥ v6.0, GNU `wget` ≥ 1.14, `xxd` ≥ 1.11
* `dmg2img` ≥ 1.6.5, on Cygwin the package is not available through the package manager so the script downloads it automatically.

---

## Usage

```bash
# Download and run installer script
bash ./run.sh
```

If running on an AMD based system, execute the following command from an elevated prompt:

```powershell
VBoxManage modifyvm "macOS" --cpu-profile "Intel Xeon X5482 3.20GHz"
```

---

## Project Structure

```md
.
├── .commitlintrc.json
├── .editorconfig
├── .gitignore
├── .huskyrc
├── .np-config.json
├── LICENSE
├── package.json
├── README.md
└── run.sh
```

---
