get '/drives' do
    erb :"drives/index"
end

get '/drives/new' do
    erb :'drives/new'
end

post '/drives/new' do
    @drive = Drive.create(user_id: session[:user_id], start_address: 4.0, end_address: 2.0, departure_min: params[:time_start], departure_max: params[:time_end], seats_available: params[:passengers], tolerance_in_miles: 3)
    redirect "/drives/#{@drive.id}/matches"
end

post '/drives' do
    redirect '/drives/index'
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

post '/drives/:id/delete' do
    Drive.find(params[:id]).destroy
    redirect '/dashboard'
end
