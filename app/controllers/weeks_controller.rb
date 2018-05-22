class WeeksController < ActionController::API

  def index
    @weeks = Week.all
    render json: @weeks, status: 200
  end

  def create
  @week = Week.create(weight: params['weight'], waist: params['waist'], body_fat: params['body_fat'], user_id: params['user_id'], date: params['date'])
    render json: @day, status: 201
  end


end
