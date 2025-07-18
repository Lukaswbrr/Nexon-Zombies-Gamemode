DEFINE_BASECLASS("player_default")

local PLAYER            = {}

PLAYER.DisplayName       = "Human"
PLAYER.PlayerModel       = "models/player/combine_soldier.mdl"
PLAYER.CanUseFlashlight  = true
PLAYER.MaxHealth         = 1000
PLAYER.StartHealth       = 1000
PLAYER.RespawnTime       = 0     -- 0 means use the default spawn time chosen by gamemode
PLAYER.DropWeaponOnDie   = false
PLAYER.TeammateNoCollide = true
PLAYER.AvoidPlayers      = false -- Automatically avoid players that we're no colliding
PLAYER.Selectable        = true -- When false, this disables all the team checking
PLAYER.FullRotation      = false -- Allow the player's model to rotate upwards, etc etc

function PLAYER:Loadout()
	self.Player:Give("weapon_smg1")
end

player_manager.RegisterClass("player_human", PLAYER, "player_default")
