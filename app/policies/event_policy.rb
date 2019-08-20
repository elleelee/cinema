class EventPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    return true
  end

  def update?
    user.admin || record.user == user
  end

  def destroy?
    user.admin || record.user == user
  end
end
