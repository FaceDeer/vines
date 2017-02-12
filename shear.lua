-- internationalization boilerplate
local MP = minetest.get_modpath(minetest.get_current_modname())
local S, NS = dofile(MP.."/intllib.lua")

local USES = 200

minetest.register_tool("vines:shears", {
  description = S("Shears"),
  _doc_items_longdesc = vines.doc.shears_longdesc,
  _doc_items_usagehelp = vines.doc.shears_usage,
  inventory_image = "vines_shears.png",
  wield_image = "vines_shears.png",
  stack_max = 1,
  max_drop_level=3,
  tool_capabilities = {
    full_punch_interval = 1.0,
    max_drop_level=0,
    groupcaps={
      snappy={times={[3]=0.2}, uses=60, maxlevel=3},
      wool={times={[3]=0.2}, uses=60, maxlevel=3}
    }
  },  
})

minetest.register_craft({
  output = 'vines:shears',
  recipe = {
		{'', 'default:steel_ingot', ''},
		{'default:stick', 'default:wood', 'default:steel_ingot'},
		{'', 'default:stick', ''}
	}
})