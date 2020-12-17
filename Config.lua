DiscordWebhookSystemInfos = 'GANTI INI DI logger_sv'
DiscordWebhookKillinglogs = 'place your dicord-killing-webhook here'
DiscordWebhookChat = 'place your command-chat-log here'

SystemAvatar = 'https://media.discordapp.net/attachments/764897771295080478/784035058255921183/indovice_logo.png'

UserAvatar = 'https://media.discordapp.net/attachments/764897771295080478/784035058255921183/indovice_logo.png'

SystemName = 'IndoVice System Log'


--[[ Special Commands formatting
		 *YOUR_TEXT*			--> Make Text Italics in Discord
		**YOUR_TEXT**			--> Make Text Bold in Discord
	   ***YOUR_TEXT***			--> Make Text Italics & Bold in Discord
		__YOUR_TEXT__			--> Underline Text in Discord
	   __*YOUR_TEXT*__			--> Underline Text and make it Italics in Discord
	  __**YOUR_TEXT**__			--> Underline Text and make it Bold in Discord
	 __***YOUR_TEXT***__		--> Underline Text and make it Italics & Bold in Discord
		~~YOUR_TEXT~~			--> Strikethrough Text in Discord
]]
-- Use 'USERNAME_NEEDED_HERE' without the quotes if you need a Users Name in a special command
-- Use 'USERID_NEEDED_HERE' without the quotes if you need a Users ID in a special command


-- These special commands will be printed differently in discord, depending on what you set it to
SpecialCommands = {
				   {'/ooc', '**[OOC]:**'},
				   {'/do', '**[/do]**'},
				   {'/pdg', '**[/pdg]**'},
				   {'/tax', '**[/tax]**'},
				   {'/me', '**[/me]:**'},
				   {'/mech', '**[/mech]:**'},
				   {'/darkad', '**[/darkad]:**'},
				   {'/mec', '**[/mec]:**'},
				   {'/pol', '**[/pol]:**'},
				   {'/ems', '**[/ems]:**'},
				  }

						
-- These blacklisted commands will not be printed in discord
BlacklistedCommands = {
					   '/car',
					   '/quit',
					  }

-- These Commands will use their own webhook
OwnWebhookCommands = {
					  {'/AnotherCommand', 'https://discordapp.com/api/webhooks/689447676315828362/UHSXVcnBOU5OaxQc6c3FZPX8Dm24cBVDxKdcPKas-A093FfRAALC7IVzZ3QUqqONgL2z'},
					  {'/AnotherCommand2', 'https://discordapp.com/api/webhooks/689447676315828362/UHSXVcnBOU5OaxQc6c3FZPX8Dm24cBVDxKdcPKas-A093FfRAALC7IVzZ3QUqqONgL2z'},
					 }

-- These Commands will be sent as TTS messages
TTSCommands = {
			   '/Whatever',
			   '/Whatever2',
			  }

