
require 'spec_helper'

module HistoricQuotes
  describe LoadHist do

    before(:each) do
      @file = "sample/sample_cota_hist_2003.txt"
    end

    let(:parser_header) { double(ParserHeader).as_null_object }
    let(:parser_trailer) { double(ParserTrailer).as_null_object }
    let(:parser_stock_quote) {
      p_stock_quote = double(ParserStockQuote).as_null_object
      p_stock_quote.stub(:parse).and_return(StockQuote.new)
      p_stock_quote
    }
