#!/bin/bash

# dockを左に置く
defaults write com.apple.dock orientation -string "left"
# dockのアプリケーション起動時のアニメーションを無効化
defaults write com.apple.dock launchanim -bool false

# コンソールアプリケーションの画面サイズ変更を高速にする
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001

# 自動大文字の無効化
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# デフォルトで隠しファイルを表示する
defaults write com.apple.finder AppleShowAllFiles -bool true

# 全ての拡張子のファイルを表示
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# パスバーを表示
defaults write com.apple.finder ShowPathbar -bool true

# 検索時にデフォルトでカレントディレクトリを検索
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# 拡張子変更時の警告を無効化
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# USBやネットワークストレージに.DS_Storeファイルを作成しない
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# ディスク検証を無効化
defaults write com.apple.frameworks.diskimages skip-verify -bool true
defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true
defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true

# スクリーンショットの撮影時に影を含めない
defaults write com.apple.screencapture disable-shadow -boolean true

#----------------------------------------------------------
# Safari
#----------------------------------------------------------
# 検索クエリをAppleへ送信しない
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari SuppressSearchSuggestions -bool true

#----------------------------------------------------------
#### terminal
#----------------------------------------------------------
# UTF-8のみを使用する
defaults write com.apple.terminal StringEncodings -array 4
# ターミナル終了時のプロンプトを非表示にする
defaults write com.googlecode.iterm2 PromptOnQuit -bool false

#----------------------------------------------------------
#### appstore
#----------------------------------------------------------
# アプリケーションの自動更新を有効化
defaults write com.apple.commerce AutoUpdate -bool true

#----------------------------------------------------------
#### Chrome
#----------------------------------------------------------
# トラックパッドの感度の悪いバックスワイプをすべて無効にする
defaults write com.google.Chrome AppleEnableSwipeNavigateWithScrolls -bool false
defaults write com.google.Chrome.canary AppleEnableSwipeNavigateWithScrolls -bool false
# システム固有の印刷プレビューダイアログを使用する
defaults write com.google.Chrome DisablePrintPreview -bool true
defaults write com.google.Chrome.canary DisablePrintPreview -bool true


# Keyboard
defaults write NSGlobalDomain KeyRepeat -int 1          # Set blazingly fast key repeat rate.
defaults write NSGlobalDomain InitialKeyRepeat -int 12  # Set blazingly fast initial key repeat rate.


# Stop iTunes from responding to the keyboard media keys.
launchctl unload -w /System/Library/LaunchAgents/com.apple.rcd.plist 2> /dev/null

# Save to disk (not to iCloud) by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false
# Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false
