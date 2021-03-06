class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.references :recipe, null: false, foreign_key: true
      t.string :ingredient
      t.float :amount
      t.string :unit

      t.timestamps
    end
  end
end
