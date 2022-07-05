local Entries = {}

Entries[#Entries + 1] = {
    type = "flag",
    group = { "isCementMixer" },
    data = {
        {
            id = "brick",
            label = "Pegar Tijolo",
            icon = "cube",
            event = "caue-inventory:getBrick",
            parameters = {}
        }
    },
    options = {
        distance = { radius = 1.5 }
    }
}

Entries[#Entries + 1] = {
    type = "flag",
    group = { "isYogaMat" },
    data = {
        {
            id = "yoga",
            label = "Yoga",
            icon = "circle",
            event = "caue-healthcare:yoga",
            parameters = {}
        }
    },
    options = {
        distance = { radius = 1.5 },
        isEnabled = function(pEntity, pContext)
            return IsEntityTouchingEntity(PlayerPedId(), pEntity)
        end
    }
}

Entries[#Entries + 1] = {
    type = "flag",
    group = { "isExercise" },
    data = {
        {
            id = "weights",
            label = "Levantar Peso",
            icon = "dumbbell",
            event = "caue-healthcare:exercise",
            parameters = {}
        }
    },
    options = {
        distance = { radius = 1.2 },
    }
}

Entries[#Entries + 1] = {
    type = "flag",
    group = { "isSmokeMachineTrigger" },
    data = {
        {
            id = "smoke_machine",
            label = "Cigarette Shop",
            icon = "circle",
            event = "caue-stripclub:smokemachine",
            parameters = {}
        }
    },
    options = {
        distance = { radius = 1.2 },
    }
}

Entries[#Entries + 1] = {
	type = "flag",
	group = { "isFuelPump" },
	data = {
		{
			id = "jerrycan_refill",
			label = "Fill Galon",
			icon = "gas-pump",
			event = "vehicle:refuel:showMenu",
			parameters = { isJerryCan = true },
		},
	},
	options = {
		distance = { radius = 1.5 },
		isEnabled = function(pEntity, pContext)
			return HasWeaponEquipped(GetHashKey("WEAPON_PetrolCan"))
		end,
	},
}

Entries[#Entries + 1] = {
	type = "flag",
	group = { "isVendingMachine" },
	data = {
		{
			id = "vending_machine",
			label = "Shop",
			icon = "shopping-basket",
			event = "shops:vendingMachine",
			parameters = {},
		},
	},
	options = {
		distance = { radius = 1.5 },
	},
}

Entries[#Entries + 1] = {
	type = "flag",
	group = { "isChair" },
	data = {
		{
			id = "sit_on_chair",
			label = "Sit",
			icon = "chair",
			event = "caue-emotes:sitOnChair",
			parameters = {},
		},
	},
	options = {
		distance = { radius = 1.5 },
	},
}

Entries[#Entries + 1] = {
	type = "flag",
	group = { "isATM" },
	data = {
		{
			id = "use_atm",
			label = "Use ATM",
			icon = "credit-card",
			event = "financial:openUI",
			parameters = {},
		},
	},
	options = {
		distance = { radius = 1.5 },
	},
}

Entries[#Entries + 1] = {
	type = "flag",
	group = { "isATM" },
	data = {
		{
			id = "hack_atm",
			label = "Hack ATM",
			icon = "credit-card",
			event = "financial:openUI",
			parameters = {},
		},
	},
	options = {
		distance = { radius = 1.5 },
	},
}

Entries[#Entries + 1] = {
	type = "flag",
	group = { "isWeedPlant" },
	data = {
		{
			id = "weed",
			label = "Check",
			icon = "cannabis",
			event = "caue-weed:checkPlant",
			parameters = {},
		},
	},
	options = {
		distance = { radius = 7.0 },
	},
}

Entries[#Entries + 1] = {
    type = "flag",
    group = { "isLrgWeedPlant" },
    data = {
        {
            id = "weed2",
            label = "Harvest",
            icon = "hand-paper",
            event = "caue-weed:pickPlant",
            parameters = {}
        }
    },
    options = {
        distance = { radius = 7.0 }
    }
}

Citizen.CreateThread(function()
    for _, entry in ipairs(Entries) do
        if entry.type == "flag" then
            AddPeekEntryByFlag(entry.group, entry.data, entry.options)
        elseif entry.type == "model" then
            AddPeekEntryByModel(entry.group, entry.data, entry.options)
        elseif entry.type == "entity" then
            AddPeekEntryByEntityType(entry.group, entry.data, entry.options)
        elseif entry.type == "polytarget" then
            AddPeekEntryByPolyTarget(entry.group, entry.data, entry.options)
        end
    end
end)