class Group < ApplicationRecord
  belongs_to :grouped_post, class_name: "Post"
  belongs_to :grouped_category, class_name: "Categoty"
end
