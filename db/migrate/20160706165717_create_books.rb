class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.text :description
      t.string :cover
      t.string :programming_language
      t.string :edition
      t.date :publishing_date

      t.timestamps null: false
    end
  end
end
