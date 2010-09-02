class Task < ActiveRecord::Base
  
   has_many :states, :dependent => :destroy
  has_many :robots, :through => :states
 
end
