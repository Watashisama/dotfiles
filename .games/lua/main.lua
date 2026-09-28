local card = require('utils.cards')
local attacks = require("utils.attacks")

local mc = card.make("MC", attacks.make_attacks(2, 3, 6, 3, 9, 5))
local otaku = card.make('otaku', attacks.make_attacks(0, 0, 0, 0, 0, 0))

attacks.normal_attack(mc, otaku)

print(mc.energy)
print(otaku.hp)
