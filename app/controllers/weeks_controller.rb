class WeeksController < ActionController::API

  def index
    @weeks = Week.all
    render json: @weeks, status: 200
  end


end
