class CreateGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
      t.references :post, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.timestamps
    end

  end
end
