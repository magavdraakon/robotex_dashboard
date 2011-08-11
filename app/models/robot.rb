class Robot < ActiveRecord::Base
  
  after_create :gen_weeks
  
  validates :name,  :presence => true,
  :length => { :minimum => 3 }
  
   has_many :states, :dependent => :destroy
  has_many :tasks, :through => :states
 
  def gen_weeks
    for task in Task.find(:all)
      for week_n in 36..48
        State.create(:robot_id=>self.id, :task_id=>task.id,:progress=>0, :week_no=>week_n)
      end
    end
    
  end
end
