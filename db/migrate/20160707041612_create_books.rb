class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :books
      t.text :book_url

      t.timestamps null: false
    end
  end
end
