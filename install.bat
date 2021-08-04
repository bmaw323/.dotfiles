@echo off
:: we want to create hard links to .vimrc in correct place
:: on destination system it should be %USERPROFILE%\AppData\Local\nvim OR %LocalAppData%\nvim
:: ie: mklink /H "%LocalAppData%\nvim\init.vim" "init.vim"

del "%LocalAppData%\nvim\init.vim"
del "%LocalAppData%\nvim\ginit.vim"
rd "%LocalAppData%\nvim\plugin"

pushd nvim

::https://www.howtogeek.com/howto/16226/complete-guide-to-symbolic-links-symlinks-on-windows-or-linux/
mklink /H "%LocalAppData%\nvim\init.vim" "init.vim"
mklink /H "%LocalAppData%\nvim\ginit.vim" "ginit.vim"

mklink /J "%LocalAppData%\nvim\plugin" "plugin"

popd
