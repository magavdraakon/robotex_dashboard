class State < ActiveRecord::Migration
  def self.up
    create_table :states do |t|
      t.integer :robot_id
      t.integer :task_id
      t.float :progress
      t.integer :week_no
      t.timestamps
    end
  end

  def self.down
    drop_table :states
  end
end
