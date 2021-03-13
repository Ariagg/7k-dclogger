Citizen.CreateThread(function()
    while true do
	SetDiscordAppId("Place Your App ID")
	SetDiscordRichPresenceAsset('your-big-picture-asset-name')
        local playerName = GetPlayerName(PlayerPedId(-1))
        SetDiscordRichPresenceAssetText(string.format("%s", playerName))
	SetDiscordRichPresenceAssetSmall('darah')
	--local darah = GetEntityHealth(GetPlayerPed(-1))
	SetDiscordRichPresenceAssetSmallText(string.format("7k-resource"))
	local maxPlayerSlots = "69"
	local playerCount = #GetActivePlayers()
        SetRichPresence(string.format("%s/%s Warga", playerCount, maxPlayerSlots))
	Citizen.Wait(60000)
	end
end)
