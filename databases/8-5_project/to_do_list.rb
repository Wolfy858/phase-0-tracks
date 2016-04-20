require 'sqlite3'
require 'date'

db = SQLite3::Database.new("to_do_list.db")

db.execute(<<-SQL
  CREATE TABLE IF NOT EXISTS tasks(
    id INTEGER PRIMARY KEY,
    task VARCHAR(255),
    completed BOOLEAN,
    date_assigned DATE,
    worker_id INT, FOREIGN KEY (worker_id) REFERENCES workers(id)
  )
  SQL
)

db.execute(<<-SQL
  CREATE TABLE IF NOT EXISTS workers(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255)
  )
  SQL
)

def register_worker(db, name)
  db.execute("INSERT INTO workers (name) VALUES (?)", [name])
end

def create_task(db, task)
  db.execute("INSERT INTO tasks (task, completed, date_assigned, worker_id) VALUES (?, ?, ?, NULL)", [task, 0, Date.today.to_s])
end

def assign_task(db, task, worker_name)
  db.execute("UPDATE tasks SET worker_id= (?) WHERE task=(?)", [get_worker_id(db, worker_name)], [task])
end

def display_tasks(db)
  tasks = db.execute("SELECT * FROM tasks")
  tasks.each do |task|
    puts "Task #{task[1]} was assigned on #{task[3]} and is #{task[2] == 1 ? 'Completed' : 'Not yet completed'}."
    assigned_worker = db.execute("SELECT name FROM workers WHERE id= (?)", task[4])[0][0] unless task[4].nil?
    puts "It is currently #{task[4] == nil ? 'Unassigned' : "Assigned to #{assigned_worker}"}."
  end
end

def complete_task(db, task)
  db.execute("UPDATE tasks SET completed=1 WHERE task=(?)", [task])
end

def get_worker_id(db, worker_name)
  db.execute("SELECT id FROM workers WHERE name=(?) LIMIT 1", worker_name)[0][0]
end

def display_worker_tasks(db, worker_name)
  worker_task_arrays = db.execute("SELECT * FROM workers JOIN tasks ON workers.id = tasks.worker_id WHERE name= (?)", worker_name)
  puts "#{worker_name} has the following tasks:"
  worker_task_arrays.each do |array|
    puts array[3]
  end
end


loop do
  puts "What would you like to do? (add task, complete task, display tasks, register worker, assign task, display worker's tasks, or exit)"
  input = gets.chomp
  case input
  when "add task"
    puts "Enter a task description to add to the database"
    create_task(db, gets.chomp)
  when "complete task"
    puts "Enter a task to complete"
    complete_task(db, gets.chomp)
  when "display tasks"
    display_tasks(db)
  when "register worker"
    puts "Enter a worker's name to register"
    register_worker(db, gets.chomp)
  when "assign task"
    puts "Enter an existing task to assign"
    task = gets.chomp
    puts "Specify a worker to be assigned the task"
    assign_task(db, task, gets.chomp)
  when "display worker's tasks"
    puts "Select a worker to display their tasks"
    display_worker_tasks(db, gets.chomp)
  when "exit"
    break
  else
    puts "Sorry, I didn't understand that"
    redo
  end
end
