local M = {}
--- Used to make a card
--- ``` lua
--- Card.make(Name_of_card, starting_energy, starting_hp,starting_mp, enemy_state)
--- -- card is returned
--- ```
---@param name     string
---@param attacks  attacks
---@param energy?  int
---@param hp?      int
---@param mp?      int
---@param isEnemy? boolean
---@return card
function M.make(name, attacks, energy, hp, mp, isEnemy)
  local self = setmetatable({}, { __index = M })
  self.name = name
  self.energy = energy or 0
  self.hp = hp or 10
  self.mp = mp or 20
  self.isEnemy = isEnemy or false
  self.attacks = attacks

  return self
end

return M
