module HistoricQuotes
  class StockQuote < ActiveRecord::Base
    self.table_name = "stock_quotes"
    
    belongs_to :historica