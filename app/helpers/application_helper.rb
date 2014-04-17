module ApplicationHelper

  def iconize(icon)
    "<i class=\"icon-#{icon}\"></i>".html_safe unless icon.nil?
  end

  def edit_link(object)
    # TODO: add tooltips
    link_to iconize(:pencil), edit_polymorphic_path(object)
  end

  def new_link(object)
    link_to iconize(object.class.to_s.downcase), new_polymorphic_path(object)
  end

  def destroy_link(object)
    link_to iconize(:remove),
      polymorphic_path(object),
      method: :delete,
      data: { confirm: t('confirmation') }
  end

  def show_link(object)
    link_to iconize(:eye), object
  end

  def back_link
     link_to iconize(:'arrow-left'), :back
  end

end
