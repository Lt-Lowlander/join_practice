class Api::V1::UsersController < ApiController

  def index
    users = User.all
    render json: users
  end

  def show
    users = User.where(id: params[:id])
    render json: users, include: ["challenges", "tasks"]
  end

end
