
default: help
.PHONY: default

help:
	@echo 'Usage:'
	@echo '	$$ make [action]'
	@echo
	@echo 'Ex:'
	@echo '	$$ make'
	@echo '	$$ make help'
	@echo
	@echo '	$$ make prepare'
	@echo
	@echo '	$$ make deb-build'
	@echo
	@echo '	$$ make deb-install'
	@echo
	@echo '	$$ make deb-remove'	
	@echo
	@echo '	$$ make test'
	@echo
	@echo '	$$ make clear'
	@echo
	@echo '	$$ make clean'
	@echo
.PHONY: help




prepare:
	@./prepare.sh
.PHONY: prepare


deb-build:
	@./deb-build.sh
.PHONY: deb-build


deb-install:
	@./deb-install.sh
.PHONY: deb-install


deb-remove:
	@./deb-remove.sh
.PHONY: deb-remove


test:
	@./test.sh
.PHONY: test


clear:
	@./clean.sh
.PHONY: clear


clean:
	@./clean.sh
.PHONY: clean
