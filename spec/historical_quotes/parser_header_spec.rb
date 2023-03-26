require 'spec_helper'

module HistoricQuotes
  describe ParserHeader do
    before(:each) do
      sample_row = "00COTAHIST.2003BOVESPA 20040531                                                                                                                                                                                                                      "
      parser = ParserHeader.new
      @header = parser.parse sample_row
    end

    it "should return nil if the line does not start with 00" do
      sample_row = "05COTAHIST.2003BOVESPA 20040531                                                                                                                                                                                                                      "
      parser = ParserHeader.new
      header = parser.parse sample_row

      header.should be_nil
    end

    it "should extract header filename" do
      