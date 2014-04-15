module ApplicationHelper

  def iconize(icon)
    "<i class=\"icon-#{icon}\"></i>".html_safe unless icon.nil?
  end

  def edit_link(object)
    # TODO: add tooltips
    link_to iconize(:pencil), edit_polymorphic_path(object)
  end

  def destroy_link(object)
    link_to iconize(:remove),
      polymorphic_path(@page),
      method: :delete,
      data: { confirm: t('confirmation') }
  end

end
