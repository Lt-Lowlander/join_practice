class Api::V1::ChallengesController < ApiController
  before_action :authorize_user, only: [:create, :edit, :update, :destroy]

  def authorize_user
    if !user_signed_in? || !current_user.admin?
      raise ActionController::RoutingError.new("Not Found")
    end
  end

  def index
      challenges = Challenge.all
      render json: challenges
  end

  def show
      challenge = Challenge.find(params[:id])
      render json: challenge, include: ["users"]
  end

end
