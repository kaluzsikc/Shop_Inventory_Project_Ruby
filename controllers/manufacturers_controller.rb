require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/manufacturer.rb' )

get '/manufacturers' do
  @manufacturers = Manufacturer.all()
  erb ( :'manufacturers/index')
end

#New
get '/manufacturers/new' do
  erb ( :'manufacturers/new')
end

#Show
get '/manufacturers/:id' do
  @manufacturer = Manufacturer.find(params['id'].to_i)
  erb ( :'manufacturers/show' )
end

# Create
post '/manufacturers/new' do
  @manufacturer = Manufacturer.new( params )
  @Manufacturer.save()
  erb ( :'manufacturers/index')
end
