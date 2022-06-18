Citizen.CreateThread(function()
	while true do
		InvalidateIdleCam()
		InvalidateVehicleIdleCam() -- Disable the vehicle idle camera
		Wait(10000) --The idle camera activates after 30 second so we don't need to call this per frame
	end
end)
