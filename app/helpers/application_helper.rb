module ApplicationHelper
  def title
    base_title="ruby on rails tuturial sample app"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
end
