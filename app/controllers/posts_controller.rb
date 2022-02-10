class PostsController < ApplicationController
  before_action :set_post, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:show, :index,:search]

  def index
    @post = Post.all.order("created_at DESC")
    # @posts = Post.recent_first.paginate(:page => params[:page], :per_page => 10)

    # @posts = Post.first(:order => 'id DESC')
    # render json: @post
 end

  def search
    # @post = Post.where("title LIKE?","%"+params[:q]+"%")
      # byebug
    @query  = params[:query]
    @post = Post.where("posts.title ILIKE ?",["%#{@query}%"])
    render "index"

  end 

  def show
    @post = Post.find(params[:id])
    render :show
    # render json: @post
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def create
    # byebug
    @post = Post.new(post_params)
    @post.user = current_user

    respond_to do |format|
      if @post.save
        format.html { redirect_to post_url(@post), notice: "Book successfully created." }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to post_url(@post), notice: "Book successfully updated." }
        # format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @post.destroy

    respond_to do |format|
      format.html { redirect_to posts_url, notice: "Book successfully deleted." }
      format.json { head :no_content }
    end
  end

  # def download
  #   user = User.find_by(email: params[:email])
  #   if user.present? && user.authenticate(params[:password])
  #     render : post.file

  # end

  def Downloadbook
  end 

  private
    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :description, :author, :b_subject, :image, :avatar, :attachment)

    end
end
