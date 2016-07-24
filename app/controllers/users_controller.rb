get '/users/new' do
    erb :'users/new'
end

post '/users/new' do
    @user = User.create(name: params[:name], email: params[:email], password: params[:password])
    if @user.save
        login(@user)

        redirect '/dashboard'
    else
        @error = 'Sorry, you entered in some wrong information - please try again.'

        erb :'users/new'
    end
end

get '/users/:id' do
    @user = User.find(session[:user_id]) if session[:user_id]

    erb :'users/show'
end

get '/users/delete' do
    User.find(session[:user_id]).destroy
    session[:user_id] = nil

    redirect '/'
end
