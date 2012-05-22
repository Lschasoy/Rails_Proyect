class PagesController < ApplicationController

  def home
    @title = "Inicio"
    if signed_in?
      @micropost = Micropost.new
      @feed_items = current_user.feed.paginate(:page => params[:page])
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
end
