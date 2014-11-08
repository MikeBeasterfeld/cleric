class Ability
  include CanCan::Ability

  def initialize(user)

    user ||= User.new # guest user (not logged in)

    if user.admin?
      Rails.logger.debug("--- abilities logged in admin")
      can :manage, :all
    elsif user.editor?
      Rails.logger.debug("--- abilities logged in editor")
      can :manage, :all
      can :read, User
      can [:edit, :update], User, :id => user.id
    elsif user.id
      Rails.logger.debug("--- abilities logged in user")
      can :read, Show

      can :next, Episode, :preview => true

      can [:read, :edit, :update], Episode, Episode.all do |episode|
        Rails.logger.debug("--- abilities hosts #{episode.hosts}")
        Rails.logger.debug("--- abilities guests #{episode.guests}")
        Rails.logger.debug("--- abilities user #{user}")

        episode.hosts.include?(user) || episode.guests.include?(user) || episode.live || episode.preview
      end

      can :read, RssFeed
      can :read, User
      can [:edit, :update], User, :id => user.id

      can :read, Blog do |blog|
        blog.published_on >= Date.today
      end
    else
      Rails.logger.debug("--- abilities not logged in")

      can :read, Show

      can :read, Episode, :live => true
      can :next, Episode, :preview => true

      can [:audio], Episode, :live => true


      can :read, RssFeed
      can :read, User

      can :read, Blog do |blog|
        blog.published_on >= Date.today
      end
    end

    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/bryanrite/cancancan/wiki/Defining-Abilities
  end
end
