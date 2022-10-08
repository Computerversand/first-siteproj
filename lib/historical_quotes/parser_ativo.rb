
require 'date'
require 'bigdecimal'

module HistoricQuotes
  class ParserStockQuote
    def parse(row)
      read_stock_quote(row) if row.start_with?("01")
    end
    
    def read_stock_quote(row)
      stock_quote = StockQuote.new
      stock_quote.date = read_data row