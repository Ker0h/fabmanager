module MaterialHelper

def fabmoment_materials(fabmoment)
materials = Array.new
# Lasercutter materials
	if fabmoment.multiplex_3mm
		materials << "Multiplex 3mm"
	end

	if fabmoment.multiplex_4mm
		materials << "Multiplex 4mm"
	end

	if fabmoment.multiplex_6mm
		materials << "Multiplex 6mm"
	end

	if fabmoment.plexiglas_trans_3mm
		materials << "Plexiglas Transparant 3mm"
	end

	if fabmoment.plexiglas_trans_5mm
		materials << "Plexiglas Transparant 5mm"
	end

	if fabmoment.plexiglas_trans_10mm
		materials << "Plexiglas Transparant 10mm"
	end 

	if fabmoment.plexiglas_trans_15mm
		materials << "Plexiglas Transparant 15mm"
	end

	if fabmoment.plexiglas_white_3mm
		materials << "Plexiglas Wit 3mm"
	end

	if fabmoment.plexiglas_white_5mm
		materials << "Plexiglas Wit 5mm"
	end

	if fabmoment.plexiglas_blue_3mm
		materials << "Plexiglas Blauw 3mm"
	end

	if fabmoment.plexiglas_ylw_3mm
		materials << "Plexiglas Geel 3mm"
	end

	if fabmoment.plexiglas_grn_trans_3mm
		materials << "Plexiglas Groen Transparant 3mm"
	end

	if fabmoment.plexiglas_red_trans_3mm
		materials << "Plexiglas Rood Transparant 3mm"
	end

	if fabmoment.cardboard
		materials << "Karton"
	end

	if fabmoment.cardboard_wave
		materials << "Karton (golf)"
	end

	# Vinylcutter materials
	if fabmoment.vinyl
		materials << "Vinyl (Div. kleuren)"
	end
	
	if fabmoment.foil
		materials << "Applicatiefolie"
	end

	# Printer materials
	if fabmoment.pla
		materials << "PLA Ultimaker"
	end

	return materials
end
end