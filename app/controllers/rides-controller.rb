get '/rides' do
    erb :"rides/index"
end

get '/rides/new' do
    erb :"/rides/new"
end

post '/rides' do
    redirect '/rides'
end

get '/rides/:id/matches' do
    erb :'rides/matches'
end

post '/rides/:id/matches' do
    redirect '/rides/:id/matches'
end

get '/rides/all' do
    erb :'rides/all'
end

post '/rides/all' do
    erb :'rides/all'
end
