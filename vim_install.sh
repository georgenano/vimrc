# install git & wget
brew install git
brew install wget

# mkdir
mkdir -p ~/.vim

# download .vimrc
wget https://raw.github.com/georgenano/vimrc/master/.vimrc -P ~

# install neobundle
git clone http://github.com/Shougo/neobundle.vim ~/.vim/neobundle.vim

# download scala.dict
wget https://raw.github.com/tyru/dotfiles/master/dotfiles/.vim/dict/scala.dict -P ~/.vim/dict/

# install ctags
brew install ctags
wget https://gist.github.com/anonymous/967685/raw/48f19a19ffd292932a427ad17538258454251ef4/.ctags -O ~/.ctags

# setting for :make
wget https://raw.github.com/georgenano/vimrc/master/.vim/compiler/scalac.vim -P ~/.vim/compiler

