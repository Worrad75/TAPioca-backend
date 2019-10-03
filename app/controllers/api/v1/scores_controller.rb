class Api::V1::ScoresController < ApplicationController
  
  def index
    @scores = Score.all
    render json: @scores
  end

  def create
    score = Score.new(score_params)

    if score.save
      user = User.find_by(username: params[:username])
      game = Game.create(user_id: user.id, score_id: score.id) if user
      render json: {score: score, game: game}
    else 
      render json: {errors: score.errors.full_messages}
    end

  end

  def destroy
    score = Score.find(params[:id])
    score.destroy

    render json: {message: "Successfully deleted"}
  end

  private

  def score_params
    params.require(:score).permit(:tally)
  end
end
