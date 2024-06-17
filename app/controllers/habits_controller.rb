class HabitsController < ApplicationController

  def index
    @habits = Habit.order("created_at DESC")
    @habit = Habit.new
  end

  def create
    @habit = Habit.new(habit_params)
    if @habit.save
      redirect_to habits_path, notice: '習慣が正常に記録されました。'
    else
      @habits = Habit.order("created_at DESC")
      flash.now[:alert] = '習慣の記録に失敗しました。'
      render :index
    end
  end


  def habit_params
    params.require(:habit).permit(:content, :evaluation_id)
  end

end
