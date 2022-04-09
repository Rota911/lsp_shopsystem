ESX.RegisterServerCallback(
    'sShops:openShop', 
    function(source, done, shopId)
        local xPlayer = ESX.GetPlayerFromId(source);

        if (not xPlayer) then
            done(false);
            return;
        end 

        if (not shopId or type(shopId) ~= 'number') then 
            done(false);
            return;
        end 

        local shop = Config.shops[shopId];

        local distance = #(GetEntityCoords(GetPlayerPed(source)) - shop.position);
        if (distance > 1.5) then 
            done(false);
            return;
        end 

        if (shop.groups and not shop.groups[xPlayer.job.name]) then 
            done(false);
            return;
        end 

        done(shop);
    end
);

ESX.RegisterServerCallback('sShops:purchase', function(source, done, shopId, items)
    local xPlayer = ESX.GetPlayerFromId(source);

    if (not xPlayer) then
        done(false);
        return;
    end 

    if (not shopId or type(shopId) ~= 'number') then 
        done(false);
        return;
     end 

    local shop = Config.shops[shopId];

    local distance = #(GetEntityCoords(GetPlayerPed(source)) - shop.position);
    if (distance > 1.5) then 
        done(false);
        return;
    end 

    if (shop.groups and not shop.groups[xPlayer.job.name]) then 
        done(false);
        return;
    end 

    local valid, cost = validateItems(shop, items);


    if (valid) then 
        if (cost > xPlayer.getMoney()) then 
            return;
        end 

        xPlayer.removeMoney(cost);

        for _, item in ipairs(items) do 
            xPlayer.addInventoryItem(item.name, item.count);
        end 

        if (shop.owners) then 
            for _, owner in ipairs(shop.owners) do 
                TriggerEvent(
                    'esx_addonaccount:getSharedAccount', 
                    owner, 
                    function(account)
                        if (account) then 
                            account.addMoney(math.floor(cost / #shop.owners));
                        end 
                    end
                );
            end 
        end 
    end 
end);

Citizen.CreateThread(function()
    while (Config == nil) do 
        Wait(150);
    end 

    Wait(2500);

    for shopId, shop in ipairs(Config.shops) do 
        for itemIndex, item in ipairs(shop.items) do 
            item.label = ESX.GetItemLabel(item.name);
            item.count = 0;
        end 
    end 
end);

function validateItems(shop, boughtItems)
    if (not boughtItems or type(boughtItems) ~= 'table') then 
        return false, 0;
    end 

    local cachedItems = {};
    local cost = 0;

    for _, item in ipairs(shop.items) do 
        cachedItems[item.name] = item.price;
    end 

    for _, item in ipairs(boughtItems) do 
        if (not cachedItems[item.name]) then 
            print('olyan targyat akart venni a boltbol ami nem letezik.', source);
            return false, 0;
        end 

        cost = cost + item.count * cachedItems[item.name];
    end 

    return true, cost;
end 