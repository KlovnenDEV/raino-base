--[[

    Functions

]]

function loadBank()
    local accounts = RPC.execute("caue-financials:getAccounts")
    print(accounts)

    SendNUIMessage({
        openSection = "loadBank",
        accounts = accounts,
    })
end

function loadBankAccount(account)
    local transactions = RPC.execute("caue-financials:getTransactions", account)
    print(transactions)

    SendNUIMessage({
        openSection = "loadBankAccount",
        account = account,
        transactions = transactions,
    })
end

--[[

    NUI

]]

RegisterNUICallback("btnBank", function()
    loadBank()
end)

RegisterNUICallback("bankTransfer", function(data)
    local success, error = RPC.execute("caue-financials:bankTransfer", tonumber(data.bankid), tonumber(data.targetid), tonumber(data.amount), data.comment)
	if success then
        loadBank()
    else
        phoneNotification("fas fa-exclamation-circle", "Error", error, 5000)
    end
end)