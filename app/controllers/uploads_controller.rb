class UploadsController < ApplicationController
	def show
		upload = Upload.find(params[:id])
		send_file upload.image.path, disposition: :inline
	end

	def new
		@index = params[:index].to_i
		@fabmoment = Fabmoment.new
		@fabmoment.uploads.build
		render layout: false
	end
end
