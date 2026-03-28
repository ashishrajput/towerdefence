-- ============================================================
-- TowerPlacer.lua
-- Phase 3: Towers! — Tower Placement (Client Side)
-- ============================================================
--
-- This LocalScript lets the player place towers by clicking
-- on the ground. It runs on the CLIENT (each player's computer).
--
-- How it will work:
--   1. Player clicks somewhere on the map
--   2. We check if that spot is valid (not on the path, not too close to another tower)
--   3. If valid, we place a tower there
--   4. The server is told about the new tower so TowerShooter can control it
--
-- ============================================================

-- TODO: Get a reference to the player's mouse
-- local plr   = game.Players.LocalPlayer
-- local mouse = plr:GetMouse()

-- TODO: Get a reference to the camera (needed for raycasting later)
-- local camera = workspace.CurrentCamera

-- TODO: Define tower costs (how many coins to place one)
-- local TOWER_COST = 25

-- TODO: Write a function to check if a position is valid for placing a tower
local function isValidPlacement(position)
	-- TODO: Check the position is not on the enemy path
	-- TODO: Check there's no other tower already there
	-- TODO: Return true if the spot is okay, false if not
end

-- TODO: Write a function to place a tower at a position
local function placeTower(position)
	-- TODO: Check the player has enough coins
	-- TODO: Call isValidPlacement() — if invalid, show a warning message
	-- TODO: Create a tower Part or clone a tower model
	-- TODO: Set the tower's position
	-- TODO: Subtract coins from the player
	-- TODO: Tell the server a tower was placed (use a RemoteEvent)
end

-- TODO: Connect the mouse click to the placeTower function
-- mouse.Button1Down:Connect(function()
--     local hitPosition = mouse.Hit.Position
--     placeTower(hitPosition)
-- end)
