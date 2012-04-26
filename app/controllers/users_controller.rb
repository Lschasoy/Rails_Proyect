class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @title = @user.name
  end

  def new
    @user = User.new
    @title = "Nuevo usuario"
  end
  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash[:success] = "Bienvenido a Micropost!"
      redirect_to @user
    else
      @title = "Nuevo usuario"
      render 'new'
    end
  end
end
