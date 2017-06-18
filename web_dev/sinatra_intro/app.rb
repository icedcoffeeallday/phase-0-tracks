# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

###
#Add a /contact route that displays an address (you can make up the address).

get '/contact/:address' do
  "My address is #{params[:address]}."
end

#Great job route
get '/great_job' do
  great_name = params[:name]
  if great_name
    "Great job, #{great_name}!"
  else
    "Great job!"
  end
end

#add two numbers, watch yer data formats
get '/:first_num/plus/:second_num' do
  first_number = params[:first_num].to_i
  second_number = params[:second_num].to_i
  sum = first_number + second_number
  "Sum of #{first_number} and #{second_number} is #{sum}"
end
