module ApplicationHelper
  def render_template(obj, template)
    return Haml::Engine.new(template).render(obj)
  end

  def get_template(template)
    return UserTemplate.where(area: template).first.content
  end

  def get_and_render_template(obj, template)
    return render_template(obj, get_template(template))
  end
end
