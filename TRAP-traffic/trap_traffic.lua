local function getCurrentZoneMultipliers()
    return 0.0, 0.0, 0.0, 0.0 -- PEDS,CARS,PARKED CARS AND SCENARIO PEDS (ONLY CHANGE THIS)
end

Citizen.CreateThread(function()                  -- DONT NEED TO TOUCH
    while true do
        Citizen.Wait(0)
        local pedMultiplier, vehicleMultiplier, parkedVehicleMultiplier, scenarioPedMultiplier = getCurrentZoneMultipliers()
        
        SetPedDensityMultiplierThisFrame(pedMultiplier)
        SetVehicleDensityMultiplierThisFrame(vehicleMultiplier)
        SetRandomVehicleDensityMultiplierThisFrame(vehicleMultiplier)
        SetParkedVehicleDensityMultiplierThisFrame(parkedVehicleMultiplier)
        SetScenarioPedDensityMultiplierThisFrame(scenarioPedMultiplier)
    end
end)
