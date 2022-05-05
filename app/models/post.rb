class Post < ApplicationRecord
  belongs_to :category, dependent: :destroy
  belongs_to :user, dependent: :destroy
end
