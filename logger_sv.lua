local logs = "https://discord.com/api/webhooks/784032647889551372/F67_um_eQZ9yLdUMkKcPrkcdouMVoy9kvy5hlZru0L9RRVMsplY5-iwrO6sJoRrMzbHi"
local communityname = "Indovice System"
local communtiylogo = "https://media.discordapp.net/attachments/764897771295080478/784035058255921183/indovice_logo.png" --Must end with .png or .jpg

AddEventHandler('playerConnecting', function()
local name = GetPlayerName(source)
--local ip = GetPlayerEndpoint(source)
--local ping = GetPlayerPing(source)
local steamhex = GetPlayerIdentifier(source)
local connect = {
        {
            ["color"] = "2067276",
            ["title"] = "Player Connected to Server",
            ["description"] = "Player: **"..name.."**\n Steam Hex: **"..steamhex.."**",
	        ["footer"] = {
                ["text"] = "Indovice System - "..os.date("%x %X %p"),
                ["icon_url"] = communtiylogo,
            },
        }
    }

PerformHttpRequest(logs, function(err, text, headers) end, 'POST', json.encode({username = "IndoVice System Log", embeds = connect}), { ['Content-Type'] = 'application/json' })
end)

AddEventHandler('playerDropped', function(reason)
local name = GetPlayerName(source)
--local ip = GetPlayerEndpoint(source)
local ping = GetPlayerPing(source)
local steamhex = GetPlayerIdentifier(source)
local disconnect = {
        {
            ["color"] = "10038562",
            ["title"] = "Player Disconnected from Server",
            ["description"] = "Player: **"..name.."** \nReason: **"..reason.."**\n Steam Hex: **"..steamhex.."**" ,
	        ["footer"] = {
                ["text"] = "Indovice System - "..os.date("%x %X %p"),
                ["icon_url"] = communtiylogo,
            },
        }
    }

    PerformHttpRequest(logs, function(err, text, headers) end, 'POST', json.encode({username = "IndoVice System Log", embeds = disconnect}), { ['Content-Type'] = 'application/json' })
end)


local serverup = {
    {
        ["color"] = "1752220",
        ["title"] = "Server Mengudara !",
        ["description"] = "Badai berlalu, kini kota kita telah kembali pulih dari badai \nSelamat menjalankan aktivitas kembali para warga ! \n\n**__#HappyRoleplay!__**",
        ["footer"] = {
            ["text"] = "Indovice System - "..os.date("%x %X %p"),
            ["icon_url"] = communtiylogo,
        },
    }
}
PerformHttpRequest(logs, function(err, text, headers) end, 'POST', json.encode({username = "IndoVice System Log", embeds = serverup}), { ['Content-Type'] = 'application/json' })