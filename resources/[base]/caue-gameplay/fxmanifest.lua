fx_version "cerulean"
games { "gta5" }

shared_script {
    "shared/*",
}

server_scripts {
  "server/*.lua",
}

client_scripts {
    "@caue-sync/client/cl_lib.lua",
    "client/*",
}