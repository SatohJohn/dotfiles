# 概要

基本 chezmoi というツールに頼っています. https://www.chezmoi.io/

なので使い方がわからなくなったらリンク先を見てください.

## 初期構築方法

```sh
sh -c "$(curl -fsLS get.chezmoi.io)"
chezmoi init https://github.com/SatohJohn/dotfiles.git
```

## 変更があったときに更新する場合

```sh
chezmoi update
```
