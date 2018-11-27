require('sinatra')
require('sinatra/reloader')
require('pry')
also_reload('lib/**/*.rb')
require('./lib/project')
require('capybara')


@@display = "none"
@@new_riddle = Riddles.new()
@@random_riddle = @@new_riddle.random_riddle.join()
@@answer = @@new_riddle.find_answer
@@hint = @@new_riddle.find_hint

get('/') do
  @@display = "none"
  erb(:input)
end

post('/output') do

  @user_answer = params.fetch("riddle")
  @answer = params.fetch("answer")
  if @user_answer === @answer
    erb(:success)
  else
    @@display = "block"
    erb(:input)

  end
end
