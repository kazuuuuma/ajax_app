class PostsController < ApplicationController

  def index
    @posts = Post.all.order(id: "DESC")
  end

  def create
    Post.create(content: params[:content])
  end

  def checked
    post = Post.find(papams[:id])
    if post.checked
      post.update(checked: false)
    else
      post.update(checked:ture)
    end

    item Post.find(params[:id])
    render jdon: { post: item }
  end
