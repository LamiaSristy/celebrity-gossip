class AddForeignKeyToCategories < ActiveRecord::Migration[6.0]
  def change
    add_reference :categories, :creator, references: :users, index: true
    add_foreign_key :categories, :users, column: :creator_id
  end
end
