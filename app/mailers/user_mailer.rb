class UserMailer < ActionMailer::Base
  default :from => "micropost.ull@gmail.com"
 
  def welcome_email(user)
    @user = user
    mail(:to => @user.email, :subject => "Bienvenido a Micropost!")
  end

  def new_follower(user,user_followed)
    @user = user
    @user_followed = user_followed
    mail(:to => @user_followed.email, :subject => "Tiene un nuevo seguidor!")
  end

  def unfollow_advice(user,user_followed)
    @user = user
    @user_followed = user_followed
    mail(:to => @user_followed.email, :subject => "Un usuario ha dejado de seguirle")
  end

  def new_password(user,newpassword)
    @user = user
    @newpassword = newpassword
    mail(:to => @user.email, :subject => "Se ha generado un nuevo password")
  end

end
