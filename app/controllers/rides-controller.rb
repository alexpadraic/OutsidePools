get '/rides' do
    erb :"rides/index"
end

get '/rides/new' do
    erb :"/rides/new"
end

post '/rides/new' do
    @ride = Ride.create(user_id: session[:user_id], start_address: 4.0, end_address: 2.0, departure_min: params[:time_start], departure_max: params[:time_end], passengers: params[:passengers])
    redirect "/rides/#{@ride.id}/matches"
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

