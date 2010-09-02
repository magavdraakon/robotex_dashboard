class Robot < ActiveRecord::Base
  validates :name,  :presence => true,
  :length => { :minimum => 3 }
  
   has_many :states, :dependent => :destroy
  has_many :tasks, :through => :states
 
  
end
