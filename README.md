### [Hack Nerd Font Mono](https://github.com/ryanoasis/nerd-fonts)

### [AdGuard 自定义规则](./blocksite.txt)

### vscode 插件

- [x] Chinese (Simplified) (简体中文) Language Pack for Visual Studio Code
- [x] Go
- [x] php cs fixer
- [x] PHP Intelephense
- [x] YAML

### 如何构建

1. `cd /c/dev`
2. `git init --bare dotfiles-for-win`
3. 编辑`.bash_profile`添加`alias cfg='git --git-dir=/c/dev/dotfiles-for-win/ --work-tree=$HOME'`
4. `source ~/.bash_profile`
5. `cfg config status.showUntrackedFiles no`

### 如何使用

1. `git clone --separate-git-dir=/c/dev/dotfiles-for-win https://github.com/4lkaid/dotfiles-for-win.git dotfiles-for-win-temp`
2. `rm -rf dotfiles-for-win-temp/.git`
3. `cp -a dotfiles-for-win-temp/. $HOME`
4. `source ~/.bash_profile`
5. `cfg config status.showUntrackedFiles no`
6. `rm -rf dotfiles-for-win-temp`
