-- ============================================================
-- TowerShooter.lua
-- Phase 3: Towers! — Tower Combat Logic
-- ============================================================
--
-- This script handles what towers DO:
--   * Scan for enemies that are close enough (in range)
--   * Shoot a bullet toward the nearest enemy
--   * Subtract health when the bullet hits
--   * Destroy the enemy when health reaches 0
--
-- This runs on the SERVER so that all players see the same thing.
--
-- ============================================================

-- TODO: Get a reference to the folder where towers are stored
-- local towersFolder = workspace:WaitForChild("Towers")

-- TODO: Get a reference to the folder where enemies are stored
-- local enemiesFolder = workspace:WaitForChild("Enemies")

-- TODO: Define tower stats (range, damage, fire rate)
-- local TOWER_RANGE  = 20   -- studs — how far the tower can reach
-- local TOWER_DAMAGE = 10   -- how much health the bullet removes
-- local FIRE_RATE    = 1    -- seconds between shots

-- TODO: Write a function to find the nearest enemy to a tower
local function findNearestEnemy(tower, enemies, range)
	-- TODO: Loop through all enemies
	-- TODO: Calculate distance: (enemy.Position - tower.Position).Magnitude
	-- TODO: Return the closest enemy that is within 'range' studs
	-- TODO: Return nil if no enemy is in range
end

-- TODO: Write a function to shoot a bullet at an enemy
local function shootBullet(tower, targetEnemy)
	-- TODO: Create a small Part (the bullet)
	-- TODO: Set its position to the tower's position
	-- TODO: Move it toward the enemy using a loop or tween
	-- TODO: When it reaches the enemy (close enough), deal damage
	-- TODO: Destroy the bullet after it hits
end

-- TODO: Write the main tower loop — runs for every tower
local function startTowerLoop(tower)
	-- TODO: Use a while loop that fires every FIRE_RATE seconds
	-- TODO: Find the nearest enemy with findNearestEnemy()
	-- TODO: If an enemy is found, call shootBullet()
	-- TODO: Use task.wait(FIRE_RATE) to control firing speed
end

-- TODO: Watch for new towers being placed and start their loops
-- towersFolder.ChildAdded:Connect(function(newTower)
--     startTowerLoop(newTower)
-- end)
