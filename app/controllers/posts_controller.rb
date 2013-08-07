class PostsController < ApplicationController

     public

     def index
     	@post = Post.all
     end

	def new
	end


	def create

		#render text: params[:post].inspect
		#create and save new model attributes
		@post = Post.new(post_params)

		if @post.save
		redirect_to @post
	else
		render 'new'
	 end
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])

		if @post.update(post_params)
			redirect_to @post
		else
		 render 'edit'
		end
	end


	def show
		@post = Post.find(params[:id])
	end

	





	private

	def post_params
		params.require(:post).permit(:title,:text)
	end


		
end
