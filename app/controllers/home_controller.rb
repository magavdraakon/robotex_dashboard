class HomeController < ApplicationController
  def index
    if params[:state]==nil then
      @week_no=Time.now.strftime('%W')
      @year_no=Time.now.strftime('%Y')
    elsif  
      @week_no=Time.now.strftime('%W')
      @year_no=Time.now.strftime('%Y')
      @week_no=params[:state][:week_no] if params[:state][:week_no]!="" 
      @year_no=params[:state][:year_no] if params[:state][:year_no]!=""
    end
    
    @tasks=Task.find(:all, :order=>"display_order")
    
    @robots =Robot.find(:all, :conditions=>["year=?", @year_no])
    
    @states=[]
    @tasks.each do |t|
      @states[t.id]=[]
    end
    @rob=[]
    @robots.each do |r|
      @rob[r.id]=0
    end
    states=State.find(:all, :conditions => ["week_no=?",@week_no])
    states.each do |s|
      @states[s.task.id][s.robot.id]=s.progress
      @rob[s.robot.id]+=s.progress if @rob[s.robot.id]!=nil
    end
    #@tasks=Task.find(:conditions => ["week_no == ?", 35 ], :include => :robot:all)
    
    @all_weeks=State.find( :all, :select => ' DISTINCT week_no' )
    #@states=State.find(:all, :conditions => ["week_no=? robot_id in ?",@week_n, robots])
  end
  
  def week
    @robot = Robot.find(:all)
    @tasks = Task.find(:all)
    @status = State.find(:all)
  end

  
end
