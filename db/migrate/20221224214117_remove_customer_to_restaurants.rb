class RemoveCustomerToRestaurants < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :restaurants, :customers
  end
end
