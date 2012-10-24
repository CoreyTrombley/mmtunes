module ApplicationHelper
  def create_nav_item(name, url)
    is_active = (name.downcase == controller.controller_name)
    link = "<li class='#{is_active ? "active" : ""}'>" + link_to(name, url) + "</li>"
    link.html_safe 
  end
end
