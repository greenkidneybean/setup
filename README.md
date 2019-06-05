# Reproducible Mac OS X Environment
_"Keep it vanilla"_ ~Antej

## TODO:
* System preferences
    * Dark mode: defaults write -g NSRequiresAquaSystemAppearance -bool Yes
* Dotfiles
    * vim, zshrc, hyper
    * pump python out to console
    * rmarkdown
* Python modules
    * python in terminal, autocomplete
* Zsh
    * powerlevel9k? airbar?
    * plugins?

## Install command line tools

Install X-code:

    xcode-select --install

## Link dotfiles

```
cd ~
git clone https://github.com/greenkidneybean/.dotfiles.git
cd .dotfiles
sh dotfiles.sh
```

Setup iTerm2 profile: iTerm ▶ General ▶ Preferences ▶ Save Settings To Folder ▶ ~/.iterm2

## Homebrew

Install [Homebrew](https://brew.sh/) and packages listed in Brewfile

`/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

## Run Setup

`sh setup.sh`

A restart is necessary to update all preferences.

## Follow-up ToDo:
- Check Anaconda installation and path
- [Add GitHub SSH Key](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/)

## Ruby

Set [Ruby](https://www.ruby-lang.org/en/downloads/) environment to current stable version

    rbenv install 2.4.1

## OS X defaults

This could definitely use some work (combine with dock.sh)

    sh syst_prefs.sh

## [Github config](https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/)
   * setup guide for [Mac](http://burnedpixel.com/blog/setting-up-git-and-github-on-your-mac/)
   * make ssh key (add email): `ssh-keygen -t rsa -b 4096 -C "[EMAIL]"`
   * add to ssh-agent + keychain via `ssh-add -K ~/.ssh/github`
   * test via `ssh -vT git@github.com`
