class CategoryPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    user.admin?
  end

  def update?
    user.admin?
  end

  def destroy?
    user.admin?
  end
  def index?
    user.admin? || user.moderator? || user.noob?
  end

  def show?
    user.admin? || user.moderator? || user.noob?
  end
end
