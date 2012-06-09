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
      elsif word =~ /(:D|:-D|=D)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/happy.png\" /> "
      elsif word =~ /(>:o|>:-o|>:O|>:-O)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/ill.png\" /> "
      elsif word =~ /(:o|:O|:-o|:-O)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/surprise.png\" /> "
      elsif word =~ /(:\(|:-\(|=\(|:\[)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/sad.png\" /> "
      elsif word =~ /(;\)|;-\))/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/tick.png\" /> "
      elsif word =~ /(:'\()/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/tears.png\" /> "
      elsif word =~ /(:\*|:-\*)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/kiss.png\" /> "
      elsif word =~ /(:p|:-p|:P|:-P)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/tonge.png\" /> "
      elsif word =~ /(>:\(|>:-\()/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/angry.png\" /> "
      elsif word =~ /(<3)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/love.png\" /> "
      elsif word =~ /(:3)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/cat.png\" /> "
      elsif word =~ /(\^_\^|\^-\^)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/friendly.png\" /> "
      elsif word =~ /(-_-)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/eyes.png\" /> "
      elsif word =~ /(o:\)|o:-\)|O:\)|O:-\)|0:\)|0:-\))/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/angel.png\" /> "
      elsif word =~ /(3:\)|3:-\))/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/devil.png\" /> "
      elsif word =~ /(:v)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/pacman.png\" /> "
      elsif word =~ /(8\)|8-\)|B\)|B-\))/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/glasses.png\" /> "
      elsif word =~ /(8\||8-\||B\||B-\|)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/sunglasses.png\" /> "
      elsif word =~ /(:\/|:-\/|:\\|:-\\|:s|:S)$/
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/confusing.png\" /> "
      elsif word =~ /(o\.O|O\.o|o\.0|0\.o)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/annoyed.png\" /> "
      elsif word =~ /(xd+|xD+|XD+)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/laugth.png\" /> "
      elsif word =~ /(:megusta:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/megusta.png\" /> "
      elsif word =~ /(:fuckyea:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/fuckyea.png\" /> "
      elsif word =~ /(:yuno:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/yuno.png\" /> "
      elsif word =~ /(:trollface:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/trollface.png\" /> "
      elsif word =~ /(:son:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/son.png\" /> "
      elsif word =~ /(:lol:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/lol.png\" /> "
      elsif word =~ /(:really:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/really.png\" /> "
      elsif word =~ /(:ff*uuu*:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/fuuu.png\" /> "
      elsif word =~ /(:happy:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/happy2.png\" /> "
      elsif word =~ /(:u+mm*:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/umm.png\" /> "
      elsif word =~ /(:okay:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/okay.png\" /> "
      elsif word =~ /(:fuckyeagirl:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/fuckyeagirl.png\" /> "
      elsif word =~ /(:motherofgod:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/motherofgod.png\" /> "
      elsif word =~ /(:sadtroll:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/sadtroll.png\" /> "
      elsif word =~ /(:yaoming:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/yaoming.png\" /> "
      elsif word =~ /(:ninja:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/ninja.png\" /> "
      elsif word =~ /(:emm*:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/emm.png\" /> "
      elsif word =~ /(:fuuu*girl:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/fuuugirl.png\" /> "
      elsif word =~ /(:happygirl:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/happygirl.png\" /> "
      elsif word =~ /(:angry:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/angry2.png\" /> "
      elsif word =~ /(:foreveralone:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/foreveralone.png\" /> "
      elsif word =~ /(:challengeaccepted:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/challengeaccepted.png\" /> "
      elsif word =~ /(:whynot:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/whynot.png\" /> "
      elsif word =~ /(:trolldad:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/trolldad.png\" /> "
      elsif word =~ /(:raisins:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/raisins.png\" /> "
      elsif word =~ /(:pukerainbows:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/pukerainbows.png\" /> "
      elsif word =~ /(:coo*l:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/cool.png\" /> "
      elsif word =~ /(:fuuu*girl2:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/fuuugirl2.png\" /> "
      elsif word =~ /(:omf:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/omf.png\" /> "
      elsif word =~ /(:why:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/why.png\" /> "
      elsif word =~ /(:neveralone:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/neveralone.png\" /> "
      elsif word =~ /(:kiddingme:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/kiddingme.png\" /> "
      elsif word =~ /(:suspicious:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/suspicious.png\" /> "
      elsif word =~ /(:trollgirl:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/trollgirl.png\" /> "
      elsif word =~ /(:inglip:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/inglip.png\" /> "
      elsif word =~ /(:itsfree:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/itsfree.png\" /> "
      elsif word =~ /(:mentira:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/mentira.png\" /> "
      elsif word =~ /(:feellikeasir:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/feellikeasir.png\" /> "
      elsif word =~ /(:cereales:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/cereales.png\" /> "
      elsif word =~ /(:betterthanexpected:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/betterthanexpected.png\" /> "
      elsif word =~ /(:aww*yea+:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/awwyea.png\" /> "
      elsif word =~ /(:(fap)+girl:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/fapfapgirl.png\" /> "
      elsif word =~ /(:(fap)+:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/fapfap.png\" /> "
      elsif word =~ /(:trolledtroll:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/trolledtroll.png\" /> "
      elsif word =~ /(:raisins2:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/raisins2.png\" /> "
      elsif word =~ /(:jodete:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/jodete.png\" /> "
      elsif word =~ /(:itssomething:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/itssomething.png\" /> "
      elsif word =~ /(:pokerface:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/pokerface.png\" /> "
      elsif word =~ /(:upset:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/upset.png\" /> "
      elsif word =~ /(:u+f+:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/uf.png\" /> "
      elsif word =~ /(:menti:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/menti.png\" /> "
      elsif word =~ /(:mirada:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/mirada.png\" /> "
      elsif word =~ /(:no:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/no.png\" /> "
      elsif word =~ /(:nothing:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/nothing.png\" /> "
      elsif word =~ /(:notbad2:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/notbad2.png\" /> "
      elsif word =~ /(:notbad1:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/notbad1.png\" /> "
      elsif word =~ /(:desprecio:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/desprecio.png\" /> "
      elsif word =~ /(:friki:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/friki.png\" /> "
      elsif word =~ /(:serious1:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/serious1.png\" /> "
      elsif word =~ /(:serious2:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/serious2.png\" /> "
      elsif word =~ /(:truestory:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/truestory.png\" /> "
      elsif word =~ /(:observer:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/observer.png\" /> "
      elsif word =~ /(:freddie:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/freddie.png\" /> "
      elsif word =~ /(:jackie:)/ 
	cadena+=" <img class=\"icon\" alt=\"#{word.downcase}\"  src=\"/images/icon/jackie.png\" /> "
      elsif word =~ /(http|www|ftp)\S+/
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
      end
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