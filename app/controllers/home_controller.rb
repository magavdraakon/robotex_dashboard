class HomeController < ApplicationController
  def index
    if params[:n2dal]==nil then
      @week_n=Time.now.strftime('%W')
    elsif  
      @week_n=params[:n2dal][:week_no] || @week_n=Time.now.strftime('%W')
    end
    @robots = Robot.find(:all)
    #@tasks=Task.find(:conditions => ["week_no == ?", 35 ], :include => :robot:all)
    @tasks=Task.find(:all)
    @all_weeks=State.find( :all, :select => ' DISTINCT week_no' )
    @states=State.find(:all, :conditions => ["week_no==?",@week_n])
  end
  
  def week
    @robot = Robot.find(:all)
    @tasks = Task.find(:all)
    @status = State.find(:all)
  end

  
end
