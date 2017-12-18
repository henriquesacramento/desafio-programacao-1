class AddAddressToMerchants < ActiveRecord::Migration[5.1]
  def change
    add_column :merchants, :address, :string
  end
end
