isDead = false
ServerBase = nil
DeathInfo = {
    --Vehicle Weapons
    [375527679] = { weapon = "WEAPON_PASSENGER_ROCKET",label = " was killed by a vehicle's passenger rocket launcher", killerlabel = " shot by ",},
    [324506233] = { weapon = "WEAPON_AIRSTRIKE_ROCKET",label = " was killed by an airstrike", killerlabel = " launched by ",},
    [1945616459] = { weapon = "VEHICLE_WEAPON_TANK",label = " was killed by a tank's cannon", killerlabel = " shot by ",},
    [-123497569] = { weapon = "VEHICLE_WEAPON_SPACE_ROCKET",label = " was killed by a space rocket", killerlabel = " shot by ",},
    [-821520672] = { weapon = "VEHICLE_WEAPON_PLANE_ROCKET",label = " was killed by a plane's rocket", killerlabel = " shot by ",},
    [-268631733] = { weapon = "VEHICLE_WEAPON_PLAYER_LASER",label = " was killed by a Laser Jet cannon", killerlabel = " shot by ",},
    [1259576109] = { weapon = "VEHICLE_WEAPON_PLAYER_BULLET",label = " was killed by a helicoptor's mounted machine gun", killerlabel = " shot by ",},
    [1186503822] = { weapon = "VEHICLE_WEAPON_PLAYER_BUZZARD",label = " was killed by a Buzzard's cannon", killerlabel = " shot by ",},
    [-1625648674] = { weapon = "VEHICLE_WEAPON_PLAYER_HUNTER",label = " was killed by a Hunter's cannon", killerlabel = " shot by ",},
    [-494786007] = { weapon = "VEHICLE_WEAPON_PLAYER_LAZER",label = " was killed by a vehicle's", killerlabel = " shot by ",},
    [1566990507] = { weapon = "VEHICLE_WEAPON_ENEMY_LASER",label = " was killed by a Laser Jet cannon", killerlabel = " shot by ",},
    [-844344963] = { weapon = "VEHICLE_WEAPON_SEARCHLIGHT",label = " was killed by a searchlight", killerlabel = " aimed by ",},
    [-764006018] = { weapon = "VEHICLE_WEAPON_RADAR",label = " was killed by RADAR", killerlabel = " used by ",},
    [-1090665087] = { weapon = "WEAPON_VEHICLE_ROCKET",label = " was killed by a vehicle's rocket launcher", killerlabel = " shot by ",},
    [-868994466] = { weapon = "WEAPON_HIT_BY_WATER_CANNON",label = " was killed by a Firetruck water cannon", killerlabel = " controlled by ",},
    [889061222] = { weapon = "WEAPON_ARENA_MACHINE_GUN",label = " was killed by an arena machine gun", killerlabel = " shot by ",},
    [1686798800] = { weapon = "WEAPON_ARENA_HOMING_MISSILE",label = " was killed by an arena homing missle", killerlabel = " shot by ",},
    [2144528907] = { weapon = "VEHICLE_WEAPON_TURRET_TECHNICAL",label = " was killed by a Technical's turret", killerlabel = " shot by ",},
    [1155224728] = { weapon = "VEHICLE_WEAPON_TURRET_INSURGENT",label = " was killed by an Insurgent's turret", killerlabel = " shot by ",},
    [1638077257] = { weapon = "VEHICLE_WEAPON_PLAYER_SAVAGE",label = " was killed by a Savage's cannon", killerlabel = " shot by ",},
    [1097917585] = { weapon = "VEHICLE_WEAPON_NOSE_TURRET_VALKYRIE",label = " was killed by a Valkyrie's nose turret", killerlabel = " shot by ",},
    [-1538179531] = { weapon = "VEHICLE_WEAPON_TURRET_VALKYRIE",label = " was killed by a Valkyrie's turret", killerlabel = " shot by ",},
    [738733437] = { weapon = "WEAPON_AIR_DEFENCE_GUN",label = " was killed by an air defence gun", killerlabel = " shot by ",},
    [729375873] = { weapon = "VEHICLE_WEAPON_TURRET_LIMO",label = " was killed by Limo's turret", killerlabel = " shot by ",},
    [-1253095144] = { weapon = "VEHICLE_WEAPON_TURRET_BOXVILLE",label = " was killed by a Boxville's turret", killerlabel = " shot by ",},
    [-335937730] = { weapon = "VEHICLE_WEAPON_CANNON_BLAZER",label = " was killed by a Blazer's cannon", killerlabel = " shot by ",},
    [50118905] = { weapon = "VEHICLE_WEAPON_RUINER_BULLET",label = " was killed by a Ruiner's machine guns", killerlabel = " shot by ",},
    [84788907] = { weapon = "VEHICLE_WEAPON_RUINER_ROCKET",label = " was killed by a Ruiner's rocket launcher", killerlabel = " shot by ",},
    --Not Really Weapons
    [-38085395] = { weapon = "WEAPON_DIGISCANNER", label = " was somehow killed by a Digiscanner", killerlabel = " used by ",},
    [-1491061156] = { weapon = "GADGET_NIGHTVISION", label = " was somehow killed by Nightvision Goggles", killerlabel = " used by ",},
    [-72657034] = { weapon = "GADGET_PARACHUTE", label = " was somehow killed by a Parachute", killerlabel = " used by ",},
    [966099553] = { weapon = "OBJECT", label = " was somehow killed by an object", killerlabel = " thrown by ",},
    [-800287667] = { weapon = "WEAPON_HANDCUFFS", label = " was somehow killed by Handcuffs", killerlabel = " used by ",},
    [-499989876] = { weapon = "WEAPON_GARBAGEBAG", label = " was somehow killed by a Garbage Bag", killerlabel = " used by ",},
    [883325847] = { weapon = "WEAPON_PETROLCAN", label = " was killed by a Jerry Can", killerlabel = " used by ",},
    [-1168940174] = { weapon = "WEAPON_HAZARDCAN", label = " was killed by a Jerry Can", killerlabel = " used by ",},
    [406929569] = { weapon = "WEAPON_FERTILIZERCAN", label = " was killed by a Jerry Can", killerlabel = " used by ",},
    [600439132] = { weapon = "WEAPON_BALL", label = " was killed by a Ball", killerlabel = " thrown by ",},
    [126349499] = { weapon = "WEAPON_SNOWBALL", label = " was killed by a snowball", killerlabel = " thrown by ",},
    --Enviroment Weapons
    [-1323279794] = { weapon = "VEHICLE_WEAPON_ROTORS", label = " was chopped up in helicopter rotors", killerlabel = " flown by ",},
    [1223143800] = { weapon = "WEAPON_BARBED_WIRE", label = " was killed by barbed wire", killerlabel = " used by ",},
    [-10959621] = { weapon = "WEAPON_DROWNING", label = " has drowned", killerlabel = " because of ",},
    [1936677264] = { weapon = "WEAPON_DROWNING_IN_VEHICLE", label = " has drowned", killerlabel = " because of ",},
    [-1955384325] = { weapon = "WEAPON_BLEEDING", label = " has bleed", killerlabel = " because of ",},
    [-1833087301] = { weapon = "WEAPON_ELECTRIC_FENCE", label = " was shocked by an electric fence", killerlabel = " because of ",},
    [-842959696] = { weapon = "WEAPON_FALL", label = " has died by falling", killerlabel = " caused by ",},
    [910830060] = { weapon = "WEAPON_EXHAUSTION", label = " has died of exhaustion", killerlabel = " caused by ",},
    [133987706] = { weapon = "WEAPON_RAMMED_BY_CAR", label = " was ran over by a car", killerlabel = " driven by ",},
    [-1553120962] = { weapon = "WEAPON_RUN_OVER_BY_CAR", label = " was ran over by a car", killerlabel = " driven by ",},
    --Animal Weapons
    [-100946242] = { weapon = "WEAPON_ANIMAL", label = " was bitten by an animal", killerlabel = " played by ",},
    [148160082] = { weapon = "WEAPON_COUGAR", label = " was bitten by a cougar", killerlabel = " played by ",},
    [-440934790] = { weapon = "WEAPON_ANIMAL_RETRIEVER", label = " was bitten by a retriever", killerlabel = " played by ",},
    [-1148198339] = { weapon = "WEAPON_SMALL_DOG", label = " was bitten by a small dog", killerlabel = " played by ",},
    [743550225] = { weapon = "WEAPON_TIGER_SHARK", label = " was bitten by a tiger shark", killerlabel = " played by ",},
    [-1263987253] = { weapon = "WEAPON_HAMMERHEAD_SHARK", label = " was bitten by a hammerhead shark", killerlabel = " played by ",},
    [-96609051] = { weapon = "WEAPON_KILLER_WHALE", label = " was bitten by a killer whale", killerlabel = " played by ",},
    [861723357] = { weapon = "WEAPON_BOAR", label = " was gored by a boar", killerlabel = " played by ",},
    [1205296881] = { weapon = "WEAPON_PIG", label = " was bitten by a pig", killerlabel = " played by ",},
    [1161062353] = { weapon = "WEAPON_COYOTE", label = " was bitten by a coyote", killerlabel = " played by ",},
    [-188319074] = { weapon = "WEAPON_DEER", label = " was gored by a deer", killerlabel = " played by ",},
    [955837630] = { weapon = "WEAPON_HEN", label = " was pecked to death by a chicken", killerlabel = " played by ",},
    [-1501041657] = { weapon = "WEAPON_RABBIT", label = " was bitten by a rabbit", killerlabel = " played by ",},
    [-495648874] = { weapon = "WEAPON_CAT", label = " was bitten by a cat", killerlabel = " played by ",},
    [94548753] = { weapon = "WEAPON_COW", label = " was gored by a cow", killerlabel = " played by ",},
    [1834887169] = { weapon = "WEAPON_BIRD_CRAP", label = " died by getting shit on by a bird", killerlabel = " played by ",},
    --Melee Blunt Weapons
    [-1569615261] = { weapon = "WEAPON_UNARMED", label = " was beaten with bare hands", killerlabel = " by ",},
    [1737195953] = { weapon = "WEAPON_NIGHTSTICK", label = " was beaten with a nightstick", killerlabel = " used by ",},
    [1317494643] = { weapon = "WEAPON_HAMMER", label = " was beaten with a hammer", killerlabel = " used by ",},
    [-1786099057] = { weapon = "WEAPON_BAT", label = " was beaten with a baseball bat", killerlabel = " used by ",},
    [1141786504] = { weapon = "WEAPON_GOLFCLUB", label = " was beaten with a golfclub", killerlabel = " used by ",},
    [-2067956739] = { weapon = "WEAPON_CROWBAR", label = " was beaten with a crowbar", killerlabel = " used by ",},
    [-656458692] = { weapon = "WEAPON_KNUCKLE", label = " was beaten with brass knuckles", killerlabel = " used by ",},
    [-1951375401] = { weapon = "WEAPON_FLASHLIGHT", label = " was beaten with a flashlight", killerlabel = " used by ",},
    [-1810795771] = { weapon = "WEAPON_POOLCUE", label = " was beaten with a pool cue", killerlabel = " used by ",},
    [419712736] = { weapon = "WEAPON_WRENCH", label = " was beaten with a wrench", killerlabel = " used by ",},
    [-2000187721] = { weapon = "WEAPON_BRIEFCASE", label = " was beaten with a briefcase", killerlabel = " used by ",},
    [28811031] = { weapon = "WEAPON_BRIEFCASE_02", label = " was beaten with a briefcase", killerlabel = " used by ",},
    --Sharp Melee Weapons
    [-1716189206] = { weapon = "WEAPON_KNIFE", label = " was stabbed to death with a knife", killerlabel = " by ",},
    [-102323637] = { weapon = "WEAPON_BOTTLE", label = " was stabbed to death with a broken bottle", killerlabel = " by ",},
    [-102973651] = { weapon = "WEAPON_HATCHET", label = " was hacked to death with a hatchet", killerlabel = " by ",},
    [-581044007] = { weapon = "WEAPON_MACHETE", label = " was hacked to death with a machete", killerlabel = " by ",},
    [-538741184] = { weapon = "WEAPON_SWITCHBLADE", label = " was stabbed to death with a switchblade", killerlabel = " by ",},
    [-853065399] = { weapon = "WEAPON_BATTLEAXE", label = " was hacked to death with a battle axe", killerlabel = " by ",},
    [940833800] = { weapon = "WEAPON_STONE_HATCHET", label = " was hacked to death with a stone hatchet", killerlabel = " by ",},
    [-1834847097] = { weapon = "WEAPON_DAGGER", label = " was stabbed to death with a dagger", killerlabel = " by ",},
    --Firearm Weapons
    [453432689] = { weapon = "WEAPON_PISTOL", label = " was killed by a Pistol", killerlabel = " shot by ",},
    [1593441988] = { weapon = "WEAPON_COMBATPISTOL", label = " was killed by a Combat Pistol", killerlabel = " shot by ",},
    [584646201] = { weapon = "WEAPON_APPISTOL", label = " was killed by an AP Pistol", killerlabel = " shot by ",},
    [-1716589765] = { weapon = "WEAPON_PISTOL50", label = " was killed by a Desert Eagle", killerlabel = " shot by ",},
    [324215364] = { weapon = "WEAPON_MICROSMG", label = " was killed by a Micro SMG", killerlabel = " shot by ",},
    [736523883] = { weapon = "WEAPON_SMG", label = " was killed by an SMG", killerlabel = " shot by ",},
    [-270015777] = { weapon = "WEAPON_ASSAULTSMG", label = " was killed by an Assault SMG", killerlabel = " shot by ",},
    [-1074790547] = { weapon = "WEAPON_ASSAULTRIFLE", label = " was killed by an Assault Rifle", killerlabel = " shot by ",},
    [-2084633992] = { weapon = "WEAPON_CARBINERIFLE", label = " was killed by a Carbine Rifle", killerlabel = " shot by ",},
    [-1357824103] = { weapon = "WEAPON_ADVANCEDRIFLE", label = " was killed by an Advanced Rifle", killerlabel = " shot by ",},
    [-1660422300] = { weapon = "WEAPON_MG", label = " was killed by a Machine Gun", killerlabel = " shot by ",},
    [2144741730] = { weapon = "WEAPON_COMBATMG", label = " was killed by a Combat Machine Gun", killerlabel = " shot by ",},
    [487013001] = { weapon = "WEAPON_PUMPSHOTGUN", label = " was killed by a Pump Shotgun", killerlabel = " blast by ",},
    [2017895192] = { weapon = "WEAPON_SAWNOFFSHOTGUN", label = " was killed by a Sawn-Off Shotgun", killerlabel = " blast by ",},
    [-494615257] = { weapon = "WEAPON_ASSAULTSHOTGUN", label = " was killed by an Assault Shotgun", killerlabel = " blast by ",},
    [-1654528753] = { weapon = "WEAPON_BULLPUPSHOTGUN", label = " was killed by a Bullpup Shotgun", killerlabel = " blast by ",},
    [911657153] = { weapon = "WEAPON_STUNGUN", label = " was killed by a Stun Gun", killerlabel = " shot by ",},
    [100416529] = { weapon = "WEAPON_SNIPERRIFLE", label = " was killed by a Sniper Rifle", killerlabel = " shot by ",},
    [205991906] = { weapon = "WEAPON_HEAVYSNIPER", label = " was killed by a Heavy Sniper", killerlabel = " shot by ",},
    [856002082] = { weapon = "WEAPON_REMOTESNIPER", label = " was killed by a Remote Sniper", killerlabel = " shot by ",},
    [1119849093] = { weapon = "WEAPON_MINIGUN", label = " was killed by a Mini Gun", killerlabel = " shot by ",},
    [-1076751822] = { weapon = "WEAPON_SNSPISTOL", label = " was killed by an SNS Pistol", killerlabel = " shot by ",},
    [2132975508] = { weapon = "WEAPON_BULLPUPRIFLE", label = " was killed by a Bullpup Rifle", killerlabel = " shot by ",},
    [-1063057011] = { weapon = "WEAPON_SPECIALCARBINE", label = " was killed by a Special Carbine", killerlabel = " shot by ",},
    [-771403250] = { weapon = "WEAPON_HEAVYPISTOL", label = " was killed by a Heavy Pistol", killerlabel = " shot by ",},
    [-1768145561] = { weapon = "WEAPON_SPECIALCARBINE_MK2", label = " was killed by a Mk2. Special Carbine", killerlabel = " shot by ",},
    [-2066285827] = { weapon = "WEAPON_BULLPUPRIFLE_MK2", label = " was killed by a Mk2. Bullpup Rifle", killerlabel = " shot by ",},
    [1432025498] = { weapon = "WEAPON_PUMPSHOTGUN_MK2", label = " was killed by a Mk2. Pump Shotgun", killerlabel = " blast by ",},
    [-2009644972] = { weapon = "WEAPON_SNSPISTOL_MK2", label = " was killed by a Mk2. SNS Pistol", killerlabel = " shot by ",},
    [1785463520] = { weapon = "WEAPON_MARKSMANRIFLE_MK2", label = " was killed by a Mk2. Marksman Rifle", killerlabel = " shot by ",},
    [-1746263880] = { weapon = "WEAPON_DOUBLEACTION", label = " was killed by a Double Action Revolver", killerlabel = " shot by ",},
    [-1355376991] = { weapon = "WEAPON_RAYPISTOL", label = " was killed by a Ray Pistol", killerlabel = " shot by ",},
    [1198256469] = { weapon = "WEAPON_RAYCARBINE", label = " was killed by a Ray Carbine", killerlabel = " shot by ",},
    [-1238556825] = { weapon = "WEAPON_RAYMINIGUN", label = " was killed by a Ray Mini Gun", killerlabel = " shot by ",},
    [-879347409] = { weapon = "WEAPON_REVOLVER_MK2", label = " was killed by a Mk2. Revolver", killerlabel = " shot by ",},
    [1627465347] = { weapon = "WEAPON_GUSENBERG", label = " was killed by a Gusenberg", killerlabel = " shot by ",},
    [137902532] = { weapon = "WEAPON_VINTAGEPISTOL", label = " was killed by a Vintage Pistol", killerlabel = " shot by ",},
    [-1466123874] = { weapon = "WEAPON_MUSKET", label = " was killed by a Musket", killerlabel = " shot by ",},
    [-952879014] = { weapon = "WEAPON_MARKSMANRIFLE", label = " was killed by a Marksman Rifle", killerlabel = " shot by ",},
    [984333226] = { weapon = "WEAPON_HEAVYSHOTGUN", label = " was killed by a Heavy Shotgun", killerlabel = " blast by ",},
    [727643628] = { weapon = "WEAPON_CERAMICPISTOL", label = " was killed by a Ceramic Pistol", killerlabel = " shot by ",},
    [849905853] = { weapon = "WEAPON_TRANQUILIZER", label = " was killed by a Tranquilizer", killerlabel = " shot by ",},
    [94989220] = { weapon = "WEAPON_COMBATSHOTGUN", label = " was killed by a Combat Shotgun", killerlabel = " blast by ",},
    [1470379660] = { weapon = "WEAPON_GADGETPISTOL", label = " was killed by a Gadget Pistol", killerlabel = " shot by ",},
    [-1658906650] = { weapon = "WEAPON_MILITARYRIFLE", label = " was killed by a Military Rifle", killerlabel = " shot by ",},
    [-1853920116] = { weapon = "WEAPON_NAVYREVOLVER", label = " was killed by a Navy Revolver", killerlabel = " shot by ",},
    [-598887786] = { weapon = "WEAPON_MARKSMANPISTOL", label = " was killed by a Marksman Pistol", killerlabel = " shot by ",},
    [171789620] = { weapon = "WEAPON_COMBATPDW", label = " was killed by a Combat PDW", killerlabel = " shot by ",},
    [-275439685] = { weapon = "WEAPON_DBSHOTGUN", label = " was killed by a Double Barrel Shotgun", killerlabel = " blast by ",},
    [1649403952] = { weapon = "WEAPON_COMPACTRIFLE", label = " was killed by a Compact Rifle", killerlabel = " shot by ",},
    [-619010992] = { weapon = "WEAPON_MACHINEPISTOL", label = " was killed by a Machine Pistol", killerlabel = " shot by ",},
    [-1045183535] = { weapon = "WEAPON_REVOLVER", label = " was killed by a Revolver", killerlabel = " shot by ",},
    [317205821] = { weapon = "WEAPON_AUTOSHOTGUN", label = " was killed by an Auto Shotgun", killerlabel = " blast by ",},
    [-1121678507] = { weapon = "WEAPON_MINISMG", label = " was killed by a Mini SMG", killerlabel = " shot by ",},
    [-1075685676] = { weapon = "WEAPON_PISTOL_MK2", label = " was killed by a Mk2. Pistol", killerlabel = " shot by ",},
    [961495388] = { weapon = "WEAPON_ASSAULTRIFLE_MK2", label = " was killed by a Mk2. Assault Rifle", killerlabel = " shot by ",},
    [-86904375] = { weapon = "WEAPON_CARBINERIFLE_MK2", label = " was killed by a Mk2. Carbine Rifle", killerlabel = " shot by ",},
    [-608341376] = { weapon = "WEAPON_COMBATMG_MK2", label = " was killed by a Mk2. Combat Machine Gun", killerlabel = " shot by ",},
    [2024373456] = { weapon = "WEAPON_SMG_MK2", label = " was killed by a Mk2. SMG", killerlabel = " shot by ",},
    [177293209] = { weapon = "WEAPON_HEAVYSNIPER_MK2", label = " was killed by a Mk2. Heavy Sniper", killerlabel = " shot by ",},
    [1171102963] = { weapon = "WEAPON_STUNGUN_MP", label = " was killed by an MP Stun Gun", killerlabel = " shot by ",},
    [-947031628] = { weapon = "WEAPON_HEAVYRIFLE", label = " was killed by a Heavy Rifle", killerlabel = " shot by ",},
    --Explosive Weapons
    [539292904] = { weapon = "WEAPON_EXPLOSION", label = " died in an explosion", killerlabel = " cause by ",},
    [341774354] = { weapon = "WEAPON_HELI_CRASH", label = " died in a helicopter crash", killerlabel = " caused by ",},
    [2138347493] = { weapon = "WEAPON_FIREWORK", label = " died in a Firework Launcher explosion", killerlabel = " caused by ",},
    [1834241177] = { weapon = "WEAPON_RAILGUN", label = " died to a Railgun explosion", killerlabel = " shot by ",},
    [-1568386805] = { weapon = "WEAPON_GRENADELAUNCHER", label = " died to a Grenade Launcher explosion", killerlabel = " caused by ",},
    [-1312131151] = { weapon = "WEAPON_RPG", label = " died to an RPG explosion", killerlabel = " caused by ",},
    [1752584910] = { weapon = "WEAPON_STINGER", label = " died to a Stinger Missle", killerlabel = " launched by ",},
    [-1813897027] = { weapon = "WEAPON_GRENADE", label = " died to a Grenade explosion", killerlabel = " caused by ",},
    [741814745] = { weapon = "WEAPON_STICKYBOMB", label = " died to a Sticky Bomb explosion", killerlabel = " caused by ",},
    [1672152130] = { weapon = "WEAPON_HOMINGLAUNCHER", label = " died to a Homing Launcher missle", killerlabel = " launched by ",},
    [-1420407917] = { weapon = "WEAPON_PROXMINE", label = " died to a Proximity Mine explosion", killerlabel = " caused by ",},
    [-1169823560] = { weapon = "WEAPON_PIPEBOMB", label = " died to a Pipe Bomb explosion", killerlabel = " caused by ",},
    [125959754] = { weapon = "WEAPON_COMPACTLAUNCHER", label = " died to a Compact Grenade Launcher explosion", killerlabel = " caused by ",},
    [-618237638] = { weapon = "WEAPON_EMPLAUNCHER", label = " died to an EMP Launcher explosion", killerlabel = " caused by ",},
    --Smoke Weapons
    [101631238] = { weapon = "WEAPON_FIREEXTINGUISHER", label = " died from the fumes of a Fire Extinguisher", killerlabel = " used by ",},
    [1305664598] = { weapon = "WEAPON_GRENADELAUNCHER_SMOKE", label = " died from the fumes of a Smoke Grenade Launcher", killerlabel = " shot by ",},
    [-37975472] = { weapon = "WEAPON_SMOKEGRENADE", label = " died from the fumes of a Smoke Grenade", killerlabel = " thrown by ",},
    [-1600701090] = { weapon = "WEAPON_BZGAS", label = " died from the fumes of a BZ Gas Grenade", killerlabel = " thrown by ",},
    --Fire Weapons
    [-544306709] = { weapon = "WEAPON_FIRE", label = " died in a fire", killerlabel = " caused by ",},
    [615608432] = { weapon = "WEAPON_MOLOTOV", label = " died in a fire caused by a Molotove", killerlabel = " thrown by ",},
    [1233104067] = { weapon = "WEAPON_FLARE", label = " died in a fire caused by a Flare", killerlabel = " thrown by ",},
    [1198879012] = { weapon = "WEAPON_FLAREGUN", label = " died in a fire caused by a Flare Gun", killerlabel = " shot by ",},
    --Add On Weapons
    --[GetHashKey("WEAPON_FLAMETHROWER")] = { weapon = "WEAPON_FLAMETHROWER", label = " died in a fire caused by a Flamethrower", killerlabel = " shot by ",},
}

function IsAVehicleWeapon(text)
    if string.match(text, "VEHICLE") or string.match(text, "CAR") or string.match(text, "ARENA") or string.match(text, "ROTORS") or string.match(text, "WATER_CANNON") then
        return true
    end
    return false
end

function WriteDeathLog(data)
    local playerID = PlayerId()
    local playerName = GetPlayerName(playerID)
    local playerServerID = GetPlayerServerId(playerID)
    local playerDeathLog = ""
    if data.killedByPlayer then 
        local killerName = GetPlayerName(data.killerClientId)
        if playerServerID ~= data.killerServerId then 
            if Config.ESX.UseShortLog then 
                playerDeathLog = "[" .. data.killerServerId .. "] " .. killerName .. " " .. DeathInfo[data.deathCause].weapon .. " " .. playerName .." [" .. playerServerID .. "]"
            else 
                playerDeathLog = "[" .. playerServerID .. "] " .. playerName .. DeathInfo[data.deathCause].label .. DeathInfo[data.deathCause].killerlabel .. killerName .." [" .. data.killerServerId .. "]"
            end
        else --Player is their own reason for the death.
            if Config.ESX.UseShortLog then 
                playerDeathLog = "[" .. playerServerID .. "] " .. playerName .. " died by suicide from " .. DeathInfo[data.deathCause].weapon
            else
                playerDeathLog = "[" .. playerServerID .. "] " .. playerName .. DeathInfo[data.deathCause].label .. DeathInfo[data.deathCause].killerlabel .. " themselves"
            end
        end
    else
        if Config.ESX.UseShortLog then 
            playerDeathLog =   DeathInfo[data.deathCause].weapon .. " " .. playerName .. " [" .. playerServerID .. "]"
        else 
            playerDeathLog = "[" .. playerServerID .. "] " .. playerName .. DeathInfo[data.deathCause].label
        end
    end
    
    return playerDeathLog
end

if Config.ESX.TurnOnESX and Config.ESX.TurnOnDeathLog then

    ServerBase = exports['es_extended']:getSharedObject()

    AddEventHandler('esx:setPlayerData', function(key, value)
        if GetInvokingResource() == 'es_extended' then
            if key == 'dead' and not value then
                isDead = value
            end
        end
    end)

    AddEventHandler('esx:onPlayerDeath', function(data)
        if not isDead then 
            isDead = true
            if data.killedByPlayer == nil then data.killedByPlayer = false end
            if not data.killedByPlayer and IsAVehicleWeapon(DeathInfo[data.deathCause].weapon) then
                local KillerEntity = GetPedSourceOfDeath(PlayerPedId())
                if IsEntityAVehicle(KillerEntity) then
                    PedInVehicle = GetPedInVehicleSeat(KillerEntity, -1)
                    if IsEntityAPed(PedInVehicle) and IsPedAPlayer(PedInVehicle) then
                        data.killedByPlayer = true
                        data.killerClientId = NetworkGetPlayerIndexFromPed(PedInVehicle)
                        data.killerServerId = GetPlayerServerId(data.killerClientId)
                    end
                end
            end
            local playerDeathLog = tostring(WriteDeathLog(data))
            if playerDeathLog ~= "" then TriggerServerEvent('snag_discord_logging:DeathLog', playerDeathLog) end
        end
    end)

end


