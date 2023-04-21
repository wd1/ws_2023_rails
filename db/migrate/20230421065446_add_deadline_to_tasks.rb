class AddDeadlineToTasks < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :deadline, :datetime
    Task.find_each do |task|
      task.deadline = rand(10.days).seconds.from_now
      task.save!
    end
  end
end
