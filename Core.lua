local addonName = ...

Restocker = {}
local Restocker = Restocker

-- Extract version
Restocker.version = GetAddOnMetadata(addonName, 'Version')

-- Credits for this go to Telroth and in part the wow wikia as it was done very similar there too.
Restocker.eventFrame, Restocker.events = CreateFrame("FRAME"), {}

Restocker.eventFrame:SetScript("OnEvent", function(self, event, ...) if Restocker[event] then Restocker[event](self, ...); end end)
-- Not too many ways of doing this.
function Restocker:RegisterEvent(event)
	Restocker.eventFrame:RegisterEvent(event)
end
function Restocker:UnregisterEvent(event)
	Restocker.eventFrame:UnregisterEvent(event)
end

function Restocker:Init()
  print("The base skeleton has loaded!)
end

Restocker:RegisterEvent("PLAYER_LOGIN")
Restocker.PLAYER_LOGIN = Restocker.Init




