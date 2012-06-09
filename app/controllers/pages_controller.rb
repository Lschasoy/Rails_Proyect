class PagesController < ApplicationController
  def home
    @title = "Inicio"
    if signed_in?
      @micropost = Micropost.new
      @feed_items = current_user.feed.paginate(:page => params[:page], :per_page => 10)
    end
  end

  def contact
    @title = "Contacto"
  end

  def about
    @title = "Acerca de"
  end
  def help
    @title = "Ayuda"
  end
  def newpass
    @title = "Cambiar password"
    @email = ""
    @user = User.find_by_email(params[:email])

    if @user.nil?
      #flash.now[:error]"El email introducido no esta asociado a ningún usuario."
      @title = "Cambiar password"
      render 'newpass'
    else
    #Cambiar la contraseña del usuario
      @newpass=""
      6.times do 
        @newpass+=rand(10).to_s()
      end
      @user.password=@newpass
      @user.update_attributes!(@user)
    #Enviar email con la nueva contraseña
#       UserMailer.new_password(@user,@newpass).deliver
    #Cargar página de contraseña cambiada
      render 'newpassgen'
    end

  end
  def newpassgen
    @title = "Password cambiado"
  end

end
