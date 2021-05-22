class AddPrecisionAndScaleToDecimals < ActiveRecord::Migration
  def self.up
    change_column :stock_quotes, :opening_price, :decimal, :precision => 10, :scale => 2
    change_column :stock_quotes, :highest_price, :decimal, :precision => 10, :scale => 2
    change_column :stock_quotes, :lowest_price, :decimal, :precision => 10, :scale => 2
    change_column :stock_quotes, :average_price, :decimal, :precision => 10, :scale => 2
    change_column :stock_quotes, :close_price, :decimal, :precision => 10, :scale => 2
    change_column :stock_quote