require('sinatra')
require('sinatra/reloader')
require('pry')
also_reload('lib/**/*.rb')
require('./lib/project')
require('capybara')

get('/')do
  erb(:input)
end

post('/output') do
  @answer = params.fetch("riddle")
  if @answer === "human being" || @answer === "human" || @answer === "man"
    erb(:success)
  else
    erb(:failure)
  end
end
