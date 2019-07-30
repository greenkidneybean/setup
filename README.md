# Reproducible Mac OS X Environment
_"Keep it vanilla"_ ~Antej

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

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

## 3. Run Setup Script. 

```
sh setup.sh
```

Works through setting up:
1. System preferences: `sh scripts/syst_prefs.sh`
2. Homebrew applications: `sh scripts/homebrew.sh`
3. Dock preferences: `sh scripts/dock.sh`
4. Linking dotfiles: `sh scripts/dotfiles.sh`

Note: 
* Each of these scripts can be run individually: `scripts/dotfiles.sh`
* **A restart is necessary to update all preferences**

## 4. Setup Ruby Environment (is this still necessary)

Set [Ruby](https://www.ruby-lang.org/en/downloads/) environment to current stable version

```
rbenv install 2.4.1
```

## 5. Final Touches

[Github config](https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/)
* setup guide for [Mac](http://burnedpixel.com/blog/setting-up-git-and-github-on-your-mac/)
* make ssh key (add email): `ssh-keygen -t rsa -b 4096 -C "[EMAIL]"`
* add to ssh-agent + keychain via `ssh-add -K ~/.ssh/github`
* test via `ssh -vT git@github.com`

## TODO:
* Dotfiles is broken, cd into github and sh setup_dotfiles.sh
  * dotfile for ShiftIt?
* Homebrew broken (and takes a while)
  * run last
  * specify location of brewfile or cd into scripts and run homebrew script from there
* System preferences
  * Dark mode:
    * ```defaults write -g NSRequiresAquaSystemAppearance -bool Yes```
    * Logout, login, set appearance to "Dark"
    * Finder sidebar and grid lock
    * Wallpaper
* Setup guide for zsh
* Dig-up old .bashrc
* Specifics/config for Atom?
