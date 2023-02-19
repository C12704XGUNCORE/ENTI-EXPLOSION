function preventVehicleExplosion(vehicle)
    local health = vehicle:GetHealth()
    if health <= 0 then
      vehicle:SetHealth(1)
      vehicle:Explode(false)
    end
  end
  
  events.Add("OnVehicleDamage", preventVehicleExplosion)
  