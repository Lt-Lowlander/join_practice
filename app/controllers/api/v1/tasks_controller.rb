class Api::V1::TasksController < ApiController

  def index
    tasks = Task.where(challenge_id: params[:challenge_id])
    render json: tasks
  end

  def show
    tasks = Task.where(challenge_id: params[:challenge_id], id: params[:id])
    render json: tasks
  end

end
