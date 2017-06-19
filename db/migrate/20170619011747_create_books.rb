class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.text :series_title
      t.text :book_title
      t.text :author
      t.integer :year
      t.text :description
      t.text :image
      t.integer :user_id

      t.timestamps
    end
  end
end
