module ApplicationHelper

  def body_tag(&block)
    content = capture(&block)
    cls = params[:controller].gsub(/\//, '-')
    content_tag :body, content, class: cls
  end
end

