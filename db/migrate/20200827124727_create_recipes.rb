class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.references :cookbook, null: false, foreign_key: true
      t.integer :food_theme
      t.references :user, null: false, foreign_key: true
      t.string :url

      t.timestamps
    end
  end
end
