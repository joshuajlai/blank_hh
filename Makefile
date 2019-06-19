.PHONY: install test check update_autoload

install:
	hhvm ~/Workspace/bin/composer.phar install

check:
	hh_client

test: check
	 hhvm vendor/bin/hacktest tests/

update_autoload:
	./vendor/bin/hh-autoload
