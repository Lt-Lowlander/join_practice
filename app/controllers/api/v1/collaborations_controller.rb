class Api::V1::CollaborationsController < ApiController
  before_action :authorize_user, only: [:create, :edit, :update, :destroy]

  def authorize_user
    if !user_signed_in? || !current_user.admin?
      raise ActionController::RoutingError.new("Not Found")
    end
  end

  def index
    collabs = Collaborations.all
    render json: collabs
  end

  def show
      collabs = Collaborations.where(id: params[:id])
  end

end
