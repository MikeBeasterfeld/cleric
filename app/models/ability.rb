class Ability
  include CanCan::Ability

  def initialize(user)

    user ||= User.new # guest user (not logged in)

    if user.admin? || user.has_role?(:admin)
      Rails.logger.debug("--- abilities logged in admin")
      can :manage, :all
      can :update_password_for, User
    else
      can :read, Show
      can :read, Page
      can :read, RssFeed
      can :read, User
      can :read, Stylesheet

      can [:read, :audio], Episode, :live => true
      can [:audio, :next], Episode, :preview => true

      can :read, Blog, ["published_on <= ?", Date.today] do |blog|
        blog.published_on <= Date.today
      end

      if user.id
        #abilies for logged in users

        can [:read, :edit, :update, :audio], Episode, Episode.all do |episode|
          episode.hosts.include?(user) || episode.guests.include?(user) || episode.live || episode.preview
        end

        can [:edit, :update], User, :id => user.id
        can :update_password_for, User, :id => user.id

        #roles
        can :manage, Stylesheet if user.has_role? :templates
        can :manage, UserTemplate if user.has_role? :templates
        can :manage, User if user.has_role? :users
        can :manage, Show if user.has_role? :shows
        can :manage, Episodes if user.has_role? :episodes
      end
    end

  end
end
