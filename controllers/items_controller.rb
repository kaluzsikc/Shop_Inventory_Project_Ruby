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

get '/items/new' do
  erb(:'items/new')
end

#FIND BY ID
get '/items/:id' do
  @items = Item.find(params['id'].to_i)
  erb( :'items/show' )
end

# NEW
post '/items/new' do
  @item = Item.new( params )
  @item.save()
  erb ( :'items/index')
end

#DELETE
post '/items/:id/delete' do
    item = Item.find( params[:id] )
    item.delete()
    redirect to '/items'
end
