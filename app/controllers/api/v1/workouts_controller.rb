class Api::V1::WorkoutsController < Api::V1::BaseController
  def index
    respond_with Workout.all
  end

  def create
    respond_with :api, :v1, Workout.create(workout_params)
  end

  def destroy
    respond_with Workout.destroy(params[:id])
  end

  def update
    workout = Workout.find(params["id"])
    workout.update_attributes(workout_params)
    respond_with workout, json: workout
  end

  private

  def workout_params
    params.require(:workour).permit(:id, :type, :timing, :equipment)
  end
end
