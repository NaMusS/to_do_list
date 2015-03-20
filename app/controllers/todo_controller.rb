require_relative "../views/tasks_view"

class ToDo
	def self.add(task)
	  Task.create(
	    :task       => task.to_s,
	    :status     => 0
	  )
	end

	def self.delete(task_number)
	  Task.all[task_number.to_i - 1].destroy
	end

	def self.list
		tasks = Task.all
		printout = []

		tasks.each_with_index do |task, index|
			string = (index + 1).to_s + ") "
			if task.status != 0
				string << "[X] "
			else
				string << "[] "
			end
			string << task.task
			printout.push(string)
		end
		TasksView.print_array(printout)
	end

	def self.set_done(task_number)
		user = Task.find_by(id: task_number).update(status: 1)
	end
end

