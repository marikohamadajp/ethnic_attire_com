class UserPolicy < ApplicationPolicy

  def dashboard?
    record.id == user.id
  end
end
