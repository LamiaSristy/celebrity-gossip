class Category < ApplicationRecord
  belongs_to :creator, class_name: "User"
  
  has_many :groups
  has_many :posts, through: :groups
end
