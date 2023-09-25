fx_version 'adamant'
lua54 'yes'
game 'gta5'

author 'samueltv_'

server_scripts {
	'shared/sh_config.lua',
	'@es_extended/imports.lua',
	'server/*.lua'
}

client_scripts {
	'shared/sh_config.lua',
	'@es_extended/imports.lua',
	'client/*.lua'
}

shared_scripts {
	'shared/*.lua',
    '@es_extended/imports.lua',
    '@ox_lib/init.lua'
}