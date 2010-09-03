class HomeController < ApplicationController
  def index
    @week_n=params[:n2dal] || 'week'+@week_n=Time.now.strftime('%W')
    @robots = Robot.find(:all)
    #@tasks=Task.find(:conditions => ["week_no == ?", 35 ], :include => :robot:all)
    @tasks=Task.find(:all)
    @all_weeks=State.find( :all, :select => ' DISTINCT week_no' )
    @states=State.find(:all, :conditions => ["week_no==?",35])
  end
  
  def week
    @robot = Robot.find(:all)
    @tasks = Task.find(:all)
    @status = State.find(:all)
  end

  
end
