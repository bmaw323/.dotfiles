## This is a repository for my config files

#### Neovim
Nvim contains config for Neovim.
install\install_nvim.bat will create hardlinks for nvim config files

To install:
- [Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim)
- [Vimplug](https://github.com/junegunn/vim-plug)

#### Posh Git/Oh-My-Posh
.myparadox.omp.json is a custom theme for [Oh My Posh](https://github.com/JanDeDobbeleer/oh-my-posh) V3 terminal customizer. It is a clone of paradox.omp.json [modified](https://ohmyposh.dev/docs/) to be more like the V2 Paradox theme

Put following in powershell $PROFILE (for V2 of Oh-My-Posh, this needs to be updated for V3) 

    Import-Module posh-git
    Import-Module oh-my-posh
    Set-Theme Paradox

#### Visual Studio
vs/basic2019.vssetting are settings normally used in Visual Studio 2019.  All settings were exported.
