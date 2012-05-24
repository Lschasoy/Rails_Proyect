class UserMailer < ActionMailer::Base
  default :from => "micropost.ull@gmail.com"
 
  def welcome_email(user)
    @user = user
    mail(:to => user.email, :subject => "Bienvenido a Micropost!")
  end

  def new_follower(user,user_followed)
    @user = user
    @user_followed = user_followed
    mail(:to => user_followed.email, :subject => "Tiene un nuevo seguidor!")
  end

end
