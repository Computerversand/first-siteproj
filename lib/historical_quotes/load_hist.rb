module HistoricQuotes
  class LoadHist

    attr_accessor :parser_header, :parser_trailer, :parser_stock_quote

    def initialize(parser_header, parser_trailer, parser_stock_quote)
      @parser_header = parser_header
      @parser_trailer = parser_trailer
      @parser_stock_quote = parser_stock_