module ApplicationHelper

  def iconize(icon)
    "<i class=\"icon-#{icon}\"></i>".html_safe unless icon.nil?
  end

  def edit_link(object)
    link_to iconize(:pencil), edit_polymorphic_path(object), data: {tooltip: t('edit')}, class: 'tooltip-top'
  end

  def new_link(object)
    link_to iconize(object.class.to_s.downcase), new_polymorphic_path(object), data: {tooltip: t('create')}, class: 'tooltip-top'

  end

  def destroy_link(object)
    link_to iconize(:trash),
      polymorphic_path(object),
      method: :delete,
      data: { confirm: t('confirmation'), tooltip: t('destroy') },
      class: 'tooltip-top'
  end

  def show_link(object)
    link_to iconize(:eye), object
  end

  def back_link
     link_to iconize(:'arrow-left'), :back
  end

end
