class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :authoured_posts, class_name: 'Post', foreign_key: 'author_id'

  has_many :created_categories, class_name: 'Category', foreign_key: 'creator_id'

  has_many :comments

  has_many :likes
end
