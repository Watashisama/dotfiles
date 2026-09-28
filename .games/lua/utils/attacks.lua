local M = {}

---@param normal_attack_damage int
---@param normal_attack_cost   int
---@param skill_damage         int
---@param skill_cost           int
---@param ultimate_damage      int
---@param ultimate_cost        int
---@return attacks
function M.make_attacks(
  normal_attack_damage, normal_attack_cost, skill_damage, skill_cost, ultimate_damage, ultimate_cost
)
  return {
    normal_attack_damage = normal_attack_damage,
    normal_attack_cost   = normal_attack_cost,
    skill_damage         = skill_damage,
    skill_cost           = skill_cost,
    ultimate_damage      = ultimate_damage,
    ultimate_cost        = ultimate_cost
  }
end

---@param card_self card
---@param dmg       int
local function damage(card_self, dmg)
  local self = setmetatable({}, { __index = card_self })
  if dmg >= self.hp then
    self.hp = 0
  else
    self.hp -= dmg
  end
end

---@param card_other card
---@param card_self  card
function M.normal_attack(card_self, card_other)
  local self = setmetatable({}, { __index = card_self })
  local other = setmetatable({}, { __index = card_other })

  if self.attacks.normal_attack_cost <= self.mp then
    damage(other, self.attacks.normal_attack_damage)
    self.energy = 1 + self.energy
  else
    error("Not enough mp", 1)
  end
end

---@param card_other card
---@param card_self  card
function M.skill(card_self, card_other)
  local self = setmetatable({}, { __index = card_self })
  local other = setmetatable({}, { __index = card_other })

  if self.attacks.skill_cost <= self.mp then
    damage(other, self.attacks.skill_damage)
    self.energy += 1
  else
    error("Not enough mp", 1)
  end
end

---@param card_other card
---@param card_self  card
function M.ultimate(card_self, card_other)
  local self = setmetatable({}, { __index = card_self })
  local other = setmetatable({}, { __index = card_other })

  if self.attacks.ultimate_cost <= self.mp then
    damage(other, self.attacks.ultimate_damage)
    self.energy += 1
  else
    error("Not enough mp", 1)
  end
end

return M
