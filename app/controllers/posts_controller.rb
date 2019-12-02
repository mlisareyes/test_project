class PostsController < ApplicationController
  configure do
    set :views, "app/views/posts"
  end

  get '/posts/new' do
    erb :new
  end

  post '/posts' do
    post=Post.create(params)
    redirect "/posts"
  end

  get '/posts' do
    @posts = Post.all
    erb :index
  end
end
