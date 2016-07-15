class Upload < ActiveRecord::Base
	mount_uploader :image, ImageUploader

	belongs_to :fabmoment
end
