-- liszence: WTFPL
minetest.register_node("compass:compass", {

        description = "Compass",
        tiles = {"compass_side_top.png", "compass_side_bottom.png", "compass_side_w.png",
                "compass_side_e.png", "compass_side_s.png", "compass_side_n.png"},
        groups = {snappy=3,choppy=3,oddly_breakable_by_hand=3},

        light_source = 14, -- so that you can see it in the dark

       after_place_node = function(pos, placer)
                local meta = minetest.env:get_meta(pos);
                meta:set_string("infotext", "Compass at "..
                                tostring( math.floor( pos.x ))..","..
                                tostring( math.floor( pos.y ))..","..
                                tostring( math.floor( pos.z )).." or "..

                                tostring( math.floor( pos.z )).."N "..
                                tostring( math.floor( pos.x )).."E "..
                                tostring( math.floor( pos.y )).."H "..
                                "("..
                                (placer:get_player_name() or "")..")")
        end,

})


minetest.register_craft({
               output = "compass:compass",
               recipe = { { "default:steel_ingot" },
                          { "default:torch" },
                          { "default:wood" },
                         } });


