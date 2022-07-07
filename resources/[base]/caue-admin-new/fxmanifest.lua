fx_version 'cerulean'
game 'gta5'

author ''
description 'Admin Menu'

ui_page "nui/index.html"

client_scripts {
    'client/cl_*.lua',
    'shared/sh_config.lua',
    "@caue-lib/client/cl_rpc.lua",
}

server_scripts {
    'server/sv_*.lua',
    "@oxmysql/lib/MySQL.lua",
    "@caue-lib/server/sv_rpc.lua",
}



files {
    "nui/index.html",
    "nui/js/*.js",
    "nui/css/*.css",
    "nui/webfonts/*.css",
    "nui/webfonts/*.otf",
    "nui/webfonts/*.ttf",
    "nui/webfonts/*.woff2",
}

dependencies {
    'oxmysql',
}

lua54 'yes'