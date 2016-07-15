module MachineHelper

def fabmoment_machines(fabmoment)
machines = Array.new
	if fabmoment.machines_ultimaker_original
		machines << "Ultimaker Original"
	end

	if fabmoment.machines_ultimaker_original_plus
		machines << "Ultimaker Original Plus"
	end

	if fabmoment.machines_ultimaker_two
		machines << "Ultimaker Two"
	end 

	if fabmoment.machines_ultimaker_two_plus
		machines << "Ultimaker Two Plus"
	end

	if fabmoment.machines_lasercutter
		machines << "Lasersnijder"
	end

	if fabmoment.machines_vinylcutter
		machines << "Vinylsnijder"
	end

	if fabmoment.machines_scanner
		machines << "3D Scanner"
	end
	
	return machines
end
end
