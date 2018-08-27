require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/manufacturer.rb' )

get '/manufacturers' do
  @manufacturers = Manufacturer.all()
  erb ( :'manufacturers/index')
end
