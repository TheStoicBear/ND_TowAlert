NDCore = exports["ND_Core"]:GetCoreObject()

if config["/tow"].enabled then
    RegisterNetEvent("ND_Towing:tow")
    AddEventHandler("ND_Towing:tow", function(coords, Description)
        local character = NDCore.Functions.GetSelectedCharacter()
        if not character then
            return
        end
        for _, department in pairs(config["/tow"].callTo) do
				TriggerEvent("chat:addMessage", {
					color = { 255, 0, 0},
					multiline = true,
					args = {"^7[^3Tow-Dispatch^7]", "^2We have got you request!"}
            })
            if character.job == department then
                local location = GetStreetNameFromHashKey(GetStreetNameAtCoord(coords.x, coords.y, coords.z))
                TriggerEvent("chat:addMessage", {
                    color = {255, 0, 0},
                    args = {"^7^*[^3Tow-Dispatch^7]]: ^2Location: ^7" .. location .. " ^2| Information: ^7" .. Description}
                })
                local blip = AddBlipForCoord(coords.x, coords.y, coords.z)
                SetBlipSprite(blip, 68)
                SetBlipAsShortRange(blip, true)
                BeginTextCommandSetBlipName("STRING")
                SetBlipColour(blip, 47)
                AddTextComponentString("Active Tow Call: " .. location)
                EndTextCommandSetBlipName(blip)
                Citizen.Wait(60 * 1000)
                RemoveBlip(blip)
                break
            end
        end
    end)
end