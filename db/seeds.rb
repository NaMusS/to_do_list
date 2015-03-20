require_relative '../app/models/task'
require 'faker'

9.times do
  Task.create(
    :task       => Faker::Hacker.say_something_smart,
    :status      => rand(1)
  )
end