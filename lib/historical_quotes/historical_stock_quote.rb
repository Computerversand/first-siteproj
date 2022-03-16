
module HistoricQuotes
  class HistoricalStockQuote < ActiveRecord::Base
    self.table_name = "historical_stock_quotes"

    has_many :stock_quotes

    def import_header(header)
      self.filename = header.filename
      self.created_date = header.created_date