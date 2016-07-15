class Comment < ActiveRecord::Base
	belongs_to :fabmoment
	belongs_to :user
end
