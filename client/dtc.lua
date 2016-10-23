-- Created by DaAlpha
class 'DTC'

function DTC:__init()
  Events:Subscribe("LocalPlayerChat", self, self.LocalPlayerChat)
end

function DTC:LocalPlayerChat(args)
  if args.text:lower() == "/dtc" then
    Chat:Print("Distance to map center: ", Color.White, string.format("%.2f km",
      LocalPlayer:GetPosition():Distance2D(Vector3.Zero) / 1000), Color.RoyalBlue)
    return false
  end
end

local dtc = DTC()
