
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

Simply do:
  `$ rake`

Getting real historical data files
----------------------------------

To get daily historical stock quotation data files, just go BM&F Bovespa website and download it (or follow this shortcut URI: [BM&F Bovespa Historical Files](http://www.bmfbovespa.com.br/shared/iframe.aspx?idioma=pt-br&url=http://www.bmfbovespa.com.br/pt-br/cotacoes-historicas/FormSeriesHistoricas.asp) ). A login is necessary and fill in a captcha field.

Contributing
------------

## Submitting a Pull Request

1. [Fork the repository.][fork]
2. [Create a topic branch.][branch]
3. Write a failing test to capture existing bug or lack of feature.
4. Run tests with `rake` to verify that test fails.
5. Implement your feature or bug fix.
6. Ensure tests pass.
7. If it's a new feature or a bug fix, please add an entry to the changelog file.
8. Add, commit, and push your changes.
9. [Submit a pull request.][pr]

[fork]: https://help.github.com/articles/fork-a-repo
[branch]: http://learn.github.com/p/branching.html
[pr]: https://help.github.com/articles/using-pull-requests

Prerequisites
-------------

Tested with Ruby 1.9.3.

It uses Postgres as development database instead of Sqlite3 because it is faster to import several stock quotations (1000+).


Boring legal stuff
------------------