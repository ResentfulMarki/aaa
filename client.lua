function gayMenu()
local frame = vgui.Create( "DFrame" )
frame:SetSize(1000,720)
frame:Center()
frame:SetTitle("Weapon Spawner")
frame:SetVisible(true)
frame:MakePopup()
frame.Paint = function(s , w , h)
  draw.RoundedBox(5,0,0,w , h, Color(255,100,100))
end

function buttonPressed()
  net.Start("WeaponSpawn1")
  net.SendToServer()

end

local button = vgui.Create("DButton" , frame)
button:SetPos(10,40)
button:SetSize(50,20)
button:SetText("Hey Mate")
button.DoClick = buttonPressed


local label = vgui.Create("DLabel" , frame)
label:SetPos(10,90)
label:SetText("Ooo")

local choice = vgui.Create("DComboBox", frame)
choice:SetPos(10,120)
choice:SetSize(100,20)
choice:SetValue("click me")
choice:AddChoice("1")
choice:AddChoice("2")
choice.OnSelect = function( panel, index, value )
  print( value .." was selected!" )
end
end
concommand.Add( "open_menu", gayMenu)
