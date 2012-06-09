module UsersHelper
  
  def gravatar_for(user, options = { :size => 50 })
    h = { 0 => "identicon", 1 => "monsterid", 2 => "wavatar", 3 => "retro" }
    options["d"]=h[3-user.id%4]
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "http://gravatar.com/avatar/#{gravatar_id}"
    gravatar_image_tag(gravatar_url, :alt => h(user.name),
                                     :class => 'gravatar',
                                     :gravatar => options)
  end
  
end
