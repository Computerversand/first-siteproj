class CreateStockQuotes < ActiveRecord::Migration
  def self.up
    create_table :stock_quotes do |t|
      t.date :date
      t.string :bdi_code
      t.string :ticker_symbol
      t.string :market_type
      t.string :name
      t.string :specification
      t.string :currency_ref
      t.decimal :opening_price
      t.decimal :highest_price
      t.decimal :lowest_price
      t.decimal :average_price
      t.decimal :close_price
      t.decimal :best_purchase_price
      t.decimal :best_sell_price
      t.decimal :total_trading
      t.decimal :total_trading_share
      t.decimal :trading_volu