class Tag < ActiveRecord::Base
	has_many :fabmoments_tags
	has_many :fabmoments, through: :fabmoments_tags

	def self.counts
		#self.select("name, count(fabmoments_tags.tag_id) as count").joins(:fabmoments_tags).group("fabmoments_tags.tag_id")
		self.group(:id, :name).count
	end
end
