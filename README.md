
# dotfiles

新しいMacを設定するにあたりchezmoi を使ってやってみた

## How to

brew で chezmoi をインストールしてからやるのが簡単そう。

brew install chezmoi

### URL

https://www.chezmoi.io/

brew install chezmoi

### Setup command

```
$ sh -c "$(curl -fsLS get.chezmoi.io)"
```

or 

```
$ sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply $GITHUB_USERNAME
```

### Add command

```
# iterm
$ curl -L https://iterm2.com/misc/install_shell_integration.sh | bash
# zinit
$ bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"
```


### TODO
I want to add .zshrc


### Rosetta

https://zenn.dev/omakazu/scraps/b3a4be96741a22

### Notice
FileZilla app have to manual install and The url is this.
https://filezilla-project.org/download.php?platform=macos-arm64
