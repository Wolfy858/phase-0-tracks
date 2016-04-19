require 'sqlite3'

db = SQLite3::Database.new("to_do_list.db")

db.execute(<<-SQL
  CREATE TABLE IF NOT EXISTS tasks(
    id INTEGER PRIMARY KEY,
    task VARCHAR(255),
    completed BOOLEAN
  )
  SQL
)

def create_task(db, task)
  db.execute("INSERT INTO tasks (task, completed) VALUES (?, ?)", [task, 0])
end

def display_tasks(db)
  tasks = db.execute("SELECT * FROM tasks")
  tasks.each do |task|
    puts "Task #{task[1]} is #{task[2] == 1 ? 'Completed' : 'Not yet completed'}."
  end
end

def complete_task(db, task)
  db.execute("UPDATE tasks SET completed=1 WHERE task='#{task}'")
end

# create_task(db, "Get a haircut")
# create_task(db, "Do laundry")
#
# complete_task(db, "Do laundry")
#
# p db.execute("SELECT * FROM tasks")
#
# display_tasks(db)


loop do
  puts "What would you like to do? (add task, complete task, display tasks, exit)"
  input = gets.chomp
  case input
  when "add task"
    puts "Enter a task description to add to the database"
    create_task(db, gets.chomp)
  when "complete task"
    puts "Enter a task to complete"
    complete_task(db, gets.chomp)
  when "display_tasks"
    display_tasks(db)
  when "exit"
    break
  else
    puts "Sorry, I didn't understand that"
    redo
  end
end
