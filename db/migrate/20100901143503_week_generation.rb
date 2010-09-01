class WeekGeneration < ActiveRecord::Migration
  def self.up
  for robot in 1..3
    for task in 1..53
      for week_n in 35..48
        State.create(:robot_id=>robot, :task_id=>task, :week_no =>week_n )
        end
     end
  end
   # State.create(:robot_id=> :task_id=> :week_no => )

  end

  def self.down
  end
end
