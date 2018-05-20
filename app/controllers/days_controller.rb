class DaysController < ActionController::API

  def index
    @days = Day.all
    render json: @days, status: 200
  end


end
