
local triedConnection = false
local ServerLoggingStarted = false
local IsShuttingDown = false

if Config.UseDeferralsToStart then
    AddEventHandler('playerConnecting', function(name, setCallback, deferrals)
        deferrals.defer()
        deferrals.update("Server logging is initializing, one moment.")
        if not triedConnection then triedConnection = true end
        while not ServerLoggingStarted do Citizen.Wait(100) end
        deferrals.done()
        DevLog("Login Attempt", "ID: **" .. GetPlayerName(source) .. " | " .. GetPlayerIdentifier(source) .. "** is attempting to connect.")
    end)
end

CreateThread( function()
    if Config.UseDeferralsToStart then while not triedConnection do Citizen.Wait(100) end end
    if Config.Webhooks["Dev Log"] == nil or Config.Webhooks["Dev Log"] == "WEBHOOK_GOES_HERE" or Config.Webhooks["Dev Log"] == "" then
        Citizen.CreateThread(function()
            while true do
                Citizen.Wait(5000)
                print("------------------------------!NOTICE!------------------------------")
                print('You must have a "Dev Log" webhook set up. No server logs running.')
                print('Add ["Dev Log"] = { Webhook = "WEBHOOK_GOES_HERE" }, to your config.')
                print("-------------------------------SNAG---------------------------------")
            end
        end)
    else
        ServerBase = nil
        local HTTPResponses = {
            [100] = "Continue", [101] = "Switching protocols", [102] = "Processing", [103] = "Early Hints", [200] = "OK", [201] = "Created", [202] = "Accepted",
            [203] = "Non-Authoritative Information", [204] = "No Content", [205] = "Reset Content", [206] = "Partial Content", [207] = "Multi-Status",
            [208] = "Already Reported", [226] = "I'm Used", [300] = "Multiple Choices", [301] = "Moved Permanently", [302] = "Found (Previously 'Moved Temporarily')",
            [303] = "See Other", [304] = "Not Modified", [305] = "Use Proxy", [306] = "Switch Proxy", [307] = "Temporary Redirect", [308] = "Permanent Redirect  ",
            [400] = "Bad Request", [401] = "Unauthorized", [402] = "Payment Required", [403] = "Forbidden", [404] = "Not Found", [405] = "Method Not Allowed",
            [406] = "Not Acceptable", [407] = "Proxy Authentication Required", [408] = "Request Timeout", [409] = "Conflict", [410] = "Gone",
            [411] = "Length Required", [412] = "Precondition Failed", [413] = "Payload Too Large", [414] = "URI Too Long", [415] = "Unsupported Media Type",
            [416] = "Range Not Satisfiable", [417] = "Expectation Failed", [418] = "I\'m a Teapot", [421] = "Misdirected Request", [422] = "Unprocessable Entity",
            [423] = "Locked", [424] = "Failed Dependency", [425] = "Too Early", [426] = "Upgrade Required", [428] = "Precondition Required",
            [429] = "Too Many Requests", [431] = "Request Header Fields Too Large", [451] = "Unavailable For Legal Reasons ", [500] = "Internal Server Error",
            [501] = "Not Implemented", [502] = "Bad Gateway", [503] = "Service Unavailable", [504] = "Gateway Timeout", [505] = "HTTP Version Not Supported",
            [506] = "Variant Also Negotiates", [507] = "Insufficient Storage", [508] = "Loop Detected", [510] = "Not Extended", [511] = "Network Authentication Required",
        }
    
        local Colors = {
            ["black"] = 0,
            ["blue"] = 2061822,
            ["brown"] = 10053120,
            ["cyan"] = 6750207,
            ["green"] = 56108,
            ["grey"] = 8421504,
            ["orange"] = 16744192,
            ["pink"] = 16751103,
            ["purple"] = 11750815,
            ["red"] = 16711680,
            ["white"] = 16777215,
            ["yellow"] = 16777062,
        }
    
        AddEventHandler('onResourceStop', function(resource)
            if resource == GetCurrentResourceName() then
                if Config.TimestampLogging then
                    DevLog("Server Down", "Logs **OFFLINE** for: **" .. Config.ServerName .. "** at **" .. os.date('%B %d %Y %I:%M:%S %p') .. "**")
                end
                if Config.ServerUpAndDownLogging.UseServerUpAndDownLog then
                    DiscordLog(Config.ServerUpAndDownLogging.WebhookForUpDownLog, Config.ServerUpAndDownLogging.DownMessageToLog, "", Colors["red"])
                end
            else
                if Config.LogScriptRestarts and ServerLoggingStarted then
                    DevLog("Script Stopped", "Stopped " .. resource .. " at **" .. os.date('%B %d %Y %I:%M:%S %p') .. "**")
                end
            end
        end)
    
        AddEventHandler('onResourceStart', function(resource)
            if resource ~= GetCurrentResourceName() then
                if Config.LogScriptRestarts and ServerLoggingStarted then
                    DevLog("Script Started", "Started " .. resource .. " at **" .. os.date('%B %d %Y %I:%M:%S %p') .. "**")
                end
            end
        end)

        if not Config.UseDeferralsToStart then
    
            AddEventHandler('playerConnecting', function()
                DevLog("Login Attempt", "ID: **" .. GetPlayerName(source) .. " | " .. GetPlayerIdentifier(source) .. "** is attempting to connect.")
            end)

        end
    
        AddEventHandler('playerDropped', function(reason) 
          DevLog("Logout", "ID: **" .. source .. " " .. GetPlayerName(source) .. " | " .. GetPlayerIdentifier(source) .."** has disconnected. \nReason: " .. reason)
          if string.match(reason, "Server shutting down") and not IsShuttingDown then
            IsShuttingDown = true
            if Config.ServerUpAndDownLogging.UseServerUpAndDownLog then
                DiscordLog(Config.ServerUpAndDownLogging.WebhookForUpDownLog, Config.ServerUpAndDownLogging.DownMessageToLog, "", Colors["red"])
            end
          end
        end)
        
        if Config.ESX.TurnOnESX then
    
            ServerBase = exports.es_extended:getSharedObject()
    
            AddEventHandler('esx:playerLoaded', function(src)
                xPlayer = ServerBase.GetPlayerFromId(src)
                DiscordLog(Config.ESX.WebhookForESX, "Loaded [" .. src .. "] ", GetPlayerName(src) .. " | " .. xPlayer.name .. " | " ..  xPlayer.identifier, Colors["green"])
                local ShouldLog = true
                if Config.ESX.UseJobLogs then
                    if Config.ESX.JobsToLog[xPlayer.job.name] == nil then ShouldLog = false end
                    if not string.match(xPlayer.job.name, "off") then
                        if ShouldLog then
                            DiscordLog(Config.ESX.JobsToLog[xPlayer.job.name].webhook, "Punch Card", xPlayer.job.grade_label .. " " .. xPlayer.name .. " " .. Config.ESX.JobsToLog[xPlayer.job.name].text, Colors[Config.ESX.JobsToLog[xPlayer.job.name].color], Config.ESX.JobsToLog[xPlayer.job.name].image)
                        end
                    end
                end
            end)
    
            AddEventHandler('esx:playerDropped', function(src)
                xPlayer = ServerBase.GetPlayerFromId(src)
                DiscordLog(Config.ESX.WebhookForESX, "Dropped [" .. src .. "] ", GetPlayerName(src) .. " | " .. xPlayer.name .. " | " ..  xPlayer.identifier, Colors["red"])
                local ShouldLog = true
                if Config.ESX.UseJobLogs then
                    if Config.ESX.JobsToLog[xPlayer.job.name] == nil then ShouldLog = false end
                    if not string.match(xPlayer.job.name, "off") then
                        local jobtolog = "off" .. xPlayer.job.name
                        if Config.ESX.JobsToLog[jobtolog] == nil then ShouldLog = false end
                        if ShouldLog then
                            DiscordLog(Config.ESX.JobsToLog[jobtolog].webhook, "Punch Card", xPlayer.job.grade_label .. " " .. xPlayer.name .. " " .. Config.ESX.JobsToLog[jobtolog].text, Colors[Config.ESX.JobsToLog[jobtolog].color], Config.ESX.JobsToLog[jobtolog].image)
                        end
                    end
                end
            end)
    
            RegisterServerEvent('esx_multicharacter:relog')
            AddEventHandler('esx_multicharacter:relog', function()
                DiscordLog(Config.ESX.WebhookForESX, "Player Relog", "[" .. source .. "] " .. GetPlayerName(source) .. " is relogging.", Colors["purple"])
            end)
    
            if Config.ESX.TurnOnDeathLog then
    
                RegisterServerEvent('snag_discord_logging:DeathLog')
                AddEventHandler('snag_discord_logging:DeathLog', function(text)
                    local DeathLog = tostring(text)
                    DiscordLog(Config.ESX.WebhookForDeathLog, "Death Log", DeathLog, Colors["orange"])
                end)
    
            end
    
            if Config.ESX.UseJobLogs then
    
                AddEventHandler('esx:setJob', function(source, job)
                    print(json.encode(job))
                    local ShouldLog = true
                    if Config.ESX.JobsToLog[job.name] == nil then ShouldLog = false end
                    if ShouldLog then
                        xPlayer = ServerBase.GetPlayerFromId(source)
                        DiscordLog(Config.ESX.JobsToLog[job.name].webhook, "Punch Card", xPlayer.job.grade_label .. " " .. xPlayer.name .. " " .. Config.ESX.JobsToLog[job.name].text, Colors[Config.ESX.JobsToLog[job.name].color], Config.ESX.JobsToLog[job.name].image)
                    end
                end)
    
            end
    
        end
    
        if Config.Chat.TurnOnChatLog then
    
            AddEventHandler('chatMessage', function(source, name, message) 
                if ShouldLog(message) then ChatLog("ID: [" .. source .. "] " .. name, message) end
            end)
    
            function ShouldLog(message)
                for i = 1, #Config.Chat.ChatFilter do
                    if string.match(message, Config.Chat.ChatFilter[i]) then if Config.Debug then print("Filtered message will not be logged: " .. message ) end return false end
                end return true
            end
    
            function ChatLog(Title, Message)
                PerformHttpRequest(Config.Chat.WebhookForChatLog, function(errorCode, text, headers) end, 'POST', json.encode({username = Title, content = Message, avatar_url = Config.Image}), { ['Content-Type'] = 'application/json' })
            end
    
        end
        
        RegisterServerEvent('snag_discord_logging:ToDiscord')
        AddEventHandler('snag_discord_logging:ToDiscord',function(WebhookName, Message, Color)
            if Config.Webhooks[WebhookName] == nil then WebhookName = "Dev Log" end
            local URL = Config.Webhooks[WebhookName].Webhook or Config.Webhooks["Dev Log"].Webhook
            if Message == nil then DevLog("Error With Log", "No message found from " .. GetInvokingResource() .. " for snag_discord_logging:ToDiscord, check syntax in resource.") return end
            if type(Message) == 'table' then Message = tostring(json.encode(Message)) end
            if type(Message) ~= 'string' then Message = tostring(Message) end
            if Color == nil or Colors[Color] == nil then Color = Colors["grey"] else Color = Colors[Color] end
            DiscordLog(URL, WebhookName, Message, Color)
        end)
    
        function DiscordLog(URL, WebhookName, Message, Color, Image)
            if Image == nil then Image = Config.Image end
            local embeded = {
                {   ["color"] = Color,
                    ["title"] = "**".. WebhookName .."**",
                    ["description"] = Message,
                    ["footer"] = {
                        ["text"] = Config.ServerName,
                    },
                }
            }
            PerformHttpRequest(URL, function(errorCode, text, headers) CheckForErrors(errorCode, embeded) end, 'POST', json.encode({username = WebhookName, embeds = embeded, avatar_url = Image}), { ['Content-Type'] = 'application/json' })
        end
    
        function DevLog(Title, Message)
            if Config.Debug then print(Title .. " - " .. Message) end
            PerformHttpRequest(Config.Webhooks["Dev Log"].Webhook, function(errorCode, text, headers) end, 'POST', json.encode({username = Title, content = Message, avatar_url = Config.Image}), { ['Content-Type'] = 'application/json' })
        end
        
        function CheckForErrors(errorCode, embeded)
            if errorCode ~= 204 then
                if Config.Debug then print("Http Request Error. Code **".. tostring(errorCode) .."** - " .. HTTPResponses[errorCode] ..". " .. json.encode(embeded)) end
                DevLog("Http Request Error", "Code **".. tostring(errorCode) .."** - " .. HTTPResponses[errorCode] ..". " .. json.encode(embeded))
            else
                if Config.Debug then print("Logging sent. Code " .. tostring(errorCode) .. " - " .. HTTPResponses[errorCode] ..". Table: " .. json.encode(embeded)) end
                return true
            end
            return false
        end
        
        --Logging for server script startup.
        if Config.TimestampLogging then
            DevLog("Server Up", "Logs **ONLINE** for: **" .. Config.ServerName .. "** at **" .. os.date('%B %d %Y %I:%M:%S %p') .. "**")
        end
        if Config.ServerUpAndDownLogging.UseServerUpAndDownLog then
            Citizen.CreateThread(function()
                Citizen.Wait(500)
                DiscordLog(Config.ServerUpAndDownLogging.WebhookForUpDownLog, "Server Up", Config.ServerUpAndDownLogging.UpMessageToLog, Colors["green"])
            end)
        end

    end
    Citizen.Wait(2000)
    ServerLoggingStarted = true
    if Config.CheckForUpdates then
        CreateThread( function()
          local version = GetResourceMetadata(GetCurrentResourceName(), 'version')
          print(version)
          SetConvarServerInfo("snag_discord_logging", "V"..version)
          Citizen.Wait(10000)
          PerformHttpRequest('https://raw.githubusercontent.com/CyCoSnag/snag_discord_logging/master/version.json', function(code, res, headers)
              if code == 200 then
                  local response = json.decode(res)
                  print(response.version)
                  if response.version ~= version then
                    print(([[^1-------------------------------------------------------
                    snag_discord_logging has an update!
                    Update: %s is available now!
                    Changlog: %s
                    -------------------------------------------------------^0]]):format(response.version, response.changelog))
                  end
              else
                  print('snag_discord_logging unable to check version')
              end
          end, 'GET')
        end)
    end
    
end)