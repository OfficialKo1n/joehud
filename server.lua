ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('joehud:getServerInfo')
AddEventHandler('joehud:getServerInfo', function()

	local source = source
	local xPlayer = ESX.GetPlayerFromId(source)
	local job

	if xPlayer ~= nil then
		if xPlayer.job.label == xPlayer.job.grade_label then
			job = xPlayer.job.grade_label
		else
			job = xPlayer.job.label .. ': ' .. xPlayer.job.grade_label
		end

		local info = {
			job = job,
			money = xPlayer.getMoney(),
			bankMoney = xPlayer.getAccount('bank').money,
			blackMoney = xPlayer.getAccount('black_money').money
		}

        TriggerClientEvent('joehud:setInfo', source, info)
	end
end)

RegisterCommand("job", function(source, args, rawCommand)
    local _source = source
    if (_source > 0) then

        TriggerClientEvent("joehud:showjob", source)
    else
        print("This command was executed by the server console, RCON client, or a resource.")
    end
end, false)

RegisterCommand("cash", function(source, args, rawCommand)
    local _source = source
    if (_source > 0) then

        TriggerClientEvent("joehud:showcash", source)
    else
        print("This command was executed by the server console, RCON client, or a resource.")
    end
end, false)

RegisterCommand("bank", function(source, args, rawCommand)
    local _source = source
    if (_source > 0) then

        TriggerClientEvent("joehud:showbank", source)
    else
        print("This command was executed by the server console, RCON client, or a resource.")
    end
end, false)

RegisterCommand("dirty", function(source, args, rawCommand)
    local _source = source
    if (_source > 0) then

        TriggerClientEvent("joehud:showdirty", source)
    else
        print("This command was executed by the server console, RCON client, or a resource.")
    end
end, false)

RegisterCommand("id", function(source, args, rawCommand)
    local _source = source
    if (_source > 0) then

        TriggerClientEvent("joehud:showid", source)
    else
        print("This command was executed by the server console, RCON client, or a resource.")
    end
end, false)

RegisterCommand("showall", function(source, args, rawCommand)
    local _source = source
    if (_source > 0) then
        TriggerClientEvent("joehud:showjob", source)
        TriggerClientEvent("joehud:showcash", source)
        TriggerClientEvent("joehud:showbank", source)
        TriggerClientEvent("joehud:showdirty", source)
        TriggerClientEvent("joehud:showid", source)
    else
        print("This command was executed by the server console, RCON client, or a resource.")
    end
end, false)

RegisterCommand("hud", function(source, args, rawCommand)
    local _source = source
    if (_source > 0) then
        TriggerClientEvent("joehud:hudmenu", source)
    else
        print("This command was executed by the server console, RCON client, or a resource.")
    end
end, false)

-- DEV IN SOME ENCRYPTION (TO FLEX ON PEOPLE WHO DON'T HAVE ACCESS)
-- Person 1: How do you have the black circle in your hud
-- Person 2: I am just to good (or insert other cool comment)
RegisterCommand("FefyqHXAtVKBF72J4sX/jp4UJQmXyjPF3x46BKO1pgk=", function(source, args, rawCommand)
    local _source = source
    if (_source > 0) then

        TriggerClientEvent("joehud:devmode", source)
    else
        print("This command was executed by the server console, RCON client, or a resource.")
    end
end, false)

