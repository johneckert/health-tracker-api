class UsersController < ActionController::API

  def index
    @users = User.all
    render json: @users, status: 200
  end


end
