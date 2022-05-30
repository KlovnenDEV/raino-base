Citizen.CreateThread(function()
	while true do
		SetDiscordAppId(940695263415271484)

        local first_name = exports["caue-base"]:getChar("first_name")
        local last_name = exports["caue-base"]:getChar("last_name")

        if first_name then
            SetRichPresence("Jogando com " .. first_name .. " " .. last_name)
        end

        SetDiscordRichPresenceAsset("asset")
        SetDiscordRichPresenceAssetText("https://aymen-jelassi.github.io/")
        SetDiscordRichPresenceAssetSmall("asset")
        SetDiscordRichPresenceAssetSmallText("https://aymen-jelassi.github.io/")
        SetDiscordRichPresenceAction(0, "Discord", "https://discord.gg/jlonn")
        SetDiscordRichPresenceAction(1, "Forum", "https://aymen-jelassi.github.io/")

		Citizen.Wait(60000)
	end
end)