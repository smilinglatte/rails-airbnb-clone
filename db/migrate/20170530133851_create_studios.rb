class CreateStudios < ActiveRecord::Migration[5.0]
  def change
    create_table :studios do |t|
      t.string :adress
      t.text :description
      t.string :title
      t.string :specific
      t.integer :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
