-- ============================================================
-- WaveManager.lua
-- Phase 4: Game Loop — Wave Spawning System
-- ============================================================
--
-- This script manages the waves of enemies:
--   * Wave 1 = 3 enemies
--   * Wave 2 = 5 enemies
--   * Wave 3 = 7 enemies ... and so on!
--
-- It also keeps track of the overall game state:
--   * How many lives does the player have left?
--   * How many coins have they earned?
--   * Which wave are we on?
--
-- This runs on the SERVER.
--
-- ============================================================

-- TODO: Define starting game values
-- local lives     = 10   -- player starts with 10 lives
-- local coins     = 0    -- player starts with 0 coins
-- local waveNumber = 0   -- current wave (starts at 0, first wave is 1)

-- TODO: Define wave configurations
-- Each wave entry has: enemy count, enemy health, enemy speed
-- local waveConfigs = {
--     { count = 3,  health = 50,  speed = 12 },  -- Wave 1
--     { count = 5,  health = 60,  speed = 13 },  -- Wave 2
--     { count = 7,  health = 70,  speed = 14 },  -- Wave 3
--     -- Or use a formula: health = 50 + (waveNumber * 10)
-- }

-- TODO: Write a function to spawn a single enemy
local function spawnEnemy(health, speed)
	-- TODO: Clone an enemy model from ServerStorage or ReplicatedStorage
	-- TODO: Set the enemy's health and walkspeed
	-- TODO: Parent it to the Enemies folder in Workspace
	-- TODO: The enemy's movement is handled by EnemyWalker
end

-- TODO: Write a function to run a single wave
local function startWave(waveConfig)
	-- TODO: Print or display "Wave X starting!"
	-- TODO: Loop waveConfig.count times
	-- TODO: Spawn one enemy each iteration using spawnEnemy()
	-- TODO: Wait a short time between each spawn using task.wait()
	-- TODO: Wait for all enemies to be defeated before ending the wave
end

-- TODO: Write the main game loop
local function runGame()
	-- TODO: Loop through each wave config
	-- TODO: Call startWave() for each one
	-- TODO: Wait for the wave to finish before starting the next
	-- TODO: After all waves are done, show a "You Win!" message
end

-- TODO: Start the game
-- runGame()
