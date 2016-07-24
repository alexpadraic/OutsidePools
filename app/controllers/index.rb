get '/' do
    erb :'homepage/index'
end

get '/dashboard' do
    @user = User.find(session[:user_id])
    erb :'/dashboard'
end
