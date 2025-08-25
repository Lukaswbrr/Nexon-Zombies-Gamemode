DEFINE_BASECLASS("player_default")

local PLAYER            = {}


PLAYER.WalkSpeed = 200
PLAYER.RunSpeed  = 500

PLAYER.DisplayName       = "Zombie"
PLAYER.PlayerModel       = "models/player/combine_soldier.mdl"
PLAYER.CanUseFlashlight  = true
PLAYER.MaxHealth         = 3000
PLAYER.StartHealth       = 3000
PLAYER.RespawnTime       = 0     -- 0 means use the default spawn time chosen by gamemode
PLAYER.DropWeaponOnDie   = false
PLAYER.TeammateNoCollide = true
PLAYER.AvoidPlayers      = false -- Automatically avoid players that we're no colliding
PLAYER.Selectable        = true -- When false, this disables all the team checking
PLAYER.FullRotation      = false -- Allow the player's model to rotate upwards, etc etc

function PLAYER:Loadout()
	self.Player:Give("weapon_fists")
end

function PLAYER:Spawn()	
	print("zombies will be back")
end

player_manager.RegisterClass("player_zombie", PLAYER, "player_default")
