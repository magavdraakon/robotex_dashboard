class AddYearToRobot < ActiveRecord::Migration
 def self.up
    add_column :robots, :year, :integer
  end

  def self.down
    remove_column :robots, :year
  end
end
