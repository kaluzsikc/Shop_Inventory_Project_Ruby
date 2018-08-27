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
  erb( :'items/show' )
end

#NEW
get '/items/new' do
  erb(:'items/new')
end

#EDIT
get '/items/:id/edit' do
  @items = Item.find( params[:id] )
  erb( :'items/edit')
    # redirect to '/items'
  end

  #UPDATE
  post '/items/:id' do
  Item.new(params).update
  redirect to '/items/index'
  end

  #DELETE
  post '/items/:id/delete' do
    item = Item.find( params[:id] )
    item.delete()
    redirect to '/items'
  end
