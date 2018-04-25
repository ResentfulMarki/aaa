util.AddNetworkString("WeaponSpawn1")

net.Receive("WeaponSpawn1",function()

  Entity( 1 ):Give( "bb_ak47_alt" )
end)
