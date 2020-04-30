# ArmingVim
This is my preferred vim configuration and plugins.


**Install required packages:**
```
sudo apt update
sudo apt install curl git ctags
```


**Clone configs from repository:**
```
git clone https://github.com/imto1/ArmingVim.git
```


**Set config files in place:**
```
mv ArmingVim ~/.vim
mv ~/.vim/vimrc ~/.vimrc
rm ~/.vim/LICENSE ~/.vim/README.md
```


**Install _Vim-Plug_ plugin manager:**
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```


**Ignore Vim errors on first launch. After Vim opened, run PlugInstall command:**
```
:PlugInstall
```
