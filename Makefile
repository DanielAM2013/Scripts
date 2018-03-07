# find line in .bashrc
# read core.sh, core.sh read all files from .bashrc?

all:
	@bin/self.sh
	@echo Build auxiliar tools

$(HOME)/.bashrc.d: $(HOME)/.bashrc
	@mkdir -p $(HOME)/.bashrc.d

clean:
	@rm $(HOME)/bin/core.sh
