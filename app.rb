require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/places')

get('/') do
  @list = Places.all()
  erb(:input)
end

post('/') do
  name = params[:name]
  item = Places.new(name)
  item.save()
  @list = Places.all()
  erb(:input)
end
