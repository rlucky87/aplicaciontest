class RemoveCustomertoRestaurant < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :customers, :restaurants
  end
end
