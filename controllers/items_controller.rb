require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/item.rb' )
require_relative( '../models/manufacturer.rb' )
also_reload( '../models/*' )

get '/items' do
  @items = Item.all()
  erb ( :'items/index')
end


get '/items/:id' do
  @items = Item.find(params['id'].to_i)
  erb( :"items/show" )
end
