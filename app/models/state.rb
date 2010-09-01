class State < ActiveRecord::Base
  
  belongs_to :task
  belongs_to :robot
end