class PagesController < ApplicationController

  def home
    @title = "Inicio"
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
