module ApplicationHelper
  def full_title(page_title = '')
    base_title = "Ruby on Rails Tutorial Sample App"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  def agent_mobile?
    request.user_agent =~ /Mobile|webOS/
  end
end
