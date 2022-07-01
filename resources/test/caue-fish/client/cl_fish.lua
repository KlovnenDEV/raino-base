--[[

    Variables

]]

local CaughtFishAmount = 20

--[[

    Events

]]

RegisterServerEvent("caue-fishing:start")
AddEventHandler("caue-fishing:start", function()

  if exports["caue-inventory"]:hasEnoughofItem("fishingrod", 1) then
    TriggerEvent('DoLongHudText', 'Select A Zone', 1)
    TriggerEvent("caue-fishing:startFishing")
  else
    TriggerEvent('DoLongHudText', 'You Need A Fishing Rod', 1)
  end
end)

RegisterServerEvent("caue-fishing:stop")
AddEventHandler("caue-fishing:stop", function()
)