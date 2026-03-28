# 🗺️ Tower Defence Game — Development Roadmap

A step-by-step plan to build a full tower defence game in Roblox with Lua.
Tackle one phase at a time and get each part working before moving on!

---

## ✅ Phase 0: Project Setup
**Status: Complete ✅**

Get everything organized before writing game code.

- [x] Create GitHub repository
- [x] Set up project folder structure
- [x] Write README.md with setup instructions
- [x] Write ROADMAP.md (this file!)

---

## ✅ Phase 1: The Basics
**Status: Complete ✅**

Get the character animations working properly.

- [x] Walk animation plays when the player moves
- [x] Idle animation plays when the player stands still
- [x] Jump animation plays when the player jumps
- [x] Fall animation plays when the player is in freefall
- [x] Dead state — all animations stop when the character dies
- [x] Cleanup — disconnect all events when the character is removed
- [x] Safety checks — warn if animation assets are missing

**What you'll learn:** Humanoid states, AnimationTracks, RunService events, event cleanup

---

## 🔜 Phase 2: Build the Battlefield
**Status: Not started**

Create the path that enemies will walk along, and make a basic enemy NPC.

- [ ] Place Parts in Workspace as waypoints (`Waypoint1`, `Waypoint2`, etc.)
- [ ] Write a script that moves an enemy NPC from waypoint to waypoint using `Humanoid:MoveTo()`
- [ ] Wait for the NPC to reach each waypoint before moving to the next using `MoveToFinished:Wait()`
- [ ] Destroy the enemy when it reaches the end
- [ ] Add a health `IntValue` inside the enemy model
- [ ] Show health above the enemy's head using a `BillboardGui` with a `TextLabel`

**What you'll learn:** Workspace parts, NPC movement, BillboardGui, IntValue

---

## 🔜 Phase 3: Towers!
**Status: Not started**

Let the player place towers that automatically shoot at enemies.

- [ ] Detect where the player clicks using `Mouse.Hit`
- [ ] Place a tower Part at the clicked position
- [ ] Validate placement — don't allow towers on the path or overlapping each other
- [ ] Tower scans for nearby enemies using `(enemy.Position - tower.Position).Magnitude`
- [ ] When an enemy is in range, create a bullet Part that moves toward the enemy
- [ ] Subtract health from the enemy when the bullet hits
- [ ] Destroy the enemy when health reaches 0

**What you'll learn:** Mouse input, magnitude checks, CFrame movement, game loops

---

## 🔜 Phase 4: Game Loop
**Status: Not started**

Add waves, lives, coins, and a HUD so the game has a proper goal.

- [ ] Define wave configurations (Wave 1 = 3 enemies, Wave 2 = 5 enemies, etc.)
- [ ] Spawn enemies in waves with delays using `task.wait()`
- [ ] Track lives — player loses a life when an enemy reaches the end
- [ ] Track coins — player earns coins when an enemy is killed
- [ ] Create a `ScreenGui` HUD showing current lives, coins, and wave number
- [ ] Update the HUD display whenever values change

**What you'll learn:** ScreenGui, TextLabel, task.wait(), game state management

---

## 🔜 Phase 5: Make It Fun
**Status: Not started**

Add variety and depth to keep the game interesting.

- [ ] **Slow Tower** — Reduces enemy walk speed when in range
- [ ] **Splash Tower** — Deals damage to all enemies near the impact point
- [ ] **Sniper Tower** — Long range, slow fire rate, high damage
- [ ] **Tower Upgrades** — Spend coins to increase damage or fire rate
- [ ] **Scaling difficulty** — Enemy health increases each wave: `health = 50 + (waveNumber * 10)`
- [ ] **Boss enemies** — Every 5th wave, spawn one big slow enemy with lots of health

**What you'll learn:** Modular design, game balancing, upgrade systems

---

## 🔜 Phase 6: Polish
**Status: Not started**

Make the game feel professional with sound, animations, and menus.

- [ ] Sound effects — tower shooting, enemy dying, wave starting
- [ ] Tower rotation — towers smoothly rotate to face their target enemy
- [ ] Start screen and pause menu using `ScreenGui` and `Frame`
- [ ] Save player progress (high score, unlocked towers) using `DataStoreService`

**What you'll learn:** Sound API, CFrame.lookAt(), DataStoreService, UI design

---

## 🎯 Tips for Success

1. **One phase at a time** — Don't jump ahead! Make sure each phase works before moving on.
2. **Test often** — Press Play in Roblox Studio after every small change.
3. **Read error messages** — The Output window in Roblox Studio is your best friend.
4. **Ask for help** — It's okay to not know everything. That's how you learn!
5. **Have fun** — You're building a real game. That's awesome! 🎮
