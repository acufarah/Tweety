# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, Chirp
    can :create, Chirp
    can :show, Chirp

    if user.present?  # additional permissions for logged in users (they can read their own posts)
     
        can :read, Chirp
        can :create, Chirp
        can :show, Chirp
        can :edit, Chirp, user_id: user.id
        can :update, Chirp, user_id: user.id
        can :destroy, Chirp, user_id: user.id
    end
    
  end
end
