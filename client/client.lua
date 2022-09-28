local speak = false
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(10)
        local status = NetworkIsPlayerTalking(PlayerId())
        if status and not speak then
            speak = true
            SendNUIMessage({action = 'speak', active = true})
        elseif not status and speak then
            speak = false
            SendNUIMessage({action = 'speak', active = false})
        end
    end
end)

RegisterNetEvent('pma-voice:setTalkingMode')
AddEventHandler('pma-voice:setTalkingMode', function(lvl)
    SendNUIMessage({action = 'voice', lvl = tostring(lvl)})
end)