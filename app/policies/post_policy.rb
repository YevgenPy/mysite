class PostPolicy < ApplicationPolicy
  attr_reader :user, :record
  def index?
    user.admin? || user.moderator? || user.noob?
  end

  def show?
    user.admin? || user.moderator? || user.noob?
  end

  def new?
    user.admin? || user.moderator?
  end

  def create?
    user.admin?
  end

  def update?
    user.admin? || user.moderator?
  end

  def destroy?
    user.admin?
  end
end
