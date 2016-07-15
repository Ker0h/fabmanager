class CommentsController < ApplicationController
	before_filter :authenticate_user!, only: [:new, :edit, :update, :destroy]
	before_action :set_comment, only: [:show, :edit, :update, :destroy]
	before_action :set_fabmoment, only: [:show, :edit, :update, :destroy]

	def show
	end

	def edit
	end

	def create
		@fabmoment = Fabmoment.find(params[:fabmoment_id])
		@comment = @fabmoment.comments.build(comment_params)
		@comment.user_id = current_user.id if current_user 

		if @comment.save
			redirect_to @fabmoment,
						notice: 'Comment is succesvol aangemaakt.'
		else
			redirect_to @fabmoment,
						alert: 'Er is een fout opgetreden bij het aanmaken van de comment.'
		end
	end

	 def update
	@fabmoment = Fabmoment.find(params[:fabmoment_id])

    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to @fabmoment,
        		 notice: 'Comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment }
      else
        format.html { render :edit }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

	def destroy
	@comment.destroy
    	respond_to do |format|
      	format.html { redirect_to fabmoments_url, notice: 'Comment is succesvol verwijderd.' }
      	format.json { head :no_content }
    	end
	end


	private
	def set_comment
		@comment = Comment.find(params[:id])
	end

	def set_fabmoment
		@fabmoment = Fabmoment.find(params[:fabmoment_id])
	end

	def comment_params
		params.require(:comment).permit(:title, :content)
	end
end
