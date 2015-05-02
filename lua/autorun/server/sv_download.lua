
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

resource.AddFile( "materials/models/player/Hidden_head.vmt")
resource.AddFile( "materials/models/player/hidden_head_b.vmt")
resource.AddFile( "materials/models/player/hidden_head_c.vmt")
resource.AddFile( "materials/models/player/hidden_head_d.vmt")
resource.AddFile( "materials/models/player/Hidden_head_normal.vmt")
resource.AddFile( "materials/models/player/Hidden_Torso.vmt")
resource.AddFile( "materials/models/player/hidden_torso_b.vmt")
resource.AddFile( "materials/models/player/hidden_torso_c.vmt")
resource.AddFile( "materials/models/player/hidden_torso_d.vmt")
resource.AddFile( "materials/models/player/Hidden_torso_normal.vmt")
resource.AddFile( "materials/models/weapons/v_hands/HiddenHands.vmt")
resource.AddFile( "materials/models/weapons/v_hands/HiddenHands_Normal.vtf")

AddDir( "materials/models/weapons/v_kabar" )
AddDir( "materials/models/weapons/v_pipebomb" )
AddDir( "materials/models/weapons/w_models/w_pipebomb" )

AddDir( "models/weapons/kabar" )
AddDir( "models/weapons/pipe" )

AddDir( "sound/nuke" )
AddDir( "sound/player/hidden" )

