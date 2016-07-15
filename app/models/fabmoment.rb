class Fabmoment < ActiveRecord::Base
	attr_accessor :file, :file_cache, :remove_file
	attr_accessor :tag_names
	belongs_to :user
	has_many :comments, dependent: :destroy
	has_many :fabmoments_tags
	has_many :tags, through: :fabmoments_tags
	has_many :machines, through: :fabmoments_machines
	accepts_nested_attributes_for :machines
	has_and_belongs_to_many :programs
	has_and_belongs_to_many :materials
	#has_many :materials, through: :fabmoments_materials
	#has_many :fabmoments_materials
	#accepts_nested_attributes_for :fabmoments_materials

	mount_uploader :image, ImageUploader
	mount_uploader :file, FileUploader


	validates :title, presence: {message: ":Er is geen titel ingevuld"}
	validates :desc, presence: {message: ":Er is geen beschrijving ingevuld"}
	validates :mo, presence: {message: ":Er is geen werkwijze ingevuld"}
	validates :settings, presence: {message: ":Er zijn geen instellingen ingevuld"}
	validates :wentwell, presence: {message: ":Er is niet ingevuld wat er goed ging"}
	validates :wentbad, presence: {message: ":Er is niet ingevuld wat er fout ging"}
	validates :nexttime, presence: {message: ":Er is niet ingevuld wat er de volgende keer verbeterd moet worden"}
	validates :rights, presence: {message: ":Er is geen naamsvermelding ingevuld"}
	validates :file, presence: {message: ":Er is geen projectbestand geupload"}
	validates_integrity_of :file, message: ":Het projectbestand moet een van de volgende bestandstypes zijn: dae\nskp
													\nobj\ncdr\neps\nai\ndxf\nsvg\nstl\ntxt\nmillproject\n scad\n fcstd\nescad
													\nblend \nfzz \nini g\ngcode\nngc\n3dm\nsldprt\nsldasm"


	def tag_names=(names)
		@tag_names = names
		names.split.each do |name|
			self.tags << Tag.find_or_initialize_by(name: name)
		end
	end

	def self.tagged_with(tag)
		name = Tag.find(tag).name
		Tag.find_by!(name: name).fabmoments
	end

	def self.search(search)
	  if search
	    Fabmoment.where('lower(title) LIKE ?', "%#{search.downcase}%").order(:created_at)
	  else
	    Fabmoment.all
	  end
	end

	def self.filter(machine_filter, material_filter, software_filter)
		if machine_filter == ""
			machine_filter = nil
		end
		if material_filter == ""
			material_filter = nil
		end
		if software_filter == ""
			software_filter = nil
		end

	  if machine_filter or material_filter or software_filter
	 	Fabmoment.where(:machine_ids.include?(Machine.find(machine_filter)))
	  else
	 	Fabmoment.all 
	  end
	end
end
