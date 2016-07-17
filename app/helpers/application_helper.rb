module ApplicationHelper
  def show_container
    unless controller.controller_name == 'introductions'
      'container'
    end
  end
end
