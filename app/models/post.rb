class Post < ApplicationRecord
  searchkick
  belongs_to :category
  belongs_to :user
end
