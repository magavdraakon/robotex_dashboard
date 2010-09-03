class State < ActiveRecord::Base
  
  belongs_to :task
  belongs_to :robot
  validates :progress, :inclusion => { :in => 0..1 }
  

  validates_numericality_of :progress
end