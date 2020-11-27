class Post < ApplicationRecord
  belongs_to :author, class_name: "User"

  has_many :groups, foreign_key: "grouped_post_id", class_name: "Group"
  has_many :grouped_categories, through: :groups

  has_many :comments
  
  has_many :likes
end
