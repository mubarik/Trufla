class CreatePromotions < ActiveRecord::Migration[6.0]
  def change
    create_table :promotions do |t|
      t.integer :code
      t.string :status
      t.integer :discount

      t.timestamps
    end
  end
end
