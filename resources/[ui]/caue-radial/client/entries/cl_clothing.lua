local GeneralEntries, SubMenu = MenuEntries["general"], {}

local Clothing = {
    {
        id = "clothing:hat",
        title = "Hat",
        icon = "#clothing-hat",
        event = "caue-facewear:radial",
        parameters = "hat",
    },
    {
        id = "clothing:googles",
        title = "Googles",
        icon = "#clothing-googles",
        event = "caue-facewear:radial",
        parameters = "googles",
    },
    {
        id = "clothing:mask",
        title = "Mask",
        icon = "#clothing-mask",
        event = "caue-facewear:radial",
        parameters = "mask",
    },
    {
        id = "clothing:chain",
        title = "Chain",
        icon = "#clothing-chain",
        event = "caue-facewear:radial",
        parameters = "chain",
    },
    {
        id = "clothing:jacket",
        title = "Jacket",
        icon = "#clothing-jacket",
        event = "caue-facewear:radial",
        parameters = "jacket",
    },
    {
        id = "clothing:vest",
        title = "Colete",
        icon = "#clothing-vest",
        event = "caue-facewear:radial",
        parameters = "vest",
    },
    {
        id = "clothing:backpack",
        title = "Backpack",
        icon = "#clothing-backpack",
        event = "caue-facewear:radial",
        parameters = "backpack",
    },
    {
        id = "clothing:pants",
        title = "Pants",
        icon = "#clothing-pants",
        event = "caue-facewear:radial",
        parameters = "pants",
    },
    {
        id = "clothing:shoes",
        title = "Shoes",
        icon = "#clothing-shoes",
        event = "caue-facewear:radial",
        parameters = "shoes",
    },
}

Citizen.CreateThread(function()
    for index, data in ipairs(Clothing) do
        SubMenu[index] = data.id
        MenuItems[data.id] = {data = data}
    end

    GeneralEntries[#GeneralEntries+1] = {
        data = {
            id = "clothing",
            icon = "#clothing",
            title = "Clothing",
            event = "caue-facewear:clothesMenu",
        },
        -- subMenus = SubMenu,
        isEnabled = function()
            return not exports["caue-base"]:getVar("dead")
        end,
    }
end)

