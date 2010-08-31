class CreateRobots < ActiveRecord::Migration
  def self.up
    create_table :robots do |t|
      t.string :name
      t.string :homepage
      t.text :content

      t.timestamps
    end
  end

  def self.down
    drop_table :robots
  end
end
