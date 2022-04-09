fx_version 'adamant'
game 'gta5'
description 'kurva anyadat'
version 'cigany'

shared_scripts {
    'config/shared.lua', 
    '@es_extended/imports.lua'
}

client_scripts {
    'config/client.lua',
    'client/*.lua'
}

server_scripts {
    '@mysql-async/lib/MySQL.lua',

    'config/server.lua', 
    'server/*.lua'
}

ui_page {
	'client/html/index.html'
}

files {
    'client/html/index.html',

    'client/html/logo192.png',
    'client/html/logo512.png',
    'client/html/manifest.json',
    'client/html/favicon.ico',
    'client/html/asset-manifest.json',

    'client/html/static/js/*.js',
    'client/html/static/css/*.css',

    'client/html/items/*.png',
    'client/html/items/*.jpg',
}