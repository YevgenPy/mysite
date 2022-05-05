class Category < ApplicationRecord
  has_ancestry
  has_many :posts
  belongs_to :user, dependent: :destroy
end
