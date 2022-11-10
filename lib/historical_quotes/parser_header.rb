require 'date'

module HistoricQuotes
  class ParserHeader
    def parse(row)
      read_header r