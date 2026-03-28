-- ============================================================
-- GameHUD.lua
-- Phase 4: Game Loop — Heads-Up Display (HUD)
-- ============================================================
--
-- This LocalScript creates the on-screen display showing:
--   ❤️  Lives  — how many lives the player has left
--   🪙 Coins  — how many coins the player has earned
--   🌊 Wave   — which wave is currently active
--
-- It runs on the CLIENT so each player sees their own HUD.
-- The values are updated whenever the server changes them.
--
-- ============================================================

-- TODO: Get a reference to the player
-- local plr = game.Players.LocalPlayer

-- TODO: Write a function to create the HUD ScreenGui
local function createHUD()
	-- TODO: Create a ScreenGui and parent it to PlayerGui
	-- TODO: Create a Frame as the HUD background
	-- TODO: Add a TextLabel for Lives (e.g. "❤️ Lives: 10")
	-- TODO: Add a TextLabel for Coins (e.g. "🪙 Coins: 0")
	-- TODO: Add a TextLabel for Wave  (e.g. "🌊 Wave: 1")
	-- TODO: Return the TextLabels so we can update them later
end

-- TODO: Write a function to update the HUD display
local function updateHUD(livesLabel, coinsLabel, waveLabel, lives, coins, wave)
	-- TODO: Update each TextLabel's Text property
	-- e.g. livesLabel.Text = "❤️ Lives: " .. lives
end

-- TODO: Set up listeners for value changes from the server
-- The server will store lives/coins/wave in a folder — listen for changes!
-- local statsFolder = plr:WaitForChild("Stats")
-- statsFolder.Lives.Changed:Connect(function(newValue)
--     updateHUD(livesLabel, coinsLabel, waveLabel, newValue, coins, wave)
-- end)

-- TODO: Create the HUD when the script starts
-- local livesLabel, coinsLabel, waveLabel = createHUD()
