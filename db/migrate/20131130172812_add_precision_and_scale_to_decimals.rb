class AddPrecisionAndScaleToDecimals < ActiveRecord::Migration
  def self.up
    change_column :stock_quotes, :opening_price, :decimal, :precision => 10, :scale => 2
    change_column :stock_q