class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def show
    @user= User.find_by(id:params[:id])
  end

  def new
    @user =User.creare
  end

  def create
    User.create(name:params["user"]["name"],email:params["user"]["email"])
    redirect_to "/user/index"

  
  end

  def edit
    @user = User.find_by(id:params[:id])
    
  end
  def update
    @user = User.find_by(id:params[:id])
    @user.name =params[:user][:name]
    @user.email = params[:user][:email]
    if@user.save
      flash[:notice]="編集完了！"
      redirect_to "/user/index"
    else render ("/users/edit")
    end
  end
  def destroy
    @user = User.find_by(id:params[:id])
    @user.destroy
    @user.save
    redirect_to "/user/index"
  end

end
