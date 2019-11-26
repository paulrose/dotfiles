
echo 'Install some apps'
echo '-----------------------------------'

set -e

# Apps
apps=(
    alfred
    spotify
    steam
    dropbox
    evernote
    firefox
    google-chrome
    skype
    slack

    visual-studio-code
    sublime-text
    coda
    navicat-premium
    filezilla
    github
    sourcetree

    microsoft-office
    adobe-creative-cloud

    docker
    virtualbox
    vagrant
    iterm2
    postman
    dash

    lastpass
    expressvpn
    grammarly
    flux
    spectacle
    skyfonts
)

appdir="/Applications"

# Tap alternative versions
brew tap homebrew/cask-versions

# install apps
echo "installing apps..."
brew cask install --appdir=$appdir ${apps[@]}

brew cleanup
