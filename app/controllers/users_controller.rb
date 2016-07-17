class UsersController < ApplicationController

  def show
    @names = User.all
    @users = User.all
    @data = current_user.attributes.slice("cash","stock","bond","realestate","comodity","others").to_a
  end
  
  def new
    
  end

  def update
    current_user.update(update_params)
    redirect_to action: :show
  end



  private
  def update_params
    params.require(:user).permit(:cash,:stock,:bond,:realestate,:comodity,:others)
  end
end
