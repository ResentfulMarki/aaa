util.AddNetworkString("WeaponSpawn1")

net.Receive("WeaponSpawn1",function()

  Entity( 1 ):Give( "bb_ak47_alt" )
end)

util.AddNetworkString("OD")
net.Receive("OD")

hook.Add("PlayerSay", "OpenDerma", function( ply, text, team )
  if( text == "!OpenDerma" ) then
    gayMenu()
end
end)
