SHELL=/bin/bash

PATHOGEN_URL="https://raw.github.com/tpope/vim-pathogen/HEAD/autoload/pathogen.vim"
PATHOGEN_DIR="autoload"
PATHOGEN_FILE="pathogen.vim"
BUNDLE_DIR="bundle"

VIMRC="vimrc"
GVIMRC="gvimrc"

all: pathogen link submodules doc

pathogen:
	if [ ! -d $(PATHOGEN_DIR) ]; then mkdir -p $(PATHOGEN_DIR); fi
	if [ ! -d $(BUNDLE_DIR) ]; then mkdir -p $(BUNDLE_DIR); fi
	wget $(PATHOGEN_URL) -O $(PATHOGEN_DIR)/$(PATHOGEN_FILE)

link:
	ln -sf `pwd`/$(VIMRC) ~/.vimrc
	ln -sf `pwd`/$(GVIMRC) ~/.gvimrc
	ln -sf `pwd` ~/.vim

submodules:
	git submodule init
	git submodule update

doc:
	for plugin in $(BUNDLE_DIR)/*; do \
		vim +'helptags $$plugin' +'q!'; \
	done
