class RobotsController < ApplicationController
  # GET /robots
  # GET /robots.xml
  def index
    @robots = Robot.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @robots }
    end
  end

  def state_of
    @robot = Robot.find(params[:id])
    @tasks=Task.find(:all)
    @all_weeks=State.find( :all, :select => ' DISTINCT week_no' )
    if params[:n2dal]==nil     
     @week_is= Time.now.strftime('%W') 
    else
     @week_is= params[:n2dal][:week_no]
   end
  end
  
  def state_edit
    @state = State.find(params[:id])
    @tasks=Task.find(:all)
  end

  def state_update
    @state=State.find(params[:id])
    parameetrid=params[:update]
    if @state.update_attributes(parameetrid)
      redirect_to :action=>'state_of', :id=> @state.robot_id
    else 
      render :action=>'state_edit'
    end
    
  end
  
  # GET /robots/1
  # GET /robots/1.xml
  def show
    @robot = Robot.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @robot }
    end
  end

  # GET /robots/new
  # GET /robots/new.xml
  def new
    @robot = Robot.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @robot }
    end
  end

  # GET /robots/1/edit
  def edit
    @robot = Robot.find(params[:id])
  end

  # POST /robots
  # POST /robots.xml
  def create
    @robot = Robot.new(params[:robot])

    respond_to do |format|
      if @robot.save
        format.html { redirect_to(@robot, :notice => 'Robot was successfully created.') }
        format.xml  { render :xml => @robot, :status => :created, :location => @robot }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @robot.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /robots/1
  # PUT /robots/1.xml
  def update
    @robot = Robot.find(params[:id])

    respond_to do |format|
      if @robot.update_attributes(params[:robot])
        format.html { redirect_to(@robot, :notice => 'Robot was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @robot.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /robots/1
  # DELETE /robots/1.xml
  def destroy
    @robot = Robot.find(params[:id])
    @robot.destroy

    respond_to do |format|
      format.html { redirect_to(robots_url) }
      format.xml  { head :ok }
    end
  end
end
