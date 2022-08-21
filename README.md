# Easy Discord Logs [FiveM] [Standalone] [ESX] [Free]

A FiveM resource that allows server owners to easily set up and use discord logs for whatever you need. ESX support is included. I'll be adding more framework support soon.

https://imgur.com/QiyYWWC

https://imgur.com/1QUpCbh

https://imgur.com/viGtrf2

https://imgur.com/P4fyDfL

https://imgur.com/4rDxEcr

https://imgur.com/4HkKn2W

Logging is set up for player connections, player disconnects (including the reason for the disconnect), chat, logging start/stop timestamps, server online/offline logs, and script starts/stop logs with timestamps.

ESX log support (Legacy or higher) includes ESX load-in as characters with character info, player drop info, player re-logs, simple or detailed death logs, and job punch-in/punch-out logs.

The event calls are in strings like so:

TriggerServerEvent('snag_discord_logging:ToDiscord', "Name_of_log_in_Config.Webhooks", "Message_of_log_goes_here", "Color_choice_goes_here_if_you_want")

If you don't send a color, it'll default to grey.

The colors you can use are black, blue, brown, cyan, green, grey, orange, pink, purple, red, white, or yellow. They are also sent as strings.

Here are some examples of use:

In client files: TriggerServerEvent('snag_discord_logging:ToDiscord', "Dev Log", "Your message to log will go here.", "red")

In server files: TriggerEvent('snag_discord_logging:ToDiscord', "Dev Log", "Your message to log will go here.", "blue")

Installation: Download the latest release from my tebex store: https://snag.tebex.io/package/5259553

or github: https://github.com/CyCoSnag/snag_discord_logging

Unzip the resource.

Put the resource into your server's resources folder.

Add the resource name to your server startup-config.

Modify the client/config.lua and server/config.lua to your liking. Start server. Enjoy!

The script is free, but any payments made on tebex will go towards creating more free FiveM resources.

I hope you enjoy this resource!

Any resource comments or questions? Visit my discord at: https://discord.gg/h3HZwtmHcq

-Snag
