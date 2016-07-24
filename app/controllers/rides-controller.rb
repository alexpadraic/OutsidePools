get '/rides' do
    erb :"rides/index"
end

get '/rides/new' do
    erb :"/rides/new"
end

post '/rides/new' do
    p params
    p '4' * 20
    redirect '/rides/new'
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

get '/rides/:id' do
    # route to delete a ride
    redirect '/dashboard'
end

post '/rides/:id/delete' do 
Ride.find(params[:id]).destroy
redirect '/dashboard'
end

post '/drives/:id/delete' do 
Drive.find(params[:id]).destroy
redirect '/dashboard'
end

