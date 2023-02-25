require 'spec_helper'

module HistoricQuotes
  describe HistoricalStockQuote do

    let(:header) {
      header = Header.new
      header.filename = "COTA.HIST2003"
      header.origin_code = "BOVESPA"
      header.created_date = Date.new(2004, 05, 31)
      header
    }

    let(:trailer) {
      trailer = Trailer.new
      trailer.stock_quotes_qty = 553
 