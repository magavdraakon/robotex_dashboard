class Task < ActiveRecord::Base
  after_create :add_state
   has_many :states, :dependent => :destroy
  has_many :robots, :through => :states
 
  def add_state
    for robot in Robot.find(:all)
      for week_n in 36..48
        State.create(:robot_id=>robot.id, :task_id=>self.id,:progress=>0, :week_no=>week_n)
      end
    end
  end
end
