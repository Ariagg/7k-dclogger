local logs = "place-you-discord-connectiong-log-here"
local communityname = "7k-discord-logger"
local communtiylogo = "link-your-logo" --Must end with .png or .jpg

AddEventHandler('playerConnecting', function()
local name = GetPlayerName(source)
--local ip = GetPlayerEndpoint(source) --Enable this if you want to display player ip
local steamhex = GetPlayerIdentifier(source)
local connect = {
        {
            ["color"] = "2067276",
            ["title"] = "Player Connected to Server",
            ["description"] = "Player: **"..name.."**\n Steam Hex: **"..steamhex.."**",
	        ["footer"] = {
                ["text"] = "7k-resource - "..os.date("%x %X %p"),
                ["icon_url"] = communtiylogo,
            },
        }
    }

PerformHttpRequest(logs, function(err, text, headers) end, 'POST', json.encode({username = "7k-resource", embeds = connect}), { ['Content-Type'] = 'application/json' })
end)

AddEventHandler('playerDropped', function(reason)
local name = GetPlayerName(source)
--local ip = GetPlayerEndpoint(source) --Enable this if you want to display player ip
local ping = GetPlayerPing(source)
local steamhex = GetPlayerIdentifier(source)
local disconnect = {
        {
            ["color"] = "10038562",
            ["title"] = "Player Disconnected from Server",
            ["description"] = "Player: **"..name.."** \nReason: **"..reason.."**\n Steam Hex: **"..steamhex.."**" ,
	        ["footer"] = {
                ["text"] = "7k-resource - "..os.date("%x %X %p"),
                ["icon_url"] = communtiylogo,
            },
        }
    }

    PerformHttpRequest(logs, function(err, text, headers) end, 'POST', json.encode({username = "7k-resource", embeds = disconnect}), { ['Content-Type'] = 'application/json' })
end)


local serverup = {
    {
        ["color"] = "1752220",
        ["title"] = "Server Mengudara !",
        ["description"] = "Badai berlalu, kini kota kita telah kembali pulih dari badai \nSelamat menjalankan aktivitas kembali para warga ! \n\n**__#HappyRoleplay!__**",
        ["footer"] = {
            ["text"] = "7k-resource - "..os.date("%x %X %p"),
            ["icon_url"] = communtiylogo,
        },
    }
}
PerformHttpRequest(logs, function(err, text, headers) end, 'POST', json.encode({username = "7k-resource", embeds = serverup}), { ['Content-Type'] = 'application/json' })
