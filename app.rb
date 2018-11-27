require('sinatra')
require('sinatra/reloader')
require('pry')
also_reload('lib/**/*.rb')
require('./lib/project')
require('capybara')

get('/')do
  @new_riddle = Riddles.new()
  @answer = @new_riddle.find_answer
  binding.pry
  erb(:input)
end

# post('/output') do
#
#   @answer = params.fetch("riddle")
#   @answer1 = params.fetch("riddle1")
#   @answer2 = params.fetch("riddle2")
#   # if @answer === "human" && @answer1 === "chessmen" && @answer2 === "teabag"
#   #   erb(:success)
#   # else
#   #   erb(:failure)
#   # end
# end
