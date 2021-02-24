class CreateStockQuotes < ActiveRecord::Migration
  def self.up
    create_table :stock_quotes do |t|
      t.date :date
      t.string :bdi_code
      t.string :ticker_symbol
      t.string :market_type
      t.st