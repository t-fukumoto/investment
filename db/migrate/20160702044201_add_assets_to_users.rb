class AddAssetsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :cash, :integer
    add_column :users, :stock, :integer
    add_column :users, :bond, :integer
    add_column :users, :realestate, :integer
    add_column :users, :comodity, :integer
    add_column :users, :others, :integer

 end
end
