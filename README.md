# Dental Strategy
## Requirements
1. PHP
2. [MySQL](https://www.mamp.info/en/)
3. [Composer](https://getcomposer.org/doc/00-intro.md#manual-installation)
4. [Node.js](https://nodejs.org/en/download/)

## Installation

```bash
	git clone https://NickLediet@bitbucket.org/NickLediet/dental_strategy.git && cd dental_strategy

	composer install && npm install

	# create the database (dental strategy) in phpmyadmin/sequel pro/cli ...
	# create a copy of .env.example and rename .env
	# Enter your database credentials into .env

	php artisan migrate

	php artisan db:seed

	php artisan serve
```