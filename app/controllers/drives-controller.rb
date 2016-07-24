get '/drives' do
    erb :"drives/index"
end

get 'drives/new' do
    erb :"drives/new"
end

post 'drives/new' do
    redirect 'drives/new'
end

post '/drives' do
    redirect 'drives/index'
end

get '/drives/:id/matches' do
    erb :'drives/matches'
end

post '/drives/:id/matches' do
    redirect '/drives/:id/matches'
end

get '/drives/all' do
    erb :'drives/all'
end

post '/drives/all' do
    erb :'drives/all'
end

get '/drives/:id' do
    # route to delete a drive
    redirect '/dashboard'
end
