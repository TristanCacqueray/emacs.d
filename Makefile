-include lib/borg/borg.mk

bootstrap-borg:
	@git submodule--helper clone --name borg --path lib/borg \
	--url https://github.com/emacscollective/borg.git
	@cd lib/borg; git symbolic-ref HEAD refs/heads/master
	@cd lib/borg; git reset --hard HEAD
	@mkdir -p ~/mail-conf
build: tangle-init
build-init: tangle-init
quick: tangle-init
