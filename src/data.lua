-- some cheats TODO make configurable
--data.raw["electric-pole"]["small-electric-pole"].maximum_wire_distance = 16
--data.raw["electric-pole"]["small-electric-pole"].supply_area_distance = 64
--data.raw["electric-pole"]["medium-electric-pole"].maximum_wire_distance = 24
--data.raw["electric-pole"]["medium-electric-pole"].supply_area_distance = 64
--data.raw["electric-pole"]["big-electric-pole"].maximum_wire_distance = 32
--data.raw["electric-pole"]["big-electric-pole"].supply_area_distance = 64
--data.raw["electric-pole"]["substation"].maximum_wire_distance = 64
--data.raw["electric-pole"]["substation"].supply_area_distance = 64

local modName="Kux-PowerPoles"
local suffix = modName.."-"

-- 64 --

local pole64Recipe = table.deepcopy(data.raw.recipe["small-electric-pole"])
pole64Recipe.enabled = true
pole64Recipe.name = suffix.."small-electric-pole-grid-64"
pole64Recipe.ingredients = {
  {"small-electric-pole", 170},
  {"copper-cable", 25}
}
pole64Recipe.result = suffix .."small-electric-pole-grid-64"
pole64Recipe.result_count = 1

local pole64Item = table.deepcopy(data.raw.item["small-electric-pole"])
pole64Item.name=suffix.."small-electric-pole-grid-64"
pole64Item.place_result= suffix.."small-electric-pole-grid-64"
pole64Item.icon = "__"..modName.."__/graphics/icons/"..suffix.."small-electric-pole-grid-64.png"
pole64Item.icon_size = 64
pole64Item.icon_mipmaps = 4

local pole64Entity = table.deepcopy(data.raw["electric-pole"]["small-electric-pole"])
pole64Entity.name=suffix.."small-electric-pole-grid-64"
pole64Entity.icon = "__"..modName.."__/graphics/icons/"..suffix.."small-electric-pole-grid-64.png"
pole64Entity.minable = {mining_time = 1, result = "small-electric-pole", count=170}
pole64Entity.maximum_wire_distance = 64
pole64Entity.supply_area_distance = 32

data:extend({pole64Item,pole64Entity,pole64Recipe})

-- 32 --

local pole32Recipe = table.deepcopy(data.raw.recipe[suffix.."small-electric-pole-grid-64"])
pole32Recipe.enabled = true
pole32Recipe.name = suffix.."small-electric-pole-grid-32"
pole32Recipe.ingredients = {
  {"small-electric-pole", 50},
  {"copper-cable", 10}
}
pole32Recipe.result = suffix.."small-electric-pole-grid-32"
pole32Recipe.result_count = 1

local pole32Item = table.deepcopy(data.raw.item[suffix.."small-electric-pole-grid-64"])
pole32Item.name=suffix.."small-electric-pole-grid-32"
pole32Item.place_result= suffix.."small-electric-pole-grid-32"
pole32Item.icon = "__"..modName.."__/graphics/icons/"..suffix.."small-electric-pole-grid-32.png"
pole32Item.icon_size = 64
pole32Item.icon_mipmaps = 4

local pole32Entity = table.deepcopy(data.raw["electric-pole"][suffix.."small-electric-pole-grid-64"])
pole32Entity.name=suffix.."small-electric-pole-grid-32"
pole32Entity.icon = "__"..modName.."__/graphics/icons/"..suffix.."small-electric-pole-grid-32.png"
pole32Entity.minable = {mining_time = 1, result = "small-electric-pole", count=50}
pole32Entity.maximum_wire_distance = 36
pole32Entity.supply_area_distance = 16

data:extend ({pole32Item,pole32Entity,pole32Recipe})