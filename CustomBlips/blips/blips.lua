-- ╔═══╗────────╔╗╔╗──────╔╗
-- ║╔══╝───────╔╝╚╣║──────║║
-- ║╚══╦╗╔╦╗╔╦═╩╗╔╣╚═╦══╦═╝║
-- ║╔══╩╬╬╣╚╝║║═╣║║╔╗║╔╗║╔╗║
-- ║╚══╦╬╬╣║║║║═╣╚╣║║║╚╝║╚╝║
-- ╚═══╩╝╚╩╩╩╩══╩═╩╝╚╩══╩══╝
-- Add as much stuff as you need
-- Cfx Blips website: https://docs.fivem.net/docs/game-references/blips/
local blips = {

     {title="Example", colour=52, id=141, x = 1737.1256, y = 3027.9854, z = 67.9953},
     {title="Example2", colour=51, id=142, x = 1757.1256, y = 3017.9854, z = 65.9953}
}

-- Do not touch any thing under this
Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 2)
      SetBlipScale(info.blip, 1.0)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)