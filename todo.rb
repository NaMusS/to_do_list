require_relative 'config/application'
require_relative 'app/controllers/todo_controller'

# Driver
case ARGV[0]
when "--add"
when "--delete"
when "--list"
when "--set_done"
when "--help"
	puts "command: " + "ruby todo.rb --<option> <values if any>"
	puts "to add: " + "ruby todo.rb --add <Your Task in Sentence>"
	puts "to list: " + "ruby todo.rb --list"
	puts "to set item done: " + "ruby todo.rb --set_done <id number>"
	puts "to delete: " + "ruby todo.rb --delete <id number>"
	exit
else
	puts "Are you lost? maybe 'ruby todo.rb --help' can help you."
	exit
end

todo_controller = ToDo.new

case ARGV[0]
when "--add"
	ToDo.add(ARGV[1..-1].join(" "))
when "--delete"
	ToDo.delete(ARGV[1].to_i)
when "--list"
	ToDo.list
when "--set_done"
	ToDo.set_done(ARGV[1])
else
	puts "WTF! Who puts a bug inside here?!?!"
	exit
end