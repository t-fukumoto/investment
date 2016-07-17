class AddImageToInvesters < ActiveRecord::Migration
  def change
  add_column :investers, :image, :string

  end

end
