require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/manufacturer.rb' )
require_relative( '../models/item.rb' )

also_reload( '../models/*' )


#Index
get '/manufacturers' do
  @manufacturer = Manufacturer.all()
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
  @manufacturer.save()
  erb (:'manufacturers/create')
  # redirect to '/manufacturers'
end

#EDIT
get '/manufacturers/:id/edit' do
  @manufacturer = Manufacturer.find( params[:id] )
  erb ( :'manufacturers/edit')
end

#UPDATE
post '/manufacturers/:id' do
  Manufacturer.new(params).update
  redirect to '/manufacturers'
end

#DELETE
post '/manufacturers/:id/delete' do
  manufacturer = Manufacturer.find( params[:id] )
  manufacturer.delete()
  redirect to '/manufacturers'
end
