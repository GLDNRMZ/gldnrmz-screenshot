local screenshotActive = false
local warned = {}

-- screencapture is the maintained replacement for screenshot-basic and keeps the same
-- client export, so use whichever one is running (screencapture first).
local PROVIDERS = { 'screencapture', 'screenshot-basic' }

local function warnOnce(key, message)
    if warned[key] then return end
    warned[key] = true
    print(('^3[gldnrmz-screenshot]^0 %s'):format(message))
end

local function getProvider()
    for i = 1, #PROVIDERS do
        if GetResourceState(PROVIDERS[i]) == 'started' then return PROVIDERS[i] end
    end
end

RegisterNetEvent('GLDNRMZ-screenshot:client:takescreenshot')
AddEventHandler('GLDNRMZ-screenshot:client:takescreenshot', function()
    if screenshotActive then return end

    if not Config.Webhook or Config.Webhook == '' then
        return warnOnce('webhook', 'Config.Webhook is empty, so screenshots are not uploaded.')
    end

    local provider = getProvider()
    if not provider then
        return warnOnce('provider', 'Install and start screencapture or screenshot-basic to take screenshots.')
    end

    screenshotActive = true
    local ok, err = pcall(function()
        exports[provider]:requestScreenshotUpload(Config.Webhook, 'screenshot', {
            encoding = 'jpg',
            quality = 1.0
        }, function()
            screenshotActive = false
        end)
    end)
    if not ok then
        screenshotActive = false
        warnOnce('error', ('Screenshot failed with %s: %s'):format(provider, err))
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        for _, key in ipairs(Config.Keys) do
            if IsControlJustReleased(0, key) then
                TriggerEvent('GLDNRMZ-screenshot:client:takescreenshot')
                break
            end
        end
    end
end)
