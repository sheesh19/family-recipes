class CreateCookbookLists < ActiveRecord::Migration[6.0]
  def change
    create_table :cookbook_lists do |t|
      t.references :user, null: false, foreign_key: true
      t.references :cookbook, null: false, foreign_key: true

      t.timestamps
    end
  end
end
