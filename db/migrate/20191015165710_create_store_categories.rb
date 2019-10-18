class CreateStoreCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :store_categories do |t|
      t.references :store, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
