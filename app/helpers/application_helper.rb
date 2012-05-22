module ApplicationHelper

  # Return a title on a per-page basis.
  def title
    base_title = "Micropost"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
  
  def logo
    image_tag("logo.png", :alt => "Sample App", :class => "round")
  end
  
   def formato(str)
    codigo = ""
    code = ""
    str.gsub (/www\.youtube\.com\/watch\?v\=.*$/) do |url|
      codigo = url
      '#{url}'
    end
    codigo.gsub(/\?v\=.*[&$]/) do |sec|
      code = sec[3..-2]
      'sec'
    end
    if code == ""
      ""
    else
      "http://www.youtube.com/v/#{code}"
    end
  end
  
  def formatear(str)
    codigo = ""
    code = ""
    str.gsub (/www\.youtube\.com\/watch\?v\=.*$/) do |url|
      codigo = url
      '#{url}'
    end
    codigo.gsub(/\?v\=.*[&$]/) do |sec|
      code = sec[3..-2]
      'sec'
    end
    if code == ""
      ""
    else
      "http://www.youtube.com/watch?v=#{code}"
    end
  end
  
end
