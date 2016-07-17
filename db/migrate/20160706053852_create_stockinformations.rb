class CreateStockinformations < ActiveRecord::Migration
  def change
    create_table :stockinformations do |t|
      t.string :link
      t.string :company
      t.string :ticker
      t.string :value
      t.string :share
      t.float :portfolio
      


      t.timestamps 
    end
  end
end


