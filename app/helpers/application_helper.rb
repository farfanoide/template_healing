module ApplicationHelper

  def iconize(icon)
    "<i class=\"icon-#{icon}\"></i>".html_safe unless icon.nil?
  end

  def edit_link(object)
    link_to iconize(:pencil), edit_polymorphic_path(object)
  end

end
