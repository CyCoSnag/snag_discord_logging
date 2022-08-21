
Config.Debug = false -- Dev prints set up to trouble shoot.

Config.CheckForUpdates = true -- Check for updates to this script?

Config.UseDeferralsToStart = false --This waits for the first player to try to connect to the server before finishing server.lua setup.
	-- If you enable the deferral start, do not restart the script. You shouldn't have to restart this script ever anyway.
	-- If you have to, wait until your server restart timer, or manually do it yourself. This isn't intended to be used that way.

Config.ServerName = "Project Playground" -- Put your server name here.

Config.Image = "https://i.imgur.com/GQwycpc.png" -- A picture icon for most of the logging.

Config.TimestampLogging = true -- This will log the script and server starts/stops to the "Dev Log" webhook.
Config.LogScriptRestarts = false -- This will log any script starts/stops to the "Dev Log" webhook.

Config.ServerUpAndDownLogging = { UseServerUpAndDownLog = false,-- Use a server is Live/Offline log on resource start and stops?
	WebhookForUpDownLog = "WEBHOOK_GOES_HERE",
	UpMessageToLog = "Server Is Live",
	DownMessageToLog = "Server Is Offline",
}

Config.Chat = {	TurnOnChatLog = false, --Use chatMessage server event to log chat messages?
	WebhookForChatLog = "WEBHOOK_GOES_HERE",
	--The chat filter looks for text matches, and if the message contains the text, it will not log. Use this to filter out unwanted chat logs.
	ChatFilter = { "@everyone", "@here", "snag sux", },
}

-----------------------------If you have ESX enabled in the client/config.lua-----------------------------

Config.ESX.WebhookForESX = "WEBHOOK_GOES_HERE"

Config.ESX.WebhookForDeathLog = "WEBHOOK_GOES_HERE"

Config.ESX.UseJobLogs = true
Config.ESX.JobsToLog = { --The colors you can use are black, blue, brown, cyan, green, grey, orange, pink, purple, red, white, or yellow.

	--It's set up to assume that when players punch out, their job is re-assigned to offJOBNAME. If not, I cannot guarantee it'll work correctly.
	["police"] = { color = "blue", text = " has punched on duty.", image = "https://i.imgur.com/epsRiTe.png", webhook = "WEBHOOK_GOES_HERE" },
	["offpolice"] = { color = "blue", text = " has punched off duty.", image = "https://i.imgur.com/epsRiTe.png", webhook = "WEBHOOK_GOES_HERE" },

	["ems"] = { color = "red", text = " has punched on duty.", image = "https://i.imgur.com/3SRvIiD.png", webhook = "WEBHOOK_GOES_HERE" },
	["offems"] = { color = "red", text = " has punched off duty.", image = "https://i.imgur.com/3SRvIiD.png", webhook = "WEBHOOK_GOES_HERE" },

	["lawyer"] = { color = "brown", text = " is now available.", image = "https://doj.carrd.co/assets/images/image01.png?v25771772303351", webhook = "WEBHOOK_GOES_HERE" },
	["offlawyer"] = { color = "brown", text = " is no longer available.", image = "https://doj.carrd.co/assets/images/image01.png?v25771772303351", webhook = "WEBHOOK_GOES_HERE" },

}

----------------------------------------------------------------------------------------------------------

Config.Webhooks = { --["NAME_GOES_HERE"] = { Webhook = "WEBHOOK_GOES_HERE" }, Here is an example of how to create a new webhook log.
	["Dev Log"] = { Webhook = "WEBHOOK_GOES_HERE" }, -- Must have at least a 'Dev Log' webhook to inform of errors, server up and down timestamps, troubleshooting, ect.
	["NAME_GOES_HERE"] = { Webhook = "WEBHOOK_GOES_HERE" },
}