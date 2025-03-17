
# dotfiles

新しいMacを設定するにあたりchezmoi を使ってやってみた

## How to setup with chezmoi

brew で chezmoi をインストールする

brew install chezmoi

### URL

https://www.chezmoi.io/

### Install with brew

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

## Vim

vim 起動後に :PlugInstall を実行する

## dadbob-ui connections

dadbob-ui/connections.json に接続先を書く
認証情報は~/.my.cnfに記述しておいて参照させる。

### DB接続サンプル

Proj1, Proj2の例
jsonにはsuffixのオプションで.my.cnfの指定をする。
.my.cnfには[client_XXX] で設定を分けておく
他の値は適時、プロジェクトにより変更してください

#### 接続設定JSON例

~/.vim/dadbod-ui/connections.json

```json
[
    {"url":"mysql://@/DATABASE_NAME_1?defaults-group-suffix=_proj1", "name":"Project name 1"},
    {"url":"mysql://@/DATABASE_NAME_2?defaults-group-suffix=_proj2", "name":"Project name 2"}
]
```

#### DB認証情報の設定例

~/.my.cnf

```.cnf
[client]

[client_proj1]
host=xxx.aaa.xxx.xxx
port=3306
user=dbusername1
password=dbuserpw1

[client_proj2]
host=xxx.bbb.xxx.xxx
port=3306
user=dbusername2
password=dbuserpw2
```

### TODO
I want to add .zshrc

### Rosetta

https://zenn.dev/omakazu/scraps/b3a4be96741a22

### Notice

FileZilla app have to manual install and The url is this.
https://filezilla-project.org/download.php?platform=macos-arm64
