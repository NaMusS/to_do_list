require_relative '../../config/application'

class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
		t.column :task, :string
		t.column :status, :integer, limit: 1, default: 0
		t.timestamps null: false
    end
  end
end