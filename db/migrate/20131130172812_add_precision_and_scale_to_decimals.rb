class AddPrecisionAndScaleToDecimals < ActiveRecord::Migration
  def self.up
    change_column :stock_quotes, :opening_price, :decimal, :prec