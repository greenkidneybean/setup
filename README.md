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
# should setup zsh within system preferences
# would also be nice to setup preferences for finder (sidebar and column view)
2. Homebrew applications: `sh scripts/homebrew.sh`
3. Dock preferences: `sh scripts/dock.sh`
4. Linking dotfiles: `sh scripts/dotfiles.sh`

Note:
* Each of these scripts can be run individually: `scripts/dotfiles.sh`
* **A restart is necessary to update all preferences**

## 4. iTerm2
Preferences -> General -> Preferences -> "Load preferences from a custom folder"
`~/.iterm2`

## 5. zsh
For some reason the prompt takes a bit to load, not quick (plugins?)
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
```

## 6. Final Touches
* zsh setup is currently a shitshow
 * [Simple guide](https://www.freecodecamp.org/news/jazz-up-your-zsh-terminal-in-seven-steps-a-visual-guide-e81a8fd59a38/)
 * need to separate .bashrc with some basics and keep a simple .zshrc
 * must setup the following:
   * switch shell to zsh
   * install oh-my-zsh
   * install autocomplete (and add to zshrc plugins)
* Mojave [dark menu bar](http://osxdaily.com/2018/10/15/dark-menu-dock-light-theme-macos/)
  * Set theme to "Light"
  * `defaults write -g NSRequiresAquaSystemAppearance -bool Yes`
  * Log out, then back in
  * Set theme to "Dark"
* [Github config](https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/)
* Sudo setup:
    * add user to the admin group:
    * `sudo dscl . -append /Groups/admin GroupMembership <username>`
    * use `sudo visudo` to add username to sudoers file in /etc/sudoers
        * may need to boot into safe mode, mount encrypted drive, then use vi to add sudo user
* setup guide for [Mac](http://burnedpixel.com/blog/setting-up-git-and-github-on-your-mac/)
* make ssh key (add email): `ssh-keygen -t rsa -b 4096 -C "[EMAIL]"`
* add to ssh-agent + keychain via `ssh-add -K ~/.ssh/github`
* test via `ssh -vT git@github.com`

## Migration
* conda environments
* Zotero setup:
  * Preferences -> Sync
    * login to sync data
    * uncheck "Sync full-text content"
    * uncheck "Sync attachment files in group libraries using Zotero storage"
  * Preferences -> Advanced
    * zotero papers synced to Dropbox ~/Dropbox/zotero
  

## TODO:
* wrangle conda environments
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
* conda environments
  * use miniconda?
  * lean base
  * r-essentials for r_env
  * r-kernel
  * use mamba?
