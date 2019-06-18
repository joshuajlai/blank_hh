.PHONY: install test check

install:
	composer install

check:
	hh_client

test:
	 hhvm vendor/bin/phpunit -c phpunit.xml
