.PHONY: dev-setup fresh-vm test

default: test

test:
	bats ./test/test_lxb.bats

dev-setup:
	sudo apt install vagrant virtualbox virtualbox-ext-pack bats git

fresh-vm:
	vagrant destroy && vagrant up
