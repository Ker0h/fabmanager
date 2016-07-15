module SoftwareHelper

def fabmoment_software(fabmoment)
software = Array.new
	if fabmoment.software_illustrator
		software << "Adobe Illustrator"
	end

	if fabmoment.software_tinkercad
		software << "Tinkercad"
	end 

	if fabmoment.software_sketchup
		software << "Sketch Up"
	end

	if fabmoment.software_inkscape
		software << "Inkscape"
	end

	if fabmoment.software_blender
		software << "Blender"
	end
	
	return software
end
end