class UsersController < ApplicationController
  before_filter :authenticate, :except => [:show, :new, :create]
#  before_filter :authenticate, :only => [:index, :edit, :update, :destroy]
  before_filter :correct_user, :only => [:edit, :update]
  before_filter :admin_user,   :only => :destroy
  def index
    @title = "Todos los usuarios"
    @users = User.paginate(:page => params[:page], :per_page => 10)
  end

  def show
    @user = User.find(params[:id])
    @microposts = @user.microposts.paginate(:page => params[:page], :per_page => 10)
    @title = @user.name
  end

  def new
    @user = User.new
    @title = "Nuevo usuario"
  end
  def create
    @user = User.new(params[:user])
    if @user.save
      if @user.notification == "1" 
        UserMailer.welcome_email(@user).deliver
      end
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
  def following
    @title = "Siguiendo"
    @user = User.find(params[:id])
    @users = @user.following.paginate(:page => params[:page], :per_page => 10)
    render 'show_follow'
  end

  def followers
    @title = "Seguidores"
    @user = User.find(params[:id])
    @users = @user.followers.paginate(:page => params[:page], :per_page => 10)
    render 'show_follow'
  end

  def search
    @projects = User.search(params[:search])
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
