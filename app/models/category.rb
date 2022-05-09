class Category < ApplicationRecord
  has_ancestry
  searchkick
  has_many :posts
  belongs_to :user

  scope :search_import, -> { includes( :posts )}

  def search_data
    super().merge!(posts: posts.map { |post| post.description }.join(' '))
  end
end
