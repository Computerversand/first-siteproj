
Bovespa Ingestion
=============
[![Build Status](https://travis-ci.org/seixasfelipe/bovespa-ingestion.png?branch=master)](https://travis-ci.org/seixasfelipe/bovespa-ingestion)

An importer/parser of BM&F Bovespa historical stock quotations files.

Introduction
------------

Installing
----------

Install bundler:

	`$ gem install bundler`

Enter the cloned dir and fetch dependencies:

	`$ bundle install`

Edit config/database.yml and run the installer:

    `$./bin/bovespa-parser install`

Running
-------

Run the application with real BM&F Bovespa historical file, just use the 'import' command and pass the file path as argument, for instance:

  `$ ./bin/bovespa-parser import sample/DemoHistoricalStockExchange12022003.txt`
	
Testing
-------