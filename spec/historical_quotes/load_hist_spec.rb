
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

    let(:loader) { LoadHist.new parser_header, parser_trailer, parser_stock_quote }
    let(:header) { double(Header).as_null_object }
    let(:trailer) { double(Trailer).as_null_object }

    it "should load example file" do
      File.exists?(@file).should be_true
    end

    it "should parse the header only one time" do 
      parser_header.should_receive(:parse).once.and_return(Header.new)

      loader.load @file
    end

    it "should parse the trailer only one time" do
      parser_trailer.should_receive(:parse).once.and_return(Trailer.new)

      loader.load @file