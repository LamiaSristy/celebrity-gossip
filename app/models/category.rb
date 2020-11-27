class Category < ApplicationRecord
  belongs_to :creator, class_name: "User"
  
  has_many :groups, foreign_key: "grouped_category_id", class_name: "Group"
  has_many :grouped_posts, through: :groups    
end
