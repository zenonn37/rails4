class CommentsController < ApplicationController

	def create
		@post = Post.find(params[:post_id])
		@comment = @post.comments.create(findParams)
		redirect_to post_path(@post)
		
	end

    private

	def findParams

		params.require(:comment).permit(:commenter,:body)
	end
end
