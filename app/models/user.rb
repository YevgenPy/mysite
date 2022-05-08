class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :email, presence: true, uniqueness: true
  validates :last_name, :first_name, presence: true
  has_many :posts, dependent: :destroy
  has_many :categories, dependent: :destroy
  encrypts :first_name
  encrypts :last_name

  enum role: [:noob, :moderator, :admin]
  after_initialize :set_default_role, :if => :new_record?
  def set_default_role
    self.role ||= :user
  end
end
