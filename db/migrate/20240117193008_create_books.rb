class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :book_number
      t.string :genre
      t.integer :published_year
      t.string :content_type
      t.integer :pages
      t.string :language

      t.timestamps
    end
  end
end
