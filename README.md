WSL Configuration Steps
=======================

Steps taken from:  
https://medium.com/@ssharizal/hyper-js-oh-my-zsh-as-ubuntu-on-windows-wsl-terminal-8bf577cdbd97  
https://medium.com/@vinhp/set-and-use-zsh-as-default-shell-in-wsl-on-windows-10-the-right-way-4f30ed9592dc

1. Install WSL with `install-wsl.ps`
2. Install Ubuntu on Windows from Microsoft Store https://www.microsoft.com/en-us/p/ubuntu-1804-lts/9n9tngvndl3q
3. Install Hyper terminal https://hyper.is/ and launch the terminal
4. Clone repository, `git clone https://github.com/hancockks/wsl-configure.git`
5. Download fonts from Nerd Font, `./download-fonts.sh`. Fonts will be downloaded to a tmp directory
6. Install fonts using PowerShell (run as Administrator), `Set-ExecutionPolicy Bypass`, `.\install.ps1`
7. Open up Hyper.js terminal configuration with Ctrl+,. Copy and paste sample .Hyper.js config file.
8. run `configure-wsl.sh` from within the terminal


