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
end
