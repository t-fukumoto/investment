class CreateInvesters < ActiveRecord::Migration
  def change
    create_table :investers do |t|
      t.string :name
      t.integer :age
      t.string :nanationality
      t.integer :risk
      t.integer :term
      t.text :history
      t.text :investment_type

      t.timestamps 
    end
  end
end
