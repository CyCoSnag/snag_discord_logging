Config = {}

Config.Debug = false -- Dev prints set up to trouble shoot.

Config.ServerName = "SERVER_NAME_GOES_HERE" -- Put your server name here.

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
	ChatFilter = { "@everyone", "@here", },
}

Config.ESX = { TurnOnESX = false, --Use ESX? Only guaranteed works for ESX Legacy or higher. There may be some compatability issues with older versions.
	WebhookForESX = "WEBHOOK_GOES_HERE",

	TurnOnDeathLog = false, --Use esx:onPlayerDeath client event to log how a player died and who killed them?
	UseShortLog = false, --Normal log: "[1] Snag was stabbed to death with a knife by KillerName [KillerID]". Short log example is: "[KillerID] KillerName WEAPON_PISTOL Snag [1]"
	WebhookForDeathLog = "WEBHOOK_GOES_HERE",

	UsePolicePunchLog = false, --Track active police playtime?
	PoliceImage = "https://i.imgur.com/epsRiTe.png", --Link to a picture you want to use.
	WebhookForPolicePunchLog = "WEBHOOK_GOES_HERE",

	UseEMSPunchLog = false, --Track active ems playtime?
	EMSImage = "https://i.imgur.com/3SRvIiD.png", --Link to a picture you want to use.
	WebhookForEMSPunchLog = "WEBHOOK_GOES_HERE",

	LawyerOnlinePunchLog = false, --Log for online Lawyers?
	DOJImage = "https://doj.carrd.co/assets/images/image01.png?v25771772303351", --Link to a picture you want to use.
	WebhookForLawyerPunchLog = "WEBHOOK_GOES_HERE",
}

Config.Webhooks = { --["NAME_GOES_HERE"] = { Webhook = "WEBHOOK_GOES_HERE" }, Here is an example of how to create a new webhook log.
	["Dev Log"] = { Webhook = "WEBHOOK_GOES_HERE" }, -- Must have at least a 'Dev Log' webhook to inform of errors, server up and down timestamps, troubleshooting, ect.
	--["NAME_GOES_HERE"] = { Webhook = "WEBHOOK_GOES_HERE" },
}
