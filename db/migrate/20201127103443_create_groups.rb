class CreateGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|

      t.timestamps
    end
    add_reference :groups, :grouped_post, references: :posts, index: true
    add_foreign_key :groups, :posts, column: :grouped_post_id

    add_reference :groups, :grouped_category, references: :categories, index: true
    add_foreign_key :groups, :categories, column: :grouped_category_id
  end
end
