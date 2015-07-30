
function AddDir(dir) // recursively adds everything in a directory to be downloaded by client  
	local files, directories = file.Find( dir.."/*", "GAME")
	for k,v in pairs( files ) do
		resource.AddFile(dir.."/"..v)
		print( "[FAST DL] Adding "..v.." to FastDL.")
	end

	for k,v in pairs( directories ) do
		AddDir( dir.."/"..v )
	end
end

resource.AddFile( "materials/hud/hvision.vmt")
resource.AddFile( "materials/hud/hvision.vtf")
resource.AddFile( "materials/hud/hvision_dx6.vmt")

resource.AddSingleFile( "materials/models/player/Hidden_head.vmt")
resource.AddSingleFile( "materials/models/player/Hidden_Head.vtf")
resource.AddFile( "materials/models/player/hidden_head_b.vmt")
resource.AddFile( "materials/models/player/hidden_head_c.vmt")
resource.AddFile( "materials/models/player/hidden_head_d.vmt")
resource.AddFile( "materials/models/player/Hidden_head_normal.vtf")
resource.AddFile( "materials/models/player/Hidden_Torso.vmt")
resource.AddFile( "materials/models/player/hidden_torso_b.vmt")
resource.AddFile( "materials/models/player/hidden_torso_c.vmt")
resource.AddFile( "materials/models/player/hidden_torso_d.vmt")
resource.AddFile( "materials/models/player/Hidden_torso_normal.vmt")
resource.AddFile( "materials/models/weapons/v_hands/HiddenHands.vmt")
resource.AddFile( "materials/models/weapons/v_hands/HiddenHands_Normal.vtf") 
resource.AddFile( "materials/models/generic/gen_ammo_pack.vmt") 

resource.AddFile( "materials/sprites/aura.vmt")
resource.AddFile( "materials/sprites/hdn_crosshairs.vmt")
resource.AddFile( "materials/sprites/hdn_crosshairs_tluc.vmt")
resource.AddFile( "materials/sprites/laserglow1.vmt")

resource.AddFile( "materials/Decals/Blood1.vmt")
resource.AddFile( "materials/Decals/blood1_subrect.vmt")
resource.AddFile( "materials/Decals/blood1splashmodel.vmt")

resource.AddFile( "materials/hud/hdn_hdnhealth.vmt" )
resource.AddFile( "materials/hud/hdn_staminabar.vmt" )
resource.AddFile( "materials/hud/hdn_staminaBG.vmt" )
resource.AddFile( "materials/hud/aura.vmt" )
resource.AddFile( "resource/fonts/OratorStd.otf" )

resource.AddFile( "models/player/hidden.mdl")
resource.AddFile( "models/generic/gen_ammo_bag.mdl" )

AddDir( "materials/models/weapons/v_kabar" )
AddDir( "materials/models/weapons/v_pipebomb" )
AddDir( "materials/models/weapons/w_models/w_pipebomb" )


AddDir( "models/weapons/kabar" )
AddDir( "models/weapons/pipe" )

AddDir( "sound/nuke" )
AddDir( "sound/player/hidden" )

