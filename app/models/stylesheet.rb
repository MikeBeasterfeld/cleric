class Stylesheet < ActiveRecord::Base

  def self.find_template(controller, action)
    stylesheets = Stylesheet.where(controller: controller)

    if stylesheets.count > 1
      action_stylesheet = stylesheets.select{ |s| stylesheet.action == action }
      return action_stylesheet.first if action_stylesheet.count > 0

      return stylesheets.select{ |s| stylesheet.action.nil? }.first
    end

    stylesheets.first
  end

  def self.controllers
    [
      'stylesheets',
      'static_pages',
      'shows',
      'episodes',
      'users'
    ]
  end
end
