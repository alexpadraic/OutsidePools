get '/rides' do 
	erb :"rides/index"
end 

get '/rides/new' do
	erb :"/rides/new"
end

get '/rides/:id' do
	erb :"/rides/show"
end 

post '/rides' do
	redirect :"/rides"
end 