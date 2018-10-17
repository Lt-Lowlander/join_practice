class Api::V1::ChallengesController < ApiController

  def index
    challenges = Challenge.all
    render json: challenges
  end

  def show
    challenge = Challenge.find(params[:id])
    render json: challenge, include: ["users", "tasks"]
  end

end
