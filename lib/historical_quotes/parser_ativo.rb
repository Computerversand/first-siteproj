
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
      stock_quote.bdi_code = read_bdi_code row
      stock_quote.ticker_symbol = read_ticker_symbol row
      stock_quote.market_type = read_market_type row
      stock_quote.name = read_name row
      stock_quote.specification = read_specification row
      stock_quote.prazo_termo = read_prazo_termo row
      stock_quote.currency_ref = read_currency_ref row
      stock_quote.opening_price = read_opening_price row
      stock_quote.highest_price = read_highest_price row
      stock_quote.lowest_price = read_lowest_price row
      stock_quote.average_price = read_average_price row