class Api::V1::UsersController < ApiController
  before_action :authorize_user, only: [:create, :edit, :update, :destroy]

  def authorize_user
    if !user_signed_in? || !current_user.admin?
      raise ActionController::RoutingError.new("Not Found")
    end
  end

  def index
    users = User.all
    render json: users
  end

  def show
    users = User.where(id: params[:id])
    render json: users
  end

end
