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





		get '/search' do
			@search = params[:search]

			@search_result = Post.where(category: @search)

			erb :search
		end






				get '/' do
					redirect "/"
					erb :new_user
				end

				get '/new_user' do
					User.create(userName: params[:userName], password: params[:password],
					comment: params[:comment])
					@users = User.all
					erb :new_user
					
				end

