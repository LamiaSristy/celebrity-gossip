class AddForeignKeyToPosts < ActiveRecord::Migration[6.0]
  def change
    add_reference :posts, :author, references: :users, index: true
    add_foreign_key :posts, :users, column: :author_id
  end
end
