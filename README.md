# 🏰 Tower Defence Game

A tower defence game built in **Roblox** with **Lua**. Enemies walk along a path, and you set up towers to stop them!

Built by a 12-year-old programmer learning Lua — one phase at a time. 🎮

---

## 📋 Phased Roadmap

- [x] **Phase 0: Project Setup** — Repository, project structure, README, ROADMAP
- [x] **Phase 1: The Basics** — Character animations (walk, idle, jump, fall, dead state, cleanup)
- [ ] **Phase 2: Build the Battlefield** — Enemy path with waypoints, enemy NPC walking, enemy health with BillboardGui
- [ ] **Phase 3: Towers!** — Place towers on click, detect enemies in range, shoot bullets that subtract health
- [ ] **Phase 4: Game Loop** — Wave system, lives system, coins system, HUD GUI
- [ ] **Phase 5: Make It Fun** — Multiple tower types, upgrades, scaling difficulty, boss enemies
- [ ] **Phase 6: Polish** — Sound effects, tower rotation, start/pause menu, save progress with DataStoreService

See [ROADMAP.md](ROADMAP.md) for full details on each phase!

---

## 📁 Project Structure

```
src/
  StarterCharacterScripts/
    AnimationController.lua    ← Phase 1 ✅ Your character animations
  ServerScriptService/
    EnemyWalker.lua            ← Phase 2 (coming soon)
    TowerShooter.lua           ← Phase 3 (coming soon)
    WaveManager.lua            ← Phase 4 (coming soon)
  StarterPlayerScripts/
    TowerPlacer.lua            ← Phase 3 (coming soon)
  StarterGui/
    GameHUD.lua                ← Phase 4 (coming soon)
```

---

## 🛠️ How to Use in Roblox Studio

Here's how to put these scripts into Roblox Studio step by step:

### Setting Up AnimationController.lua (Phase 1)
1. Open **Roblox Studio**
2. In the **Explorer** panel, find **StarterCharacterScripts**
3. Right-click it → **Insert Object** → **LocalScript**
4. Name it `AnimationController`
5. Copy the code from `src/StarterCharacterScripts/AnimationController.lua` and paste it in
6. Make sure you have a **Folder** in Workspace with animations named: `walk`, `idle`, `jump`, `fall`

### Setting Up Placeholder Files (Phase 2+)
1. Each file in `src/ServerScriptService/` goes into **ServerScriptService** as a **Script**
2. Each file in `src/StarterPlayerScripts/` goes into **StarterPlayerScripts** as a **LocalScript**
3. Each file in `src/StarterGui/` goes into **StarterGui** as a **LocalScript**

---

## 🧰 Tech Stack

- **Engine**: Roblox Studio
- **Language**: Lua

---

## 💡 About This Project

This is a learning project! The goal is to build a full tower defence game by adding one small feature at a time. Each phase introduces new Roblox and Lua concepts:

- **Phase 1** → Animations, events, state machines
- **Phase 2** → NPC pathfinding, workspace objects
- **Phase 3** → Mouse input, game mechanics
- **Phase 4** → Game loops, GUI
- **Phase 5** → Advanced game design
- **Phase 6** → Audio, persistence, polish
