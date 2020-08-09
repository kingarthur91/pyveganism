require("prototypes.updates.compostable-items")
require("prototypes.updates.handcrafting")

-- we add the hidden stuff late to avoid problems with other mods that change
-- beacon or module prototypes
require("prototypes.buildings.hidden-beacon")

if mods["pyrawores"] then
    RECIPE("ralesia-humus"):replace_ingredient("water", "hydrogen")
end

if mods['pyalienlife'] then
    data.raw.recipe['ralesia-humus'].results = {{type = 'item', name = 'ralesias', amount = 10}}
    data.raw.recipe['ralesia-humus'].main_product = 'ralesias'
    --log(serpent.block(data.raw.recipe['ralesia-humus']))
end