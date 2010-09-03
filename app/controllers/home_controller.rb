class HomeController < ApplicationController
  def index
    @week_n=params[:n2dal] || @week_n='53'
    @robot = Robot.find(:all)
    @tasks=Task.find(:all)
    @all_weeks=State.find( :all, :select => ' DISTINCT week_no' )
  end
  
  def week
    @robot = Robot.find(:all)
    @tasks = Task.find(:all)
    @status = State.find(:all)
  end

  
end
