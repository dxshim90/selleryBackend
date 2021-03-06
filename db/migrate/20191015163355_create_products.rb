class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :title
      t.string :description
      t.references :store, null: false, foreign_key: true

      t.timestamps
    end
  end
end
