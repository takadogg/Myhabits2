class HabitsController < ApplicationController

  def index
    @habits = Habit.order("created_at DESC")
  end

  def create
  end

end
