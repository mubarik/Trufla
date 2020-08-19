class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.text :name
      t.decimal :price
      t.references :department, null: false, foreign_key: true

      t.timestamps
    end
  end
end
