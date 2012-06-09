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
  
   def formato(str)
    codigo = ""
    code = ""
    str.gsub (/youtube\.com\/watch\?v\=.*\s?/) do |url|
      codigo = url
      '#{url}'
    end
    codigo.gsub(/\?v\=.*\s?/) do |sec|
      code = sec[3..-1]
      'sec'
    end
    if code == ""
      ""
    else
      "http://www.youtube.com/v/#{code}"
    end
  end
  
  def formatear(str)
    a = str.split(" ")
    cadena = ""
    a.each do |word|
      if word =~ /(\:\)|\:-\)|\=\])/
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/smyle.png\" /> "
      else if word =~ /(:D|:-D|=D)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/happy.png\" /> "
      else if word =~ /(>:o|>:-o|>:O|>:-O)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/ill.png\" /> "
      else if word =~ /(:o|:O|:-o|:-O)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/surprise.png\" /> "
      else if word =~ /(:\(|:-\(|=\(|:\[)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/sad.png\" /> "
      else if word =~ /(;\)|;-\))/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/tick.png\" /> "
      else if word =~ /(:'\()/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/tears.png\" /> "
      else if word =~ /(:\*|:-\*)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/kiss.png\" /> "
      else if word =~ /(:p|:-p|:P|:-P)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/tonge.png\" /> "
      else if word =~ /(>:\(|>:-\()/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/angry.png\" /> "
      else if word =~ /(<3)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/love.png\" /> "
      else if word =~ /(:3)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/cat.png\" /> "
      else if word =~ /(\^_\^|\^-\^)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/friendly.png\" /> "
      else if word =~ /(-_-)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/eyes.png\" /> "
      else if word =~ /(o:\)|o:-\)|O:\)|O:-\)|0:\)|0:-\))/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/angel.png\" /> "
      else if word =~ /(3:\)|3:-\))/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/devil.png\" /> "
      else if word =~ /(:v)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/pacman.png\" /> "
      else if word =~ /(8\)|8-\)|B\)|B-\))/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/glasses.png\" /> "
      else if word =~ /(8\||8-\||B\||B-\|)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/sunglasses.png\" /> "
      else if word =~ /(:\/|:-\/|:\\|:-\\|:s|:S)$/
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/confusing.png\" /> "
      else if word =~ /(o\.O|O\.o|o\.0|0\.o)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/annoyed.png\" /> "
      else if word =~ /(xd+|xD+|XD+)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/laugth.png\" /> "
      else if word =~ /(:megusta:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/megusta.png\" /> "
      else if word =~ /(:fuckyea:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/fuckyea.png\" /> "
      else if word =~ /(:yuno:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/yuno.png\" /> "
      else if word =~ /(:trollface:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/trollface.png\" /> "
      else if word =~ /(:son:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/son.png\" /> "
      else if word =~ /(:lol:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/lol.png\" /> "
      else if word =~ /(:really:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/really.png\" /> "
      else if word =~ /(:ff*uuu*:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/fuuu.png\" /> "
      else if word =~ /(:happy:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/happy2.png\" /> "
      else if word =~ /(:u+mm*:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/umm.png\" /> "
      else if word =~ /(:okay:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/okay.png\" /> "
      else if word =~ /(:fuckyeagirl:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/fuckyeagirl.png\" /> "
      else if word =~ /(:motherofgod:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/motherofgod.png\" /> "
      else if word =~ /(:sadtroll:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/sadtroll.png\" /> "
      else if word =~ /(:yaoming:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/yaoming.png\" /> "
      else if word =~ /(:ninja:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/ninja.png\" /> "
      else if word =~ /(:emm*:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/emm.png\" /> "
      else if word =~ /(:fuuu*girl:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/fuuugirl.png\" /> "
      else if word =~ /(:happygirl:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/happygirl.png\" /> "
      else if word =~ /(:angry:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/angry2.png\" /> "
      else if word =~ /(:foreveralone:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/foreveralone.png\" /> "
      else if word =~ /(:challengeaccepted:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/challengeaccepted.png\" /> "
      else if word =~ /(:whynot:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/whynot.png\" /> "
      else if word =~ /(:trolldad:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/trolldad.png\" /> "
      else if word =~ /(:raisins:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/raisins.png\" /> "
      else if word =~ /(:pukerainbows:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/pukerainbows.png\" /> "
      else if word =~ /(:coo*l:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/cool.png\" /> "
      else if word =~ /(:fuuu*girl2:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/fuuugirl2.png\" /> "
      else if word =~ /(:omf:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/omf.png\" /> "
      else if word =~ /(:why:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/why.png\" /> "
      else if word =~ /(:neveralone:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/neveralone.png\" /> "
      else if word =~ /(:kiddingme:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/kiddingme.png\" /> "
      else if word =~ /(:suspicious:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/suspicious.png\" /> "
      else if word =~ /(:trollgirl:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/trollgirl.png\" /> "
      else if word =~ /(:inglip:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/inglip.png\" /> "
      else if word =~ /(:itsfree:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/itsfree.png\" /> "
      else if word =~ /(:mentira:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/mentira.png\" /> "
      else if word =~ /(:feellikeasir:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/feellikeasir.png\" /> "
      else if word =~ /(:cereales:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/cereales.png\" /> "
      else if word =~ /(:betterthanexpected:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/betterthanexpected.png\" /> "
      else if word =~ /(:aww*yea+:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/awwyea.png\" /> "
      else if word =~ /(:(fap)+girl:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/fapfapgirl.png\" /> "
      else if word =~ /(:(fap)+:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/fapfap.png\" /> "
      else if word =~ /(:trolledtroll:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/trolledtroll.png\" /> "
      else if word =~ /(:raisins2:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/raisins2.png\" /> "
      else if word =~ /(:jodete:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/jodete.png\" /> "
      else if word =~ /(:itssomething:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/itssomething.png\" /> "
      else if word =~ /(:pokerface:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/pokerface.png\" /> "
      else if word =~ /(:upset:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/upset.png\" /> "
      else if word =~ /(:u+f+:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/uf.png\" /> "
      else if word =~ /(:menti:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/menti.png\" /> "
      else if word =~ /(:mirada:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/mirada.png\" /> "
      else if word =~ /(:no:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/no.png\" /> "
      else if word =~ /(:nothing:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/nothing.png\" /> "
      else if word =~ /(:notbad2:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/notbad2.png\" /> "
      else if word =~ /(:notbad1:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/notbad1.png\" /> "
      else if word =~ /(:desprecio:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/desprecio.png\" /> "
      else if word =~ /(:friki:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/friki.png\" /> "
      else if word =~ /(:serious1:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/serious1.png\" /> "
      else if word =~ /(:serious2:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/serious2.png\" /> "
      else if word =~ /(:truestory:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/truestory.png\" /> "
      else if word =~ /(:observer:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/observer.png\" /> "
      else if word =~ /(:freddie:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/freddie.png\" /> "
      else if word =~ /(:jackie:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/jackie.png\" /> "
      else if word =~ /(https?|www|ftp)\S+/
	if word =~ /http/
	  cadena+=" <a href=\"#{word}\">#{word}</a> "
	else
	  if word =~ /https/
	    cadena+=" <a href=\"https://#{word}\">#{word}</a> "
	  else
	    cadena+=" <a href=\"http://#{word}\">#{word}</a> "
	  end
	end
      else
	cadena+=" #{word} "
      end end end end end end end end end end end end end end end end end end end end end end end end end end end end end end end end end end end end end end end end end end end end end end end end end end end end end end end end end end end end end end end end end end end end end end end end end end end end end end end end end end end end end end end 
    end
    cadena
    
  end
  
  def stylesheet(user)
   if user.is_a?(User)
    if user.color == "blue"
      "/stylesheets/style_blue.css"
    else
      if user.color == "red"
        "/stylesheets/style_red.css"
      else
        if user.color == "green"
          "/stylesheets/style_green.css"
	else
          if user.color == "yellow"
            "/stylesheets/style_yellow.css"
	  else
	    "/stylesheets/style.css"
	  end
	end
      end
    end
   else
     "/stylesheets/style.css"
   end
  end
  
  def paleta(color)
    if color == "blue"
      "blue"
    else
      if color == "red"
        "red"
      else
        if color == "green"
          "green"
	else
          if color == "yellow"
            "yellow"
	  else
	    "default"
	  end
	end
      end
    end
  end

  def notification(user)
    if user.notification == "1"
      "checked"
    else
      ""
    end
  end
  
end