ITEM {
    type = "item",
    name = "cocoa-fruit",
    enabled = false,
    icon = "__pyveganism__/graphics/icons/cocoa-fruit.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-veganism-cocoa",
    order = "aaa",
    stack_size = 200
}

ITEM {
    type = "item",
    name = "cocoa-fruit-washed",
    enabled = false,
    icon = "__pyveganism__/graphics/icons/cocoa-fruit-washed.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-veganism-cocoa",
    order = "aab",
    stack_size = 200
}

ITEM {
    type = "item",
    name = "cocoa-fruit-roasted",
    enabled = false,
    icon = "__pyveganism__/graphics/icons/cocoa-fruit-roasted.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-veganism-cocoa",
    order = "aac",
    stack_size = 200
}

ITEM {
    type = "item",
    name = "cocoa-beans",
    enabled = false,
    icon = "__pyveganism__/graphics/icons/cocoa-beans.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-veganism-cocoa",
    order = "aad",
    stack_size = 200
}

RECIPE {
    type = "recipe",
    name = "grow-cocoa",
    category = "nursery",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "item", name = "soil", amount = 10},
        {type = "fluid", name = "water", amount = 500}
    },
    results = {
        {type = "item", name = "cocoa-fruit", amount = 10},
        {type = "item", name = "biomass", amount = 2}
    },
    main_product = "cocoa-fruit",
    icons = {{icon = "__pyveganism__/graphics/icons/grow-cocoa.png"}},
    icon_size = 64,
    subgroup = "py-veganism-cocoa",
    order = "aba"
}:add_unlock("oil-plants")

RECIPE {
    type = "recipe",
    name = "wash-cocoa",
    category = "washer",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "cocoa-fruit", amount = 20},
        {type = "fluid", name = "water", amount = 200}
    },
    results = {
        {type = "item", name = "cocoa-fruit-washed", amount = 20},
        {type = "fluid", name = "dirty-water", amount = 200}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/cocoa-fruit.png"},
        {icon = "__pyveganism__/graphics/icons/washing.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-cocoa",
    order = "aaa"
}:add_unlock("oil-plants")

RECIPE {
    type = "recipe",
    name = "roast-cocoa",
    category = "hpf",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "item", name = "cocoa-fruit-washed", amount = 5}
    },
    results = {
        {type = "item", name = "cocoa-fruit-roasted", amount = 5}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/cocoa-fruit-roasted.png"}, 
        {icon = "__pyveganism__/graphics/icons/hyperthermic-stress.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-cocoa",
    order = "aab"
}:add_unlock("oil-plants")

RECIPE {
    type = "recipe",
    name = "skin-cocoa",
    category = "solid-separator",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "item", name = "cocoa-fruit-roasted", amount = 5}
    },
    results = {
        {type = "item", name = "cocoa-beans", amount = 10},
        {type = "item", name = "biomass-dry", amount = 2}
    },
    icon = "__pyveganism__/graphics/icons/cocoa-beans.png",
    icon_size = 64,
    subgroup = "py-veganism-cocoa",
    order = "aac"
}:add_unlock("oil-plants")

RECIPE {
    type = "recipe",
    name = "press-cocoa",
    category = py_veganism_globals["plant_oil_pressing_category"],
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "item", name = "cocoa-beans", amount = 10}
    },
    results = {
        {type = "item", name = "solid-fat", amount = 10},
        {type = "item", name = "biomass-dry", amount = 1}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/cocoa-beans.png"},
        {icon = "__pyveganism__/graphics/icons/pressing.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-cocoa",
    order = "aad"
}:add_unlock("oil-plants")
