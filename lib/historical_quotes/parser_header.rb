require 'date'

module HistoricQuotes
  class ParserHeader
    def parse(row)
      read_header row if row.start_with?("00")
    end

    def read_header(row)
 