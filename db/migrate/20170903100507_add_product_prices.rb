class AddProductPrices < ActiveRecord::Migration[5.1]
  def change
  	add_column :products, :price, :decimal
  end
end