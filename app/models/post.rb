class Post < ApplicationRecord
  belongs_to :author, class_name: "User"
 
  has_many :groups
  has_many :categories, through: :groups

  has_many :comments

  has_many :likes

end
