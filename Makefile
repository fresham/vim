SHELL=/bin/bash

PATHOGEN_URL="https://raw.github.com/tpope/vim-pathogen/HEAD/autoload/pathogen.vim"
PATHOGEN_DIR="autoload"
PATHOGEN_FILE="pathogen.vim"
BUNDLE_DIR="bundle"

update_pathogen:
	if [ ! -d $(PATHOGEN_DIR) ]; then mkdir -p $(PATHOGEN_DIR); fi
	if [ ! -d $(BUNDLE_DIR) ]; then mkdir -p $(BUNDLE_DIR); fi
	wget $(PATHOGEN_URL) -O $(PATHOGEN_DIR)/$(PATHOGEN_FILE)
