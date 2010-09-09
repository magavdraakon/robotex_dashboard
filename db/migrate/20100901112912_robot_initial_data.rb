class RobotInitialData < ActiveRecord::Migration
  
  def self.up
    Robot.create(:name =>'madistajad', 
    :homepage =>'https://robot.itcollege.ee:3000/projekt/projects/madistajad', 
    :content =>'siia tuleb midagi')
     Robot.create(:name =>'tont', 
    :homepage =>'https://robot.itcollege.ee/wiki/index.php/Nimetu', 
    :content =>'siia tuleb midagi')
      Robot.create(:name =>'digipallur', 
    :homepage =>'https://robot.itcollege.ee/wiki/index.php/Digipallur', 
    :content =>'siia tuleb midagi')
     Robot.create(:name =>'AaaEee', 
    :homepage =>'https://robot.itcollege.ee/wiki/', 
    :content =>'siia tuleb midagi')     
  end

  def self.down
  end
end
