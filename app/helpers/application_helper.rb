module ApplicationHelper
  def render_template(obj, template)
    return Haml::Engine.new(template).render(obj)
  end

  def get_template(template)
    content = UserTemplate.where(area: template).first.content

    throw if content.strip.length == 0

    return content
  end

  def get_and_render_template(obj, template)
    return render_template(obj, get_template(template))
  end

  def database_css(controller, action)
    stylesheet = Stylesheet.find_template(controller, action)
    if stylesheet
      stylesheet_link_tag stylesheet_path(stylesheet, format: :css), media: "all"
    end
  end

  def get_page_title
    return @page_title if !@page_title.nil?

    ENV['site_title'] || 'Cleric'
  end

  def get_user_asset(name)
    Medium.asset_url(name)
  end

end
