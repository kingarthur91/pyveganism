ENTITY {
    type = "beacon",
    name = "pyveganism-hidden-beacon",
    icon = "__pyveganism__/graphics/technology/cultivation-expertise.png",
    icon_size = 128,
    energy_usage = "10W",
    flags = {
        "hide-alt-info",
        "not-blueprintable",
        "not-deconstructable",
        "not-on-map",
        "not-flammable",
        "not-repairable",
        "no-automated-item-removal",
        "no-automated-item-insertion"
    },
    animation = {
        filename = "__pyveganism__/graphics/icons/empty.png",
        width = 1,
        height = 1,
        line_length = 8,
        frame_count = 1
    },
    animation_shadow = {
        filename = "__pyveganism__/graphics/icons/empty.png",
        width = 1,
        height = 1,
        line_length = 8,
        frame_count = 1
    },
    energy_source = {
        type = "void"
    },
    base_picture = {
        filename = "__pyveganism__/graphics/icons/empty.png",
        width = 1,
        height = 1
    },
    supply_area_distance = 0,
    radius_visualisation_picture = {
        filename = "__pyveganism__/graphics/icons/empty.png",
        width = 1,
        height = 1
    },
    distribution_effectivity = 1,
    module_specification = {
        module_slots = 65535
    },
    allowed_effects = {
        "consumption",
        "speed",
        "productivity",
        "pollution"
    },
    selection_box = nil,
    collision_box = nil
}

for i = 0, 20 do
    local strength = 2 ^ i

    ITEM {
        type = "module",
        name = "pyveganism-productivity-" .. strength,
        icon = "__pyveganism__/graphics/technology/plant-breeding.png",
        icon_size = 128,
        flags = {"hidden", "hide-from-bonus-gui"},
        subgroup = "module",
        category = "productivity",
        tier = 0,
        stack_size = 1,
        effect = {productivity = {bonus = 0.01 * strength}}
    }

    ITEM {
        type = "module",
        name = "pyveganism-speed-" .. strength,
        icon = "__pyveganism__/graphics/technology/plant-breeding.png",
        icon_size = 128,
        flags = {"hidden", "hide-from-bonus-gui"},
        subgroup = "module",
        category = "speed",
        tier = 0,
        stack_size = 1,
        effect = {speed = {bonus = 0.01 * strength}}
    }
end
