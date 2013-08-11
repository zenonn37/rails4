class PostsController < ApplicationController

     public

     def index
     	@post = Post.all
     end

	def new
		@post = Post.new
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

	def destroy
		@post = Post.find(params[:id]) #find object to destroy
		@post.destroy #destroy object
		redirect_to posts_path #redirect to listing page
	end

	





	private

	def post_params
		params.require(:post).permit(:title,:text)
	end


		
end
