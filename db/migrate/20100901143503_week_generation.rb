class WeekGeneration < ActiveRecord::Migration
  def self.up

  for robot in Robot.find(:all)
    for task in Task.find(:all)
      for week_n in 36..48
       #State.create( :robot_id=>robot.id, :task_id=>task.id, :progress=>0, :week_no=>week_n )
          State.create(:robot_id=>robot.id, :task_id=>task.id,:progress=>0, :week_no=>week_n)
        end
     end
  end
  # State.create(:robot_id=> :task_id=> :week_no => )
  end

  def self.down
  end
end
