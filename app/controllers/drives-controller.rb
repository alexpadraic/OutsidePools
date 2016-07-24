get '/drives' do
    erb :"drives/index"
end

get 'drives/new' do
    erb :"drives/new"
end

post 'drives/new' do
    redirect 'drives/new'
end

get '/drives/:id' do
    erb :"drives/show"
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
