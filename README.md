
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

## dadbob-ui connections

dadbob-ui/connections.json に接続先を書く
認証情報は~/.my.cnfに記述しておいて参照させる。

### sample

Proj1, Proj2の例
jsonにはsuffixのオプションで.my.cnfの指定をする。
.my.cnfには[client_XXX] で設定を分けておく
他の値は適時、プロジェクトにより変更してください

#### ~/.vim/dadbod-ui/connections.json

```
[
    {"url":"mysql://@/DATABASE_NAME_1?defaults-group-suffix=_proj1", "name":"Project name 1"},
    {"url":"mysql://@/DATABASE_NAME_2?defaults-group-suffix=_proj2", "name":"Project name 2"}
]
```

#### ~/.my.cnf

```
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
