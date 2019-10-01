# Reproducible Mac OS X Environment
_"Keep it vanilla"_ ~Antej

## Quick Start

```
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

## 4. Setup Ruby Environment (is this still necessary?)

Set [Ruby](https://www.ruby-lang.org/en/downloads/) environment to current stable version

```
rbenv install 2.4.1
```
## 5. zsh
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
```

## 6. Final Touches
* Mojave [dark menu bar](http://osxdaily.com/2018/10/15/dark-menu-dock-light-theme-macos/)
[Github config](https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/)
  * Set theme to "Light"
  * `defaults write -g NSRequiresAquaSystemAppearance -bool Yes`
  * Log out, then back in
  * Set theme to "Dark"
* setup guide for [Mac](http://burnedpixel.com/blog/setting-up-git-and-github-on-your-mac/)
* make ssh key (add email): `ssh-keygen -t rsa -b 4096 -C "[EMAIL]"`
* add to ssh-agent + keychain via `ssh-add -K ~/.ssh/github`
* test via `ssh -vT git@github.com`

## TODO:
* setup vim plugins
* embed the dotfile repo in this repo
* Dotfiles is broken, cd into github and sh setup_dotfiles.sh
  * dotfile for ShiftIt?
  * remove dotfiles folder from "setup" repo
* Homebrew broken (and takes a while)
  * run last
  * specify location of brewfile or cd into scripts and run homebrew script from there
  * sudo needed, borrow from syst_pref.sh file?
* System preferences
  * Dark mode:
    * ```defaults write -g NSRequiresAquaSystemAppearance -bool Yes```
    * Logout, login, set appearance to "Dark"
  * add "volume" preferances to menu bar
    * tried adding to step where things are removed
  * Finder sidebar and grid lock
  * Wallpaper
  * **Touch to click on trackpad**
* Setup guide for zsh
* Dig-up old .bashrc
* customize notificaitons
* Specifics/config for Atom?
* iTerm
  * color theme for terminal (not OneDark)
  * config file for iTerm?
* conda environments
  * use miniconda?
  * lean base
  * r-essentials for r_env
  * r-kernel
* merge the dock.sh with the system_prefs.sh
