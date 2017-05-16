require 'sinatra'
require 'sinatra/activerecord'

set :database, "sqlite3:firstdb.sqlite3"

require './models'

get '/' do
	@posts = Post.all
	erb :index
end

post '/new_post' do
	Post.create(title: params[:title], category: params[:category], content: params[:content])
	redirect "/"
end