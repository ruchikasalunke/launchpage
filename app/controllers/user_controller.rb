class UserController < ApplicationController
  
  
  
  
  def index
  end
   
    def show
    @user = User.find(params[:id])
    end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)    # Not the final implementation!
    if @user.save
      # Handle a successful save.
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end
  
  

    def user_params
      params.require(:user).permit(:firstname, :lastname, :email, :role)
    end
    


    
    
end



