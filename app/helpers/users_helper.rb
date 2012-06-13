module UsersHelper
  
  def gravatar_for(user, options = { :size => 50 })
    h = { 0 => "identicon", 1 => "monsterid", 2 => "wavatar", 3 => "retro" }
    options["d"]=h[3-user.id%4]
    email = user.email
    gravatar_id = Digest::MD5.hexdigest("sergiojgl@gmail.com")
    gravatar_url = "http://gravatar.com/avatar/#{gravatar_id}"
    gravatar_image_tag(gravatar_url, :alt => email,
                                     :class => 'gravatar',
                                     :gravatar => options)
  end
  
end
