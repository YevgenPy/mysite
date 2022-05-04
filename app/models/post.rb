class Post < ApplicationRecord
  belongs_to :category, dependent: :destroy
end
