-- ============================================================
-- AnimationController.lua
-- Phase 1: The Basics — Character Animation System
-- ============================================================
--
-- This script controls your character's animations.
-- It plays the right animation based on what the character is doing:
--   * Standing still → idle animation
--   * Moving         → walk animation
--   * Jumping        → jump animation
--   * Falling        → fall animation
--   * Dying          → stop all animations
--
-- HOW TO SET UP:
--   1. Put this LocalScript inside StarterCharacterScripts
--   2. Create a Folder in Workspace named "Folder"
--   3. Add Animation objects inside that Folder named:
--      "walk", "idle", "jump", "fall"
--
-- ============================================================

-- Wrap everything in a do...end block so our variables
-- don't accidentally leak into the global scope.
-- Think of it like putting your stuff in a box! 📦
do

	-- --------------------------------------------------------
	-- SETUP: Get references to important objects
	-- --------------------------------------------------------

	-- The character model (the avatar in the game world)
	local char = script.Parent

	-- The Humanoid controls movement and health
	local hum = char:WaitForChild("Humanoid", 10)
	if not hum then
		warn("[AnimationController] Could not find Humanoid after 10 seconds!")
		return
	end

	-- The Animator is what actually plays animations
	local animator = hum:WaitForChild("Animator", 10)
	if not animator then
		warn("[AnimationController] Could not find Animator after 10 seconds!")
		return
	end

	-- RunService lets us run code every frame (Heartbeat fires ~60 times per second)
	local rs = game:GetService("RunService")

	-- --------------------------------------------------------
	-- LOAD ANIMATIONS
	-- We look for Animation objects inside workspace.Folder
	-- WaitForChild(name, timeout) — waits up to 10 seconds,
	-- then gives up and warns us if the animation isn't there.
	-- --------------------------------------------------------

	local walkAnim  = workspace.Folder:WaitForChild("walk",  10)
	local idleAnim  = workspace.Folder:WaitForChild("idle",  10)
	local jumpAnim  = workspace.Folder:WaitForChild("jump",  10)
	local fallAnim  = workspace.Folder:WaitForChild("fall",  10)

	-- Warn and bail out if any animation is missing
	if not walkAnim then warn("[AnimationController] Missing animation: 'walk' in workspace.Folder")  return end
	if not idleAnim then warn("[AnimationController] Missing animation: 'idle' in workspace.Folder")  return end
	if not jumpAnim then warn("[AnimationController] Missing animation: 'jump' in workspace.Folder")  return end
	if not fallAnim then warn("[AnimationController] Missing animation: 'fall' in workspace.Folder")  return end

	-- Load each animation into the Animator so it's ready to play
	local walk = animator:LoadAnimation(walkAnim)
	local idle = animator:LoadAnimation(idleAnim)
	local jump = animator:LoadAnimation(jumpAnim)
	local fall = animator:LoadAnimation(fallAnim)

	-- --------------------------------------------------------
	-- START: Play idle animation right away when the character spawns
	-- --------------------------------------------------------
	idle:Play()

	-- This flag tracks whether we're in the air (jumping/falling)
	-- so we don't accidentally switch to walk/idle mid-air
	local isJumping = false

	-- --------------------------------------------------------
	-- CONNECTIONS TABLE
	-- We store every event connection here so we can
	-- disconnect them all at once when the character is removed.
	-- This prevents memory leaks! 🧹
	-- --------------------------------------------------------
	local connections = {}

	-- --------------------------------------------------------
	-- WALK / IDLE LOGIC
	-- Every frame (Heartbeat), check if the character is moving.
	-- MoveDirection.Magnitude is > 0 when the player is walking.
	-- --------------------------------------------------------
	connections.heartbeat = rs.Heartbeat:Connect(function()
		-- If we're jumping or falling, leave animations alone
		if isJumping then return end

		if hum.MoveDirection.Magnitude > 0 then
			-- Player is moving — play walk animation
			if not walk.IsPlaying then
				idle:Stop()
				walk:Play()
			end
		else
			-- Player is standing still — play idle animation
			if not idle.IsPlaying then
				walk:Stop()
				idle:Play()
			end
		end
	end)

	-- --------------------------------------------------------
	-- JUMP / FALL / LAND / DEAD LOGIC
	-- StateChanged fires whenever the Humanoid changes state,
	-- for example from Running → Jumping, or Jumping → Freefall.
	-- --------------------------------------------------------
	connections.stateChanged = hum.StateChanged:Connect(function(old, new)

		if new == Enum.HumanoidStateType.Jumping then
			-- Player just jumped! Stop walk/idle/fall and play jump
			isJumping = true
			walk:Stop()
			idle:Stop()
			fall:Stop()
			jump:Play()

		elseif new == Enum.HumanoidStateType.Freefall then
			-- Player is falling (after the jump arc)
			-- Switch from jump animation to fall animation
			jump:Stop()
			fall:Play()

		elseif new == Enum.HumanoidStateType.Landed then
			-- Player just landed on the ground
			-- Allow walk/idle to play again
			isJumping = false
			fall:Stop()
			jump:Stop()
			idle:Play()

		elseif new == Enum.HumanoidStateType.Dead then
			-- Character died — stop every animation immediately
			isJumping = false
			walk:Stop()
			idle:Stop()
			jump:Stop()
			fall:Stop()
		end
	end)

	-- --------------------------------------------------------
	-- CLEANUP FUNCTION
	-- When the character is removed (e.g. they respawn),
	-- disconnect all our events to free up memory.
	-- --------------------------------------------------------
	local function cleanup()
		for name, connection in pairs(connections) do
			connection:Disconnect()
		end
		-- Clear the table so nothing holds old references
		connections = {}
	end

	-- Listen for the character being removed and run cleanup
	connections.removing = char.AncestryChanged:Connect(function(_, parent)
		if parent == nil then
			-- Character has been removed from the game
			cleanup()
		end
	end)

end -- end of do...end block
