fx_version 'cerulean'

game 'gta5'

lua54 'yes'

author 'Snag'

version '1.0.0'

description 'Discord Logging by Snag'

dependencies {
  '/server:5181',
}

escrow_ignore {
  'client/config.lua',
  'server/config.lua',
}

client_scripts {
  'client/config.lua',
  'client/client.lua',
}

server_script {
  'client/config.lua',
  'server/config.lua',
  'server/server.lua',
}
