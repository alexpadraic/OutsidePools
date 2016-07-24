get '/drives' do
	erb :"drives/index"
end

get 'drives/new' do
	erb :"drives/new"
end 

get '/drives/:id' do
	erb :"/drives/show"
end

post '/drives' do 
	redirect :"drives/index"
end 

