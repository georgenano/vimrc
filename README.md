vimrc
======================
My personal Vim configuration for development by Scala.  

How to Install
------
### Use vim_install.sh ###
    $ wget https://raw.github.com/georgenano/vimrc/master/vim_install.sh -P ~
    $ chmod 755 vim_install.sh
    $ ./vim_install.sh  

### Install vim plguins ###
    $ vim 

Ignore some errors & warnings.  
Type `:NeoBundleInstall` in Normal mode.  
Ignore some errors & warnings too.
 
### Setting for ctags ###
    $ vim ~/.bashrc

Add `alias ctags='/usr/local/Cellar/ctags/5.8/bin/ctags' ` in the last line.  

    $ source ~/.bashrc

### Install Command-T ###
    $ cd ~/.vim/bundle/Command-T/ruby/command-t
    $ ruby extconf.rb
    $ make

How to Use
----------------
### NERDTree ###
`Ctrl + e`: toggle NERDTree.  
Select file, `<CR>`: open the file.  

### TagBar ###
`F8`: toggle TagBar.  
Select file, `<CR>`: go to the definition.  

### ctags ###
`Ctrl + ]`: go to the function definition.  
`Ctrl + t`: take back to the function call.  

### Command-T ###
`\t`: open Command-T window.

### make  ###
`:make`: run scalac, and if some bugs exist, open QuickFix.  

### VimShell ###
`vs`: VimShell.  
`vp`: popup VimShell.  
