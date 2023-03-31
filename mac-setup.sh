xcode-select --install

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$(whoami)/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

brew update
brew install nvm iterm2 postgresql postman slack spotify visual-studio-code mas

brew install git

brew install gh

brew install fzf

brew install htop

brew install tmux

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sed -i -e 's/ZSH_THEME="robbyrussell"/ZSH_THEME="agnoster"/g' ~/.zshrc

echo 'export PATH="/opt/homebrew/bin:$PATH"' >> ~/.zshrc
echo 'export PATH="$HOME/.npm-packages/bin:$PATH"' >> ~/.zshrc
echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.zshrc
echo '[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm' >> ~/.zshrc
echo '[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion' >> ~/.zshrc

nvm install --lts

if [[ $(uname -m) == "arm64" ]]; then
  softwareupdate --install-rosetta
  mas install 1614277316 # Docker
else
  mas install 1290934000 # Docker Desktop
fi

brew install --cask google-chrome

brew install --cask discord

brew install --cask dropbox

brew install --cask firefox-developer-edition

brew install postgresql

brew install --cask postman

brew install --cask skype

brew install --cask slack

brew install --cask spotify

brew install --cask visual-studio-code

brew install --cask whatsapp
