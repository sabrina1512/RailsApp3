class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.has_attribute?(:admin)
      can :manage, :all
    else
    can :manage, User, id: user.id
    end
  end
end
  
