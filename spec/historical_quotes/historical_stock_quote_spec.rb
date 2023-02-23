require 'spec_helper'

module HistoricQuotes
  describe HistoricalStockQuote do

    let(:header) {
      header = Header.new
      header.filename = "COTA.HIST2003"
      header.origin_code = "BOVESPA"
      head