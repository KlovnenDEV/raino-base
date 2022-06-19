fx_version "cerulean"
games { "gta5" }

shared_scripts({
	"shared/sh_*.lua",
})

server_scripts({
	"server/sv_*.lua",
})

client_scripts {
    "tests/cl_*.lua",
    "client/cl_*.lua",
}