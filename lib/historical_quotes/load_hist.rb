module HistoricQuotes
  class LoadHist

    attr_accessor :parser_header, :parser_trailer, :parser_stock_quote

    def initialize(parser_header, parser_trailer, parser_stock_quote)
      @parser_header = parser_header
      @parser_trailer = parser_trailer
      @parser_stock_quote = parser_stock_quote
    end

    def load(filepath)
      return false unless File.exists?(filepath)
      
      file = File.open(filepath, "r")

      historical_quotes = HistoricalStockQuote.new

      file.each { |line|
        historical_quotes.import_header @parser_header.parse(line) if line.start_with?("00")
        historical_quotes.stock_quotes << @p