-- ============================================================
-- EnemyWalker.lua
-- Phase 2: Build the Battlefield — Enemy NPC Movement
-- ============================================================
--
-- This script will move enemy NPCs along a waypoint path.
-- Enemies walk from Waypoint1 → Waypoint2 → ... → the end.
-- If an enemy reaches the end, the player loses a life.
--
-- SETUP (when you're ready to implement this):
--   1. Place Parts in Workspace named Waypoint1, Waypoint2, etc.
--   2. Place an NPC model in Workspace named "Enemy"
--   3. Uncomment the starter code below and modify it!
--
-- ============================================================

-- TODO: Require or reference enemy models spawned by WaveManager

-- TODO: Define the waypoint path
-- local waypoints = {
--     workspace.Waypoint1,
--     workspace.Waypoint2,
--     workspace.Waypoint3,
--     workspace.Waypoint4,
-- }

-- TODO: Write a function to move a single enemy along the path
local function moveEnemyAlongPath(enemy, waypoints)
	-- TODO: Get the Humanoid from the enemy model
	-- TODO: Loop through each waypoint and call hum:MoveTo()
	-- TODO: Wait for the enemy to arrive at each waypoint with MoveToFinished:Wait()
	-- TODO: When the loop ends, the enemy reached the end — handle lives loss
end

-- TODO: Write a function to set up an enemy's health display
local function setupHealthDisplay(enemy, maxHealth)
	-- TODO: Add a BillboardGui above the enemy's head
	-- TODO: Add a TextLabel inside the BillboardGui showing current health
	-- TODO: Update the TextLabel whenever health changes
end

-- TODO: Write a function to damage an enemy
local function damageEnemy(enemy, amount)
	-- TODO: Find the Health IntValue inside the enemy
	-- TODO: Subtract amount from the health
	-- TODO: If health <= 0, destroy the enemy and give the player coins
end

-- ============================================================
-- Starter code (uncomment and modify when ready for Phase 2!):
-- ============================================================
--
-- local enemy = workspace.Enemy
-- local hum = enemy:WaitForChild("Humanoid")
--
-- local waypoints = {
--     workspace.Waypoint1,
--     workspace.Waypoint2,
--     workspace.Waypoint3,
--     workspace.Waypoint4,
-- }
--
-- for i, waypoint in ipairs(waypoints) do
--     hum:MoveTo(waypoint.Position)
--     hum.MoveToFinished:Wait()
-- end
--
-- enemy:Destroy()
