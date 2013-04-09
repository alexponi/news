class MainController < ApplicationController
  def index
    if (params[:rating]) != nil
      if params[:rating] == "1"
        @posts = Post.page(params[:page]).order('vote DESC','id ASC').per_page(8)  
      elsif (params[:rating]) == "2"
        @posts = Post.page(params[:page]).order('id DESC').per_page(8)
      else
        @posts = Post.page(params[:page]).order('id ASC').per_page(8)
      end
    else
      @posts = Post.page(params[:page]).order('id ASC').per_page(8)  
    end
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
    end
  end

  def show
  	@post = Post.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @post }
    end
  end
end  
