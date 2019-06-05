# Reproducible Mac OS X Environment
_"Keep it vanilla"_ ~Antej

## TODO:
* System preferences
    * Dark mode: 
         * ```defaults write -g NSRequiresAquaSystemAppearance -bool Yes```
         * Logout, login, set appearance to "Dark"
* Setup guide for zsh
* Dig-up old .bashrc
* Specifics/config for Atom?

## Quick Start

```
xcode-select --install

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

cd ~
git clone https://github.com/greenkidneybean/setup.git
cd setup
sh setup.sh
```


## 1. Install X-Code

```
xcode-select --install
```

## 2. Install Homebrew

Install [Homebrew](https://brew.sh/) and packages listed in Brewfile

`/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

## 3. Run Setup Script

`sh setup.sh`

A restart is necessary to update all preferences.


## 4. Setup Ruby Environment (is this still necessary)

Set [Ruby](https://www.ruby-lang.org/en/downloads/) environment to current stable version

    rbenv install 2.4.1

## OS X defaults

This is not friendly if there are no sudo privledges.
This could definitely use some work (combine with dock.sh)

    sh syst_prefs.sh

## [Github config](https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/)
   * setup guide for [Mac](http://burnedpixel.com/blog/setting-up-git-and-github-on-your-mac/)
   * make ssh key (add email): `ssh-keygen -t rsa -b 4096 -C "[EMAIL]"`
   * add to ssh-agent + keychain via `ssh-add -K ~/.ssh/github`
   * test via `ssh -vT git@github.com`
