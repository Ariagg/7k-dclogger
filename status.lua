Citizen.CreateThread(function()
    while true do
		SetDiscordAppId(785253255374307338)
		SetDiscordRichPresenceAsset('indovice')
        local playerName = GetPlayerName(PlayerPedId(-1))
        SetDiscordRichPresenceAssetText(string.format("%s", playerName))
		SetDiscordRichPresenceAssetSmall('darah')
		--local darah = GetEntityHealth(GetPlayerPed(-1))
		SetDiscordRichPresenceAssetSmallText(string.format("discord.st/IndoVice"))
		local maxPlayerSlots = "50"
		local playerCount = #GetActivePlayers()
        SetRichPresence(string.format("%s/%s Warga", playerCount, maxPlayerSlots))
		Citizen.Wait(60000)
	end
end)