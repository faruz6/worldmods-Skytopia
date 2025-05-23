--[[

Skyblock for Minetest

Copyright (c) 2015 cornernote, Brett O'Donnell <cornernote@gmail.com>
Source Code: https://github.com/cornernote/minetest-skyblock
License: GPLv3

]]--

local level = 6

--
-- PUBLIC FUNCTIONS
--

skyblock.levels[level] = {}

-- feats
skyblock.levels[level].feats = {}

-- init level
skyblock.levels[level].init = function(player_name)
end

-- get level information
skyblock.levels[level].get_info = function(player_name)
	local info = {
		level=level,
		total=1,
		count=0,
		player_name=player_name,
		infotext='',
		formspec = '',
		formspec_quest = '',
	}

	local text = 'label[0,0.5; THIS IS NOT END...]'
		..'label[0,1.0; New levels are coming soon]'
		..'label[0,1.5; It is the new era of skyblock]'
		..'label[0,2.0; Create your new sky world.]'

	info.formspec = skyblock.levels.get_inventory_formspec(level,info.player_name,true)..text
	info.formspec_quest = skyblock.levels.get_inventory_formspec(level,info.player_name)..text
	info.infotext = 'END?'.. player_name ..' ... or is it just start ...'
	return info
end

-- no feat tracking
skyblock.levels[level].reward_feat = function(player_name, feat) end
skyblock.levels[level].on_placenode = function(pos, newnode, placer, oldnode) end
skyblock.levels[level].on_dignode = function(pos, oldnode, digger) end
skyblock.levels[level].on_item_eat = function(player_name, itemstack) end
skyblock.levels[level].on_craft = function(player_name, itemstack) end
skyblock.levels[level].bucket_on_use = function(player_name, pointed_thing) end
skyblock.levels[level].bucket_water_on_use = function(player_name, pointed_thing) end
skyblock.levels[level].bucket_lava_on_use = function(player_name, pointed_thing) end
