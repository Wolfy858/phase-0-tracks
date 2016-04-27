# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

get '/students/delete' do
  erb :delete_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

post '/students/delete' do
  db.execute("DELETE FROM students WHERE name=(?)", [params[:name]])
  redirect '/'
end

get '/students/:name/cohortmates' do
  @campus_id = db.execute("SELECT campuses.id FROM students
  JOIN campuses ON students.campus_id = campuses.id WHERE students.name = (?)", [params[:name]])
  @cohortmates = db.execute("SELECT name FROM students WHERE campus_id = (?)", [@campus_id[0]['id']])
  erb :cohortmates
end





# post '/students/:' do
#   db.execute("UPDATE students SET name= (?) campus=(?) age=(?) WHERE  )
# end

# add static resources
