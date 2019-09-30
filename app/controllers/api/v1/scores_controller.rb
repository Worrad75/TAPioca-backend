class Api::V1::ScoresController < ApplicationController
  
  def index
    @scores = Score.all
    render json: @scores
  end

  def destroy
    score = Score.find(params[:id])
    score.destroy

    render json: {message: "Successfully deleted"}
  end

end
