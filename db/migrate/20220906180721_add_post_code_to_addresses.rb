class AddPostCodeToAddresses < ActiveRecord::Migration[7.0]
  def change
    add_column :addresses, :post_code, :string
  end
end
