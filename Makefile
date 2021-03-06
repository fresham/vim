SHELL=/bin/bash

PATHOGEN_URL="https://raw.github.com/tpope/vim-pathogen/HEAD/autoload/pathogen.vim"
PATHOGEN_DIR="autoload"
PATHOGEN_FILE="pathogen.vim"
BUNDLE_DIR="bundle"

VIMRC="vimrc"
GVIMRC="gvimrc"

all: pathogen submodules link doc

pathogen:
	if [ ! -d $(PATHOGEN_DIR) ]; then mkdir -p $(PATHOGEN_DIR); fi
	if [ ! -d $(BUNDLE_DIR) ]; then mkdir -p $(BUNDLE_DIR); fi
	wget $(PATHOGEN_URL) -O $(PATHOGEN_DIR)/$(PATHOGEN_FILE)

link:
	if [ -h ~/.vimrc ]; then rm ~/.vimrc; fi
	if [ -h ~/.gvimrc ]; then rm ~/.gvimrc; fi
	if [ -h ~/.vim ]; then rm ~/.vim; fi
	ln -s `pwd`/$(VIMRC) ~/.vimrc
	ln -s `pwd`/$(GVIMRC) ~/.gvimrc
	ln -s `pwd` ~/.vim

submodules:
	git submodule init
	git submodule update

upgrade_bundle:
	for f in ./bundle/*; do printf "\nupdate $$f"; cd "$$f" && git co master && git uom; cd -; done
	# for f in ./bundle/*; do echo "$$f"; done

doc:
	for plugin in bundle/*; do \
		echo $$plugin/doc/; \
		vim -c "helptags $$plugin/doc/" -c "q!"; \
	done
