class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.text :description
      t.string :cover
      t.string :programming_language
      t.string :edition
      t.date :publishing_date

      t.timestamps
    end
  end
end
