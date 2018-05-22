class DaysController < ActionController::API

  def index
    @days = Day.all
    render json: @days, status: 200
  end

  def create
    @day = Day.create(
      hunger: params['hunger'].to_i,
      cravings: params['cravings'].to_i,
      satiety: params['satiety'].to_i,
      energy_level: params['energy_level'].to_i,
      well_being: params['well_being'].to_i,
      processed_carbs: params['processed_carbs'].to_i,
      stress_reduction_am: params['stress_reduction_am'],
      stress_reduction_pm: params['stress_reduction_pm'],
      after_meal_walk_am: params['after_meal_walk_am'],
      after_meal_walk_pm: params['after_meal_walk_pm'],
      joyful_movement: params['joyful_movement'],
      presleep_routine: params['presleep_routine'],
      date: params['date'],
      user_id: params['user_id']
    )
    render json: @day, status: 201
  end



end
