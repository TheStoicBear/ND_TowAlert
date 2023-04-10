NDCore = exports["ND_Core"]:GetCoreObject()

if config["/tow"].enabled then
    RegisterCommand("tow", function(source, args, rawCommand)
        local player = source
        TriggerClientEvent("ND_Towing:tow", -1, GetEntityCoords(GetPlayerPed(player)), table.concat(args, " "))
    end, false)
end