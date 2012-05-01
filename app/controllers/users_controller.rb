class UsersController < ApplicationController
  before_filter :authenticate, :only => [:index, :edit, :update, :destroy]
  before_filter :correct_user, :only => [:edit, :update]
  before_filter :admin_user,   :only => :destroy
  def index
    @title = "Todos los usuarios"
    @users = User.paginate(:page => params[:page])
  end

  def show
    @user = User.find(params[:id])
    @microposts = @user.microposts.paginate(:page => params[:page])
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
  def edit
    @user = User.find(params[:id])
    @title = "Editar usuario"
  end
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:success] = "Perfil actualizado."
      redirect_to @user
    else
      @title = "Editar usuario"
      render 'edit'
    end
  end
  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "Usuario destruido."
    redirect_to users_path
  end
  private

    def authenticate
      deny_access unless signed_in?
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_path) unless current_user?(@user)
    end
    def admin_user
      redirect_to(root_path) unless current_user.admin?
    end
end
