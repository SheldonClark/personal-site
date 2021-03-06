class PostsController < ApplicationController

	def index
		@posts = Post.all.order('created_at DESC')
	end

	def new

	end

	def show
		@post = Post.find(params[:id])
	end

	def create
		@post = Post.new(post_params)
		@post.save

		redirect_to @post
	end

	def update
		@post = Post.find(params[:id])

		if @post.update(params[:id].permit(:title, :body))
			redirect_to @post
		else
			render edit
		end
	end

	def destroy
		@post = Post.delete
	end

	private

	def post_params
		params.require(:post).permit(:title, :body)
	end
end
