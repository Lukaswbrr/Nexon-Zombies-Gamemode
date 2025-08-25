-- This gamemode is based on Counter-Strike: Online's Zombie Mode. I'm thinking of adding powerups to the gamemode (Like press 6 to run, etc) and maybe custom stuff too. (powerups, stuff)

AddCSLuaFile("player_class/player_human.lua")
AddCSLuaFile("test_thing/test_thinging.lua")

include("player_class/player_human.lua")
include("test_thing/test_thinging.lua")


local version = "0.1.0-alpha"

GM.Name = "Nexon Zombies Mode"
GM.Author = "Lukaswbrr"
GM.TeamBased = true

TEAM_HUMANS = 1
TEAM_ZOMBIES = 2

function GM:CreateTeams()

   if ( !GAMEMODE.TeamBased ) then return end
   
   team.SetUp( TEAM_HUMANS, "Humans", Color( 200, 0, 200 ), true )
   team.SetSpawnPoint( TEAM_HUMANS, { "info_player_start", "info_player_terrorist", "info_player_rebel", "info_player_deathmatch" } )
   team.SetClass( TEAM_HUMANS, { "player_human" } )
   
end

function GM:Initialize()
   
end
