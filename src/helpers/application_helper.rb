module ApplicationHelper
  
  def body_id
    @body_id unless nil?
  end
  
  def body_class
    class_names.join(" ")
  end
  
  def body_class_current_page
    current_page.gsub("/", "").gsub(".html", "")
  end
  
  def class_names
    body_class = [body_class_current_page]
    body_class << @body_class unless @body_class.nil?
  end
  
end