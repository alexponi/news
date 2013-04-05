class MainController < ApplicationController
  def index
    @posts = Post.paginate page: params[:page], order: 'created_at asc', per_page: 10

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
