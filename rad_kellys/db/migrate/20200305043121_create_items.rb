class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.string :category, null: false
      t.string :colour, null: false
      t.string :texture, null: false
      t.integer :days_to_cultivate, null: false
      t.decimal :price, precision: 5, scale: 2, null: false
      t.references :user, null: false, foreign_key: true, null: false

      t.timestamps
    end
  end
end
