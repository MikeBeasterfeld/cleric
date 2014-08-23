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
end
