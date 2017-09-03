-- The map exchange string is: >>>AAAPABUAAAADAAcAAAAEAAAAY29hbAUEBQoAAABjb3BwZXItb3JlBQUFCQAAAGNydWRlLW9pbAQFBQoAAABlbmVteS1iYXNlAQADCAAAAGlyb24tb3JlBQUFBQAAAHN0b25lBQQFCwAAAHVyYW5pdW0tb3JlAQADjvdOcoCEHgCAhB4AAwEBAQF7FK5H4XqUPwEAAAAAAAAuQAEAAAAAAADwPwEAAAAAAFi7QAEAAAAAAOCFQAEAAAAAAFirQAEAAAAAAIjDQAEAAAAAAECfQAEAAAAAAEB/QAEAAAAAAECPQAEzMzMzMzPzPwEzMzMzMzPzPwF7FK5H4Xp0PwEAAQAAAAAAAAhAAQAAAAAAAAhAAXsUrkfheoQ/AQABAQGN7bWg98bQPgH8qfHSTWJgPwFpHVVNEHXvPgEBAQcAAAABAgAAAAECAAAAAZqZmZmZmbk/AQAAAAAAAABAAQAAAAAAAOA/AZqZmZmZmdk/Ac3MzMzMzOw/AQUAAAABFAAAAAFAOAAAAcBLAwABEA4AAAGgjAAAASAcAAABAAAAAAAAPkABAAAAAAAAFEABZmZmZmZm9j8BMzMzMzMz4z8BMzMzMzMz0z8BAAAAAAAACEABAAAAAAAAJEABPAAAAAEeAAAAAcgAAAABBQAAAAEAAAAAAAAAQAEBAQAAAAAAAFlAAQUAAAABGQAAAAEAAAAAAAAkQAEyAAAAAQAAAAAAAD5AAWQAAAABmpmZmZmZyT8BMzMzMzMzwz8BMzMzMzMz0z8BMzMzMzMz0z8BAAAAAAAAJEABAAAAAAAANEABAAAAAAAAPkABAAAAAAAAFEABAAAAAAAAPkABAAAAAAAAJEABAAAAAAAACEABCgAAAAFkAAAAAWQAAAAB6AMAAAEAAAAAAADgPwHQBwAAAQAAAAAAQH9AAwAAAAAAAAAAAAAA8D8SVIG9<<<
local commandqueue = {}

commandqueue["settings"] = {
    debugmode = true,
    allowspeed = true,
    end_tick_debug = true
}

-- PRESENT POSSIBLE COMMANDS:
-- Replace anything between <> with a meaningful input
--{"move","<DIRECTION>"}, options are N,S,E,W,NE,SE,SW,NW or STOP
--{"craft","<ITEM>", <AMOUNT>}
--{"mine", {<X>,<Y>}} or alternatively replace anything between {} with nil
--{"build","<ITEM>", {<X>,<Y>}, <FACING DIRECTION>}
--{"put",{X,Y},"<ITEM>", <AMOUNT>, <destination inventory type>}
--{"speed", <speed>}
--{"take",{<X>,<Y>},"<ITEM>",<AMOUNT>,<source inventory type>,}
--{"tech", <RESEARCH>}
--{"print", "<text>"}
--{"recipe", {<X>,<Y>}, <recipe>}

commandqueue[1] = {{"move", "W"}}
commandqueue[3] = {{"move", "SW"}}
commandqueue[209] = {{"move", "STOP"}}
--Presently at: (-22.02343750,21.72656250)
commandqueue[210] = {{"mine", {-23.3, 23}}}
commandqueue[260] = {{"mine", nil}}
commandqueue[2] = {{"craft", "iron-axe", 1}}
commandqueue[4] = {{"craft", "iron-gear-wheel", 2}}
commandqueue[261] = {{"move", "W"}}
commandqueue[299] = {{"move", "SW"}}
commandqueue[378] = {{"move", "STOP"}}
--Presently at: (-35.99609375,30.05859375)
commandqueue[340] = {{"build", "burner-mining-drill", {-35, 31}, defines.direction.west}}
commandqueue[341] = {{"put", {-35, 31}, "raw-wood", 2, defines.inventory.fuel}}
commandqueue[379] = {{"move", "S"}}
commandqueue[386] = {{"move", "STOP"}}
--Presently at: (-35.99609375,31.09765625)
commandqueue[387] = {{"mine", {-37, 32.4}}}
commandqueue[487] = {{"mine", nil}}
commandqueue[488] = {{"build", "stone-furnace", {-37, 31}, defines.direction.north}}
commandqueue[489] = {{"put", {-37, 31}, "raw-wood", 2, defines.inventory.fuel}}
commandqueue[490] = {{"move", "N"}}
commandqueue[498] = {{"move", "NE"}}
commandqueue[500] = {{"move", "STOP"}}
--Presently at: (-35.78515625,29.69921875)
commandqueue[501] = {{"mine", {-35.6, 27.9}}}
commandqueue[551] = {{"mine", nil}}
commandqueue[552] = {{"put", {-35, 31}, "raw-wood", 1, defines.inventory.fuel}}
commandqueue[553] = {{"put", {-37, 31}, "raw-wood", 1, defines.inventory.fuel}}
commandqueue[554] = {{"move", "N"}}
commandqueue[557] = {{"move", "NW"}}
commandqueue[565] = {{"move", "STOP"}}
--Presently at: (-36.62890625,28.41015625)
commandqueue[566] = {{"mine", {-37.6, 26.9}}}
commandqueue[616] = {{"mine", nil}}
commandqueue[617] = {{"move", "W"}}
commandqueue[637] = {{"move", "NW"}}
commandqueue[655] = {{"move", "STOP"}}
--Presently at: (-41.49609375,26.51171875)
commandqueue[656] = {{"mine", {-43.1, 25.9}}}
commandqueue[706] = {{"mine", nil}}
commandqueue[707] = {{"move", "W"}}
commandqueue[726] = {{"move", "NW"}}
commandqueue[763] = {{"move", "STOP"}}
--Presently at: (-48.21875000,22.60937500)
commandqueue[764] = {{"mine", {-49.8, 21.7}}}
commandqueue[814] = {{"mine", nil}}
commandqueue[815] = {{"move", "W"}}
commandqueue[822] = {{"move", "NW"}}
commandqueue[861] = {{"move", "STOP"}}
--Presently at: (-53.37109375,18.49609375)
commandqueue[862] = {{"mine", {-54.6, 17.4}}}
commandqueue[1263] = {{"mine", nil}}
commandqueue[1264] = {{"craft", "stone-furnace", 4}}
commandqueue[1265] = {{"move", "S"}}
commandqueue[1270] = {{"move", "SE"}}
commandqueue[1273] = {{"move", "STOP"}}
--Presently at: (-53.05468750,19.55468750)
commandqueue[1274] = {{"mine", {-52.5, 21.3}}}
commandqueue[1324] = {{"mine", nil}}
commandqueue[1325] = {{"move", "S"}}
commandqueue[1326] = {{"move", "SE"}}
commandqueue[1337] = {{"move", "STOP"}}
--Presently at: (-51.89453125,20.86328125)
commandqueue[1338] = {{"mine", {-50.6, 22.1}}}
commandqueue[1388] = {{"mine", nil}}
commandqueue[1389] = {{"move", "E"}}
commandqueue[1407] = {{"move", "SE"}}
commandqueue[1513] = {{"move", "STOP"}}
--Presently at: (-38.04296875,32.04296875)
commandqueue[1494] = {{"take", {-37, 31}, "iron-plate", 3, defines.inventory.furnace_result}}
commandqueue[1495] = {{"craft", "iron-gear-wheel", 1}}
-- Second furnace placement
commandqueue[1504] = {{"build", "stone-furnace", {-37, 33}, defines.direction.north}}
commandqueue[1505] = {{"put", {-37, 33}, "raw-wood", 2, defines.inventory.fuel}}
commandqueue[1514] = {{"move", "E"}}
commandqueue[1516] = {{"move", "STOP"}}
--Presently at: (-37.74609375,32.04296875)
commandqueue[1517] = {{"mine", {-35.9, 32.1}}}
commandqueue[1642] = {{"mine", nil}}
commandqueue[1643] = {{"put", {-37, 33}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[1644] = {{"put", {-35, 31}, "raw-wood", 2, defines.inventory.fuel}}
commandqueue[1645] = {{"mine", {-35.9, 32.1}}}
commandqueue[1770] = {{"mine", nil}}
commandqueue[1771] = {{"move", "S"}}
commandqueue[1774] = {{"move", "STOP"}}
--Presently at: (-37.74609375,32.48828125)
commandqueue[1775] = {{"mine", {-38.1, 34.4}}}
commandqueue[1875] = {{"mine", nil}}
-- Third furnace placement
commandqueue[1876] = {{"build", "stone-furnace", {-37, 35}, defines.direction.north}}
commandqueue[1877] = {{"put", {-37, 35}, "raw-wood", 2, defines.inventory.fuel}}
commandqueue[1878] = {{"put", {-37, 35}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[1879] = {{"take", {-37, 31}, "iron-plate", 2, defines.inventory.furnace_result}}
commandqueue[1880] = {{"craft", "burner-mining-drill", 1}}
commandqueue[1881] = {{"mine", {-35.9, 32.1}}}
commandqueue[2006] = {{"mine", nil}}
commandqueue[2007] = {{"put", {-37, 33}, "iron-ore", 1, defines.inventory.furnace_source}}
-- Second miner placement
commandqueue[2008] = {{"build", "burner-mining-drill", {-35, 33}, defines.direction.west}}
commandqueue[2009] = {{"put", {-35, 33}, "raw-wood", 2, defines.inventory.fuel}}
commandqueue[2010] = {{"take", {-37, 33}, "iron-plate", 1, defines.inventory.furnace_result}}
commandqueue[2011] = {{"mine", {-39.7, 32.9}}}
commandqueue[2111] = {{"mine", nil}}
commandqueue[2112] = {{"move", "S"}}
commandqueue[2121] = {{"move", "SW"}}
commandqueue[2124] = {{"move", "STOP"}}
--Presently at: (-38.06250000,34.14062500)
commandqueue[2125] = {{"move", "E"}}
commandqueue[2127] = {{"move", "STOP"}}
--Presently at: (-37.76562500,34.14062500)
commandqueue[2128] = {{"mine", {-35.9, 34.1}}}
commandqueue[2253] = {{"mine", nil}}
commandqueue[2254] = {{"put", {-37, 35}, "iron-ore", 1, defines.inventory.furnace_source}}
-- Fourth furnace placement
commandqueue[2255] = {{"build", "stone-furnace", {-37, 37}, defines.direction.north}}
commandqueue[2256] = {{"mine", {-35.9, 34.1}}}
commandqueue[2381] = {{"mine", nil}}
commandqueue[2382] = {{"put", {-37, 37}, "raw-wood", 1, defines.inventory.fuel}}
commandqueue[2383] = {{"put", {-37, 37}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[2384] = {{"mine", {-35.9, 34.1}}}
commandqueue[2509] = {{"mine", nil}}
commandqueue[2510] = {{"put", {-37, 35}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[2511] = {{"mine", {-35.9, 34.1}}}
commandqueue[2636] = {{"mine", nil}}
commandqueue[2641] = {{"put", {-37, 37}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[2642] = {{"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[2643] = {{"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[2644] = {{"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[2645] = {{"take", {-37, 37}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[2646] = {{"put", {-37, 37}, "raw-wood", 2, defines.inventory.fuel}}
commandqueue[2647] = {{"put", {-37, 35}, "raw-wood", 1, defines.inventory.fuel}}
commandqueue[2648] = {{"put", {-37, 33}, "raw-wood", 2, defines.inventory.fuel}}
commandqueue[2649] = {{"put", {-37, 31}, "raw-wood", 2, defines.inventory.fuel}}
commandqueue[2650] = {{"put", {-35, 33}, "raw-wood", 2, defines.inventory.fuel}}
commandqueue[2651] = {{"craft", "iron-gear-wheel", 3}}
commandqueue[2637] = {{"move", "N"}}
commandqueue[2913] = {{"move", "NW"}}
commandqueue[2916] = {{"move", "STOP"}}
--Presently at: (-38.08203125,-7.14453125)
commandqueue[2917] = {{"mine", {-38, -8.9}}}
commandqueue[3318] = {{"mine", nil}}
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-38.2422,-7.4414)
commandqueue[3319] = {{"move", "S"}}
commandqueue[3611] = {{"move", "SE"}}
commandqueue[3614] = {{"move", "STOP"}}
--Presently at: (-37.92578125,36.21875000)
commandqueue[3324] = {{"craft", "burner-mining-drill", 1}}
commandqueue[3325] = {{"craft", "stone-furnace", 3}}
-- Third miner placement
commandqueue[3575] = {{"build", "burner-mining-drill", {-35, 35}, defines.direction.west}}
commandqueue[3576] = {{"put", {-35, 35}, "raw-wood", 2, defines.inventory.fuel}}
commandqueue[3577] = {{"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[3578] = {{"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[3579] = {{"craft", "burner-mining-drill", 1}}
commandqueue[3580] = {{"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[3581] = {{"take", {-37, 37}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[3615] = {{"mine", {-39.8, 36.1}}}
commandqueue[3715] = {{"mine", nil}}
commandqueue[3716] = {{"move", "S"}}
commandqueue[3717] = {{"move", "SW"}}
commandqueue[3722] = {{"move", "STOP"}}
--Presently at: (-38.45312500,36.89453125)
commandqueue[3723] = {{"mine", {-39.7, 38.2}}}
commandqueue[3823] = {{"mine", nil}}
commandqueue[3824] = {{"move", "S"}}
commandqueue[3829] = {{"move", "SE"}}
commandqueue[3834] = {{"move", "STOP"}}
--Presently at: (-37.92578125,38.16406250)
commandqueue[3835] = {{"move", "E"}}
commandqueue[3842] = {{"move", "STOP"}}
--Presently at: (-36.88671875,38.16406250)
commandqueue[3843] = {{"move", "E"}}
commandqueue[3844] = {{"move", "STOP"}}
--Presently at: (-36.73828125,38.16406250)
commandqueue[3845] = {{"mine", {-34.9, 37.9}}}
commandqueue[3945] = {{"mine", nil}}
-- Fourth miner placement
commandqueue[3946] = {{"build", "burner-mining-drill", {-35, 37}, defines.direction.west}}
commandqueue[3947] = {{"put", {-35, 37}, "raw-wood", 2, defines.inventory.fuel}}
commandqueue[3948] = {{"move", "E"}}
commandqueue[3961] = {{"move", "NE"}}
commandqueue[3966] = {{"move", "STOP"}}
--Presently at: (-34.28125000,37.63671875)
commandqueue[3967] = {{"mine", {-32.5, 37.3}}}
commandqueue[4067] = {{"mine", nil}}
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-34.2812,37.9531)
commandqueue[4068] = {{"move", "E"}}
commandqueue[4070] = {{"move", "NE"}}
commandqueue[4087] = {{"move", "STOP"}}
--Presently at: (-32.19140625,36.16015625)
commandqueue[4088] = {{"mine", {-30.9, 34.9}}}
commandqueue[4188] = {{"mine", nil}}
commandqueue[4189] = {{"move", "E"}}
commandqueue[4209] = {{"move", "NE"}}
commandqueue[4216] = {{"move", "STOP"}}
--Presently at: (-28.48437500,35.42187500)
commandqueue[4217] = {{"mine", {-26.8, 35.1}}}
commandqueue[4317] = {{"mine", nil}}
commandqueue[4318] = {{"move", "W"}}
commandqueue[4333] = {{"move", "NW"}}
commandqueue[4347] = {{"move", "STOP"}}
--Presently at: (-32.18750000,33.94531250)
commandqueue[4339] = {{"put", {-35, 37}, "raw-wood", 4, defines.inventory.fuel}}
commandqueue[4340] = {{"put", {-35, 35}, "raw-wood", 4, defines.inventory.fuel}}
commandqueue[4341] = {{"put", {-35, 33}, "raw-wood", 4, defines.inventory.fuel}}
commandqueue[4342] = {{"put", {-35, 31}, "raw-wood", 4, defines.inventory.fuel}}
commandqueue[4343] = {{"put", {-37, 35}, "raw-wood", 1, defines.inventory.fuel}}
commandqueue[4344] = {{"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[4345] = {{"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[4346] = {{"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[4349] = {{"craft", "burner-mining-drill", 1}}
commandqueue[4350] = {{"put", {-37, 31}, "raw-wood", 1, defines.inventory.fuel}}
commandqueue[4351] = {{"put", {-35, 31}, "raw-wood", 1, defines.inventory.fuel}}
commandqueue[4352] = {{"put", {-37, 33}, "raw-wood", 1, defines.inventory.fuel}}
commandqueue[4348] = {{"move", "S"}}
commandqueue[4361] = {{"move", "SE"}}
commandqueue[4403] = {{"move", "STOP"}}
--Presently at: (-27.75781250,40.30468750)
commandqueue[4404] = {{"mine", {-26.7, 41.8}}}
commandqueue[4504] = {{"mine", nil}}
commandqueue[4505] = {{"move", "E"}}
commandqueue[4513] = {{"move", "SE"}}
commandqueue[4520] = {{"move", "STOP"}}
--Presently at: (-25.83203125,41.04296875)
commandqueue[4521] = {{"mine", {-24.2, 41.7}}}
commandqueue[4621] = {{"mine", nil}}
commandqueue[4622] = {{"move", "N"}}
commandqueue[4664] = {{"move", "NE"}}
commandqueue[4720] = {{"move", "STOP"}}
--Presently at: (-19.92578125,28.90234375)
commandqueue[4721] = {{"move", "E"}}
commandqueue[5030] = {{"move", "SE"}}
commandqueue[5259] = {{"move", "STOP"}}
--Presently at: (50.09375000,53.05468750)
-- First copper placement, then off for more stone
commandqueue[4750] = {{"build", "stone-furnace", {-16, 24}, defines.direction.north}}
commandqueue[4751] = {{"build", "burner-mining-drill", {-14, 24}, defines.direction.west}}
commandqueue[4752] = {{"put", {-16, 24}, "raw-wood", 5, defines.inventory.fuel}}
commandqueue[4753] = {{"put", {-14, 24}, "raw-wood", 5, defines.inventory.fuel}}
commandqueue[4754] = {{"craft", "iron-gear-wheel", 1}}
commandqueue[5260] = {{"move", "E"}}
commandqueue[5266] = {{"move", "SE"}}
commandqueue[5283] = {{"move", "STOP"}}
--Presently at: (52.77734375,54.84765625)
commandqueue[5284] = {{"mine", {54.3, 55.9}}}
commandqueue[5685] = {{"mine", nil}}
commandqueue[5686] = {{"move", "S"}}
commandqueue[5842] = {{"move", "SE"}}
commandqueue[5936] = {{"move", "STOP"}}
--Presently at: (62.69140625,87.91796875)
commandqueue[5937] = {{"mine", {63.2, 89.7}}}
commandqueue[5987] = {{"mine", nil}}
commandqueue[5988] = {{"move", "E"}}
commandqueue[5991] = {{"move", "SE"}}
commandqueue[6019] = {{"move", "STOP"}}
--Presently at: (66.08984375,90.87109375)
commandqueue[6020] = {{"mine", {67.4, 92.1}}}
commandqueue[6421] = {{"mine", nil}}
commandqueue[6422] = {{"move", "S"}}
commandqueue[6425] = {{"move", "SW"}}
commandqueue[6467] = {{"move", "STOP"}}
--Presently at: (61.66015625,95.74609375)
commandqueue[6468] = {{"mine", {60.4, 97}}}
commandqueue[6568] = {{"mine", nil}}
commandqueue[6569] = {{"move", "S"}}
commandqueue[6603] = {{"move", "SE"}}
commandqueue[6615] = {{"move", "STOP"}}
--Presently at: (62.92578125,102.05859375)
commandqueue[6616] = {{"mine", {63.2, 103.7}}}
commandqueue[7017] = {{"mine", nil}}
commandqueue[7018] = {{"move", "N"}}
commandqueue[7046] = {{"move", "NW"}}
commandqueue[7273] = {{"move", "STOP"}}
--Presently at: (38.98437500,73.96093750)
commandqueue[7206] = {{"craft", "stone-furnace", 12}}
commandqueue[7274] = {{"move", "W"}}
commandqueue[7497] = {{"move", "NW"}}
commandqueue[7867] = {{"move", "STOP"}}
--Presently at: (-33.14062500,34.93750000)
commandqueue[7858] = {{"put", {-37, 37}, "raw-wood", 1, defines.inventory.fuel}}
commandqueue[7859] = {{"put", {-37, 35}, "raw-wood", 1, defines.inventory.fuel}}
commandqueue[7860] = {{"put", {-37, 33}, "raw-wood", 1, defines.inventory.fuel}}
commandqueue[7866] = {{"put", {-37, 31}, "raw-wood", 1, defines.inventory.fuel}}
commandqueue[7865] = {{"put", {-35, 31}, "raw-wood", 1, defines.inventory.fuel}}
commandqueue[7864] = {{"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[7862] = {{"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[7863] = {{"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[7861] = {{"take", {-37, 37}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[7869] = {{"craft", "burner-mining-drill", 1}}
commandqueue[7870] = {{"craft", "burner-mining-drill", 1}}
commandqueue[7871] = {{"craft", "burner-mining-drill", 1}}
commandqueue[7872] = {{"craft", "burner-mining-drill", 1}}
commandqueue[7873] = {{"craft", "burner-mining-drill", 1}}
commandqueue[7868] = {{"move", "S"}}
commandqueue[7893] = {{"move", "SE"}}
commandqueue[7927] = {{"move", "STOP"}}
--Presently at: (-29.55468750,42.23437500)
commandqueue[7928] = {{"mine", {-28.8, 43.7}}}
commandqueue[8028] = {{"mine", nil}}
commandqueue[8029] = {{"move", "S"}}
commandqueue[8030] = {{"move", "SE"}}
commandqueue[8035] = {{"move", "STOP"}}
--Presently at: (-29.02734375,42.91015625)
commandqueue[8036] = {{"mine", {-27.8, 44.3}}}
commandqueue[8136] = {{"mine", nil}}
commandqueue[8137] = {{"move", "S"}}
commandqueue[8144] = {{"move", "SE"}}
commandqueue[8151] = {{"move", "STOP"}}
--Presently at: (-28.28906250,44.68750000)
commandqueue[8152] = {{"mine", {-27.6, 46.4}}}
commandqueue[8252] = {{"mine", nil}}
commandqueue[8253] = {{"move", "N"}}
commandqueue[8274] = {{"move", "NW"}}
commandqueue[8329] = {{"move", "STOP"}}
--Presently at: (-34.08984375,35.76953125)
commandqueue[8325] = {{"put", {-37, 37}, "raw-wood", 2, defines.inventory.fuel}}
commandqueue[8326] = {{"put", {-37, 35}, "raw-wood", 2, defines.inventory.fuel}}
commandqueue[8327] = {{"put", {-37, 33}, "raw-wood", 2, defines.inventory.fuel}}
commandqueue[8328] = {{"put", {-37, 31}, "raw-wood", 2, defines.inventory.fuel}}
commandqueue[8331] = {{"put", {-35, 33}, "raw-wood", 1, defines.inventory.fuel}}
commandqueue[8332] = {{"put", {-35, 35}, "raw-wood", 1, defines.inventory.fuel}}
commandqueue[8340] = {{"build", "burner-mining-drill", {-38.6, 31.4}, defines.direction.south}}
commandqueue[8341] = {{"put", {-39, 31}, "raw-wood", 1, defines.inventory.fuel}}
commandqueue[8342] = {{"build", "burner-mining-drill", {-39, 33}, defines.direction.west}}
commandqueue[8330] = {{"move", "W"}}
commandqueue[8351] = {{"move", "SW"}}
commandqueue[8368] = {{"move", "STOP"}}
--Presently at: (-39.00000000,37.56250000)
commandqueue[8369] = {{"mine", {-40.7, 38.2}}}
commandqueue[8469] = {{"mine", nil}}
commandqueue[8471] = {{"put", {-39, 33}, "raw-wood", 1, defines.inventory.fuel}}
commandqueue[8470] = {{"move", "W"}}
commandqueue[8476] = {{"move", "NW"}}
commandqueue[8483] = {{"move", "STOP"}}
--Presently at: (-40.62890625,36.82421875)
commandqueue[8484] = {{"mine", {-42.2, 36.1}}}
commandqueue[8584] = {{"mine", nil}}
commandqueue[8586] = {{"build", "burner-mining-drill", {-41, 33}, defines.direction.north}}
commandqueue[8587] = {{"put", {-41, 33}, "raw-wood", 1, defines.inventory.fuel}}
commandqueue[8588] = {{"put", {-35, 37}, "raw-wood", 1, defines.inventory.fuel}}
commandqueue[8585] = {{"move", "N"}}
commandqueue[8595] = {{"move", "NW"}}
commandqueue[8608] = {{"move", "STOP"}}
--Presently at: (-42.00000000,33.96875000)
commandqueue[8609] = {{"move", "N"}}
commandqueue[8613] = {{"move", "NW"}}
commandqueue[8617] = {{"move", "STOP"}}
--Presently at: (-42.42187500,32.95312500)
commandqueue[8618] = {{"mine", {-43, 31.3}}}
commandqueue[8718] = {{"mine", nil}}
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-42.3281,33.1328)
commandqueue[8720] = {{"build", "burner-mining-drill", {-41, 31}, defines.direction.east}}
commandqueue[8721] = {{"put", {-41, 31}, "raw-wood", 1, defines.inventory.fuel}}
commandqueue[8719] = {{"move", "W"}}
commandqueue[8730] = {{"move", "SW"}}
commandqueue[8735] = {{"move", "STOP"}}
--Presently at: (-44.48828125,33.66015625)
commandqueue[8736] = {{"mine", {-46.3, 34.1}}}
commandqueue[8836] = {{"mine", nil}}
commandqueue[8837] = {{"move", "E"}}
commandqueue[8843] = {{"move", "NE"}}
commandqueue[8859] = {{"move", "STOP"}}
--Presently at: (-41.91015625,31.97265625)
commandqueue[8895] = {{"take", {-41, 31}, "coal", "all", defines.inventory.fuel}}
commandqueue[8896] = {{"take", {-41, 33}, "coal", "all", defines.inventory.fuel}}
commandqueue[8898] = {{"take", {-39, 33}, "coal", "all", defines.inventory.fuel}}
commandqueue[8899] = {{"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[8900] = {{"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[8901] = {{"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[8902] = {{"take", {-37, 37}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[8903] = {{"craft", "burner-mining-drill", 1}}
commandqueue[8904] = {{"craft", "burner-mining-drill", 1}}
commandqueue[8860] = {{"move", "E"}}
commandqueue[8920] = {{"move", "STOP"}}
--Presently at: (-33.00390625,31.97265625)
commandqueue[8922] = {{"put", {-35, 31}, "raw-wood", 3, defines.inventory.fuel}}
commandqueue[8923] = {{"put", {-35, 33}, "raw-wood", 3, defines.inventory.fuel}}
commandqueue[8924] = {{"put", {-35, 35}, "raw-wood", 3, defines.inventory.fuel}}
commandqueue[8925] = {{"put", {-35, 37}, "raw-wood", 3, defines.inventory.fuel}}
commandqueue[8921] = {{"move", "N"}}
commandqueue[8935] = {{"move", "STOP"}}
--Presently at: (-33.00390625,29.89453125)
commandqueue[8934] = {{"build", "burner-mining-drill", {-35, 26}, defines.direction.south}}
commandqueue[8937] = {{"put", {-35, 26}, "coal", 1, defines.inventory.fuel}}
commandqueue[8938] = {{"build", "stone-furnace", {-35, 28}, defines.direction.north}}
commandqueue[8939] = {{"put", {-35, 28}, "coal", 1, defines.inventory.fuel}}
commandqueue[8936] = {{"move", "E"}}
commandqueue[9005] = {{"move", "NE"}}
commandqueue[9052] = {{"move", "STOP"}}
--Presently at: (-17.80468750,24.93750000)
commandqueue[9051] = {{"take", {-16, 24}, "copper-plate", 18, defines.inventory.furnace_result}}
commandqueue[9054] = {{"put", {-14, 24}, "coal", 2, defines.inventory.fuel}}
commandqueue[9055] = {{"put", {-16, 24}, "raw-wood", 2, defines.inventory.fuel}}
commandqueue[9053] = {{"move", "W"}}
commandqueue[9088] = {{"move", "SW"}}
commandqueue[9174] = {{"move", "STOP"}}
--Presently at: (-32.07031250,34.00781250)
commandqueue[9170] = {{"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[9171] = {{"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[9172] = {{"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[9173] = {{"take", {-37, 37}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[9176] = {{"craft", "burner-mining-drill", 1}}
commandqueue[9175] = {{"move", "E"}}
commandqueue[9241] = {{"move", "SE"}}
commandqueue[9311] = {{"move", "STOP"}}
--Presently at: (-14.89062500,41.39062500)
commandqueue[9312] = {{"mine", {-13.3, 42.1}}}
commandqueue[9362] = {{"mine", nil}}
commandqueue[9364] = {{"craft", "wooden-chest", 1}}
commandqueue[9365] = {{"craft", "burner-mining-drill", 1}}
commandqueue[9366] = {{"craft", "burner-mining-drill", 1}}
commandqueue[9368] = {{"craft", "copper-cable", 9}}
commandqueue[9369] = {{"craft", "iron-gear-wheel", 2}}
commandqueue[9363] = {{"move", "W"}}
commandqueue[9383] = {{"move", "SW"}}
commandqueue[9442] = {{"move", "STOP"}}
--Presently at: (-24.08203125,47.61328125)
commandqueue[9443] = {{"mine", {-25.5, 48.6}}}
commandqueue[9543] = {{"mine", nil}}
commandqueue[9544] = {{"move", "W"}}
commandqueue[9545] = {{"move", "SW"}}
commandqueue[9567] = {{"move", "STOP"}}
--Presently at: (-26.55078125,49.93359375)
commandqueue[9568] = {{"mine", {-27.8, 51.2}}}
commandqueue[9668] = {{"mine", nil}}
commandqueue[9670] = {{"build", "burner-mining-drill", {-26, 53}, defines.direction.south}}
commandqueue[9672] = {{"put", {-26, 53}, "raw-wood", 2, defines.inventory.fuel}}
commandqueue[9673] = {{"build", "burner-mining-drill", {-24, 54}, defines.direction.west}}
commandqueue[9674] = {{"put", {-24, 54}, "raw-wood", 2, defines.inventory.fuel}}
commandqueue[9675] = {{"build", "wooden-chest", {-26, 54}, defines.direction.north}}
commandqueue[9676] = {{"build", "burner-mining-drill", {-25.4, 55.6}, defines.direction.north}}
commandqueue[9677] = {{"put", {-25, 56}, "raw-wood", 2, defines.inventory.fuel}}
commandqueue[9669] = {{"move", "W"}}
commandqueue[9671] = {{"move", "SW"}}
commandqueue[9684] = {{"move", "STOP"}}
--Presently at: (-28.21875000,51.30468750)
commandqueue[9685] = {{"mine", {-29.5, 52.5}}}
commandqueue[9785] = {{"mine", nil}}
commandqueue[9787] = {{"craft", "wood", 2}}
commandqueue[9786] = {{"move", "S"}}
commandqueue[9817] = {{"move", "SE"}}
commandqueue[9820] = {{"move", "STOP"}}
--Presently at: (-27.90234375,56.22265625)
commandqueue[9821] = {{"move", "W"}}
commandqueue[9851] = {{"move", "SW"}}
commandqueue[9858] = {{"move", "STOP"}}
--Presently at: (-33.09375000,56.96093750)
commandqueue[9859] = {{"mine", {-34.9, 57.2}}}
commandqueue[9959] = {{"mine", nil}}
commandqueue[9960] = {{"move", "E"}}
commandqueue[9968] = {{"move", "STOP"}}
--Presently at: (-31.90625000,56.96093750)
commandqueue[9970] = {{"build", "burner-mining-drill", {-27, 55}, defines.direction.east}}
commandqueue[9971] = {{"put", {-27, 55}, "raw-wood", 2, defines.inventory.fuel}}
commandqueue[9969] = {{"move", "W"}}
commandqueue[9974] = {{"move", "NW"}}
commandqueue[9976] = {{"move", "STOP"}}
--Presently at: (-32.85937500,56.75000000)
commandqueue[9977] = {{"mine", {-34.6, 56.5}}}
commandqueue[10077] = {{"mine", nil}}
commandqueue[10078] = {{"move", "W"}}
commandqueue[10084] = {{"move", "NW"}}
commandqueue[10089] = {{"move", "STOP"}}
--Presently at: (-34.27734375,56.22265625)
commandqueue[10090] = {{"mine", {-36, 55.6}}}
commandqueue[10190] = {{"mine", nil}}
commandqueue[10191] = {{"move", "W"}}
commandqueue[10199] = {{"move", "SW"}}
commandqueue[10201] = {{"move", "STOP"}}
--Presently at: (-35.67578125,56.43359375)
commandqueue[10202] = {{"mine", {-37.4, 56.5}}}
commandqueue[10302] = {{"mine", nil}}
commandqueue[10303] = {{"move", "E"}}
commandqueue[10348] = {{"move", "STOP"}}
--Presently at: (-28.99609375,56.43359375)
commandqueue[10349] = {{"mine", {-28.5, 56.6}}}
commandqueue[10445] = {{"mine", nil}}
commandqueue[10446] = {{"move", "E"}}
commandqueue[10450] = {{"move", "NE"}}
commandqueue[10455] = {{"move", "STOP"}}
--Presently at: (-27.87500000,55.90625000)
commandqueue[10449] = {{"put", {-26, 53}, "raw-wood", 3, defines.inventory.fuel}}
commandqueue[10452] = {{"put", {-24, 54}, "raw-wood", 3, defines.inventory.fuel}}
commandqueue[10453] = {{"put", {-25, 56}, "raw-wood", 3, defines.inventory.fuel}}
commandqueue[10454] = {{"put", {-27, 54}, "raw-wood", 3, defines.inventory.fuel}}
commandqueue[10457] = {{"take", {-25.5, 54.5}, "stone", "all", defines.inventory.chest}}
commandqueue[10458] = {{"craft", "stone-furnace", 3}}
commandqueue[10459] = {{"craft", "wood", 1}}
commandqueue[10456] = {{"move", "N"}}
commandqueue[10563] = {{"move", "NW"}}
commandqueue[10612] = {{"move", "STOP"}}
--Presently at: (-33.04296875,34.85546875)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-33.0742,35.0039)
commandqueue[10613] = {{"move", "N"}}
commandqueue[10614] = {{"move", "NW"}}
commandqueue[10623] = {{"move", "STOP"}}
--Presently at: (-34.02343750,33.90625000)
commandqueue[10619] = {{"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[10620] = {{"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[10621] = {{"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[10622] = {{"take", {-37, 37}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[10625] = {{"craft", "burner-mining-drill", 1}}
commandqueue[10626] = {{"craft", "burner-mining-drill", 1}}
commandqueue[10627] = {{"craft", "offshore-pump", 1}}
commandqueue[10628] = {{"craft", "boiler", 1}}
commandqueue[10629] = {{"craft", "copper-cable", 8}}
commandqueue[10624] = {{"move", "W"}}
commandqueue[10637] = {{"move", "STOP"}}
--Presently at: (-35.95312500,33.90625000)
commandqueue[10639] = {{"take", {-41, 31}, "coal", "all", defines.inventory.fuel}}
commandqueue[10640] = {{"take", {-41, 33}, "coal", "all", defines.inventory.fuel}}
commandqueue[10641] = {{"take", {-39, 31}, "coal", "all", defines.inventory.fuel}}
commandqueue[10642] = {{"take", {-39, 33}, "coal", "all", defines.inventory.fuel}}
commandqueue[10644] = {{"put", {-37, 37}, "coal", 3, defines.inventory.fuel}}
commandqueue[10645] = {{"take", {-35, 37}, "raw-wood", "all", defines.inventory.fuel}}
commandqueue[10646] = {{"put", {-35, 37}, "coal", 3, defines.inventory.fuel}}
commandqueue[10647] = {{"take", {-37, 35}, "raw-wood", "all", defines.inventory.fuel}}
commandqueue[10648] = {{"put", {-37, 35}, "coal", 3, defines.inventory.fuel}}
commandqueue[10649] = {{"take", {-35, 35}, "raw-wood", "all", defines.inventory.fuel}}
commandqueue[10650] = {{"put", {-35, 35}, "coal", 3, defines.inventory.fuel}}
commandqueue[10651] = {{"take", {-37, 33}, "raw-wood", "all", defines.inventory.fuel}}
commandqueue[10652] = {{"put", {-37, 33}, "coal", 3, defines.inventory.fuel}}
commandqueue[10653] = {{"take", {-35, 33}, "raw-wood", "all", defines.inventory.fuel}}
commandqueue[10654] = {{"put", {-35, 33}, "coal", 3, defines.inventory.fuel}}
commandqueue[10655] = {{"take", {-37, 31}, "raw-wood", "all", defines.inventory.fuel}}
commandqueue[10656] = {{"put", {-37, 31}, "coal", 3, defines.inventory.fuel}}
commandqueue[10657] = {{"take", {-35, 31}, "raw-wood", "all", defines.inventory.fuel}}
commandqueue[10658] = {{"put", {-35, 31}, "coal", 3, defines.inventory.fuel}}
commandqueue[10638] = {{"move", "N"}}
commandqueue[10664] = {{"move", "STOP"}}
--Presently at: (-35.95312500,30.04687500)
commandqueue[10666] = {{"take", {-35, 28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[10667] = {{"put", {-35, 26}, "coal", 3, defines.inventory.fuel}}
commandqueue[10665] = {{"move", "E"}}
commandqueue[10752] = {{"move", "NE"}}
commandqueue[10791] = {{"move", "STOP"}}
--Presently at: (-18.92578125,25.93359375)
commandqueue[10790] = {{"take", {-16, 24}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[10792] = {{"move", "N"}}
commandqueue[10805] = {{"move", "STOP"}}
--Presently at: (-18.92578125,24.00390625)
commandqueue[10801] = {{"build", "burner-mining-drill", {-14, 22}, defines.direction.west}}
commandqueue[10802] = {{"put", {-14, 22}, "coal", 2, defines.inventory.fuel}}
commandqueue[10804] = {{"build", "stone-furnace", {-16, 22}, defines.direction.north}}
commandqueue[10807] = {{"put", {-16, 22}, "raw-wood", 4, defines.inventory.fuel}}
commandqueue[10806] = {{"move", "W"}}
commandqueue[10868] = {{"move", "SW"}}
commandqueue[10925] = {{"move", "STOP"}}
--Presently at: (-34.14062500,30.01562500)
commandqueue[10926] = {{"move", "W"}}
commandqueue[10952] = {{"move", "STOP"}}
--Presently at: (-38.00000000,30.01562500)
commandqueue[10950] = {{"take", {-41, 33}, "coal", "all", defines.inventory.fuel}}
commandqueue[10951] = {{"take", {-41, 31}, "coal", "all", defines.inventory.fuel}}
commandqueue[10954] = {{"put", {-35, 28}, "coal", 3, defines.inventory.fuel}}
commandqueue[10955] = {{"build", "burner-mining-drill", {-39, 29}, defines.direction.south}}
commandqueue[10956] = {{"put", {-39, 29}, "raw-wood", 1, defines.inventory.fuel}}
commandqueue[10995] = {{"rotate", {-41,31}, "N"}}
commandqueue[10996] = {{"build", "burner-mining-drill", {-41, 29}, defines.direction.east}}
commandqueue[10997] = {{"put", {-41, 29}, "raw-wood", 1, defines.inventory.fuel}}
commandqueue[10953] = {{"move", "W"}}
commandqueue[10994] = {{"move", "NW"}}
commandqueue[11023] = {{"move", "STOP"}}
--Presently at: (-47.14453125,26.95703125)
commandqueue[11025] = {{"craft", "iron-gear-wheel", 5}}
commandqueue[11026] = {{"craft", "small-electric-pole", 3}}
commandqueue[11027] = {{"craft", "electronic-circuit", 1}}
commandqueue[11028] = {{"craft", "wooden-chest", 1}}
commandqueue[11024] = {{"move", "W"}}
commandqueue[11124] = {{"move", "SW"}}
commandqueue[11134] = {{"move", "STOP"}}
--Presently at: (-63.04296875,28.01171875)
commandqueue[11135] = {{"mine", {-64.8, 28.1}}}
commandqueue[11235] = {{"mine", nil}}
commandqueue[11236] = {{"move", "W"}}
commandqueue[11249] = {{"move", "SW"}}
commandqueue[11254] = {{"move", "STOP"}}
--Presently at: (-65.50000000,28.53906250)
commandqueue[11255] = {{"mine", {-67.2, 28.9}}}
commandqueue[11355] = {{"mine", nil}}
commandqueue[11356] = {{"move", "W"}}
commandqueue[11361] = {{"move", "SW"}}
commandqueue[11363] = {{"move", "STOP"}}
--Presently at: (-66.45312500,28.75000000)
commandqueue[11364] = {{"mine", {-68.2, 28.9}}}
commandqueue[11414] = {{"mine", nil}}
commandqueue[11415] = {{"move", "W"}}
commandqueue[11423] = {{"move", "SW"}}
commandqueue[11425] = {{"move", "STOP"}}
--Presently at: (-67.85156250,28.96093750)
commandqueue[11426] = {{"mine", {-69.6, 29.1}}}
commandqueue[11526] = {{"mine", nil}}
commandqueue[11527] = {{"move", "W"}}
commandqueue[11532] = {{"move", "NW"}}
commandqueue[11537] = {{"move", "STOP"}}
--Presently at: (-69.12109375,28.43359375)
commandqueue[11538] = {{"mine", {-70.7, 27.8}}}
commandqueue[11638] = {{"mine", nil}}
commandqueue[11639] = {{"move", "E"}}
commandqueue[11671] = {{"move", "NE"}}
commandqueue[11701] = {{"move", "STOP"}}
--Presently at: (-61.20703125,25.26953125)
commandqueue[11702] = {{"mine", {-59.5, 24.6}}}
commandqueue[11752] = {{"mine", nil}}
-- First power structures being built
commandqueue[11797] = {{"build", "offshore-pump", {-58, 27}, defines.direction.south}}
commandqueue[11798] = {{"build", "boiler", {-57, 25}, defines.direction.east}}
commandqueue[11753] = {{"move", "E"}}
commandqueue[11891] = {{"move", "SE"}}
commandqueue[11917] = {{"move", "STOP"}}
--Presently at: (-37.98046875,28.01171875)
commandqueue[11918] = {{"move", "S"}}
commandqueue[11932] = {{"move", "STOP"}}
--Presently at: (-37.98046875,30.08984375)
commandqueue[11833] = {{"build", "small-electric-pole", {-50.5, 24.5}, defines.direction.north}}
commandqueue[11883] = {{"build", "small-electric-pole", {-43.5, 24.5}, defines.direction.north}}
commandqueue[11923] = {{"build", "small-electric-pole", {-36.5, 23.5}, defines.direction.north}}
commandqueue[11934] = {{"take", {-35, 28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[11935] = {{"take", {-39, 29}, "coal", "all", defines.inventory.fuel}}
commandqueue[11936] = {{"take", {-39, 31}, "coal", "all", defines.inventory.fuel}}
commandqueue[11937] = {{"take", {-39, 33}, "coal", "all", defines.inventory.fuel}}
commandqueue[11938] = {{"take", {-41, 33}, "coal", "all", defines.inventory.fuel}}
commandqueue[11939] = {{"take", {-41, 31}, "coal", "all", defines.inventory.fuel}}
commandqueue[11940] = {{"take", {-41, 29}, "coal", "all", defines.inventory.fuel}}
commandqueue[11941] = {{"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[11942] = {{"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[11943] = {{"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[11944] = {{"craft", "steam-engine", 1}}
commandqueue[11945] = {{"craft", "electronic-circuit", 2}}
commandqueue[11946] = {{"put", {-39, 31}, "raw-wood", 1, defines.inventory.fuel}}
commandqueue[11953] = {{"take", {-37, 37}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[11954] = {{"craft", "iron-gear-wheel", 3}}
commandqueue[11933] = {{"move", "S"}}
commandqueue[11987] = {{"move", "STOP"}}
--Presently at: (-37.98046875,38.10546875)
commandqueue[11988] = {{"move", "E"}}
commandqueue[12029] = {{"move", "SE"}}
commandqueue[12047] = {{"move", "STOP"}}
--Presently at: (-29.99609375,40.00390625)
commandqueue[12048] = {{"move", "S"}}
commandqueue[12055] = {{"move", "SE"}}
commandqueue[12084] = {{"move", "STOP"}}
--Presently at: (-26.93750000,44.10156250)
commandqueue[12085] = {{"move", "S"}}
commandqueue[12126] = {{"move", "SE"}}
commandqueue[12135] = {{"move", "STOP"}}
--Presently at: (-25.98828125,51.13671875)
commandqueue[12132] = {{"take", {-26, 53}, "raw-wood", "all", defines.inventory.fuel}}
commandqueue[12133] = {{"put", {-26, 53}, "coal", 5, defines.inventory.fuel}}
commandqueue[12134] = {{"take", {-24, 54}, "raw-wood", "all", defines.inventory.fuel}}
commandqueue[12137] = {{"put", {-24, 54}, "coal", 5, defines.inventory.fuel}}
commandqueue[12138] = {{"take", {-25, 56}, "raw-wood", "all", defines.inventory.fuel}}
commandqueue[12139] = {{"put", {-25, 56}, "coal", 5, defines.inventory.fuel}}
commandqueue[12140] = {{"take", {-27, 55}, "raw-wood", "all", defines.inventory.fuel}}
commandqueue[12141] = {{"put", {-27, 55}, "coal", 5, defines.inventory.fuel}}
commandqueue[12142] = {{"take", {-25, 54}, "stone", "all", defines.inventory.chest}}
commandqueue[12143] = {{"craft", "stone-furnace", 4}}
commandqueue[12136] = {{"move", "N"}}
commandqueue[12177] = {{"move", "NW"}}
commandqueue[12244] = {{"move", "STOP"}}
--Presently at: (-33.05468750,37.98437500)
commandqueue[12245] = {{"move", "W"}}
commandqueue[12265] = {{"move", "STOP"}}
--Presently at: (-36.02343750,37.98437500)
commandqueue[12273] = {{"take", {-37, 37}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[12274] = {{"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[12275] = {{"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[12276] = {{"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[12277] = {{"craft", "iron-gear-wheel", 1}}
commandqueue[12266] = {{"move", "N"}}
commandqueue[12320] = {{"move", "STOP"}}
--Presently at: (-36.02343750,29.96875000)
commandqueue[12323] = {{"take", {-35, 28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[12324] = {{"take", {-39, 29}, "coal", "all", defines.inventory.fuel}}
commandqueue[12326] = {{"take", {-39, 33}, "coal", "all", defines.inventory.fuel}}
commandqueue[12327] = {{"take", {-41, 33}, "coal", "all", defines.inventory.fuel}}
commandqueue[12328] = {{"take", {-41, 31}, "coal", "all", defines.inventory.fuel}}
commandqueue[12329] = {{"take", {-41, 29}, "coal", "all", defines.inventory.fuel}}
commandqueue[12321] = {{"move", "W"}}
commandqueue[12322] = {{"move", "NW"}}
commandqueue[12351] = {{"move", "STOP"}}
--Presently at: (-39.23046875,26.91015625)
commandqueue[12352] = {{"move", "W"}}
commandqueue[12431] = {{"move", "STOP"}}
--Presently at: (-50.95703125,26.91015625)
-- First steam engine
commandqueue[12433] = {{"build", "steam-engine", {-54, 25}, defines.direction.west}}
commandqueue[12434] = {{"put", {-56.5, 26.5}, "coal", 10, defines.inventory.fuel}}
commandqueue[12432] = {{"move", "E"}}
commandqueue[12459] = {{"move", "STOP"}}
--Presently at: (-46.94921875,26.91015625)
commandqueue[12460] = {{"move", "S"}}
commandqueue[12461] = {{"move", "SE"}}
commandqueue[12508] = {{"move", "STOP"}}
--Presently at: (-41.99218750,32.01562500)
commandqueue[12524] = {{"take", {-39, 29}, "coal", "all", defines.inventory.fuel}}
commandqueue[12525] = {{"take", {-41, 33}, "coal", "all", defines.inventory.fuel}}
commandqueue[12526] = {{"take", {-41, 29}, "coal", "all", defines.inventory.fuel}}
commandqueue[12527] = {{"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[12528] = {{"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[12529] = {{"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[12530] = {{"take", {-37, 37}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[12531] = {{"take", {-41, 31}, "coal", "all", defines.inventory.fuel}}
commandqueue[12532] = {{"take", {-35, 28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[12533] = {{"craft", "electric-mining-drill", 1}}
commandqueue[12534] = {{"craft", "stone-furnace", 1}}
commandqueue[12535] = {{"build", "small-electric-pole", {-34.5, 29.5}, defines.direction.north}}
commandqueue[12536] = {{"craft", "wooden-chest", 1}}
commandqueue[12537] = {{"craft", "electronic-circuit", 1}}
commandqueue[12509] = {{"move", "E"}}
commandqueue[12631] = {{"move", "NE"}}
commandqueue[12689] = {{"move", "STOP"}}
--Presently at: (-17.76562500,25.89843750)
commandqueue[12691] = {{"put", {-14, 24}, "coal", 4, defines.inventory.fuel}}
commandqueue[12692] = {{"take", {-16, 22}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[12693] = {{"take", {-16, 24}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[12694] = {{"take", {-16, 25}, "raw-wood", "all", defines.inventory.fuel}}
commandqueue[12695] = {{"put", {-16, 24}, "coal", 2, defines.inventory.fuel}}
commandqueue[12690] = {{"move", "W"}}
commandqueue[12698] = {{"move", "SW"}}
commandqueue[12737] = {{"move", "STOP"}}
--Presently at: (-23.06640625,30.01171875)
commandqueue[12738] = {{"move", "W"}}
commandqueue[12812] = {{"move", "STOP"}}
--Presently at: (-34.05078125,30.01171875)
commandqueue[12780] = {{"build", "stone-furnace", {-28, 26}, defines.direction.north}}
commandqueue[12781] = {{"build", "stone-furnace", {-28, 28}, defines.direction.north}}
commandqueue[12782] = {{"build", "stone-furnace", {-28, 32}, defines.direction.north}}
commandqueue[12783] = {{"build", "stone-furnace", {-28, 34}, defines.direction.north}}
-- First electric mining drill placed
commandqueue[12784] = {{"build", "wooden-chest", {-30.5, 26.5}, defines.direction.north}}
commandqueue[12785] = {{"build", "electric-mining-drill", {-32.5, 26.5}, defines.direction.east}}
commandqueue[12786] = {{"put", {-28, 26}, "raw-wood", 3, defines.inventory.fuel}}
commandqueue[12787] = {{"put", {-28, 28}, "raw-wood", 3, defines.inventory.fuel}}
commandqueue[12788] = {{"put", {-28, 32}, "raw-wood", 3, defines.inventory.fuel}}
commandqueue[12789] = {{"put", {-28, 34}, "raw-wood", 3, defines.inventory.fuel}}
commandqueue[12790] = {{"craft", "copper-cable", 1}}
commandqueue[12806] = {{"build", "stone-furnace", {-28, 30}, defines.direction.north}}
commandqueue[12807] = {{"put", {-28, 30}, "raw-wood", 3, defines.inventory.fuel}}
commandqueue[12813] = {{"move", "W"}}
commandqueue[12827] = {{"move", "STOP"}}
--Presently at: (-36.12890625,30.01171875)
commandqueue[12829] = {{"take", {-39, 29}, "coal", "all", defines.inventory.fuel}}
commandqueue[12830] = {{"take", {-39, 31}, "coal", "all", defines.inventory.fuel}}
commandqueue[12831] = {{"take", {-39, 33}, "coal", "all", defines.inventory.fuel}}
commandqueue[12832] = {{"take", {-41, 33}, "coal", "all", defines.inventory.fuel}}
commandqueue[12834] = {{"take", {-41, 29}, "coal", "all", defines.inventory.fuel}}
commandqueue[12835] = {{"take", {-35, 28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[12836] = {{"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[12837] = {{"craft", "electronic-circuit", 2}}
commandqueue[12838] = {{"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[12839] = {{"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[12840] = {{"take", {-37, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[12842] = {{"put", {-37, 31}, "coal", 2, defines.inventory.fuel}}
commandqueue[12845] = {{"put", {-37, 33}, "coal", 2, defines.inventory.fuel}}
commandqueue[12846] = {{"craft", "iron-gear-wheel", 2}}
commandqueue[12847] = {{"craft", "stone-furnace", 3}}
commandqueue[12848] = {{"craft", "copper-cable", 3}}
commandqueue[12828] = {{"move", "S"}}
commandqueue[12841] = {{"move", "SE"}}
commandqueue[12843] = {{"move", "STOP"}}
--Presently at: (-35.91796875,32.15234375)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-35.8828,32.0039)
commandqueue[12844] = {{"move", "E"}}
commandqueue[12871] = {{"move", "NE"}}
commandqueue[12881] = {{"move", "STOP"}}
--Presently at: (-30.82031250,30.94921875)
commandqueue[12882] = {{"mine", {-32.5, 30.5}}}
commandqueue[13007] = {{"mine", nil}}
commandqueue[13008] = {{"take", {-30.5, 26.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[13009] = {{"put", {-28, 26}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[13010] = {{"put", {-28, 28}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[13011] = {{"mine", {-32.5, 30.5}}}
commandqueue[13136] = {{"mine", nil}}
commandqueue[13138] = {{"take", {-30.5, 26.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[13139] = {{"put", {-28, 30}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[13140] = {{"put", {-28, 32}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[13141] = {{"put", {-28, 34}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[13137] = {{"move", "W"}}
commandqueue[13152] = {{"move", "SW"}}
commandqueue[13162] = {{"move", "STOP"}}
--Presently at: (-34.10156250,32.00390625)
commandqueue[13156] = {{"build", "wooden-chest", {-30.5, 29.5}, defines.direction.north}}
commandqueue[13157] = {{"take", {-35, 28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[13158] = {{"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[13159] = {{"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[13160] = {{"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[13161] = {{"take", {-37, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[13164] = {{"craft", "iron-gear-wheel", 3}}
commandqueue[13165] = {{"craft", "wooden-chest", 1}}
commandqueue[13163] = {{"move", "E"}}
commandqueue[13178] = {{"move", "NE"}}
commandqueue[13188] = {{"move", "STOP"}}
--Presently at: (-30.82031250,30.94921875)
commandqueue[13189] = {{"mine", {-32.5, 30.5}}}
commandqueue[13314] = {{"mine", nil}}
commandqueue[13316] = {{"take", {-30.5, 26.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[13317] = {{"put", {-28, 26}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[13318] = {{"put", {-28, 28}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[13319] = {{"take", {-28.5, 26.5}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[13320] = {{"take", {-28, 28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[13315] = {{"move", "W"}}
commandqueue[13330] = {{"move", "SW"}}
commandqueue[13340] = {{"move", "STOP"}}
--Presently at: (-34.10156250,32.00390625)
commandqueue[13336] = {{"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[13338] = {{"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[13339] = {{"take", {-36.5, 36.5}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[13341] = {{"move", "E"}}
commandqueue[13362] = {{"move", "STOP"}}
--Presently at: (-30.98437500,32.00390625)
commandqueue[13357] = {{"take", {-35, 28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[13358] = {{"take", {-28, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[13359] = {{"take", {-28, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[13360] = {{"take", {-28, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[13361] = {{"craft", "electric-mining-drill", 1}}
commandqueue[13363] = {{"move", "W"}}
commandqueue[13404] = {{"move", "STOP"}}
--Presently at: (-37.07031250,32.00390625)
commandqueue[13406] = {{"take", {-39, 29}, "coal", "all", defines.inventory.fuel}}
commandqueue[13407] = {{"take", {-39, 31}, "coal", "all", defines.inventory.fuel}}
commandqueue[13408] = {{"take", {-39, 33}, "coal", "all", defines.inventory.fuel}}
commandqueue[13409] = {{"take", {-41, 33}, "coal", "all", defines.inventory.fuel}}
commandqueue[13411] = {{"take", {-41, 29}, "coal", "all", defines.inventory.fuel}}
commandqueue[13420] = {{"take", {-37, 37}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[13435] = {{"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[13436] = {{"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[13438] = {{"craft", "iron-axe", 1}}
commandqueue[13440] = {{"craft", "copper-cable", 6}}
commandqueue[13405] = {{"move", "E"}}
commandqueue[13426] = {{"move", "SE"}}
commandqueue[13464] = {{"move", "STOP"}}
--Presently at: (-29.94531250,36.01171875)
commandqueue[13463] = {{"build", "stone-furnace", {-28, 40}, defines.direction.north}}
commandqueue[13467] = {{"build", "stone-furnace", {-28, 38}, defines.direction.north}}
commandqueue[13468] = {{"build", "stone-furnace", {-28, 36}, defines.direction.north}}
commandqueue[13469] = {{"put", {-28, 36}, "coal", 2, defines.inventory.fuel}}
commandqueue[13465] = {{"move", "W"}}
commandqueue[13466] = {{"move", "NW"}}
commandqueue[13476] = {{"move", "STOP"}}
--Presently at: (-31.14843750,34.95703125)
commandqueue[13478] = {{"take", {-36.5, 35}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[13479] = {{"craft", "electronic-circuit", 1}}
commandqueue[13477] = {{"move", "N"}}
commandqueue[13496] = {{"move", "NE"}}
commandqueue[13498] = {{"move", "STOP"}}
--Presently at: (-30.93750000,31.92578125)
commandqueue[13488] = {{"build", "electric-mining-drill", {-32.5, 29.5}, defines.direction.east}}
commandqueue[13489] = {{"build", "small-electric-pole", {-29.5, 34.5}, defines.direction.north}}
commandqueue[13495] = {{"build", "wooden-chest", {-30.5, 32.5}, defines.direction.north}}
commandqueue[13499] = {{"take", {-30.5, 26.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[13500] = {{"put", {-28, 30}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[13501] = {{"put", {-28, 32}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[13502] = {{"mine", {-32.5, 31.5}}}
commandqueue[13627] = {{"mine", nil}}
commandqueue[13628] = {{"take", {-30.5, 26.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[13629] = {{"take", {-30.5, 29.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[13630] = {{"put", {-28.6, 26.7}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[13631] = {{"put", {-28, 28}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[13632] = {{"put", {-28, 34}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[13633] = {{"mine", {-32.5, 31.5}}}
commandqueue[13758] = {{"mine", nil}}
commandqueue[13761] = {{"take", {-30.5, 26.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[13762] = {{"take", {-30.5, 29.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[13763] = {{"take", {-28, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[13764] = {{"take", {-28, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[13765] = {{"craft", "electronic-circuit", 2}}
commandqueue[13759] = {{"move", "E"}}
commandqueue[13760] = {{"move", "NE"}}
commandqueue[13769] = {{"move", "STOP"}}
--Presently at: (-29.83984375,30.97656250)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-29.9453,30.9766)
commandqueue[13767] = {{"put", {-28, 28}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[13766] = {{"put", {-28, 34}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[13768] = {{"put", {-28.6, 26.7}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[13772] = {{"craft", "copper-cable", 4}}
commandqueue[13770] = {{"move", "W"}}
commandqueue[13771] = {{"move", "SW"}}
commandqueue[13781] = {{"move", "STOP"}}
--Presently at: (-31.14843750,32.03125000)
commandqueue[13782] = {{"mine", {-32.5, 31.5}}}
commandqueue[13907] = {{"mine", nil}}
commandqueue[13908] = {{"move", "W"}}
commandqueue[13927] = {{"move", "STOP"}}
--Presently at: (-33.96875000,32.03125000)
commandqueue[13921] = {{"take", {-35, 28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[13922] = {{"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[13923] = {{"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[13924] = {{"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[13925] = {{"take", {-37, 36.3}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[13926] = {{"craft", "iron-gear-wheel", 5}}
commandqueue[13928] = {{"move", "E"}}
commandqueue[13948] = {{"move", "NE"}}
commandqueue[13958] = {{"move", "STOP"}}
--Presently at: (-29.94531250,30.97656250)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-30.0938,30.8906)
commandqueue[13956] = {{"take", {-30.5, 26.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[13957] = {{"take", {-30.5, 29.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[13960] = {{"put", {-28, 34}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[13961] = {{"put", {-28, 32}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[13962] = {{"put", {-28, 30}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[13963] = {{"put", {-28, 28}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[13964] = {{"put", {-28, 26}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[13959] = {{"move", "N"}}
commandqueue[13972] = {{"move", "STOP"}}
--Presently at: (-30.09375000,28.96093750)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-29.9453,29.1094)
commandqueue[13971] = {{"put", {-34.5, 26.5}, "coal", 2, defines.inventory.fuel}}
commandqueue[13973] = {{"move", "E"}}
commandqueue[14033] = {{"move", "NE"}}
commandqueue[14063] = {{"move", "STOP"}}
--Presently at: (-17.87500000,25.94531250)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-18.0234,25.9297)
commandqueue[14061] = {{"take", {-16, 24}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[14062] = {{"take", {-16, 22}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[14065] = {{"put", {-14, 24}, "coal", 3, defines.inventory.fuel}}
commandqueue[14066] = {{"put", {-14, 22}, "coal", 3, defines.inventory.fuel}}
commandqueue[14067] = {{"craft", "copper-cable", 4}}
commandqueue[14068] = {{"craft", "wooden-chest", 1}}
commandqueue[14064] = {{"move", "W"}}
commandqueue[14091] = {{"move", "SW"}}
commandqueue[14140] = {{"move", "STOP"}}
--Presently at: (-27.19921875,31.09765625)
commandqueue[14142] = {{"take", {-28, 26}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[14143] = {{"take", {-28, 28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[14147] = {{"take", {-28, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[14141] = {{"move", "W"}}
commandqueue[14160] = {{"move", "STOP"}}
--Presently at: (-30.01953125,31.09765625)
commandqueue[14156] = {{"take", {-30.5, 29.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[14157] = {{"put", {-28, 32}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[14161] = {{"take", {-30.5, 26.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[14163] = {{"put", {-28, 30}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[14165] = {{"put", {-28, 34}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[14162] = {{"move", "W"}}
commandqueue[14164] = {{"move", "SW"}}
commandqueue[14166] = {{"move", "STOP"}}
--Presently at: (-30.52734375,31.30859375)
commandqueue[14167] = {{"mine", {-32.1, 32.1}}}
commandqueue[14292] = {{"mine", nil}}
commandqueue[14294] = {{"take", {-28, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[14295] = {{"take", {-28, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[14296] = {{"craft", "electric-mining-drill", 1}}
commandqueue[14297] = {{"take", {-30.5, 26.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[14298] = {{"take", {-30.5, 29.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[14300] = {{"put", {-28, 28}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[14301] = {{"put", {-28.3, 35.6}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[14293] = {{"move", "W"}}
commandqueue[14299] = {{"move", "SW"}}
commandqueue[14306] = {{"move", "STOP"}}
--Presently at: (-32.15625000,32.04687500)
commandqueue[14307] = {{"move", "W"}}
commandqueue[14320] = {{"move", "STOP"}}
--Presently at: (-34.08593750,32.04687500)
commandqueue[14314] = {{"take", {-35, 28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[14315] = {{"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[14316] = {{"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[14317] = {{"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[14318] = {{"take", {-37, 36.3}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[14319] = {{"craft", "iron-gear-wheel", 5}}
commandqueue[14321] = {{"move", "W"}}
commandqueue[14341] = {{"move", "STOP"}}
--Presently at: (-37.05468750,32.04687500)
commandqueue[14343] = {{"take", {-41, 29}, "coal", "all", defines.inventory.fuel}}
commandqueue[14344] = {{"take", {-41, 31}, "coal", "all", defines.inventory.fuel}}
commandqueue[14345] = {{"take", {-41, 33}, "coal", "all", defines.inventory.fuel}}
commandqueue[14346] = {{"take", {-39, 33}, "coal", "all", defines.inventory.fuel}}
commandqueue[14348] = {{"take", {-39, 31}, "coal", "all", defines.inventory.fuel}}
commandqueue[14349] = {{"take", {-39, 29}, "coal", "all", defines.inventory.fuel}}
commandqueue[14350] = {{"put", {-35, 31}, "coal", 3, defines.inventory.fuel}}
commandqueue[14351] = {{"put", {-35, 33}, "coal", 3, defines.inventory.fuel}}
commandqueue[14352] = {{"put", {-35, 35}, "coal", 3, defines.inventory.fuel}}
commandqueue[14353] = {{"put", {-35, 37}, "coal", 3, defines.inventory.fuel}}
commandqueue[14342] = {{"move", "E"}}
commandqueue[14383] = {{"move", "NE"}}
commandqueue[14393] = {{"move", "STOP"}}
--Presently at: (-29.91406250,30.99218750)
commandqueue[14392] = {{"take", {-28, 26}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[14395] = {{"put", {-28, 26}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[14396] = {{"take", {-30.5, 26.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[14397] = {{"put", {-28, 30}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[14398] = {{"put", {-28, 32}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[14399] = {{"take", {-28, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[14400] = {{"take", {-28, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[14401] = {{"craft", "electronic-circuit", 3}}
commandqueue[14402] = {{"move", "W"}}
commandqueue[14404] = {{"move", "STOP"}}
--Presently at: (-30.21093750,30.99218750)
commandqueue[14405] = {{"mine", {-32.1, 31.1}}}
commandqueue[14530] = {{"mine", nil}}
commandqueue[14532] = {{"build", "electric-mining-drill", {-32.5, 32.9}, defines.direction.east}}
commandqueue[14533] = {{"take", {-30.5, 26.9}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[14534] = {{"take", {-30.5, 29.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[14546] = {{"put", {-28, 34}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[14547] = {{"put", {-28, 36}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[14548] = {{"put", {-28, 38}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[14550] = {{"put", {-28, 38}, "coal", 1, defines.inventory.fuel}}
commandqueue[14566] = {{"put", {-28, 40}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[14567] = {{"put", {-28, 40}, "coal", 1, defines.inventory.fuel}}
commandqueue[14531] = {{"move", "S"}}
commandqueue[14631] = {{"move", "SE"}}
commandqueue[14643] = {{"move", "STOP"}}
--Presently at: (-28.94531250,47.10156250)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-28.6797,46.5547)
commandqueue[14644] = {{"move", "S"}}
commandqueue[14663] = {{"move", "SE"}}
commandqueue[14679] = {{"move", "STOP"}}
--Presently at: (-26.99218750,51.06250000)
commandqueue[14675] = {{"put", {-26, 53}, "coal", 4, defines.inventory.fuel}}
commandqueue[14676] = {{"put", {-24, 54}, "coal", 4, defines.inventory.fuel}}
commandqueue[14677] = {{"put", {-27, 55}, "coal", 4, defines.inventory.fuel}}
commandqueue[14678] = {{"put", {-25, 56}, "coal", 4, defines.inventory.fuel}}
commandqueue[14681] = {{"take", {-25.5, 54.5}, "stone", "all", defines.inventory.chest}}
commandqueue[14682] = {{"craft", "stone-furnace", 3}}
commandqueue[14680] = {{"move", "N"}}
commandqueue[14735] = {{"move", "NW"}}
commandqueue[14755] = {{"move", "STOP"}}
--Presently at: (-29.10156250,40.78906250)
commandqueue[14756] = {{"move", "N"}}
commandqueue[14816] = {{"move", "NW"}}
commandqueue[14825] = {{"move", "STOP"}}
--Presently at: (-30.05078125,30.93359375)
commandqueue[14786] = {{"take", {-28, 40}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[14796] = {{"take", {-28, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[14797] = {{"take", {-28, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[14798] = {{"take", {-28, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[14799] = {{"take", {-28, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[14800] = {{"take", {-28, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[14811] = {{"take", {-28, 28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[14812] = {{"craft", "electric-mining-drill", 1}}
commandqueue[14824] = {{"take", {-28, 26}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[14827] = {{"take", {-35, 28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[14829] = {{"take", {-30.5, 26.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[14830] = {{"put", {-28, 26}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[14831] = {{"take", {-30.5, 29.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[14832] = {{"take", {-30.5, 32.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[14833] = {{"put", {-28, 28}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[14834] = {{"put", {-28, 30}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[14835] = {{"put", {-28, 32}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[14836] = {{"put", {-28, 34}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[14837] = {{"put", {-28, 36}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[14826] = {{"move", "S"}}
commandqueue[14854] = {{"move", "STOP"}}
--Presently at: (-30.05078125,35.08984375)
commandqueue[14855] = {{"move", "W"}}
commandqueue[14875] = {{"move", "NW"}}
commandqueue[14886] = {{"move", "STOP"}}
--Presently at: (-34.17968750,33.92968750)
commandqueue[14882] = {{"take", {-37, 37}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[14883] = {{"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[14884] = {{"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[14885] = {{"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[14888] = {{"craft", "electronic-circuit", 3}}
commandqueue[14889] = {{"craft", "iron-gear-wheel", 5}}
commandqueue[14890] = {{"craft", "wooden-chest", 1}}
commandqueue[14887] = {{"move", "W"}}
commandqueue[14899] = {{"move", "STOP"}}
--Presently at: (-35.96093750,33.92968750)
commandqueue[14900] = {{"move", "N"}}
commandqueue[14920] = {{"move", "STOP"}}
--Presently at: (-35.96093750,30.96093750)
commandqueue[14922] = {{"take", {-41, 29}, "coal", "all", defines.inventory.fuel}}
commandqueue[14923] = {{"take", {-41, 31}, "coal", "all", defines.inventory.fuel}}
commandqueue[14924] = {{"take", {-41, 33}, "coal", "all", defines.inventory.fuel}}
commandqueue[14925] = {{"take", {-39, 33}, "coal", "all", defines.inventory.fuel}}
commandqueue[14927] = {{"take", {-39, 31}, "coal", "all", defines.inventory.fuel}}
commandqueue[14928] = {{"take", {-39, 29}, "coal", "all", defines.inventory.fuel}}
commandqueue[14921] = {{"move", "S"}}
commandqueue[14942] = {{"move", "STOP"}}
--Presently at: (-35.96093750,34.07812500)
commandqueue[14943] = {{"move", "E"}}
commandqueue[14983] = {{"move", "STOP"}}
--Presently at: (-30.02343750,34.07812500)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-30.5625,34.1055)
commandqueue[14980] = {{"build", "wooden-chest", {-30.5, 35.5}, defines.direction.north}}
commandqueue[14982] = {{"build", "electric-mining-drill", {-32.5, 35.5}, defines.direction.east}}
commandqueue[14986] = {{"put", {-28, 38}, "coal", 1, defines.inventory.fuel}}
commandqueue[14987] = {{"put", {-28, 36}, "coal", 1, defines.inventory.fuel}}
commandqueue[14988] = {{"take", {-28, 34}, "raw-wood", "all", defines.inventory.fuel}}
commandqueue[14989] = {{"put", {-28, 34}, "coal", 2, defines.inventory.fuel}}
commandqueue[14990] = {{"take", {-30.5, 29.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[14991] = {{"take", {-28, 32}, "raw-wood", "all", defines.inventory.fuel}}
commandqueue[14992] = {{"put", {-28, 32}, "coal", 2, defines.inventory.fuel}}
commandqueue[14993] = {{"take", {-28, 30}, "raw-wood", "all", defines.inventory.fuel}}
commandqueue[14996] = {{"put", {-28, 30}, "coal", 2, defines.inventory.fuel}}
commandqueue[14997] = {{"take", {-28, 28}, "raw-wood", "all", defines.inventory.fuel}}
commandqueue[14998] = {{"put", {-28, 28}, "coal", 2, defines.inventory.fuel}}
commandqueue[14984] = {{"move", "N"}}
commandqueue[14985] = {{"move", "NE"}}
commandqueue[14994] = {{"move", "STOP"}}
--Presently at: (-29.61328125,33.00781250)
commandqueue[14995] = {{"move", "N"}}
commandqueue[15006] = {{"move", "NW"}}
commandqueue[15010] = {{"move", "STOP"}}
--Presently at: (-30.03515625,30.95312500)
commandqueue[15005] = {{"take", {-28, 26.9}, "raw-wood", "all", defines.inventory.fuel}}
commandqueue[15007] = {{"put", {-28, 26.9}, "coal", 2, defines.inventory.fuel}}
commandqueue[15008] = {{"take", {-30.5, 32.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[15009] = {{"take", {-30.5, 26.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[15012] = {{"put", {-28, 26}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[15013] = {{"put", {-28, 28}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[15014] = {{"put", {-28, 30}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[15015] = {{"put", {-28, 32}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[15016] = {{"put", {-28, 34}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[15017] = {{"put", {-28, 36}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[15011] = {{"move", "S"}}
commandqueue[15052] = {{"move", "STOP"}}
--Presently at: (-30.03515625,37.03906250)
commandqueue[15053] = {{"move", "W"}}
commandqueue[15055] = {{"move", "STOP"}}
--Presently at: (-30.33203125,37.03906250)
commandqueue[15056] = {{"mine", {-32.1, 37.5}}}
commandqueue[15181] = {{"mine", nil}}
commandqueue[15183] = {{"put", {-28, 40}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[15184] = {{"take", {-28, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[15185] = {{"craft", "stone-furnace", 2}}
commandqueue[15188] = {{"take", {-30.5, 32.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[15189] = {{"put", {-28, 38}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[15182] = {{"move", "N"}}
commandqueue[15228] = {{"move", "NE"}}
commandqueue[15232] = {{"move", "STOP"}}
--Presently at: (-29.91015625,29.78906250)
commandqueue[15231] = {{"take", {-35, 28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[15234] = {{"take", {-30.5, 26.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[15235] = {{"take", {-30.5, 29.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[15236] = {{"take", {-30.5, 35.2}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[15233] = {{"move", "S"}}
commandqueue[15248] = {{"move", "STOP"}}
--Presently at: (-29.91015625,32.01562500)
commandqueue[15250] = {{"put", {-28, 26.9}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[15251] = {{"take", {-28, 26.9}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[15252] = {{"put", {-28, 28}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[15253] = {{"put", {-28, 30}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[15254] = {{"put", {-28, 32}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[15255] = {{"put", {-28, 34}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[15256] = {{"put", {-28, 36}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[15257] = {{"take", {-28, 28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[15258] = {{"take", {-28, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[15259] = {{"take", {-28, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[15260] = {{"craft", "electric-mining-drill", 1}}
commandqueue[15261] = {{"take", {-28, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[15249] = {{"move", "S"}}
commandqueue[15282] = {{"move", "SW"}}
commandqueue[15293] = {{"move", "STOP"}}
--Presently at: (-31.07031250,38.07421875)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-31.0156,37.7773)
commandqueue[15291] = {{"take", {-28, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[15294] = {{"move", "W"}}
commandqueue[15300] = {{"move", "SW"}}
commandqueue[15303] = {{"move", "STOP"}}
--Presently at: (-32.22265625,38.09375000)
commandqueue[15304] = {{"move", "W"}}
commandqueue[15343] = {{"move", "STOP"}}
--Presently at: (-38.01171875,38.09375000)
commandqueue[15345] = {{"take", {-37, 37}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[15346] = {{"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[15347] = {{"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[15364] = {{"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[15344] = {{"move", "N"}}
commandqueue[15385] = {{"move", "STOP"}}
--Presently at: (-38.01171875,32.00781250)
commandqueue[15384] = {{"craft", "electronic-circuit", 6}}
commandqueue[15392] = {{"take", {-41, 29}, "coal", "all", defines.inventory.fuel}}
commandqueue[15388] = {{"take", {-41, 31}, "coal", "all", defines.inventory.fuel}}
commandqueue[15389] = {{"take", {-41, 33}, "coal", "all", defines.inventory.fuel}}
commandqueue[15390] = {{"take", {-39, 33}, "coal", "all", defines.inventory.fuel}}
commandqueue[15387] = {{"take", {-39, 31}, "coal", "all", defines.inventory.fuel}}
commandqueue[15393] = {{"take", {-39, 29}, "coal", "all", defines.inventory.fuel}}
commandqueue[15394] = {{"craft", "iron-gear-wheel", 4}}
commandqueue[15386] = {{"move", "W"}}
commandqueue[15413] = {{"move", "STOP"}}
--Presently at: (-42.01953125,32.00781250)
commandqueue[15414] = {{"move", "N"}}
commandqueue[15415] = {{"move", "NW"}}
commandqueue[15463] = {{"move", "STOP"}}
--Presently at: (-47.08203125,26.79687500)
commandqueue[15464] = {{"move", "W"}}
commandqueue[15490] = {{"move", "SW"}}
commandqueue[15492] = {{"move", "STOP"}}
--Presently at: (-51.15234375,27.00781250)
commandqueue[15491] = {{"put", {-56.5, 26.5}, "coal", 10, defines.inventory.fuel}}
commandqueue[15493] = {{"move", "E"}}
commandqueue[15582] = {{"move", "NE"}}
commandqueue[15602] = {{"move", "STOP"}}
--Presently at: (-35.83203125,24.89843750)
commandqueue[15563] = {{"take", {-41, 29}, "coal", "all", defines.inventory.fuel}}
commandqueue[15564] = {{"take", {-39, 29}, "coal", "all", defines.inventory.fuel}}
commandqueue[15604] = {{"build", "electric-mining-drill", {-38.5, 24.5}, defines.direction.east}}
commandqueue[15605] = {{"build", "wooden-chest", {-36.5, 24.5}, defines.direction.north}}
commandqueue[15606] = {{"put", {-35, 26}, "coal", 1, defines.inventory.fuel}}
commandqueue[15645] = {{"take", {-30.5, 26.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[15653] = {{"put", {-28, 26}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[15654] = {{"put", {-28, 28}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[15655] = {{"put", {-28, 29.3}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[15656] = {{"take", {-28, 29.3}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[15657] = {{"take", {-28, 28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[15658] = {{"take", {-28, 26}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[15603] = {{"move", "E"}}
commandqueue[15716] = {{"move", "STOP"}}
--Presently at: (-19.05859375,24.89843750)
commandqueue[15715] = {{"put", {-16, 22}, "coal", 2, defines.inventory.fuel}}
commandqueue[15718] = {{"take", {-16, 22}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[15719] = {{"take", {-16, 24}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[15717] = {{"move", "W"}}
commandqueue[15743] = {{"move", "SW"}}
commandqueue[15782] = {{"move", "STOP"}}
--Presently at: (-27.03125000,29.01171875)
commandqueue[15781] = {{"take", {-28, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[15784] = {{"craft", "iron-gear-wheel", 1}}
commandqueue[15785] = {{"craft", "wooden-chest", 1}}
commandqueue[15783] = {{"move", "W"}}
commandqueue[15797] = {{"move", "SW"}}
commandqueue[15807] = {{"move", "STOP"}}
--Presently at: (-30.16406250,30.06640625)
commandqueue[15802] = {{"take", {-30.5, 26.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[15803] = {{"take", {-30.5, 29.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[15804] = {{"put", {-28, 26}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[15805] = {{"put", {-28, 28}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[15806] = {{"put", {-28, 29.3}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[15809] = {{"take", {-30.5, 32.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[15823] = {{"take", {-30.5, 35.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[15843] = {{"take", {-28, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[15844] = {{"take", {-28, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[15845] = {{"take", {-28, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[15846] = {{"put", {-28, 32}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[15847] = {{"put", {-28, 34}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[15848] = {{"put", {-28, 36}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[15849] = {{"put", {-28, 38}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[15850] = {{"put", {-28, 40}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[15808] = {{"move", "S"}}
commandqueue[15868] = {{"move", "SE"}}
commandqueue[15870] = {{"move", "STOP"}}
--Presently at: (-29.95312500,39.18359375)
commandqueue[15866] = {{"build", "stone-furnace", {-28, 42}, defines.direction.north}}
commandqueue[15867] = {{"put", {-28, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[15869] = {{"put", {-28, 42}, "coal", 1, defines.inventory.fuel}}
commandqueue[15872] = {{"build", "stone-furnace", {-28.4, 43.5}, defines.direction.north}}
commandqueue[15873] = {{"put", {-28.5, 43.5}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[15874] = {{"put", {-28.5, 43.5}, "coal", 2, defines.inventory.fuel}}
commandqueue[15875] = {{"build", "small-electric-pole", {-29.5, 41.5}, defines.direction.north}}
commandqueue[15871] = {{"move", "W"}}
commandqueue[15884] = {{"move", "NW"}}
commandqueue[15896] = {{"move", "STOP"}}
--Presently at: (-33.14843750,37.91796875)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-32.918,37.7695)
commandqueue[15897] = {{"move", "W"}}
commandqueue[15917] = {{"move", "SW"}}
commandqueue[15920] = {{"move", "STOP"}}
--Presently at: (-36.20312500,38.08593750)
commandqueue[15922] = {{"take", {-37, 37}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[15923] = {{"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[15924] = {{"craft", "electric-mining-drill", 1}}
commandqueue[15951] = {{"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[15952] = {{"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[15921] = {{"move", "N"}}
commandqueue[15975] = {{"move", "NE"}}
commandqueue[15977] = {{"move", "STOP"}}
--Presently at: (-35.99218750,29.85937500)
commandqueue[15970] = {{"take", {-41, 33}, "coal", "all", defines.inventory.fuel}}
commandqueue[15971] = {{"take", {-39, 33}, "coal", "all", defines.inventory.fuel}}
commandqueue[15972] = {{"take", {-41, 31}, "coal", "all", defines.inventory.fuel}}
commandqueue[15973] = {{"take", {-39, 31}, "coal", "all", defines.inventory.fuel}}
commandqueue[15974] = {{"take", {-41, 29}, "coal", "all", defines.inventory.fuel}}
commandqueue[15976] = {{"take", {-39, 29}, "coal", "all", defines.inventory.fuel}}
commandqueue[15979] = {{"take", {-36.5, 24.9}, "coal", "all", defines.inventory.chest}}
commandqueue[15981] = {{"take", {-35, 28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[15982] = {{"craft", "iron-gear-wheel", 4}}
commandqueue[15978] = {{"move", "N"}}
commandqueue[16011] = {{"move", "STOP"}}
--Presently at: (-35.99218750,24.96093750)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-35.9062,25.2461)
commandqueue[16012] = {{"move", "E"}}
commandqueue[16049] = {{"move", "SE"}}
commandqueue[16057] = {{"move", "STOP"}}
--Presently at: (-29.57031250,26.08984375)
commandqueue[16068] = {{"take", {-30.7, 26.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[16069] = {{"take", {-30.7, 29.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[16070] = {{"put", {-28, 26}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[16071] = {{"put", {-28, 28}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[16072] = {{"put", {-28, 30}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[16073] = {{"take", {-28, 26}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16074] = {{"craft", "iron-gear-wheel", 1}}
commandqueue[16075] = {{"take", {-28, 28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16076] = {{"take", {-28, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16108] = {{"take", {-30.7, 32.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[16109] = {{"take", {-30.7, 35.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[16110] = {{"build", "electric-mining-drill", {-32.5, 38.5}, defines.direction.east}}
commandqueue[16111] = {{"build", "wooden-chest", {-30.5, 38.5}, defines.direction.north}}
commandqueue[16112] = {{"take", {-28, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16113] = {{"take", {-28, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16114] = {{"take", {-28, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16115] = {{"take", {-28, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16116] = {{"put", {-28, 32}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[16117] = {{"put", {-28, 34}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[16118] = {{"put", {-28, 36}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[16119] = {{"put", {-28, 38}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[16120] = {{"put", {-28, 39.2}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[16058] = {{"move", "S"}}
commandqueue[16149] = {{"move", "SW"}}
commandqueue[16154] = {{"move", "STOP"}}
--Presently at: (-30.09765625,40.12500000)
commandqueue[16151] = {{"take", {-28, 40}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16152] = {{"take", {-28, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16153] = {{"take", {-28.4, 43.3}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16155] = {{"move", "S"}}
commandqueue[16188] = {{"move", "SE"}}
commandqueue[16199] = {{"move", "STOP"}}
--Presently at: (-28.93750000,46.18359375)
commandqueue[16200] = {{"move", "S"}}
commandqueue[16220] = {{"move", "SE"}}
commandqueue[16239] = {{"move", "STOP"}}
--Presently at: (-26.93359375,51.15625000)
commandqueue[16235] = {{"put", {-26, 53}, "coal", 3, defines.inventory.fuel}}
commandqueue[16236] = {{"put", {-24, 54}, "coal", 3, defines.inventory.fuel}}
commandqueue[16237] = {{"put", {-27, 55}, "coal", 3, defines.inventory.fuel}}
commandqueue[16238] = {{"put", {-25, 56}, "coal", 3, defines.inventory.fuel}}
commandqueue[16241] = {{"take", {-25.5, 54.5}, "stone", "all", defines.inventory.chest}}
commandqueue[16240] = {{"move", "N"}}
commandqueue[16258] = {{"move", "NW"}}
commandqueue[16283] = {{"move", "STOP"}}
--Presently at: (-29.57031250,45.84765625)
commandqueue[16285] = {{"build", "stone-furnace", {-28, 46}, defines.direction.north}}
commandqueue[16286] = {{"put", {-28, 46}, "coal", 2, defines.inventory.fuel}}
commandqueue[16260] = {{"craft", "electric-mining-drill", 1}}
commandqueue[16261] = {{"craft", "wooden-chest", 1}}
commandqueue[16262] = {{"craft", "copper-cable", 15}}
commandqueue[16284] = {{"move", "N"}}
commandqueue[16384] = {{"move", "STOP"}}
--Presently at: (-29.57031250,31.00390625)
commandqueue[16325] = {{"take", {-28, 43.3}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16331] = {{"take", {-28, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16337] = {{"take", {-28, 40}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16343] = {{"take", {-28, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16349] = {{"take", {-28, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16355] = {{"take", {-28, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16361] = {{"take", {-28, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16367] = {{"take", {-28, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16373] = {{"take", {-28, 28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16379] = {{"take", {-28, 26}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16383] = {{"craft", "transport-belt", 2}}
commandqueue[16358] = {{"take", {-30.5, 38.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[16364] = {{"take", {-30.5, 35.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[16370] = {{"take", {-30.5, 32.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[16376] = {{"take", {-30.5, 29.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[16382] = {{"take", {-30.5, 26.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[16386] = {{"put", {-28, 26}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[16387] = {{"put", {-28, 28}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[16388] = {{"put", {-28, 30}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[16395] = {{"put", {-28, 32}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[16401] = {{"put", {-28, 34}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[16407] = {{"put", {-28, 36}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[16413] = {{"put", {-28, 38}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[16432] = {{"put", {-28, 40}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[16437] = {{"put", {-28, 42}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[16449] = {{"put", {-28, 44}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[16452] = {{"put", {-28, 45.3}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[16385] = {{"move", "S"}}
commandqueue[16425] = {{"move", "STOP"}}
--Presently at: (-29.57031250,36.94140625)
commandqueue[16424] = {{"build", "electric-mining-drill", {-32.5, 41.5}, defines.direction.east}}
commandqueue[16485] = {{"build", "wooden-chest", {-30.5, 41.5}, defines.direction.north}}
commandqueue[16426] = {{"move", "S"}}
commandqueue[16453] = {{"move", "STOP"}}
--Presently at: (-29.57031250,40.94921875)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-29.9453,40.4492)
commandqueue[16454] = {{"move", "N"}}
commandqueue[16551] = {{"move", "STOP"}}
--Presently at: (-29.94531250,26.05078125)
commandqueue[16552] = {{"move", "N"}}
commandqueue[16554] = {{"move", "NW"}}
commandqueue[16564] = {{"move", "STOP"}}
--Presently at: (-31.00000000,24.69921875)
commandqueue[16565] = {{"move", "W"}}
commandqueue[16597] = {{"move", "SW"}}
commandqueue[16600] = {{"move", "STOP"}}
--Presently at: (-36.06640625,25.01562500)
commandqueue[16602] = {{"take", {-36.5, 24.5}, "coal", "all", defines.inventory.chest}}
commandqueue[16601] = {{"move", "S"}}
commandqueue[16662] = {{"move", "STOP"}}
--Presently at: (-36.06640625,34.07031250)
commandqueue[16660] = {{"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16661] = {{"take", {-37, 37}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16664] = {{"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16665] = {{"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16666] = {{"take", {-39, 33}, "coal", "all", defines.inventory.fuel}}
commandqueue[16667] = {{"take", {-41, 33}, "coal", "all", defines.inventory.fuel}}
commandqueue[16679] = {{"take", {-41, 31}, "coal", "all", defines.inventory.fuel}}
commandqueue[16680] = {{"take", {-39, 31}, "coal", "all", defines.inventory.fuel}}
commandqueue[16691] = {{"take", {-39, 29}, "coal", "all", defines.inventory.fuel}}
commandqueue[16692] = {{"take", {-41, 29}, "coal", "all", defines.inventory.fuel}}
commandqueue[16713] = {{"take", {-35, 28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16663] = {{"move", "N"}}
commandqueue[16724] = {{"move", "STOP"}}
--Presently at: (-36.06640625,25.01562500)
commandqueue[16725] = {{"move", "E"}}
commandqueue[16761] = {{"move", "SE"}}
commandqueue[16771] = {{"move", "STOP"}}
--Presently at: (-29.66796875,26.07031250)
commandqueue[16792] = {{"take", {-30.5, 26.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[16793] = {{"take", {-30.5, 29.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[16794] = {{"take", {-30.5, 32.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[16795] = {{"put", {-28, 26}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[16796] = {{"put", {-28, 28}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[16797] = {{"put", {-28, 30}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[16798] = {{"put", {-28, 32}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[16799] = {{"put", {-28, 34}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[16800] = {{"put", {-28, 26}, "coal", 1, defines.inventory.fuel}}
commandqueue[16801] = {{"put", {-28, 28}, "coal", 1, defines.inventory.fuel}}
commandqueue[16802] = {{"put", {-28, 30}, "coal", 1, defines.inventory.fuel}}
commandqueue[16803] = {{"put", {-28, 32}, "coal", 1, defines.inventory.fuel}}
commandqueue[16804] = {{"put", {-28, 34}, "coal", 1, defines.inventory.fuel}}
commandqueue[16807] = {{"take", {-30.5, 29.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[16772] = {{"move", "S"}}
commandqueue[16879] = {{"move", "STOP"}}
--Presently at: (-29.66796875,41.95312500)
commandqueue[16858] = {{"take", {-30.5, 35.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[16859] = {{"take", {-30.5, 38.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[16860] = {{"take", {-30.5, 41.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[16861] = {{"put", {-28, 36}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[16862] = {{"put", {-28, 36}, "coal", 1, defines.inventory.fuel}}
commandqueue[16863] = {{"put", {-28, 38}, "coal", 1, defines.inventory.fuel}}
commandqueue[16864] = {{"put", {-28, 40}, "coal", 1, defines.inventory.fuel}}
commandqueue[16870] = {{"put", {-28, 38}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[16871] = {{"put", {-28, 40}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[16872] = {{"put", {-28, 42}, "coal", 1, defines.inventory.fuel}}
commandqueue[16873] = {{"put", {-28, 44}, "coal", 1, defines.inventory.fuel}}
commandqueue[16875] = {{"put", {-28, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[16876] = {{"put", {-28, 44}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[16877] = {{"put", {-28, 45.3}, "coal", 1, defines.inventory.fuel}}
commandqueue[16878] = {{"put", {-28, 45.3}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[16881] = {{"take", {-28, 45.3}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16882] = {{"take", {-28, 44}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16883] = {{"take", {-28, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16884] = {{"take", {-28, 40}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16885] = {{"take", {-28, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16910] = {{"take", {-30.5, 41.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[16912] = {{"take", {-28, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16940] = {{"take", {-28, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16941] = {{"take", {-28, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16942] = {{"take", {-30.5, 35.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[16943] = {{"take", {-30.5, 32.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[16944] = {{"take", {-30.5, 29.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[16945] = {{"take", {-30.5, 26.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[16946] = {{"put", {-28, 35.2}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[16947] = {{"put", {-28, 34}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[16948] = {{"put", {-28, 32}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[16949] = {{"put", {-28, 30}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[16950] = {{"put", {-28, 28}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[16951] = {{"put", {-28, 26}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[16955] = {{"take", {-28, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16956] = {{"take", {-28, 28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16957] = {{"take", {-28, 26}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16880] = {{"move", "N"}}
commandqueue[16987] = {{"move", "STOP"}}
--Presently at: (-29.66796875,26.07031250)
commandqueue[17063] = {{"craft", "lab", 1}}
commandqueue[17064] = {{"craft", "science-pack-1", 1}}
commandqueue[17065] = {{"craft", "burner-mining-drill", 1}}
commandqueue[16988] = {{"move", "N"}}
commandqueue[17000] = {{"move", "NW"}}
commandqueue[17070] = {{"move", "STOP"}}
--Presently at: (-37.05078125,16.90625000)
commandqueue[17071] = {{"move", "W"}}
commandqueue[17151] = {{"move", "STOP"}}
--Presently at: (-48.92578125,16.90625000)
commandqueue[17152] = {{"move", "W"}}
commandqueue[17166] = {{"move", "NW"}}
commandqueue[17180] = {{"move", "STOP"}}
--Presently at: (-52.48046875,15.42968750)
commandqueue[17181] = {{"mine", {-54, 14.8}}}
commandqueue[17281] = {{"mine", nil}}
commandqueue[17282] = {{"move", "W"}}
commandqueue[17291] = {{"move", "NW"}}
commandqueue[17295] = {{"move", "STOP"}}
--Presently at: (-54.23828125,15.00781250)
commandqueue[17296] = {{"mine", {-56, 14.6}}}
commandqueue[17396] = {{"mine", nil}}
commandqueue[17397] = {{"move", "N"}}
commandqueue[17433] = {{"move", "NW"}}
commandqueue[17447] = {{"move", "STOP"}}
--Presently at: (-55.71484375,8.18750000)
commandqueue[17448] = {{"mine", {-56, 6.5}}}
commandqueue[17548] = {{"mine", nil}}
commandqueue[17549] = {{"mine", {-54.8, 7}}}
commandqueue[17649] = {{"mine", nil}}
commandqueue[17650] = {{"move", "N"}}
commandqueue[17671] = {{"move", "NE"}}
commandqueue[17675] = {{"move", "STOP"}}
--Presently at: (-55.29296875,4.64843750)
commandqueue[17676] = {{"mine", {-55.2, 3}}}
commandqueue[17776] = {{"mine", nil}}
commandqueue[17777] = {{"move", "E"}}
commandqueue[17789] = {{"move", "NE"}}
commandqueue[17792] = {{"move", "STOP"}}
--Presently at: (-53.19531250,4.33203125)
commandqueue[17793] = {{"mine", {-51.4, 4.1}}}
commandqueue[17843] = {{"mine", nil}}
commandqueue[17844] = {{"move", "S"}}
commandqueue[17942] = {{"move", "SE"}}
commandqueue[17954] = {{"move", "STOP"}}
--Presently at: (-51.92968750,20.14453125)
commandqueue[17956] = {{"put", {-56.3, 24.3}, "coal", 12, defines.inventory.fuel}}
commandqueue[17955] = {{"move", "S"}}
commandqueue[17968] = {{"move", "SE"}}
commandqueue[18063] = {{"move", "STOP"}}
--Presently at: (-41.91015625,32.09375000)
commandqueue[18057] = {{"take", {-39, 33}, "coal", "all", defines.inventory.fuel}}
commandqueue[18058] = {{"take", {-41, 33}, "coal", "all", defines.inventory.fuel}}
commandqueue[18059] = {{"take", {-41, 31}, "coal", "all", defines.inventory.fuel}}
commandqueue[18060] = {{"take", {-39, 31}, "coal", "all", defines.inventory.fuel}}
commandqueue[18061] = {{"take", {-39, 29}, "coal", "all", defines.inventory.fuel}}
commandqueue[18062] = {{"take", {-41, 29}, "coal", "all", defines.inventory.fuel}}
commandqueue[18064] = {{"move", "E"}}
commandqueue[18104] = {{"move", "STOP"}}
--Presently at: (-35.97265625,32.09375000)
commandqueue[18097] = {{"put", {-35, 31}, "coal", 3, defines.inventory.fuel}}
commandqueue[18098] = {{"put", {-35, 33}, "coal", 3, defines.inventory.fuel}}
commandqueue[18099] = {{"put", {-35, 35}, "coal", 3, defines.inventory.fuel}}
commandqueue[18100] = {{"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[18101] = {{"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[18102] = {{"take", {-37, 37}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[18103] = {{"put", {-37, 37}, "coal", 2, defines.inventory.fuel}}
commandqueue[18107] = {{"put", {-35, 37}, "coal", 3, defines.inventory.fuel}}
commandqueue[18106] = {{"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[18108] = {{"put", {-37, 35}, "coal", 2, defines.inventory.fuel}}
commandqueue[18109] = {{"put", {-37, 33}, "coal", 2, defines.inventory.fuel}}
commandqueue[18110] = {{"put", {-37, 31}, "coal", 2, defines.inventory.fuel}}
commandqueue[18105] = {{"move", "N"}}
commandqueue[18153] = {{"move", "STOP"}}
--Presently at: (-35.97265625,24.96875000)
commandqueue[18152] = {{"take", {-35, 28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[18156] = {{"take", {-36.5, 24.5}, "coal", "all", defines.inventory.chest}}
commandqueue[18157] = {{"put", {-35, 28}, "coal", 2, defines.inventory.fuel}}
commandqueue[18158] = {{"put", {-35, 26}, "coal", 3, defines.inventory.fuel}}
commandqueue[18154] = {{"move", "E"}}
commandqueue[18155] = {{"move", "NE"}}
commandqueue[18160] = {{"move", "STOP"}}
--Presently at: (-35.29687500,24.44140625)
commandqueue[18161] = {{"move", "E"}}
commandqueue[18191] = {{"move", "SE"}}
commandqueue[18202] = {{"move", "STOP"}}
--Presently at: (-29.68359375,25.60156250)
commandqueue[18199] = {{"tech", "automation"}}
commandqueue[18200] = {{"build", "lab", {-33.5, 22.5}, defines.direction.north}}
commandqueue[18201] = {{"put", {-34.5, 22.5}, "science-pack-1", 1, defines.inventory.lab_input}}
commandqueue[18204] = {{"craft", "science-pack-1", 1}}
commandqueue[18229] = {{"take", {-28, 26}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[18230] = {{"take", {-28, 28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[18231] = {{"take", {-28, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[18232] = {{"take", {-30.5, 26.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[18233] = {{"take", {-30.5, 29.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[18234] = {{"take", {-30.5, 32.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[18235] = {{"take", {-30.5, 35.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[18236] = {{"put", {-28, 26}, "iron-ore", 6, defines.inventory.furnace_source}}
commandqueue[18237] = {{"put", {-28, 28}, "iron-ore", 6, defines.inventory.furnace_source}}
commandqueue[18238] = {{"put", {-28, 30}, "iron-ore", 6, defines.inventory.furnace_source}}
commandqueue[18239] = {{"put", {-28, 32}, "iron-ore", 6, defines.inventory.furnace_source}}
commandqueue[18240] = {{"put", {-28, 34}, "iron-ore", 6, defines.inventory.furnace_source}}
commandqueue[18241] = {{"put", {-28, 36}, "iron-ore", 6, defines.inventory.furnace_source}}
commandqueue[18242] = {{"take", {-28, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[18243] = {{"take", {-28, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[18244] = {{"take", {-28, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[18203] = {{"move", "S"}}
commandqueue[18303] = {{"move", "SE"}}
commandqueue[18310] = {{"move", "STOP"}}
--Presently at: (-28.94531250,41.18359375)
commandqueue[18301] = {{"take", {-30.5, 38.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[18302] = {{"take", {-30.5, 41.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[18304] = {{"put", {-28, 38}, "iron-ore", 6, defines.inventory.furnace_source}}
commandqueue[18305] = {{"put", {-28, 40}, "iron-ore", 6, defines.inventory.furnace_source}}
commandqueue[18306] = {{"put", {-28, 42}, "iron-ore", 6, defines.inventory.furnace_source}}
commandqueue[18307] = {{"put", {-28, 44}, "iron-ore", 6, defines.inventory.furnace_source}}
commandqueue[18308] = {{"take", {-28, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[18309] = {{"take", {-28, 40}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[18312] = {{"take", {-28, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[18313] = {{"take", {-28, 44}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[18314] = {{"put", {-28, 46}, "iron-ore", 9, defines.inventory.furnace_source}}
commandqueue[18315] = {{"take", {-28, 46}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[18311] = {{"move", "E"}}
commandqueue[18323] = {{"move", "NE"}}
commandqueue[18325] = {{"move", "STOP"}}
--Presently at: (-26.95312500,40.97265625)
commandqueue[18326] = {{"move", "N"}}
commandqueue[18381] = {{"move", "NE"}}
commandqueue[18466] = {{"move", "STOP"}}
--Presently at: (-17.98828125,23.84375000)
commandqueue[18464] = {{"build", "burner-mining-drill", {-14, 26}, defines.direction.west}}
commandqueue[18465] = {{"put", {-14, 26}, "coal", 4, defines.inventory.fuel}}
commandqueue[18468] = {{"put", {-14, 24}, "coal", 4, defines.inventory.fuel}}
commandqueue[18469] = {{"put", {-14, 22}, "coal", 4, defines.inventory.fuel}}
commandqueue[18470] = {{"put", {-16, 22}, "coal", 3, defines.inventory.fuel}}
commandqueue[18471] = {{"put", {-16, 24}, "coal", 3, defines.inventory.fuel}}
commandqueue[18472] = {{"build", "stone-furnace", {-16, 26}, defines.direction.north}}
commandqueue[18473] = {{"put", {-16, 26}, "coal", 3, defines.inventory.fuel}}
commandqueue[18474] = {{"take", {-16, 22}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[18475] = {{"take", {-16, 24}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[18478] = {{"craft", "science-pack-1", 1}}
commandqueue[18479] = {{"craft", "science-pack-1", 1}}
commandqueue[18480] = {{"craft", "science-pack-1", 1}}
commandqueue[18481] = {{"craft", "science-pack-1", 1}}
commandqueue[18482] = {{"craft", "science-pack-1", 1}}
commandqueue[18467] = {{"move", "W"}}
commandqueue[18541] = {{"move", "SW"}}
commandqueue[18543] = {{"move", "STOP"}}
--Presently at: (-29.18359375,24.05468750)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-29.3242,24.3672)
commandqueue[18544] = {{"move", "W"}}
commandqueue[18587] = {{"move", "SW"}}
commandqueue[18593] = {{"move", "STOP"}}
--Presently at: (-36.33984375,25.00000000)
commandqueue[18594] = {{"move", "S"}}
commandqueue[18639] = {{"move", "SE"}}
commandqueue[18643] = {{"move", "STOP"}}
--Presently at: (-35.91796875,32.10156250)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-35.707,31.9961)
commandqueue[18636] = {{"take", {-39, 33}, "coal", "all", defines.inventory.fuel}}
commandqueue[18637] = {{"take", {-41, 33}, "coal", "all", defines.inventory.fuel}}
commandqueue[18638] = {{"take", {-41, 31}, "coal", "all", defines.inventory.fuel}}
commandqueue[18640] = {{"take", {-39, 31}, "coal", "all", defines.inventory.fuel}}
commandqueue[18641] = {{"take", {-39, 29}, "coal", "all", defines.inventory.fuel}}
commandqueue[18642] = {{"take", {-41, 29}, "coal", "all", defines.inventory.fuel}}
commandqueue[18645] = {{"take", {-37, 36.3}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[18646] = {{"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[18647] = {{"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[18648] = {{"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[18649] = {{"take", {-35, 28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[18644] = {{"move", "N"}}
commandqueue[18690] = {{"move", "NW"}}
commandqueue[18694] = {{"move", "STOP"}}
--Presently at: (-36.12890625,24.74609375)
commandqueue[18695] = {{"move", "E"}}
commandqueue[18733] = {{"move", "SE"}}
commandqueue[18741] = {{"move", "STOP"}}
--Presently at: (-29.64453125,25.58984375)
commandqueue[18743] = {{"put", {-33.3, 23.7}, "science-pack-1", 1, defines.inventory.lab_input}}
commandqueue[18768] = {{"take", {-28, 26}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[18769] = {{"take", {-28, 28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[18770] = {{"take", {-28, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[18771] = {{"take", {-30.5, 26.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[18772] = {{"take", {-30.5, 29.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[18773] = {{"take", {-30.5, 32.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[18774] = {{"take", {-30.5, 35.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[18775] = {{"put", {-28, 26}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[18776] = {{"put", {-28, 28}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[18777] = {{"put", {-28, 30}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[18778] = {{"put", {-28, 32}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[18779] = {{"put", {-28, 34}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[18780] = {{"put", {-28, 36}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[18781] = {{"take", {-28, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[18782] = {{"take", {-28, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[18783] = {{"take", {-28, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[18742] = {{"move", "S"}}
commandqueue[18842] = {{"move", "SE"}}
commandqueue[18849] = {{"move", "STOP"}}
--Presently at: (-28.90625000,41.17187500)
commandqueue[18840] = {{"take", {-30.5, 38.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[18841] = {{"take", {-30.5, 41.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[18843] = {{"put", {-28, 38}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[18844] = {{"put", {-28, 40}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[18845] = {{"put", {-28, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[18846] = {{"put", {-28, 44}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[18847] = {{"take", {-28, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[18848] = {{"take", {-28, 40}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[18851] = {{"take", {-28, 46}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[18852] = {{"put", {-28, 46}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[18853] = {{"take", {-28, 44}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[18854] = {{"take", {-28, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[18850] = {{"move", "E"}}
commandqueue[18862] = {{"move", "NE"}}
commandqueue[18864] = {{"move", "STOP"}}
--Presently at: (-26.91406250,40.96093750)
commandqueue[18865] = {{"move", "E"}}
commandqueue[19019] = {{"move", "NE"}}
commandqueue[19054] = {{"move", "STOP"}}
--Presently at: (-0.36328125,37.26953125)
commandqueue[19055] = {{"mine", {1.4, 37.1}}}
commandqueue[19105] = {{"mine", nil}}
commandqueue[19106] = {{"move", "W"}}
commandqueue[19203] = {{"move", "NW"}}
commandqueue[19320] = {{"move", "STOP"}}
--Presently at: (-27.10156250,24.92968750)
commandqueue[19321] = {{"move", "W"}}
commandqueue[19339] = {{"move", "STOP"}}
--Presently at: (-29.77343750,24.92968750)
commandqueue[19341] = {{"put", {-33.3, 23.7}, "science-pack-1", 1, defines.inventory.lab_input}}
commandqueue[19340] = {{"move", "W"}}
commandqueue[19383] = {{"move", "STOP"}}
--Presently at: (-36.15625000,24.92968750)
commandqueue[19384] = {{"move", "S"}}
commandqueue[19431] = {{"move", "SE"}}
commandqueue[19433] = {{"move", "STOP"}}
--Presently at: (-35.94531250,32.11718750)
commandqueue[19426] = {{"take", {-39, 33}, "coal", "all", defines.inventory.fuel}}
commandqueue[19427] = {{"take", {-41, 33}, "coal", "all", defines.inventory.fuel}}
commandqueue[19428] = {{"take", {-41, 31}, "coal", "all", defines.inventory.fuel}}
commandqueue[19429] = {{"take", {-39, 31}, "coal", "all", defines.inventory.fuel}}
commandqueue[19430] = {{"take", {-39, 29}, "coal", "all", defines.inventory.fuel}}
commandqueue[19432] = {{"take", {-41, 29}, "coal", "all", defines.inventory.fuel}}
commandqueue[19435] = {{"take", {-37, 36.3}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[19436] = {{"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[19437] = {{"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[19438] = {{"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[19439] = {{"take", {-35, 28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[19434] = {{"move", "N"}}
commandqueue[19482] = {{"move", "NW"}}
commandqueue[19484] = {{"move", "STOP"}}
--Presently at: (-36.15625000,24.78125000)
commandqueue[19485] = {{"move", "E"}}
commandqueue[19523] = {{"move", "SE"}}
commandqueue[19530] = {{"move", "STOP"}}
--Presently at: (-29.77734375,25.51953125)
commandqueue[19532] = {{"put", {-33.3, 23.7}, "science-pack-1", 1, defines.inventory.lab_input}}
commandqueue[19557] = {{"take", {-28, 26}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[19558] = {{"take", {-28, 28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[19559] = {{"take", {-28, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[19560] = {{"take", {-30.5, 26.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[19561] = {{"take", {-30.5, 29.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[19562] = {{"take", {-30.5, 32.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[19563] = {{"take", {-30.5, 35.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[19564] = {{"put", {-28, 26}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[19565] = {{"put", {-28, 28}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[19566] = {{"put", {-28, 30}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[19567] = {{"put", {-28, 32}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[19568] = {{"put", {-28, 34}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[19569] = {{"put", {-28, 36}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[19570] = {{"take", {-28, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[19571] = {{"take", {-28, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[19572] = {{"take", {-28, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[19531] = {{"move", "S"}}
commandqueue[19631] = {{"move", "SE"}}
commandqueue[19639] = {{"move", "STOP"}}
--Presently at: (-28.93359375,41.20703125)
commandqueue[19630] = {{"take", {-30.5, 38.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[19632] = {{"take", {-30.5, 41.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[19633] = {{"put", {-28, 38}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[19634] = {{"put", {-28, 40}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[19635] = {{"put", {-28, 42}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[19636] = {{"put", {-28, 44}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[19637] = {{"take", {-28, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[19638] = {{"take", {-28, 40}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[19641] = {{"take", {-28, 46}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[19642] = {{"put", {-28, 46}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[19643] = {{"take", {-28, 44}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[19644] = {{"take", {-28, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[19640] = {{"move", "E"}}
commandqueue[19652] = {{"move", "NE"}}
commandqueue[19654] = {{"move", "STOP"}}
--Presently at: (-26.94140625,40.99609375)
commandqueue[19656] = {{"craft", "small-electric-pole", 1}}
commandqueue[19657] = {{"craft", "steam-engine", 1}}
commandqueue[19658] = {{"craft", "pipe", 1}}
commandqueue[19659] = {{"craft", "electric-mining-drill", 1}}
commandqueue[19660] = {{"craft", "wooden-chest", 1}}
commandqueue[19661] = {{"craft", "small-electric-pole", 2}}
commandqueue[19662] = {{"craft", "science-pack-1", 1}}
commandqueue[19663] = {{"craft", "science-pack-1", 1}}
commandqueue[19664] = {{"craft", "stone-furnace", 2}}
commandqueue[19665] = {{"craft", "science-pack-1", 1}}
commandqueue[19666] = {{"craft", "science-pack-1", 1}}
commandqueue[19655] = {{"move", "E"}}
commandqueue[19797] = {{"move", "SE"}}
commandqueue[19987] = {{"move", "STOP"}}
--Presently at: (14.17578125,61.03515625)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (14.0078,60.957)
commandqueue[19988] = {{"mine", {14, 61.7}}}
commandqueue[20038] = {{"mine", nil}}
commandqueue[20039] = {{"mine", {15.4, 61.4}}}
commandqueue[20089] = {{"mine", nil}}
commandqueue[20090] = {{"move", "S"}}
commandqueue[20118] = {{"move", "STOP"}}
--Presently at: (14.00781250,65.11328125)
commandqueue[20119] = {{"mine", {12.8, 65.8}}}
commandqueue[20169] = {{"mine", nil}}
commandqueue[20170] = {{"move", "N"}}
commandqueue[20178] = {{"move", "NW"}}
commandqueue[20548] = {{"move", "STOP"}}
--Presently at: (-25.01562500,24.90234375)
commandqueue[20539] = {{"build", "small-electric-pole", {-26.5, 28.5}, defines.direction.north}}
commandqueue[20550] = {{"build", "small-electric-pole", {-22.5, 24.5}, defines.direction.north}}
commandqueue[20549] = {{"move", "W"}}
commandqueue[20578] = {{"move", "SW"}}
commandqueue[20584] = {{"move", "STOP"}}
--Presently at: (-29.95312500,25.53515625)
commandqueue[20583] = {{"put", {-33.3, 23.7}, "science-pack-1", 3, defines.inventory.lab_input}}
commandqueue[20611] = {{"take", {-28, 26}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[20612] = {{"take", {-28, 28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[20613] = {{"take", {-28, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[20614] = {{"take", {-30.5, 26.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[20615] = {{"take", {-30.5, 29.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[20616] = {{"take", {-30.5, 32.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[20617] = {{"take", {-30.5, 35.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[20618] = {{"put", {-28, 26}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[20619] = {{"put", {-28, 28}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[20620] = {{"put", {-28, 30}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[20621] = {{"put", {-28, 32}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[20622] = {{"put", {-28, 34}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[20623] = {{"put", {-28, 36}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[20624] = {{"take", {-28, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[20625] = {{"take", {-28, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[20626] = {{"take", {-28, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[20585] = {{"move", "S"}}
commandqueue[20689] = {{"move", "SE"}}
commandqueue[20691] = {{"move", "STOP"}}
--Presently at: (-29.74218750,41.18359375)
commandqueue[20682] = {{"take", {-30.5, 38.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[20683] = {{"take", {-30.5, 41.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[20684] = {{"put", {-28, 38}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[20685] = {{"put", {-28, 40}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[20686] = {{"put", {-28, 42}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[20687] = {{"put", {-28, 44}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[20688] = {{"take", {-28, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[20690] = {{"take", {-28, 40}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[20693] = {{"take", {-28, 46}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[20694] = {{"put", {-28, 46}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[20695] = {{"take", {-28, 44}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[20696] = {{"take", {-28, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[20692] = {{"move", "N"}}
commandqueue[20797] = {{"move", "NW"}}
commandqueue[20805] = {{"move", "STOP"}}
--Presently at: (-30.58593750,24.75390625)
commandqueue[20806] = {{"move", "W"}}
commandqueue[20843] = {{"move", "SW"}}
commandqueue[20845] = {{"move", "STOP"}}
--Presently at: (-36.28906250,24.96484375)
commandqueue[20846] = {{"move", "S"}}
commandqueue[20892] = {{"move", "SE"}}
commandqueue[20895] = {{"move", "STOP"}}
--Presently at: (-35.97265625,32.10937500)
commandqueue[20888] = {{"take", {-39, 33}, "coal", "all", defines.inventory.fuel}}
commandqueue[20889] = {{"take", {-41, 33}, "coal", "all", defines.inventory.fuel}}
commandqueue[20890] = {{"take", {-41, 31}, "coal", "all", defines.inventory.fuel}}
commandqueue[20891] = {{"take", {-39, 31}, "coal", "all", defines.inventory.fuel}}
commandqueue[20893] = {{"take", {-39, 29}, "coal", "all", defines.inventory.fuel}}
commandqueue[20894] = {{"take", {-41, 29}, "coal", "all", defines.inventory.fuel}}
commandqueue[20897] = {{"take", {-37, 36.3}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[20898] = {{"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[20899] = {{"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[20900] = {{"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[20901] = {{"take", {-35, 28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[20902] = {{"put", {-41, 31}, "coal", 1, defines.inventory.fuel}}
commandqueue[20896] = {{"move", "N"}}
commandqueue[20912] = {{"move", "NW"}}
commandqueue[20939] = {{"move", "STOP"}}
--Presently at: (-38.82031250,26.88671875)
commandqueue[20941] = {{"take", {-36.5, 24.5}, "coal", "all", defines.inventory.chest}}
commandqueue[20940] = {{"move", "W"}}
commandqueue[20982] = {{"move", "NW"}}
commandqueue[21012] = {{"move", "STOP"}}
--Presently at: (-48.21875000,23.72265625)
commandqueue[21013] = {{"move", "W"}}
commandqueue[21186] = {{"move", "NW"}}
commandqueue[21188] = {{"move", "STOP"}}
--Presently at: (-74.10937500,23.51171875)
commandqueue[21189] = {{"mine", {-76, 23.5}}}
commandqueue[21289] = {{"mine", nil}}
commandqueue[21290] = {{"move", "N"}}
commandqueue[21297] = {{"move", "NW"}}
commandqueue[21322] = {{"move", "STOP"}}
--Presently at: (-76.74609375,19.83593750)
commandqueue[21323] = {{"mine", {-77.8, 18.5}}}
commandqueue[21373] = {{"mine", nil}}
commandqueue[21374] = {{"move", "E"}}
commandqueue[21380] = {{"move", "NE"}}
commandqueue[21452] = {{"move", "STOP"}}
--Presently at: (-68.26171875,12.24218750)
commandqueue[21453] = {{"mine", {-66.9, 11}}}
commandqueue[21503] = {{"mine", nil}}
commandqueue[21504] = {{"move", "E"}}
commandqueue[21515] = {{"move", "SE"}}
commandqueue[21608] = {{"move", "STOP"}}
--Presently at: (-56.82031250,22.05078125)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-56.7539,22.1367)
commandqueue[21610] = {{"put", {-57, 25.5}, "coal", 40, defines.inventory.fuel}}
commandqueue[21651] = {{"build", "pipe", {-50.5, 25.6}, defines.direction.north}}
commandqueue[21652] = {{"build", "steam-engine", {-47.5, 25.5}, defines.direction.west}}
commandqueue[21609] = {{"move", "E"}}
commandqueue[21738] = {{"move", "SE"}}
commandqueue[21747] = {{"move", "STOP"}}
--Presently at: (-36.65625000,23.08593750)
commandqueue[21748] = {{"move", "S"}}
commandqueue[21754] = {{"move", "SW"}}
commandqueue[21756] = {{"move", "STOP"}}
--Presently at: (-36.86718750,24.18750000)
commandqueue[21758] = {{"take", {-36.5, 24.5}, "coal", "all", defines.inventory.chest}}
commandqueue[21757] = {{"move", "E"}}
commandqueue[21796] = {{"move", "SE"}}
commandqueue[21809] = {{"move", "STOP"}}
--Presently at: (-29.70703125,25.55859375)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-29.8438,25.2773)
commandqueue[21811] = {{"build", "small-electric-pole", {-29.5, 24.5}, defines.direction.north}}
commandqueue[21833] = {{"put", {-28, 26}, "coal", 3, defines.inventory.fuel}}
commandqueue[21834] = {{"put", {-28, 28}, "coal", 3, defines.inventory.fuel}}
commandqueue[21835] = {{"put", {-28, 30}, "coal", 3, defines.inventory.fuel}}
commandqueue[21836] = {{"take", {-28, 26}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[21837] = {{"take", {-28, 28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[21838] = {{"take", {-28, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[21839] = {{"take", {-30.5, 26.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[21840] = {{"take", {-30.5, 29.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[21841] = {{"take", {-30.5, 32.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[21842] = {{"take", {-30.5, 35.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[21843] = {{"put", {-28, 26}, "iron-ore", 6, defines.inventory.furnace_source}}
commandqueue[21844] = {{"put", {-28, 28}, "iron-ore", 6, defines.inventory.furnace_source}}
commandqueue[21845] = {{"put", {-28, 30}, "iron-ore", 6, defines.inventory.furnace_source}}
commandqueue[21846] = {{"put", {-28, 32}, "iron-ore", 6, defines.inventory.furnace_source}}
commandqueue[21847] = {{"put", {-28, 34}, "iron-ore", 6, defines.inventory.furnace_source}}
commandqueue[21848] = {{"put", {-28, 36}, "iron-ore", 6, defines.inventory.furnace_source}}
commandqueue[21849] = {{"take", {-28, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[21850] = {{"take", {-28, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[21851] = {{"take", {-28, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[21852] = {{"put", {-28, 32}, "coal", 3, defines.inventory.fuel}}
commandqueue[21853] = {{"put", {-28, 34}, "coal", 3, defines.inventory.fuel}}
commandqueue[21854] = {{"put", {-28, 36}, "coal", 3, defines.inventory.fuel}}
commandqueue[21810] = {{"move", "S"}}
commandqueue[21911] = {{"move", "SE"}}
commandqueue[21919] = {{"move", "STOP"}}
--Presently at: (-29.00000000,41.11328125)
commandqueue[21908] = {{"put", {-28, 38}, "coal", 3, defines.inventory.fuel}}
commandqueue[21909] = {{"put", {-28, 40}, "coal", 3, defines.inventory.fuel}}
commandqueue[21910] = {{"take", {-30.5, 38.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[21912] = {{"take", {-30.5, 41.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[21913] = {{"put", {-28, 38}, "iron-ore", 6, defines.inventory.furnace_source}}
commandqueue[21914] = {{"put", {-28, 40}, "iron-ore", 6, defines.inventory.furnace_source}}
commandqueue[21915] = {{"put", {-28, 42}, "iron-ore", 6, defines.inventory.furnace_source}}
commandqueue[21916] = {{"put", {-28, 44}, "iron-ore", 6, defines.inventory.furnace_source}}
commandqueue[21917] = {{"take", {-28, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[21918] = {{"take", {-28, 40}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[21921] = {{"take", {-28, 46}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[21922] = {{"put", {-28, 46}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[21923] = {{"take", {-28, 44}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[21924] = {{"take", {-28, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[21925] = {{"put", {-28, 42}, "coal", 3, defines.inventory.fuel}}
commandqueue[21926] = {{"put", {-28, 44}, "coal", 3, defines.inventory.fuel}}
commandqueue[21927] = {{"put", {-28, 46}, "coal", 3, defines.inventory.fuel}}
commandqueue[21920] = {{"move", "E"}}
commandqueue[21933] = {{"move", "NE"}}
commandqueue[21935] = {{"move", "STOP"}}
--Presently at: (-26.85937500,40.90234375)
commandqueue[21936] = {{"move", "E"}}
commandqueue[21970] = {{"move", "NE"}}
commandqueue[22036] = {{"move", "STOP"}}
--Presently at: (-14.85156250,33.94140625)
commandqueue[22035] = {{"build", "small-electric-pole", {-13.5, 28.5}, defines.direction.north}}
commandqueue[22038] = {{"build", "electric-mining-drill", {-11.5, 31.5}, defines.direction.east}}
commandqueue[22047] = {{"build", "wooden-chest", {-9.9, 31.1}, defines.direction.north}}
commandqueue[22037] = {{"move", "N"}}
commandqueue[22063] = {{"move", "NW"}}
commandqueue[22084] = {{"move", "STOP"}}
--Presently at: (-17.06640625,27.86718750)
commandqueue[22075] = {{"build", "small-electric-pole", {-17.8, 24.9}, defines.direction.north}}
commandqueue[22085] = {{"move", "N"}}
commandqueue[22098] = {{"move", "STOP"}}
--Presently at: (-17.06640625,25.93750000)
commandqueue[22094] = {{"put", {-14, 26}, "coal", 5, defines.inventory.fuel}}
commandqueue[22095] = {{"put", {-14, 24}, "coal", 5, defines.inventory.fuel}}
commandqueue[22096] = {{"put", {-16, 26}, "coal", 3, defines.inventory.fuel}}
commandqueue[22097] = {{"put", {-16, 24}, "coal", 3, defines.inventory.fuel}}
commandqueue[22100] = {{"put", {-14, 22}, "coal", 5, defines.inventory.fuel}}
commandqueue[22101] = {{"put", {-16, 22}, "coal", 3, defines.inventory.fuel}}
commandqueue[22102] = {{"take", {-16, 22}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[22103] = {{"take", {-16, 24}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[22104] = {{"take", {-16, 26}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[22099] = {{"move", "W"}}
commandqueue[22147] = {{"move", "NW"}}
commandqueue[22156] = {{"move", "STOP"}}
--Presently at: (-25.14062500,24.98828125)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-25.1523,24.8398)
commandqueue[22157] = {{"move", "W"}}
commandqueue[22231] = {{"move", "STOP"}}
--Presently at: (-36.13671875,24.83984375)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-35.8398,25.0547)
commandqueue[22230] = {{"put", {-33.3, 23.7}, "science-pack-1", 1, defines.inventory.lab_input}}
commandqueue[22232] = {{"move", "S"}}
commandqueue[22278] = {{"move", "SW"}}
commandqueue[22280] = {{"move", "STOP"}}
--Presently at: (-36.05078125,32.09375000)
commandqueue[22272] = {{"take", {-39, 33}, "coal", "all", defines.inventory.fuel}}
commandqueue[22273] = {{"take", {-41, 33}, "coal", "all", defines.inventory.fuel}}
commandqueue[22274] = {{"take", {-41, 31}, "coal", "all", defines.inventory.fuel}}
commandqueue[22275] = {{"take", {-39, 31}, "coal", "all", defines.inventory.fuel}}
commandqueue[22276] = {{"take", {-39, 29}, "coal", "all", defines.inventory.fuel}}
commandqueue[22277] = {{"take", {-41, 29}, "coal", "all", defines.inventory.fuel}}
commandqueue[22279] = {{"put", {-35.5, 36.5}, "coal", 4, defines.inventory.fuel}}
commandqueue[22282] = {{"take", {-37, 36.3}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22283] = {{"put", {-36.5, 36.5}, "coal", 4, defines.inventory.fuel}}
commandqueue[22284] = {{"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22285] = {{"put", {-37, 35}, "coal", 3, defines.inventory.fuel}}
commandqueue[22286] = {{"put", {-35, 35}, "coal", 4, defines.inventory.fuel}}
commandqueue[22287] = {{"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22288] = {{"put", {-37, 33}, "coal", 3, defines.inventory.fuel}}
commandqueue[22289] = {{"put", {-35, 33}, "coal", 4, defines.inventory.fuel}}
commandqueue[22290] = {{"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22291] = {{"put", {-37, 31}, "coal", 3, defines.inventory.fuel}}
commandqueue[22292] = {{"put", {-35, 31}, "coal", 4, defines.inventory.fuel}}
commandqueue[22293] = {{"take", {-35, 28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22294] = {{"put", {-35, 28}, "coal", 3, defines.inventory.fuel}}
commandqueue[22295] = {{"put", {-35, 26}, "coal", 4, defines.inventory.fuel}}
commandqueue[22281] = {{"move", "N"}}
commandqueue[22330] = {{"move", "STOP"}}
--Presently at: (-36.05078125,24.82031250)
commandqueue[22345] = {{"take", {-36.5, 24.5}, "coal", "all", defines.inventory.chest}}
commandqueue[22331] = {{"move", "E"}}
commandqueue[22369] = {{"move", "SE"}}
commandqueue[22376] = {{"move", "STOP"}}
--Presently at: (-29.67187500,25.55859375)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-29.7148,25.6328)
commandqueue[22403] = {{"take", {-28, 26}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22404] = {{"take", {-28, 28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22405] = {{"take", {-28, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22406] = {{"take", {-30.5, 26.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[22407] = {{"take", {-30.5, 29.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[22408] = {{"take", {-30.5, 32.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[22409] = {{"take", {-30.5, 35.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[22410] = {{"put", {-28, 26}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[22411] = {{"put", {-28, 28}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[22412] = {{"put", {-28, 30}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[22413] = {{"put", {-28, 32}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[22414] = {{"put", {-28, 34}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[22415] = {{"put", {-28, 36}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[22416] = {{"take", {-28, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22417] = {{"take", {-28, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22418] = {{"take", {-28, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22377] = {{"move", "S"}}
commandqueue[22476] = {{"move", "SE"}}
commandqueue[22483] = {{"move", "STOP"}}
--Presently at: (-28.97656250,41.06640625)
commandqueue[22474] = {{"take", {-30.5, 38.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[22475] = {{"take", {-30.5, 41.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[22477] = {{"put", {-28, 38}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[22478] = {{"put", {-28, 40}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[22479] = {{"put", {-28, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[22480] = {{"put", {-28, 44}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[22481] = {{"take", {-28, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22482] = {{"take", {-28, 40}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22485] = {{"take", {-28, 46}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22486] = {{"put", {-28, 46}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[22487] = {{"take", {-28, 44}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22488] = {{"take", {-28, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22484] = {{"move", "E"}}
commandqueue[22497] = {{"move", "STOP"}}
--Presently at: (-27.04687500,41.06640625)
commandqueue[22498] = {{"move", "E"}}
commandqueue[22559] = {{"move", "NE"}}
commandqueue[22626] = {{"move", "STOP"}}
--Presently at: (-10.92578125,34.00000000)
commandqueue[22624] = {{"build", "stone-furnace", {-7, 33}, defines.direction.north}}
commandqueue[22625] = {{"build", "stone-furnace", {-7, 31}, defines.direction.north}}
commandqueue[22628] = {{"take", {-9.5, 31.5}, "copper-ore", "all", defines.inventory.chest}}
commandqueue[22629] = {{"put", {-7, 31}, "copper-ore", 2, defines.inventory.furnace_source}}
commandqueue[22630] = {{"put", {-7, 31}, "coal", 3, defines.inventory.fuel}}
commandqueue[22631] = {{"put", {-7, 33}, "copper-ore", 2, defines.inventory.furnace_source}}
commandqueue[22632] = {{"put", {-7, 33}, "coal", 3, defines.inventory.fuel}}
commandqueue[22627] = {{"move", "W"}}
commandqueue[22662] = {{"move", "NW"}}
commandqueue[22748] = {{"move", "STOP"}}
--Presently at: (-25.19140625,24.92968750)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-25.332,24.7812)
commandqueue[22749] = {{"move", "W"}}
commandqueue[22775] = {{"move", "SW"}}
commandqueue[22782] = {{"move", "STOP"}}
--Presently at: (-29.92968750,25.51953125)
commandqueue[22793] = {{"put", {-33.3, 23.7}, "science-pack-1", 1, defines.inventory.lab_input}}
commandqueue[22794] = {{"craft", "iron-gear-wheel", 10}}
commandqueue[22795] = {{"craft", "electronic-circuit", 6}}
commandqueue[22796] = {{"craft", "copper-cable", 2}}
commandqueue[22809] = {{"take", {-28, 26}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22810] = {{"take", {-28, 28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22811] = {{"take", {-28, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22812] = {{"take", {-30.5, 26.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[22813] = {{"take", {-30.5, 29.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[22814] = {{"take", {-30.5, 32.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[22815] = {{"take", {-30.5, 35.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[22816] = {{"put", {-28, 26}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[22817] = {{"put", {-28, 28}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[22818] = {{"put", {-28, 30}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[22819] = {{"put", {-28, 32}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[22820] = {{"put", {-28, 34}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[22821] = {{"put", {-28, 36}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[22822] = {{"take", {-28, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22823] = {{"take", {-28, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22824] = {{"take", {-28, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22783] = {{"move", "S"}}
commandqueue[22887] = {{"move", "SE"}}
commandqueue[22889] = {{"move", "STOP"}}
--Presently at: (-29.71875000,41.16796875)
commandqueue[22880] = {{"take", {-30.5, 38.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[22881] = {{"take", {-30.5, 41.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[22882] = {{"put", {-28, 38}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[22883] = {{"put", {-28, 40}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[22884] = {{"put", {-28, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[22885] = {{"put", {-28, 44}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[22886] = {{"take", {-28, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22888] = {{"take", {-28, 40}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22891] = {{"take", {-28, 46}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22892] = {{"put", {-28, 46}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[22893] = {{"take", {-28, 44}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22894] = {{"take", {-28, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22890] = {{"move", "N"}}
commandqueue[22995] = {{"move", "NW"}}
commandqueue[23003] = {{"move", "STOP"}}
--Presently at: (-30.56250000,24.73828125)
commandqueue[23004] = {{"move", "W"}}
commandqueue[23041] = {{"move", "SW"}}
commandqueue[23043] = {{"move", "STOP"}}
--Presently at: (-36.26562500,24.94921875)
commandqueue[23044] = {{"move", "S"}}
commandqueue[23090] = {{"move", "SE"}}
commandqueue[23093] = {{"move", "STOP"}}
--Presently at: (-35.94921875,32.09375000)
commandqueue[23086] = {{"take", {-39, 33}, "coal", "all", defines.inventory.fuel}}
commandqueue[23087] = {{"take", {-41, 33}, "coal", "all", defines.inventory.fuel}}
commandqueue[23088] = {{"take", {-41, 31}, "coal", "all", defines.inventory.fuel}}
commandqueue[23089] = {{"take", {-39, 31}, "coal", "all", defines.inventory.fuel}}
commandqueue[23091] = {{"take", {-39, 29}, "coal", "all", defines.inventory.fuel}}
commandqueue[23092] = {{"take", {-41, 29}, "coal", "all", defines.inventory.fuel}}
commandqueue[23095] = {{"take", {-37, 36.3}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[23096] = {{"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[23097] = {{"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[23098] = {{"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[23099] = {{"take", {-35, 28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[23108] = {{"take", {-36.5, 24.5}, "coal", "all", defines.inventory.chest}}
commandqueue[23094] = {{"move", "N"}}
commandqueue[23142] = {{"move", "NW"}}
commandqueue[23144] = {{"move", "STOP"}}
--Presently at: (-36.16015625,24.75781250)
commandqueue[23147] = {{"put", {-33.3, 23.7}, "science-pack-1", 2, defines.inventory.lab_input}}
commandqueue[23148] = {{"craft", "iron-gear-wheel", 5}}
commandqueue[23149] = {{"craft", "copper-cable", 1}}
commandqueue[23145] = {{"move", "E"}}
commandqueue[23256] = {{"move", "SE"}}
commandqueue[23297] = {{"move", "STOP"}}
--Presently at: (-15.35937500,29.08203125)
commandqueue[23258] = {{"take", {-16, 22}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[23259] = {{"take", {-16, 24}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[23260] = {{"take", {-16, 26}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[23298] = {{"move", "E"}}
commandqueue[23321] = {{"move", "STOP"}}
--Presently at: (-11.94531250,29.08203125)
commandqueue[23319] = {{"take", {-7, 31}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[23320] = {{"take", {-7.8, 32.2}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[23323] = {{"take", {-9.5, 31.5}, "copper-ore", "all", defines.inventory.chest}}
commandqueue[23324] = {{"put", {-7.8, 32.2}, "copper-ore", 3, defines.inventory.furnace_source}}
commandqueue[23325] = {{"put", {-7, 31}, "copper-ore", 3, defines.inventory.furnace_source}}
commandqueue[23322] = {{"move", "W"}}
commandqueue[23383] = {{"move", "NW"}}
commandqueue[23422] = {{"move", "STOP"}}
--Presently at: (-25.11328125,24.96875000)
commandqueue[23423] = {{"move", "W"}}
commandqueue[23451] = {{"move", "SW"}}
commandqueue[23457] = {{"move", "STOP"}}
--Presently at: (-29.90234375,25.60156250)
commandqueue[23484] = {{"take", {-28, 26}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[23485] = {{"take", {-28, 28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[23486] = {{"take", {-28, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[23487] = {{"take", {-30.5, 26.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[23488] = {{"take", {-30.5, 29.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[23489] = {{"take", {-30.5, 32.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[23490] = {{"take", {-30.5, 35.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[23491] = {{"put", {-28, 26}, "iron-ore", 4, defines.inventory.furnace_source}}
commandqueue[23492] = {{"put", {-28, 28}, "iron-ore", 4, defines.inventory.furnace_source}}
commandqueue[23493] = {{"put", {-28, 30}, "iron-ore", 4, defines.inventory.furnace_source}}
commandqueue[23494] = {{"put", {-28, 32}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[23495] = {{"put", {-28, 34}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[23496] = {{"put", {-28, 36}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[23497] = {{"take", {-28, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[23498] = {{"take", {-28, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[23499] = {{"take", {-28, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[23458] = {{"move", "S"}}
commandqueue[23562] = {{"move", "STOP"}}
--Presently at: (-29.90234375,41.03906250)
commandqueue[23553] = {{"take", {-30.5, 38.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[23554] = {{"take", {-30.5, 41.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[23555] = {{"put", {-28, 38}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[23556] = {{"put", {-28, 40}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[23557] = {{"put", {-28, 42}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[23558] = {{"put", {-28, 44}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[23559] = {{"take", {-28, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[23561] = {{"take", {-28, 40}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[23564] = {{"take", {-28, 46}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[23565] = {{"put", {-28, 46}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[23566] = {{"take", {-28, 44}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[23567] = {{"take", {-28, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[23563] = {{"move", "S"}}
commandqueue[23598] = {{"move", "SE"}}
commandqueue[23607] = {{"move", "STOP"}}
--Presently at: (-28.95312500,47.18359375)
commandqueue[23608] = {{"move", "S"}}
commandqueue[23614] = {{"move", "SE"}}
commandqueue[23642] = {{"move", "STOP"}}
--Presently at: (-26.00000000,51.02734375)
commandqueue[23640] = {{"put", {-26, 53}, "coal", 5, defines.inventory.fuel}}
commandqueue[23644] = {{"put", {-24, 54}, "coal", 5, defines.inventory.fuel}}
commandqueue[23646] = {{"put", {-25, 56}, "coal", 5, defines.inventory.fuel}}
commandqueue[23648] = {{"put", {-27, 55}, "coal", 5, defines.inventory.fuel}}
commandqueue[23649] = {{"take", {-25, 54}, "stone", "all", defines.inventory.chest}}
commandqueue[23643] = {{"move", "N"}}
commandqueue[23657] = {{"move", "NE"}}
commandqueue[23800] = {{"move", "STOP"}}
--Presently at: (-10.91796875,33.86718750)
commandqueue[23802] = {{"take", {-9.5, 31.5}, "copper-ore", "all", defines.inventory.chest}}
commandqueue[23803] = {{"put", {-7, 31}, "copper-ore", 2, defines.inventory.furnace_source}}
commandqueue[23805] = {{"put", {-7, 33}, "copper-ore", 3, defines.inventory.furnace_source}}
commandqueue[23801] = {{"move", "W"}}
commandqueue[23837] = {{"move", "NW"}}
commandqueue[23922] = {{"move", "STOP"}}
--Presently at: (-25.22656250,24.90234375)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-25.2695,24.8789)
commandqueue[23923] = {{"move", "W"}}
commandqueue[23996] = {{"move", "STOP"}}
--Presently at: (-36.10546875,24.87890625)
commandqueue[23997] = {{"move", "S"}}
commandqueue[24045] = {{"move", "STOP"}}
--Presently at: (-36.10546875,32.00390625)
commandqueue[24038] = {{"take", {-39, 33}, "coal", "all", defines.inventory.fuel}}
commandqueue[24039] = {{"take", {-41, 33}, "coal", "all", defines.inventory.fuel}}
commandqueue[24040] = {{"take", {-41, 31}, "coal", "all", defines.inventory.fuel}}
commandqueue[24041] = {{"take", {-39, 31}, "coal", "all", defines.inventory.fuel}}
commandqueue[24043] = {{"take", {-39, 29}, "coal", "all", defines.inventory.fuel}}
commandqueue[24044] = {{"take", {-41, 29}, "coal", "all", defines.inventory.fuel}}
commandqueue[24047] = {{"take", {-37, 36.3}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[24048] = {{"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[24049] = {{"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[24050] = {{"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[24051] = {{"take", {-35, 28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[24060] = {{"take", {-36.5, 24.5}, "coal", "all", defines.inventory.chest}}
commandqueue[24046] = {{"move", "N"}}
commandqueue[24094] = {{"move", "STOP"}}
--Presently at: (-36.10546875,24.87890625)
commandqueue[24096] = {{"craft", "electronic-circuit", 1}}
commandqueue[24095] = {{"move", "E"}}
commandqueue[24134] = {{"move", "SE"}}
commandqueue[24140] = {{"move", "STOP"}}
--Presently at: (-29.68359375,25.51171875)
commandqueue[24167] = {{"take", {-28, 26}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[24168] = {{"take", {-28, 28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[24169] = {{"take", {-28, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[24170] = {{"take", {-30.5, 26.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[24171] = {{"take", {-30.5, 29.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[24172] = {{"take", {-30.5, 32.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[24173] = {{"take", {-30.5, 35.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[24174] = {{"put", {-28, 26}, "iron-ore", 4, defines.inventory.furnace_source}}
commandqueue[24175] = {{"put", {-28, 28}, "iron-ore", 4, defines.inventory.furnace_source}}
commandqueue[24176] = {{"put", {-28, 30}, "iron-ore", 4, defines.inventory.furnace_source}}
commandqueue[24177] = {{"put", {-28, 32}, "iron-ore", 4, defines.inventory.furnace_source}}
commandqueue[24178] = {{"put", {-28, 34}, "iron-ore", 4, defines.inventory.furnace_source}}
commandqueue[24179] = {{"put", {-28, 36}, "iron-ore", 4, defines.inventory.furnace_source}}
commandqueue[24180] = {{"take", {-28, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[24182] = {{"take", {-28, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[24185] = {{"take", {-28, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[24201] = {{"tech", "logistics"}}
commandqueue[24202] = {{"craft", "assembling-machine-1", 1}}
commandqueue[24203] = {{"craft", "assembling-machine-1", 1}}
commandqueue[24204] = {{"craft", "assembling-machine-1", 1}}
commandqueue[24141] = {{"move", "S"}}
commandqueue[24181] = {{"move", "SW"}}
commandqueue[24183] = {{"move", "STOP"}}
--Presently at: (-29.89453125,31.66015625)
commandqueue[24184] = {{"move", "N"}}
commandqueue[24223] = {{"move", "NE"}}
commandqueue[24232] = {{"move", "STOP"}}
--Presently at: (-28.94531250,24.92187500)
commandqueue[24234] = {{"build", "assembling-machine-1", {-25.5, 22.5}, defines.direction.north}}
commandqueue[24235] = {{"recipe", {-25.5,22.5}, "iron-gear-wheel"}}
commandqueue[24236] = {{"put", {-25.5, 22.5}, "iron-plate", 100, defines.inventory.assembling_machine_input}}
commandqueue[24233] = {{"move", "E"}}
commandqueue[24266] = {{"move", "STOP"}}
--Presently at: (-24.04687500,24.92187500)
commandqueue[24265] = {{"build", "assembling-machine-1", {-19.5, 22.5}, defines.direction.north}}
commandqueue[24268] = {{"recipe", {-19.5,22.5}, "copper-cable"}}
commandqueue[24269] = {{"put", {-19.5, 22.5}, "copper-plate", 30, defines.inventory.assembling_machine_input}}
commandqueue[24267] = {{"move", "E"}}
commandqueue[24298] = {{"move", "SE"}}
commandqueue[24337] = {{"move", "STOP"}}
--Presently at: (-15.33203125,29.03515625)
commandqueue[24299] = {{"take", {-16, 22}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[24300] = {{"take", {-16, 24}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[24301] = {{"take", {-16, 26}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[24338] = {{"move", "E"}}
commandqueue[24361] = {{"move", "STOP"}}
--Presently at: (-11.91796875,29.03515625)
commandqueue[24359] = {{"take", {-7, 31}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[24360] = {{"take", {-7.8, 32.2}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[24363] = {{"take", {-9.5, 31.5}, "copper-ore", "all", defines.inventory.chest}}
commandqueue[24364] = {{"put", {-7.8, 32.2}, "copper-ore", 2, defines.inventory.furnace_source}}
commandqueue[24365] = {{"put", {-7, 31}, "copper-ore", 3, defines.inventory.furnace_source}}
commandqueue[24362] = {{"move", "W"}}
commandqueue[24390] = {{"move", "NW"}}
commandqueue[24429] = {{"move", "STOP"}}
--Presently at: (-20.18750000,24.92187500)
commandqueue[24410] = {{"take", {-18.5, 23.8}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[24411] = {{"craft", "electronic-circuit", 1}}
commandqueue[24412] = {{"put", {-20, 23}, "copper-plate", 30, defines.inventory.assembling_machine_input}}
commandqueue[24421] = {{"build", "assembling-machine-1", {-22.5, 22.5}, defines.direction.north}}
commandqueue[24422] = {{"recipe", {-22.5,22.5}, "iron-gear-wheel"}}
commandqueue[24423] = {{"put", {-22.5, 22.5}, "iron-plate", 100, defines.inventory.assembling_machine_input}}
commandqueue[24440] = {{"take", {-24.5, 23.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[24441] = {{"craft", "science-pack-1", 1}}
commandqueue[24430] = {{"move", "W"}}
commandqueue[24491] = {{"move", "SW"}}
commandqueue[24497] = {{"move", "STOP"}}
--Presently at: (-29.87500000,25.55468750)
commandqueue[24524] = {{"take", {-28, 26}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[24525] = {{"take", {-28, 28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[24526] = {{"take", {-28, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[24527] = {{"take", {-30.5, 26.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[24528] = {{"take", {-30.5, 29.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[24529] = {{"take", {-30.5, 32.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[24530] = {{"take", {-30.5, 35.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[24531] = {{"put", {-28, 26}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[24532] = {{"put", {-28, 28}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[24533] = {{"put", {-28, 30}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[24534] = {{"put", {-28, 32}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[24535] = {{"put", {-28, 34}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[24536] = {{"put", {-28, 36}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[24537] = {{"take", {-28, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[24538] = {{"take", {-28, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[24539] = {{"take", {-28, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[24498] = {{"move", "S"}}
commandqueue[24602] = {{"move", "STOP"}}
--Presently at: (-29.87500000,40.99218750)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-29.8555,40.8594)
commandqueue[24593] = {{"take", {-30.5, 38.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[24594] = {{"take", {-30.5, 41.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[24595] = {{"put", {-28, 38}, "iron-ore", 4, defines.inventory.furnace_source}}
commandqueue[24596] = {{"put", {-28, 40}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[24597] = {{"put", {-28, 42}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[24598] = {{"put", {-28, 44}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[24599] = {{"take", {-28, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[24601] = {{"take", {-28, 40}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[24604] = {{"take", {-28, 46}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[24605] = {{"put", {-28, 46}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[24606] = {{"take", {-28, 44}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[24607] = {{"take", {-28, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[24603] = {{"move", "N"}}
commandqueue[24705] = {{"move", "NE"}}
commandqueue[24714] = {{"move", "STOP"}}
--Presently at: (-28.90625000,24.76953125)
commandqueue[24716] = {{"take", {-26.5, 23.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[24715] = {{"move", "E"}}
commandqueue[24734] = {{"move", "SE"}}
commandqueue[24737] = {{"move", "STOP"}}
--Presently at: (-25.76953125,25.08593750)
commandqueue[24739] = {{"take", {-20.7, 23.8}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[24740] = {{"craft", "electronic-circuit", 2}}
commandqueue[24738] = {{"move", "W"}}
commandqueue[24808] = {{"move", "STOP"}}
--Presently at: (-36.16015625,25.08593750)
commandqueue[24810] = {{"put", {-33.3, 23.7}, "science-pack-1", 1, defines.inventory.lab_input}}
commandqueue[24814] = {{"craft", "assembling-machine-1", 1}}
commandqueue[24809] = {{"move", "S"}}
commandqueue[24855] = {{"move", "SE"}}
commandqueue[24857] = {{"move", "STOP"}}
--Presently at: (-35.94921875,32.12500000)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-35.9062,31.7852)
commandqueue[24844] = {{"craft", "inserter", 1}}
commandqueue[24845] = {{"craft", "iron-gear-wheel", 1}}
commandqueue[24846] = {{"craft", "electronic-circuit", 1}}
commandqueue[24850] = {{"take", {-39, 33}, "coal", "all", defines.inventory.fuel}}
commandqueue[24851] = {{"take", {-41, 33}, "coal", "all", defines.inventory.fuel}}
commandqueue[24852] = {{"take", {-41, 31}, "coal", "all", defines.inventory.fuel}}
commandqueue[24853] = {{"take", {-39, 31}, "coal", "all", defines.inventory.fuel}}
commandqueue[24854] = {{"take", {-39, 29}, "coal", "all", defines.inventory.fuel}}
commandqueue[24856] = {{"take", {-41, 29}, "coal", "all", defines.inventory.fuel}}
commandqueue[24859] = {{"take", {-37, 36.3}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[24860] = {{"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[24861] = {{"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[24862] = {{"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[24863] = {{"take", {-35, 28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[24872] = {{"take", {-36.5, 24.5}, "coal", "all", defines.inventory.chest}}
commandqueue[24858] = {{"move", "N"}}
commandqueue[24904] = {{"move", "NW"}}
commandqueue[24906] = {{"move", "STOP"}}
--Presently at: (-36.11718750,24.74609375)
commandqueue[24932] = {{"build", "inserter", {-31.5, 22.5}, defines.direction.east}}
commandqueue[24933] = {{"build", "assembling-machine-1", {-29.5, 22.5}, defines.direction.north}}
commandqueue[24934] = {{"recipe", {-29.5,22.5}, "science-pack-1"}}
commandqueue[24935] = {{"put", {-29.5, 22.5}, "copper-plate", 10, defines.inventory.assembling_machine_input}}
commandqueue[24938] = {{"put", {-29.5, 22.5}, "iron-gear-wheel", 1, defines.inventory.assembling_machine_input}}
commandqueue[24907] = {{"move", "E"}}
commandqueue[24981] = {{"move", "SE"}}
commandqueue[24984] = {{"move", "STOP"}}
--Presently at: (-24.81640625,25.06250000)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-24.7539,25.1719)
commandqueue[24950] = {{"take", {-26.5, 23.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[24965] = {{"take", {-23.5, 23.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[24966] = {{"put", {-29.5, 22.5}, "iron-gear-wheel", 4, defines.inventory.assembling_machine_input}}
commandqueue[24983] = {{"take", {-20.5, 23.5}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[24987] = {{"craft", "electric-mining-drill", 1}}
commandqueue[24988] = {{"craft", "wooden-chest", 1}}
commandqueue[24989] = {{"craft", "stone-furnace", 2}}
commandqueue[24985] = {{"move", "W"}}
commandqueue[24986] = {{"move", "SW"}}
commandqueue[24994] = {{"move", "STOP"}}
--Presently at: (-25.74609375,26.01562500)
commandqueue[25000] = {{"take", {-30.5, 26.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[25021] = {{"take", {-28, 26}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[25022] = {{"take", {-28, 28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[25023] = {{"take", {-28, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[25024] = {{"put", {-28, 26}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[25025] = {{"take", {-30.5, 29.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[25026] = {{"put", {-28, 28}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[25027] = {{"put", {-28, 30}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[25028] = {{"put", {-28, 32}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[25029] = {{"take", {-30.5, 32.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[25030] = {{"put", {-28, 34}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[25031] = {{"put", {-28, 36}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[25034] = {{"take", {-28, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[25035] = {{"take", {-28, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[25036] = {{"take", {-28, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[25045] = {{"take", {-30.5, 35.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[24995] = {{"move", "S"}}
commandqueue[25103] = {{"move", "STOP"}}
--Presently at: (-25.74609375,42.04687500)
commandqueue[25094] = {{"take", {-30.5, 38.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[25095] = {{"take", {-30.5, 41.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[25096] = {{"put", {-28, 38}, "iron-ore", 4, defines.inventory.furnace_source}}
commandqueue[25097] = {{"put", {-28, 40}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[25098] = {{"put", {-28, 42}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[25099] = {{"put", {-28, 44}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[25100] = {{"take", {-28, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[25102] = {{"take", {-28, 40}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[25105] = {{"take", {-28, 46}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[25107] = {{"put", {-28, 46}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[25108] = {{"take", {-28, 44}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[25109] = {{"take", {-28, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[25104] = {{"move", "E"}}
commandqueue[25106] = {{"move", "NE"}}
commandqueue[25225] = {{"move", "STOP"}}
--Presently at: (-12.89843750,29.49609375)
commandqueue[25227] = {{"build", "electric-mining-drill", {-11.5, 25.5}, defines.direction.east}}
commandqueue[25226] = {{"move", "E"}}
commandqueue[25229] = {{"move", "NE"}}
commandqueue[25234] = {{"move", "STOP"}}
--Presently at: (-11.92578125,28.96875000)
commandqueue[25232] = {{"take", {-7, 31}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[25233] = {{"take", {-7.8, 32.2}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[25236] = {{"take", {-9.5, 31.5}, "copper-ore", "all", defines.inventory.chest}}
commandqueue[25237] = {{"put", {-7.8, 32.2}, "copper-ore", 4, defines.inventory.furnace_source}}
commandqueue[25238] = {{"put", {-7, 31}, "copper-ore", 3, defines.inventory.furnace_source}}
commandqueue[25235] = {{"move", "W"}}
commandqueue[25263] = {{"move", "NW"}}
commandqueue[25301] = {{"move", "STOP"}}
--Presently at: (-20.08984375,24.96093750)
commandqueue[25282] = {{"take", {-16, 22}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[25283] = {{"take", {-16, 24}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[25284] = {{"take", {-16, 26}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[25300] = {{"put", {-22.5, 22.5}, "iron-plate", 26, defines.inventory.assembling_machine_input}}
commandqueue[25303] = {{"put", {-24.2, 23.8}, "iron-plate", 32, defines.inventory.assembling_machine_input}}
commandqueue[25304] = {{"take", {-24.5, 23.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[25305] = {{"take", {-21.5, 23.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[25327] = {{"take", {-20, 23}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[25328] = {{"craft", "electronic-circuit", 3}}
commandqueue[25302] = {{"move", "E"}}
commandqueue[25306] = {{"move", "SE"}}
commandqueue[25331] = {{"move", "STOP"}}
--Presently at: (-16.85937500,27.59765625)
commandqueue[25342] = {{"build", "wooden-chest", {-9.9, 25.9}, defines.direction.north}}
commandqueue[25332] = {{"move", "E"}}
commandqueue[25371] = {{"move", "STOP"}}
--Presently at: (-11.07031250,27.59765625)
commandqueue[25369] = {{"build", "stone-furnace", {-7, 27}, defines.direction.north}}
commandqueue[25370] = {{"build", "stone-furnace", {-7, 29}, defines.direction.north}}
commandqueue[25373] = {{"put", {-7, 27}, "coal", 5, defines.inventory.fuel}}
commandqueue[25374] = {{"put", {-7, 29}, "coal", 5, defines.inventory.fuel}}
commandqueue[25375] = {{"take", {-9.5, 31.5}, "copper-ore", "all", defines.inventory.chest}}
commandqueue[25376] = {{"take", {-9.5, 25.5}, "copper-ore", "all", defines.inventory.chest}}
commandqueue[25377] = {{"put", {-7, 29}, "copper-ore", 1, defines.inventory.furnace_source}}
commandqueue[25378] = {{"put", {-7, 27}, "copper-ore", 1, defines.inventory.furnace_source}}
commandqueue[25372] = {{"move", "W"}}
commandqueue[25415] = {{"move", "NW"}}
commandqueue[25440] = {{"move", "STOP"}}
--Presently at: (-20.08984375,24.96093750)
commandqueue[25421] = {{"craft", "assembling-machine-1", 1}}
commandqueue[25422] = {{"take", {-20, 23}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[25423] = {{"craft", "electronic-circuit", 3}}
commandqueue[25424] = {{"craft", "stone-furnace", 2}}
commandqueue[25425] = {{"craft", "wooden-chest", 1}}
commandqueue[25452] = {{"build", "assembling-machine-1", {-23.5, 27.5}, defines.direction.north}}
commandqueue[25453] = {{"recipe", {-23.5,27.5}, "copper-cable"}}
commandqueue[25454] = {{"put", {-23.5, 27.5}, "copper-plate", 30, defines.inventory.assembling_machine_input}}
commandqueue[25491] = {{"take", {-22.5, 23.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[25492] = {{"take", {-25.5, 23.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[25441] = {{"move", "W"}}
commandqueue[25549] = {{"move", "STOP"}}
--Presently at: (-36.12109375,24.96093750)
commandqueue[25550] = {{"move", "S"}}
commandqueue[25597] = {{"move", "SE"}}
commandqueue[25599] = {{"move", "STOP"}}
--Presently at: (-35.91015625,32.14843750)
commandqueue[25592] = {{"take", {-39, 33}, "coal", "all", defines.inventory.fuel}}
commandqueue[25593] = {{"take", {-41, 33}, "coal", "all", defines.inventory.fuel}}
commandqueue[25594] = {{"take", {-41, 31}, "coal", "all", defines.inventory.fuel}}
commandqueue[25595] = {{"take", {-39, 31}, "coal", "all", defines.inventory.fuel}}
commandqueue[25596] = {{"take", {-39, 29}, "coal", "all", defines.inventory.fuel}}
commandqueue[25598] = {{"take", {-41, 29}, "coal", "all", defines.inventory.fuel}}
commandqueue[25601] = {{"take", {-37, 36.3}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[25602] = {{"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[25603] = {{"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[25604] = {{"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[25605] = {{"take", {-35, 28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[25606] = {{"craft", "electric-mining-drill", 1}}
commandqueue[25614] = {{"take", {-36.5, 24.5}, "coal", "all", defines.inventory.chest}}
commandqueue[25600] = {{"move", "N"}}
commandqueue[25648] = {{"move", "NW"}}
commandqueue[25650] = {{"move", "STOP"}}
--Presently at: (-36.12109375,24.81250000)
commandqueue[25651] = {{"move", "E"}}
commandqueue[25759] = {{"move", "SE"}}
commandqueue[25761] = {{"move", "STOP"}}
--Presently at: (-19.87890625,25.02343750)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-20.3203,25)
commandqueue[25756] = {{"take", {-22.5, 23.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[25757] = {{"take", {-25.5, 23.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[25758] = {{"take", {-20, 23}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[25760] = {{"take", {-23, 27}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[25763] = {{"craft", "assembling-machine-1", 1}}
commandqueue[25764] = {{"craft", "electric-mining-drill", 1}}
commandqueue[25765] = {{"craft", "wooden-chest", 1}}
commandqueue[25762] = {{"move", "E"}}
commandqueue[25768] = {{"move", "SE"}}
commandqueue[25792] = {{"move", "STOP"}}
--Presently at: (-16.89843750,27.53125000)
commandqueue[25793] = {{"move", "E"}}
commandqueue[25840] = {{"move", "STOP"}}
--Presently at: (-9.92187500,27.53125000)
commandqueue[25830] = {{"build", "small-electric-pole", {-8.5, 24.5}, defines.direction.north}}
commandqueue[25831] = {{"build", "electric-mining-drill", {-11.5, 22.5}, defines.direction.east}}
commandqueue[25837] = {{"take", {-9.5, 31.5}, "copper-ore", "all", defines.inventory.chest}}
commandqueue[25838] = {{"take", {-9.5, 25.5}, "copper-ore", "all", defines.inventory.chest}}
commandqueue[25839] = {{"build", "wooden-chest", {-9.5, 22.5}, defines.direction.north}}
commandqueue[25842] = {{"build", "stone-furnace", {-7, 23}, defines.direction.north}}
commandqueue[25843] = {{"put", {-7, 23}, "copper-ore", 2, defines.inventory.furnace_source}}
commandqueue[25844] = {{"put", {-7, 23}, "coal", 5, defines.inventory.fuel}}
commandqueue[25845] = {{"build", "stone-furnace", {-7, 25}, defines.direction.north}}
commandqueue[25846] = {{"put", {-7, 25}, "copper-ore", 2, defines.inventory.furnace_source}}
commandqueue[25847] = {{"put", {-7, 25}, "coal", 5, defines.inventory.fuel}}
commandqueue[25848] = {{"take", {-7.6, 32.4}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[25850] = {{"take", {-7, 31}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[25851] = {{"put", {-7, 27}, "copper-ore", 2, defines.inventory.furnace_source}}
commandqueue[25852] = {{"put", {-7, 29}, "copper-ore", 2, defines.inventory.furnace_source}}
commandqueue[25853] = {{"take", {-7, 29}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[25854] = {{"take", {-7, 27}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[25841] = {{"move", "W"}}
commandqueue[25849] = {{"move", "SW"}}
commandqueue[25868] = {{"move", "STOP"}}
--Presently at: (-13.11328125,29.53515625)
commandqueue[25869] = {{"move", "W"}}
commandqueue[25870] = {{"move", "SW"}}
commandqueue[25989] = {{"move", "STOP"}}
--Presently at: (-25.81250000,42.08593750)
commandqueue[25985] = {{"take", {-28, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[25986] = {{"take", {-28, 40}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[25987] = {{"take", {-28, 44}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[25988] = {{"take", {-28, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[25991] = {{"take", {-30.5, 41.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[25992] = {{"put", {-28, 46}, "iron-ore", 4, defines.inventory.furnace_source}}
commandqueue[25993] = {{"take", {-28, 46}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[25994] = {{"put", {-28, 44}, "iron-ore", 4, defines.inventory.furnace_source}}
commandqueue[25995] = {{"put", {-28, 40}, "coal", 1, defines.inventory.fuel}}
commandqueue[25996] = {{"put", {-28, 42}, "coal", 1, defines.inventory.fuel}}
commandqueue[26010] = {{"take", {-30.5, 38.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[26011] = {{"put", {-28, 42}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[26020] = {{"take", {-30.5, 35.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[26021] = {{"put", {-28, 40}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[26022] = {{"put", {-28, 38}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[26026] = {{"take", {-28, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[26027] = {{"take", {-28, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[26028] = {{"take", {-28, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[26035] = {{"take", {-30.5, 32.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[26036] = {{"put", {-28, 36}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[26037] = {{"put", {-28, 34}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[26065] = {{"take", {-30.5, 29.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[26066] = {{"put", {-28, 32}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[26067] = {{"take", {-28, 26}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[26068] = {{"take", {-28, 28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[26069] = {{"take", {-28, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[26080] = {{"take", {-30.5, 26.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[26081] = {{"put", {-28, 26}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[26082] = {{"put", {-28, 28}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[26083] = {{"put", {-28, 30}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[25990] = {{"move", "N"}}
commandqueue[26095] = {{"move", "NE"}}
commandqueue[26103] = {{"move", "STOP"}}
--Presently at: (-24.96875000,25.65625000)
commandqueue[26089] = {{"build", "assembling-machine-1", {-20.5, 27.5}, defines.direction.north}}
commandqueue[26090] = {{"recipe", {-20.5,27.5}, "copper-cable"}}
commandqueue[26091] = {{"put", {-20.5, 27.5}, "copper-plate", 27, defines.inventory.assembling_machine_input}}
commandqueue[26101] = {{"take", {-22.5, 23.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[26102] = {{"take", {-25.5, 23.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[26105] = {{"take", {-20, 23}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[26106] = {{"take", {-23, 27}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[26107] = {{"craft", "small-electric-pole", 1}}
commandqueue[26118] = {{"craft", "assembling-machine-1", 1}}
commandqueue[26119] = {{"craft", "stone-furnace", 1}}
commandqueue[26120] = {{"craft", "wooden-chest", 1}}
commandqueue[26121] = {{"craft", "electric-mining-drill", 1}}
commandqueue[26104] = {{"move", "E"}}
commandqueue[26144] = {{"move", "STOP"}}
--Presently at: (-19.03125000,25.65625000)
commandqueue[26145] = {{"move", "E"}}
commandqueue[26147] = {{"move", "SE"}}
commandqueue[26165] = {{"move", "STOP"}}
--Presently at: (-16.83593750,27.55468750)
commandqueue[26167] = {{"take", {-15.5, 22.5}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[26168] = {{"take", {-16, 24}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[26169] = {{"take", {-16, 26}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[26166] = {{"move", "E"}}
commandqueue[26212] = {{"move", "NE"}}
commandqueue[26222] = {{"move", "STOP"}}
--Presently at: (-8.95312500,26.50000000)
commandqueue[26209] = {{"take", {-9.5, 31.5}, "copper-ore", "all", defines.inventory.chest}}
commandqueue[26210] = {{"put", {-7.5, 32.5}, "copper-ore", 2, defines.inventory.furnace_source}}
commandqueue[26211] = {{"take", {-7.5, 32.5}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[26213] = {{"take", {-9.5, 25.5}, "copper-ore", "all", defines.inventory.chest}}
commandqueue[26214] = {{"take", {-9.5, 22.5}, "copper-ore", "all", defines.inventory.chest}}
commandqueue[26215] = {{"build", "electric-mining-drill", {-11.5, 28.5}, defines.direction.east}}
commandqueue[26216] = {{"put", {-7, 31}, "copper-ore", 2, defines.inventory.furnace_source}}
commandqueue[26217] = {{"put", {-7, 29}, "copper-ore", 2, defines.inventory.furnace_source}}
commandqueue[26218] = {{"put", {-7, 27}, "copper-ore", 2, defines.inventory.furnace_source}}
commandqueue[26219] = {{"put", {-7, 25}, "copper-ore", 1, defines.inventory.furnace_source}}
commandqueue[26220] = {{"put", {-7, 23}, "copper-ore", 1, defines.inventory.furnace_source}}
commandqueue[26221] = {{"take", {-7, 31}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[26224] = {{"take", {-7, 29}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[26225] = {{"take", {-7, 27}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[26226] = {{"take", {-7, 25}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[26227] = {{"take", {-7, 23}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[26252] = {{"build", "wooden-chest", {-9.1, 28.1}, defines.direction.north}}
commandqueue[26223] = {{"move", "N"}}
commandqueue[26257] = {{"move", "NW"}}
commandqueue[26267] = {{"move", "STOP"}}
--Presently at: (-10.00781250,20.39843750)
commandqueue[26268] = {{"move", "W"}}
commandqueue[26313] = {{"move", "SW"}}
commandqueue[26319] = {{"move", "STOP"}}
--Presently at: (-17.32031250,21.03125000)
commandqueue[26321] = {{"build", "small-electric-pole", {-13.5, 19.5}, defines.direction.north}}
commandqueue[26318] = {{"take", {-19.5, 22.5}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[26320] = {{"move", "S"}}
commandqueue[26349] = {{"move", "SW"}}
commandqueue[26351] = {{"move", "STOP"}}
--Presently at: (-17.53125000,25.54687500)
commandqueue[26352] = {{"move", "W"}}
commandqueue[26369] = {{"move", "STOP"}}
--Presently at: (-20.05468750,25.54687500)
commandqueue[26364] = {{"take", {-20.5, 27.5}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[26365] = {{"take", {-22.5, 22.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[26366] = {{"take", {-22.5, 26.5}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[26368] = {{"take", {-24.5, 23.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[26370] = {{"move", "E"}}
commandqueue[26381] = {{"move", "SE"}}
commandqueue[26395] = {{"move", "STOP"}}
--Presently at: (-16.94531250,27.02343750)
commandqueue[26396] = {{"move", "S"}}
commandqueue[26414] = {{"move", "SE"}}
commandqueue[26452] = {{"move", "STOP"}}
--Presently at: (-12.93750000,33.70312500)
commandqueue[26440] = {{"build", "assembling-machine-1", {-15.5, 28.5}, defines.direction.north}}
commandqueue[26441] = {{"recipe", {-15.5,28.5}, "wood"}}
commandqueue[26442] = {{"put", {-15.5, 28.5}, "raw-wood", 31, defines.inventory.assembling_machine_input}}
commandqueue[26453] = {{"move", "E"}}
commandqueue[26472] = {{"move", "NE"}}
commandqueue[26489] = {{"move", "STOP"}}
--Presently at: (-8.32421875,31.91015625)
commandqueue[26491] = {{"take", {-7, 33}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[26492] = {{"take", {-7, 31}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[26493] = {{"take", {-7, 29}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[26495] = {{"take", {-9.5, 31.5}, "copper-ore", "all", defines.inventory.chest}}
commandqueue[26496] = {{"take", {-9.5, 28.5}, "copper-ore", "all", defines.inventory.chest}}
commandqueue[26497] = {{"take", {-9.5, 25.5}, "copper-ore", "all", defines.inventory.chest}}
commandqueue[26498] = {{"put", {-7, 33}, "copper-ore", 1, defines.inventory.furnace_source}}
commandqueue[26499] = {{"put", {-7, 31}, "copper-ore", 1, defines.inventory.furnace_source}}
commandqueue[26500] = {{"put", {-7, 29}, "copper-ore", 1, defines.inventory.furnace_source}}
commandqueue[26501] = {{"put", {-7, 27}, "copper-ore", 1, defines.inventory.furnace_source}}
commandqueue[26502] = {{"put", {-7, 33}, "coal", 4, defines.inventory.fuel}}
commandqueue[26503] = {{"put", {-7, 31}, "coal", 4, defines.inventory.fuel}}
commandqueue[26530] = {{"take", {-9.5, 22.5}, "copper-ore", "all", defines.inventory.chest}}
commandqueue[26531] = {{"put", {-7, 25}, "copper-ore", 2, defines.inventory.furnace_source}}
commandqueue[26532] = {{"put", {-7, 23}, "copper-ore", 2, defines.inventory.furnace_source}}
commandqueue[26533] = {{"build", "stone-furnace", {-7, 21}, defines.direction.north}}
commandqueue[26534] = {{"put", {-7, 21}, "copper-ore", 2, defines.inventory.furnace_source}}
commandqueue[26535] = {{"put", {-7, 21}, "coal", 4, defines.inventory.fuel}}
commandqueue[26490] = {{"move", "N"}}
commandqueue[26556] = {{"move", "NW"}}
commandqueue[26572] = {{"move", "STOP"}}
--Presently at: (-10.01171875,20.42578125)
commandqueue[26573] = {{"move", "W"}}
commandqueue[26618] = {{"move", "SW"}}
commandqueue[26624] = {{"move", "STOP"}}
--Presently at: (-17.32421875,21.05859375)
commandqueue[26625] = {{"move", "S"}}
commandqueue[26654] = {{"move", "SW"}}
commandqueue[26656] = {{"move", "STOP"}}
--Presently at: (-17.53515625,25.57421875)
commandqueue[26658] = {{"take", {-15.5, 28.5}, "wood", "all", defines.inventory.assembling_machine_output}}
commandqueue[26659] = {{"craft", "wooden-chest", 1}}
commandqueue[26657] = {{"move", "W"}}
commandqueue[26674] = {{"move", "STOP"}}
--Presently at: (-20.05859375,25.57421875)
commandqueue[26669] = {{"take", {-20.5, 27.5}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[26670] = {{"take", {-22.5, 22.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[26671] = {{"take", {-22.5, 26.5}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[26673] = {{"take", {-24.5, 23.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[26676] = {{"craft", "boiler", 1}}
commandqueue[26677] = {{"craft", "steam-engine", 1}}
commandqueue[26678] = {{"craft", "electric-mining-drill", 1}}
commandqueue[26679] = {{"craft", "small-electric-pole", 1}}
commandqueue[26680] = {{"craft", "burner-inserter", 3}}
commandqueue[26681] = {{"craft", "pipe", 1}}
commandqueue[26682] = {{"craft", "assembling-machine-1", 1}}
commandqueue[26675] = {{"move", "E"}}
commandqueue[26686] = {{"move", "SE"}}
commandqueue[26700] = {{"move", "STOP"}}
--Presently at: (-16.94921875,27.05078125)
commandqueue[26701] = {{"move", "S"}}
commandqueue[26718] = {{"move", "SE"}}
commandqueue[26756] = {{"move", "STOP"}}
--Presently at: (-12.94140625,33.58203125)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-13.3203,33.4336)
commandqueue[26757] = {{"move", "E"}}
commandqueue[26780] = {{"move", "NE"}}
commandqueue[26794] = {{"move", "STOP"}}
--Presently at: (-8.42968750,31.95703125)
commandqueue[26796] = {{"take", {-7, 33}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[26797] = {{"take", {-7, 31}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[26798] = {{"take", {-7, 29}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[26800] = {{"take", {-9.5, 31.5}, "copper-ore", "all", defines.inventory.chest}}
commandqueue[26801] = {{"take", {-9.5, 28.5}, "copper-ore", "all", defines.inventory.chest}}
commandqueue[26802] = {{"take", {-9.5, 25.5}, "copper-ore", "all", defines.inventory.chest}}
commandqueue[26803] = {{"put", {-7, 33}, "copper-ore", 1, defines.inventory.furnace_source}}
commandqueue[26804] = {{"put", {-7, 31}, "copper-ore", 1, defines.inventory.furnace_source}}
commandqueue[26805] = {{"put", {-7, 29}, "copper-ore", 1, defines.inventory.furnace_source}}
commandqueue[26806] = {{"put", {-7, 27}, "copper-ore", 1, defines.inventory.furnace_source}}
commandqueue[26807] = {{"put", {-7, 33}, "coal", 4, defines.inventory.fuel}}
commandqueue[26808] = {{"put", {-7, 31}, "coal", 4, defines.inventory.fuel}}
commandqueue[26835] = {{"take", {-9.5, 22.5}, "copper-ore", "all", defines.inventory.chest}}
commandqueue[26836] = {{"put", {-7, 25}, "copper-ore", 2, defines.inventory.furnace_source}}
commandqueue[26837] = {{"put", {-7, 23}, "copper-ore", 2, defines.inventory.furnace_source}}
commandqueue[26839] = {{"put", {-7, 21}, "copper-ore", 2, defines.inventory.furnace_source}}
commandqueue[26850] = {{"build", "electric-mining-drill", {-11.5, 19.5}, defines.direction.east}}
commandqueue[26795] = {{"move", "N"}}
commandqueue[26882] = {{"move", "NW"}}
commandqueue[26897] = {{"move", "STOP"}}
--Presently at: (-10.01171875,17.46093750)
commandqueue[26896] = {{"build", "wooden-chest", {-9.5, 19.5}, defines.direction.north}}
commandqueue[26898] = {{"move", "W"}}
commandqueue[26922] = {{"move", "SW"}}
commandqueue[26956] = {{"move", "STOP"}}
--Presently at: (-17.16015625,21.04687500)
commandqueue[26953] = {{"take", {-16, 22}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[26954] = {{"take", {-16, 24}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[26955] = {{"take", {-16, 26}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[26957] = {{"move", "S"}}
commandqueue[26982] = {{"move", "SW"}}
commandqueue[26986] = {{"move", "STOP"}}
--Presently at: (-17.58203125,25.17968750)
commandqueue[26988] = {{"take", {-15.5, 28.5}, "raw-wood", "all", defines.inventory.assembling_machine_input}}
commandqueue[26989] = {{"take", {-15.5, 28.5}, "wood", "all", defines.inventory.assembling_machine_output}}
commandqueue[26990] = {{"recipe", {-15.5,28.5}, "electronic-circuit"}}
commandqueue[26991] = {{"take", {-19.5, 22.5}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[26992] = {{"take", {-20.5, 27.5}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[26993] = {{"put", {-15.5, 28.5}, "copper-cable", 60, defines.inventory.assembling_machine_input}}
commandqueue[26994] = {{"put", {-15.5, 28.5}, "iron-plate", 20, defines.inventory.assembling_machine_input}}
commandqueue[26995] = {{"put", {-19.5, 22.5}, "copper-plate", 10, defines.inventory.assembling_machine_input}}
commandqueue[26996] = {{"put", {-20.5, 27.5}, "copper-plate", 12, defines.inventory.assembling_machine_input}}
commandqueue[27002] = {{"take", {-23.5, 27.5}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[27003] = {{"put", {-23.5, 27.5}, "copper-plate", 12, defines.inventory.assembling_machine_input}}
commandqueue[27004] = {{"take", {-22.5, 22.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[27005] = {{"take", {-24.5, 23.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[26987] = {{"move", "W"}}
commandqueue[27064] = {{"move", "SW"}}
commandqueue[27072] = {{"move", "STOP"}}
--Presently at: (-29.85546875,26.02343750)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-29.6016,25.75)
commandqueue[27070] = {{"put", {-29.5, 22.5}, "copper-plate", 3, defines.inventory.assembling_machine_input}}
commandqueue[27071] = {{"put", {-29.5, 22.5}, "iron-gear-wheel", 9, defines.inventory.assembling_machine_input}}
commandqueue[27099] = {{"take", {-28, 26}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[27100] = {{"take", {-28, 28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[27101] = {{"take", {-28, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[27102] = {{"take", {-30.5, 26.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[27103] = {{"take", {-30.5, 29.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[27104] = {{"take", {-30.5, 32.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[27105] = {{"take", {-30.5, 35.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[27106] = {{"put", {-28, 26}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[27107] = {{"put", {-28, 28}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[27108] = {{"put", {-28, 30}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[27109] = {{"put", {-28, 32}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[27110] = {{"put", {-28, 34}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[27111] = {{"put", {-28, 36}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[27112] = {{"take", {-28, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[27113] = {{"take", {-28, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[27114] = {{"take", {-28, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[27073] = {{"move", "S"}}
commandqueue[27175] = {{"move", "SW"}}
commandqueue[27177] = {{"move", "STOP"}}
--Presently at: (-29.81250000,41.10156250)
commandqueue[27168] = {{"take", {-30.5, 38.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[27169] = {{"take", {-30.5, 41.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[27170] = {{"put", {-28, 38}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[27171] = {{"put", {-28, 40}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[27172] = {{"put", {-28, 42}, "iron-ore", 6, defines.inventory.furnace_source}}
commandqueue[27173] = {{"put", {-28, 44}, "iron-ore", 6, defines.inventory.furnace_source}}
commandqueue[27174] = {{"take", {-28, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[27176] = {{"take", {-28, 40}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[27179] = {{"take", {-28, 46}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[27180] = {{"put", {-28, 46}, "iron-ore", 6, defines.inventory.furnace_source}}
commandqueue[27181] = {{"take", {-28, 44}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[27182] = {{"take", {-28, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[27178] = {{"move", "N"}}
commandqueue[27281] = {{"move", "NW"}}
commandqueue[27293] = {{"move", "STOP"}}
--Presently at: (-31.07812500,24.54687500)
commandqueue[27294] = {{"move", "W"}}
commandqueue[27325] = {{"move", "SW"}}
commandqueue[27330] = {{"move", "STOP"}}
--Presently at: (-36.20703125,25.07421875)
commandqueue[27332] = {{"take", {-36.5, 24.5}, "coal", "all", defines.inventory.chest}}
commandqueue[27331] = {{"move", "S"}}
commandqueue[27377] = {{"move", "SE"}}
commandqueue[27379] = {{"move", "STOP"}}
--Presently at: (-35.99609375,32.11328125)
commandqueue[27372] = {{"take", {-39, 33}, "coal", "all", defines.inventory.fuel}}
commandqueue[27373] = {{"take", {-41, 33}, "coal", "all", defines.inventory.fuel}}
commandqueue[27374] = {{"take", {-41, 31}, "coal", "all", defines.inventory.fuel}}
commandqueue[27375] = {{"take", {-39, 31}, "coal", "all", defines.inventory.fuel}}
commandqueue[27376] = {{"take", {-39, 29}, "coal", "all", defines.inventory.fuel}}
commandqueue[27378] = {{"take", {-41, 29}, "coal", "all", defines.inventory.fuel}}
commandqueue[27381] = {{"take", {-37, 36.3}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[27382] = {{"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[27383] = {{"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[27384] = {{"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[27385] = {{"take", {-35, 28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[27380] = {{"move", "N"}}
commandqueue[27395] = {{"move", "NW"}}
commandqueue[27454] = {{"move", "STOP"}}
--Presently at: (-42.21875000,23.66406250)
commandqueue[27455] = {{"move", "W"}}
commandqueue[27554] = {{"move", "SW"}}
commandqueue[27556] = {{"move", "STOP"}}
--Presently at: (-57.12500000,23.87500000)
commandqueue[27547] = {{"build", "small-electric-pole", {-56.5, 27.5}, defines.direction.north}}
commandqueue[27548] = {{"build", "small-electric-pole", {-58.5, 22.5}, defines.direction.north}}
commandqueue[27549] = {{"build", "burner-inserter", {-58.5, 23.5}, defines.direction.west}}
commandqueue[27550] = {{"build", "burner-inserter", {-58.5, 25.5}, defines.direction.west}}
commandqueue[27551] = {{"build", "wooden-chest", {-59.5, 25.5}, defines.direction.north}}
commandqueue[27552] = {{"build", "burner-inserter", {-59.5, 24.5}, defines.direction.south}}
commandqueue[27555] = {{"build", "electric-mining-drill", {-61.5, 25.5}, defines.direction.east}}
commandqueue[27567] = {{"build", "boiler", {-57, 22}, defines.direction.east}}
commandqueue[27568] = {{"put", {-57, 22}, "coal", 10, defines.inventory.fuel}}
commandqueue[27602] = {{"build", "steam-engine", {-53.7, 22.2}, defines.direction.east}}
commandqueue[27603] = {{"build", "pipe", {-50.5, 22.5}, defines.direction.north}}
commandqueue[27604] = {{"craft", "stone-furnace", 4}}
commandqueue[27605] = {{"craft", "burner-inserter", 11}}
commandqueue[27557] = {{"move", "E"}}
commandqueue[27666] = {{"move", "NE"}}
commandqueue[27677] = {{"move", "STOP"}}
--Presently at: (-39.78515625,22.71484375)
commandqueue[27678] = {{"move", "E"}}
commandqueue[27701] = {{"move", "SE"}}
commandqueue[27723] = {{"move", "STOP"}}
--Presently at: (-34.05078125,25.03515625)
commandqueue[27724] = {{"move", "E"}}
commandqueue[27826] = {{"move", "SE"}}
commandqueue[27845] = {{"move", "STOP"}}
--Presently at: (-16.90625000,27.03906250)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-17.2383,26.8984)
commandqueue[27802] = {{"take", {-22.5, 22.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[27803] = {{"take", {-25.5, 22.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[27804] = {{"put", {-22.5, 22.5}, "iron-plate", 40, defines.inventory.assembling_machine_input}}
commandqueue[27805] = {{"put", {-25.5, 22.5}, "iron-plate", 40, defines.inventory.assembling_machine_input}}
commandqueue[27806] = {{"take", {-23.5, 27.5}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[27807] = {{"take", {-23.5, 27.5}, "copper-plate", "all", defines.inventory.assembling_machine_input}}
commandqueue[27808] = {{"recipe", {-23.5,27.5}, "wood"}}
commandqueue[27809] = {{"put", {-23.5, 27.5}, "raw-wood", 23, defines.inventory.assembling_machine_input}}
commandqueue[27810] = {{"build", "assembling-machine-1", {-23.5, 30.2}, defines.direction.north}}
commandqueue[27811] = {{"recipe", {-23.5,30.2}, "stone-furnace"}}
commandqueue[27812] = {{"put", {-23.5, 30.2}, "stone", 50, defines.inventory.assembling_machine_input}}
commandqueue[27813] = {{"take", {-19.5, 22.5}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[27814] = {{"take", {-19.5, 22.5}, "copper-plate", "all", defines.inventory.assembling_machine_input}}
commandqueue[27815] = {{"recipe", {-19.5,22.5}, "iron-gear-wheel"}}
commandqueue[27816] = {{"put", {-19.5, 22.5}, "iron-plate", 40, defines.inventory.assembling_machine_input}}
commandqueue[27817] = {{"take", {-20.5, 27.5}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[27818] = {{"take", {-16, 22}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[27819] = {{"take", {-16, 24}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[27820] = {{"take", {-16, 26}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[27821] = {{"put", {-20.5, 27.5}, "copper-plate", 22, defines.inventory.assembling_machine_input}}
commandqueue[27822] = {{"put", {-15.5, 28.5}, "copper-cable", 60, defines.inventory.assembling_machine_input}}
commandqueue[27823] = {{"put", {-15.5, 28.5}, "iron-plate", 20, defines.inventory.assembling_machine_input}}
commandqueue[27824] = {{"craft", "transport-belt", 18}}
commandqueue[27866] = {{"take", {-15.5, 28.5}, "electronic-circuit", "all", defines.inventory.assembling_machine_output}}
commandqueue[27846] = {{"move", "S"}}
commandqueue[27862] = {{"move", "SE"}}
commandqueue[27903] = {{"move", "STOP"}}
--Presently at: (-12.91406250,33.59765625)
commandqueue[27904] = {{"move", "E"}}
commandqueue[27923] = {{"move", "NE"}}
commandqueue[27939] = {{"move", "STOP"}}
--Presently at: (-8.40625000,31.91015625)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-8.6172,31.9102)
commandqueue[27941] = {{"take", {-7, 33}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[27942] = {{"take", {-7, 31}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[27943] = {{"take", {-7, 29}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[27945] = {{"take", {-9.5, 31.5}, "copper-ore", "all", defines.inventory.chest}}
commandqueue[27946] = {{"take", {-9.5, 28.5}, "copper-ore", "all", defines.inventory.chest}}
commandqueue[27947] = {{"take", {-9.5, 25.5}, "copper-ore", "all", defines.inventory.chest}}
commandqueue[27948] = {{"put", {-7, 33}, "copper-ore", 5, defines.inventory.furnace_source}}
commandqueue[27949] = {{"put", {-7, 31}, "copper-ore", 5, defines.inventory.furnace_source}}
commandqueue[27950] = {{"put", {-7, 29}, "copper-ore", 5, defines.inventory.furnace_source}}
commandqueue[27951] = {{"put", {-7, 27}, "copper-ore", 5, defines.inventory.furnace_source}}
commandqueue[27952] = {{"take", {-7, 27}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[27953] = {{"take", {-7, 25}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[27984] = {{"take", {-7, 23}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[27985] = {{"take", {-7, 21}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[27989] = {{"take", {-9.5, 25.5}, "copper-ore", "all", defines.inventory.chest}}
commandqueue[27990] = {{"take", {-9.5, 22.5}, "copper-ore", "all", defines.inventory.chest}}
commandqueue[27991] = {{"take", {-9.5, 19.5}, "copper-ore", "all", defines.inventory.chest}}
commandqueue[27992] = {{"put", {-7, 25}, "copper-ore", 5, defines.inventory.furnace_source}}
commandqueue[27993] = {{"put", {-7, 23}, "copper-ore", 5, defines.inventory.furnace_source}}
commandqueue[27994] = {{"put", {-7, 21}, "copper-ore", 5, defines.inventory.furnace_source}}
commandqueue[27940] = {{"move", "N"}}
commandqueue[28040] = {{"move", "NE"}}
commandqueue[28042] = {{"move", "STOP"}}
--Presently at: (-8.40625000,16.85546875)
commandqueue[28021] = {{"take", {-9.5, 22.5}, "copper-ore", "all", defines.inventory.chest}}
commandqueue[28022] = {{"take", {-9.5, 19.5}, "copper-ore", "all", defines.inventory.chest}}
commandqueue[28023] = {{"build", "stone-furnace", {-7, 19}, defines.direction.north}}
commandqueue[28024] = {{"put", {-7, 19}, "coal", 5, defines.inventory.fuel}}
commandqueue[28025] = {{"put", {-7, 19}, "copper-ore", 5, defines.inventory.furnace_source}}
commandqueue[28026] = {{"build", "stone-furnace", {-7, 17}, defines.direction.north}}
commandqueue[28027] = {{"put", {-7, 17}, "coal", 5, defines.inventory.fuel}}
commandqueue[28028] = {{"put", {-7, 17}, "copper-ore", 4, defines.inventory.furnace_source}}
commandqueue[28029] = {{"build", "stone-furnace", {-7, 15}, defines.direction.north}}
commandqueue[28030] = {{"put", {-7, 15}, "coal", 5, defines.inventory.fuel}}
commandqueue[28031] = {{"put", {-7, 15}, "copper-ore", 4, defines.inventory.furnace_source}}
commandqueue[28038] = {{"build", "stone-furnace", {-7, 13}, defines.direction.north}}
commandqueue[28039] = {{"put", {-7, 13}, "coal", 5, defines.inventory.fuel}}
commandqueue[28041] = {{"put", {-7, 13}, "copper-ore", 4, defines.inventory.furnace_source}}
commandqueue[28043] = {{"move", "W"}}
commandqueue[28073] = {{"move", "SW"}}
commandqueue[28113] = {{"move", "STOP"}}
--Presently at: (-17.07812500,21.07421875)
commandqueue[28114] = {{"move", "S"}}
commandqueue[28138] = {{"move", "SW"}}
commandqueue[28142] = {{"move", "STOP"}}
--Presently at: (-17.50000000,25.05859375)
commandqueue[28144] = {{"take", {-16.5, 27.5}, "electronic-circuit", "all", defines.inventory.assembling_machine_output}}
commandqueue[28171] = {{"take", {-23.5, 29.5}, "stone-furnace", "all", defines.inventory.assembling_machine_output}}
commandqueue[28172] = {{"put", {-23.5, 29.5}, "stone", 30, defines.inventory.assembling_machine_input}}
commandqueue[28173] = {{"take", {-19.5, 22.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[28174] = {{"take", {-22.5, 22.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[28175] = {{"take", {-25.5, 22.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[28176] = {{"take", {-23.5, 27.5}, "wood", "all", defines.inventory.assembling_machine_output}}
commandqueue[28197] = {{"build", "small-electric-pole", {-27.5, 20.5}, defines.direction.north}}
commandqueue[28143] = {{"move", "W"}}
commandqueue[28220] = {{"move", "SW"}}
commandqueue[28229] = {{"move", "STOP"}}
--Presently at: (-29.87890625,26.00781250)
commandqueue[28230] = {{"mine", {-30.5, 26.5}}}
commandqueue[28280] = {{"mine", nil}}
commandqueue[28282] = {{"build", "transport-belt", {-30.5, 26.5}, defines.direction.south}}
commandqueue[28283] = {{"build", "transport-belt", {-30.5, 27.5}, defines.direction.south}}
commandqueue[28284] = {{"build", "transport-belt", {-30.5, 28.5}, defines.direction.south}}
commandqueue[28285] = {{"take", {-28, 26}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[28286] = {{"take", {-28, 28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[28287] = {{"take", {-28, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[28288] = {{"take", {-28, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[28289] = {{"put", {-28, 26}, "iron-ore", 6, defines.inventory.furnace_source}}
commandqueue[28293] = {{"build", "burner-inserter", {-29.5, 26.5}, defines.direction.west}}
commandqueue[28304] = {{"put", {-29.5, 26.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[28295] = {{"build", "burner-inserter", {-29.5, 27.5}, defines.direction.west}}
commandqueue[28306] = {{"put", {-29.5, 27.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[28281] = {{"move", "S"}}
commandqueue[28315] = {{"move", "STOP"}}
--Presently at: (-29.87890625,31.05468750)
commandqueue[28312] = {{"put", {-24.6, 31}, "stone", 15, defines.inventory.assembling_machine_input}}
commandqueue[28313] = {{"take", {-28, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[28314] = {{"take", {-28, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[28316] = {{"mine", {-30.5, 29.5}}}
commandqueue[28366] = {{"mine", nil}}
commandqueue[28367] = {{"mine", {-30.5, 32.5}}}
commandqueue[28417] = {{"mine", nil}}
commandqueue[28419] = {{"put", {-28, 28}, "iron-ore", 6, defines.inventory.furnace_source}}
commandqueue[28420] = {{"put", {-28, 30}, "iron-ore", 6, defines.inventory.furnace_source}}
commandqueue[28421] = {{"put", {-28, 32}, "iron-ore", 6, defines.inventory.furnace_source}}
commandqueue[28422] = {{"put", {-28, 34}, "iron-ore", 6, defines.inventory.furnace_source}}
commandqueue[28423] = {{"build", "transport-belt", {-30.5, 29.5}, defines.direction.south}}
commandqueue[28424] = {{"build", "transport-belt", {-30.5, 30.5}, defines.direction.south}}
commandqueue[28425] = {{"build", "transport-belt", {-30.5, 31.5}, defines.direction.south}}
commandqueue[28426] = {{"build", "burner-inserter", {-29.5, 30.5}, defines.direction.west}}
commandqueue[28427] = {{"put", {-29.5, 30.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[28428] = {{"build", "transport-belt", {-30.5, 32.5}, defines.direction.south}}
commandqueue[28429] = {{"build", "transport-belt", {-30.5, 33.5}, defines.direction.south}}
commandqueue[28430] = {{"build", "transport-belt", {-30.5, 34.5}, defines.direction.south}}
commandqueue[28431] = {{"build", "burner-inserter", {-29.5, 31.5}, defines.direction.west}}
commandqueue[28443] = {{"put", {-29.5, 31.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[28444] = {{"build", "burner-inserter", {-29.5, 33.5}, defines.direction.west}}
commandqueue[28448] = {{"put", {-29.5, 33.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[28418] = {{"move", "S"}}
commandqueue[28458] = {{"move", "STOP"}}
--Presently at: (-29.87890625,36.99218750)
commandqueue[28452] = {{"build", "burner-inserter", {-29.5, 38.5}, defines.direction.west}}
commandqueue[28453] = {{"put", {-29.5, 38.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[28454] = {{"build", "burner-inserter", {-29.5, 39.5}, defines.direction.west}}
commandqueue[28455] = {{"put", {-29.5, 39.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[28459] = {{"mine", {-30.5, 35.5}}}
commandqueue[28509] = {{"mine", nil}}
commandqueue[28510] = {{"mine", {-30.5, 38.5}}}
commandqueue[28560] = {{"mine", nil}}
commandqueue[28562] = {{"build", "transport-belt", {-30.5, 35.5}, defines.direction.south}}
commandqueue[28563] = {{"build", "transport-belt", {-30.5, 36.5}, defines.direction.south}}
commandqueue[28564] = {{"build", "transport-belt", {-30.5, 37.5}, defines.direction.south}}
commandqueue[28565] = {{"build", "transport-belt", {-30.5, 38.5}, defines.direction.south}}
commandqueue[28566] = {{"build", "transport-belt", {-30.5, 39.5}, defines.direction.south}}
commandqueue[28567] = {{"build", "transport-belt", {-30.5, 40.5}, defines.direction.south}}
commandqueue[28568] = {{"put", {-28, 36}, "iron-ore", 6, defines.inventory.furnace_source}}
commandqueue[28569] = {{"put", {-28, 38}, "iron-ore", 6, defines.inventory.furnace_source}}
commandqueue[28570] = {{"put", {-28, 40}, "iron-ore", 6, defines.inventory.furnace_source}}
commandqueue[28571] = {{"put", {-28, 42}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[28561] = {{"move", "S"}}
commandqueue[28581] = {{"move", "STOP"}}
--Presently at: (-29.87890625,39.96093750)
commandqueue[28577] = {{"build", "burner-inserter", {-29.5, 36.5}, defines.direction.west}}
commandqueue[28578] = {{"put", {-29.5, 36.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[28579] = {{"build", "burner-inserter", {-29.5, 42.5}, defines.direction.west}}
commandqueue[28580] = {{"put", {-29.5, 42.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[28582] = {{"mine", {-30.5, 41.5}}}
commandqueue[28632] = {{"mine", nil}}
commandqueue[28634] = {{"build", "transport-belt", {-30.5, 41.5}, defines.direction.south}}
commandqueue[28635] = {{"build", "transport-belt", {-30.5, 42.5}, defines.direction.south}}
commandqueue[28636] = {{"build", "transport-belt", {-30.5, 43.5}, defines.direction.south}}
commandqueue[28637] = {{"build", "transport-belt", {-30.5, 44.5}, defines.direction.south}}
commandqueue[28638] = {{"build", "transport-belt", {-30.5, 45.5}, defines.direction.south}}
commandqueue[28639] = {{"build", "burner-inserter", {-29.5, 45.5}, defines.direction.west}}
commandqueue[28642] = {{"put", {-29.5, 45.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[28643] = {{"put", {-28, 45.3}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[28644] = {{"take", {-28, 45.3}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[28645] = {{"build", "burner-inserter", {-29.5, 43.5}, defines.direction.west}}
commandqueue[28646] = {{"put", {-29.5, 43.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[28647] = {{"put", {-28, 44}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[28648] = {{"take", {-28, 44}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[28649] = {{"put", {-28, 42}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[28650] = {{"take", {-28, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[28651] = {{"take", {-28, 40}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[28652] = {{"take", {-28, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[28653] = {{"take", {-28, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[28654] = {{"take", {-28, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[28655] = {{"craft", "lab", 1}}
commandqueue[28656] = {{"craft", "inserter", 1}}
commandqueue[28657] = {{"craft", "electric-mining-drill", 2}}
commandqueue[28633] = {{"move", "S"}}
commandqueue[28640] = {{"move", "STOP"}}
--Presently at: (-29.87890625,41.00000000)
commandqueue[28641] = {{"move", "N"}}
commandqueue[28742] = {{"move", "NW"}}
commandqueue[28753] = {{"move", "STOP"}}
--Presently at: (-31.03906250,24.84765625)
commandqueue[28714] = {{"put", {-24.6, 31}, "stone", 35, defines.inventory.assembling_machine_input}}
commandqueue[28715] = {{"take", {-28, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[28716] = {{"take", {-28, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[28717] = {{"take", {-28, 28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[28718] = {{"take", {-28, 26}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[28755] = {{"build", "transport-belt", {-30.5, 25.5}, defines.direction.south}}
commandqueue[28756] = {{"build", "transport-belt", {-30.5, 24.5}, defines.direction.south}}
commandqueue[28754] = {{"move", "W"}}
commandqueue[28788] = {{"move", "SW"}}
commandqueue[28790] = {{"move", "STOP"}}
--Presently at: (-36.29687500,25.05859375)
commandqueue[28785] = {{"build", "transport-belt", {-31.5, 24.5}, defines.direction.east}}
commandqueue[28786] = {{"build", "transport-belt", {-32.5, 24.5}, defines.direction.east}}
commandqueue[28787] = {{"build", "transport-belt", {-33.5, 24.5}, defines.direction.east}}
commandqueue[28789] = {{"build", "transport-belt", {-34.5, 24.5}, defines.direction.east}}
commandqueue[28791] = {{"mine", {-36.5, 24.5}}}
commandqueue[28841] = {{"mine", nil}}
commandqueue[28843] = {{"take", {-35, 28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[28844] = {{"put", {-35, 28}, "coal", 7, defines.inventory.fuel}}
commandqueue[28845] = {{"put", {-35, 26}, "coal", 12, defines.inventory.fuel}}
commandqueue[28849] = {{"build", "transport-belt", {-35.5, 24.5}, defines.direction.east}}
commandqueue[28850] = {{"build", "transport-belt", {-36.5, 24.5}, defines.direction.east}}
commandqueue[28851] = {{"build", "transport-belt", {-36.5, 25.5}, defines.direction.north}}
commandqueue[28842] = {{"move", "S"}}
commandqueue[28887] = {{"move", "SE"}}
commandqueue[28890] = {{"move", "STOP"}}
--Presently at: (-35.98046875,32.05468750)
commandqueue[28883] = {{"take", {-39, 33}, "coal", "all", defines.inventory.fuel}}
commandqueue[28884] = {{"take", {-41, 33}, "coal", "all", defines.inventory.fuel}}
commandqueue[28885] = {{"take", {-41, 31}, "coal", "all", defines.inventory.fuel}}
commandqueue[28886] = {{"take", {-39, 31}, "coal", "all", defines.inventory.fuel}}
commandqueue[28888] = {{"take", {-39, 29}, "coal", "all", defines.inventory.fuel}}
commandqueue[28889] = {{"take", {-41, 29}, "coal", "all", defines.inventory.fuel}}
commandqueue[28892] = {{"take", {-37, 36.3}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[28893] = {{"put", {-37, 36.3}, "coal", 6, defines.inventory.fuel}}
commandqueue[28894] = {{"put", {-35, 36.3}, "coal", 12, defines.inventory.fuel}}
commandqueue[28895] = {{"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[28896] = {{"put", {-37, 35}, "coal", 7, defines.inventory.fuel}}
commandqueue[28897] = {{"put", {-35, 35}, "coal", 12, defines.inventory.fuel}}
commandqueue[28898] = {{"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[28899] = {{"put", {-37, 33}, "coal", 5, defines.inventory.fuel}}
commandqueue[28900] = {{"put", {-35, 33}, "coal", 12, defines.inventory.fuel}}
commandqueue[28901] = {{"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[28902] = {{"put", {-37, 31}, "coal", 5, defines.inventory.fuel}}
commandqueue[28903] = {{"put", {-35, 31}, "coal", 12, defines.inventory.fuel}}
commandqueue[28891] = {{"move", "N"}}
commandqueue[28946] = {{"move", "STOP"}}
--Presently at: (-35.98046875,23.89062500)
commandqueue[28948] = {{"rotate", {-32,26}, "N"}}
commandqueue[28975] = {{"build", "lab", {-29.5, 18.5}, defines.direction.north}}
commandqueue[28976] = {{"build", "inserter", {-29.5, 20.5}, defines.direction.south}}
commandqueue[28947] = {{"move", "E"}}
commandqueue[29014] = {{"move", "SE"}}
commandqueue[29025] = {{"move", "STOP"}}
--Presently at: (-24.87500000,25.05078125)
commandqueue[29027] = {{"take", {-25, 22}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[29028] = {{"put", {-25, 22}, "iron-plate", 10, defines.inventory.assembling_machine_input}}
commandqueue[29029] = {{"take", {-20, 23}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[29030] = {{"recipe", {-20,23}, "small-electric-pole"}}
commandqueue[29031] = {{"put", {-20, 23}, "wood", 24, defines.inventory.assembling_machine_input}}
commandqueue[29032] = {{"put", {-20, 23}, "copper-cable", 24, defines.inventory.assembling_machine_input}}
commandqueue[29033] = {{"take", {-24, 30}, "stone-furnace", "all", defines.inventory.assembling_machine_output}}
commandqueue[29034] = {{"put", {-24, 30}, "stone", 25, defines.inventory.assembling_machine_input}}
commandqueue[29035] = {{"take", {-23, 23}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[29036] = {{"recipe", {-23,23}, "transport-belt"}}
commandqueue[29037] = {{"put", {-23, 23}, "iron-gear-wheel", 12, defines.inventory.assembling_machine_input}}
commandqueue[29038] = {{"take", {-23, 27}, "wood", "all", defines.inventory.assembling_machine_output}}
commandqueue[29039] = {{"take", {-23, 27}, "raw-wood", "all", defines.inventory.assembling_machine_input}}
commandqueue[29040] = {{"recipe", {-23,27}, "burner-inserter"}}
commandqueue[29041] = {{"put", {-23, 27}, "iron-gear-wheel", 11, defines.inventory.assembling_machine_input}}
commandqueue[29042] = {{"put", {-23, 27}, "iron-plate", 11, defines.inventory.assembling_machine_input}}
commandqueue[29043] = {{"take", {-20, 27}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[29026] = {{"move", "E"}}
commandqueue[29060] = {{"move", "SE"}}
commandqueue[29079] = {{"move", "STOP"}}
--Presently at: (-17.82421875,27.05468750)
commandqueue[29076] = {{"take", {-16, 22}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[29077] = {{"take", {-16, 24}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[29078] = {{"take", {-16, 26}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[29081] = {{"put", {-20, 27}, "copper-plate", 46, defines.inventory.assembling_machine_input}}
commandqueue[29082] = {{"take", {-16, 28}, "electronic-circuit", "all", defines.inventory.assembling_machine_output}}
commandqueue[29083] = {{"put", {-16, 28}, "copper-cable", 12, defines.inventory.assembling_machine_input}}
commandqueue[29084] = {{"put", {-16, 28}, "iron-plate", 4, defines.inventory.assembling_machine_input}}
commandqueue[29085] = {{"craft", "electric-mining-drill", 5}}
commandqueue[29080] = {{"move", "S"}}
commandqueue[29095] = {{"move", "SE"}}
commandqueue[29136] = {{"move", "STOP"}}
--Presently at: (-13.50000000,33.60546875)
commandqueue[29137] = {{"move", "E"}}
commandqueue[29140] = {{"move", "STOP"}}
--Presently at: (-13.05468750,33.60546875)
commandqueue[29141] = {{"move", "E"}}
commandqueue[29161] = {{"move", "NE"}}
commandqueue[29177] = {{"move", "STOP"}}
--Presently at: (-8.39843750,31.91796875)
commandqueue[29179] = {{"take", {-7, 33}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[29180] = {{"take", {-7, 31}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[29181] = {{"take", {-7, 29}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[29183] = {{"take", {-9.5, 31.5}, "copper-ore", "all", defines.inventory.chest}}
commandqueue[29184] = {{"take", {-9.5, 28.5}, "copper-ore", "all", defines.inventory.chest}}
commandqueue[29185] = {{"take", {-9.5, 25.5}, "copper-ore", "all", defines.inventory.chest}}
commandqueue[29186] = {{"put", {-7, 33}, "copper-ore", 4, defines.inventory.furnace_source}}
commandqueue[29187] = {{"put", {-7, 31}, "copper-ore", 4, defines.inventory.furnace_source}}
commandqueue[29188] = {{"put", {-7, 29}, "copper-ore", 4, defines.inventory.furnace_source}}
commandqueue[29189] = {{"put", {-7, 27}, "copper-ore", 4, defines.inventory.furnace_source}}
commandqueue[29190] = {{"take", {-7, 27}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[29191] = {{"take", {-7, 25}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[29222] = {{"take", {-7, 23}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[29223] = {{"take", {-7, 21}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[29228] = {{"take", {-9.5, 22.5}, "copper-ore", "all", defines.inventory.chest}}
commandqueue[29229] = {{"take", {-9.5, 19.5}, "copper-ore", "all", defines.inventory.chest}}
commandqueue[29230] = {{"put", {-7, 25}, "copper-ore", 5, defines.inventory.furnace_source}}
commandqueue[29231] = {{"put", {-7, 23}, "copper-ore", 5, defines.inventory.furnace_source}}
commandqueue[29232] = {{"put", {-7, 21}, "copper-ore", 5, defines.inventory.furnace_source}}
commandqueue[29178] = {{"move", "N"}}
commandqueue[29278] = {{"move", "STOP"}}
--Presently at: (-8.39843750,17.07421875)
commandqueue[29261] = {{"put", {-7, 19}, "copper-ore", 5, defines.inventory.furnace_source}}
commandqueue[29264] = {{"put", {-7, 17}, "copper-ore", 5, defines.inventory.furnace_source}}
commandqueue[29267] = {{"put", {-7, 15}, "copper-ore", 5, defines.inventory.furnace_source}}
commandqueue[29277] = {{"put", {-7, 13}, "copper-ore", 5, defines.inventory.furnace_source}}
commandqueue[29279] = {{"move", "W"}}
commandqueue[29311] = {{"move", "SW"}}
commandqueue[29349] = {{"move", "STOP"}}
--Presently at: (-17.15625000,21.08203125)
commandqueue[29350] = {{"move", "S"}}
commandqueue[29375] = {{"move", "SW"}}
commandqueue[29379] = {{"move", "STOP"}}
--Presently at: (-17.57812500,25.21484375)
commandqueue[29382] = {{"take", {-16, 28}, "electronic-circuit", "all", defines.inventory.assembling_machine_output}}
commandqueue[29383] = {{"put", {-16, 28}, "copper-cable", 42, defines.inventory.assembling_machine_input}}
commandqueue[29384] = {{"put", {-16, 28}, "iron-plate", 13, defines.inventory.assembling_machine_input}}
commandqueue[29430] = {{"take", {-23, 31}, "stone-furnace", "all", defines.inventory.assembling_machine_output}}
commandqueue[29431] = {{"put", {-24, 30}, "stone", 30, defines.inventory.assembling_machine_input}}
commandqueue[29380] = {{"move", "S"}}
commandqueue[29396] = {{"move", "SW"}}
commandqueue[29467] = {{"move", "STOP"}}
--Presently at: (-25.06640625,35.07812500)
commandqueue[29468] = {{"move", "S"}}
commandqueue[29562] = {{"move", "STOP"}}
--Presently at: (-25.06640625,49.03125000)
commandqueue[29564] = {{"take", {-25.5, 54.2}, "stone", "all", defines.inventory.chest}}
commandqueue[29563] = {{"move", "N"}}
commandqueue[29718] = {{"move", "STOP"}}
--Presently at: (-25.06640625,26.02343750)
commandqueue[29597] = {{"take", {-28, 46}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[29609] = {{"take", {-28, 44}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[29621] = {{"take", {-28, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[29633] = {{"take", {-28, 40}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[29645] = {{"take", {-28, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[29657] = {{"take", {-28, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[29669] = {{"take", {-28, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[29681] = {{"take", {-28, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[29693] = {{"take", {-28, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[29705] = {{"take", {-28, 28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[29706] = {{"take", {-24, 28}, "burner-inserter", "all", defines.inventory.assembling_machine_output}}
commandqueue[29707] = {{"recipe", {-24,28}, "stone-furnace"}}
commandqueue[29708] = {{"put", {-24, 28}, "stone", 50, defines.inventory.assembling_machine_input}}
commandqueue[29715] = {{"put", {-24, 30}, "stone", 25, defines.inventory.assembling_machine_input}}
commandqueue[29716] = {{"take", {-24, 30}, "stone-furnace", "all", defines.inventory.assembling_machine_output}}
commandqueue[29717] = {{"take", {-28, 26}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[29720] = {{"take", {-22, 23}, "transport-belt", "all", defines.inventory.assembling_machine_output}}
commandqueue[29721] = {{"recipe", {-22,23}, "copper-cable"}}
commandqueue[29722] = {{"put", {-22, 23}, "copper-plate", 15, defines.inventory.assembling_machine_input}}
commandqueue[29723] = {{"put", {-25, 23}, "iron-plate", 30, defines.inventory.assembling_machine_input}}
commandqueue[29724] = {{"take", {-25, 23}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[29725] = {{"craft", "wood", 2}}
commandqueue[29726] = {{"craft", "transport-belt", 12}}
commandqueue[29719] = {{"move", "E"}}
commandqueue[29760] = {{"move", "STOP"}}
--Presently at: (-18.98046875,26.02343750)
commandqueue[29757] = {{"take", {-16, 22}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[29758] = {{"take", {-16, 24}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[29759] = {{"take", {-16, 26}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[29762] = {{"take", {-20, 23}, "small-electric-pole", "all", defines.inventory.assembling_machine_output}}
commandqueue[29763] = {{"recipe", {-20,23}, "copper-cable"}}
commandqueue[29764] = {{"put", {-20, 23}, "copper-plate", 15, defines.inventory.assembling_machine_input}}
commandqueue[29765] = {{"take", {-20, 28}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[29767] = {{"take", {-15, 29}, "electronic-circuit", "all", defines.inventory.assembling_machine_output}}
commandqueue[29768] = {{"put", {-15, 29}, "iron-plate", 3, defines.inventory.assembling_machine_input}}
commandqueue[29769] = {{"put", {-15, 29}, "copper-cable", 6, defines.inventory.assembling_machine_input}}
commandqueue[29771] = {{"craft", "stone-furnace", 16}}
commandqueue[29761] = {{"move", "S"}}
commandqueue[29772] = {{"move", "SE"}}
commandqueue[29829] = {{"move", "STOP"}}
--Presently at: (-12.96875000,33.66796875)
commandqueue[29830] = {{"move", "E"}}
commandqueue[29849] = {{"move", "NE"}}
commandqueue[29865] = {{"move", "STOP"}}
--Presently at: (-8.46093750,31.98046875)
commandqueue[29859] = {{"take", {-7, 33}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[29860] = {{"take", {-7, 31}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[29861] = {{"take", {-7, 29}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[29862] = {{"build", "small-electric-pole", {-8.5, 33.5}, defines.direction.north}}
commandqueue[29867] = {{"take", {-9.5, 31.5}, "copper-ore", "all", defines.inventory.chest}}
commandqueue[29868] = {{"take", {-9.5, 28.5}, "copper-ore", "all", defines.inventory.chest}}
commandqueue[29869] = {{"put", {-7, 33}, "copper-ore", 1, defines.inventory.furnace_source}}
commandqueue[29870] = {{"put", {-7, 31}, "copper-ore", 1, defines.inventory.furnace_source}}
commandqueue[29871] = {{"put", {-7, 29}, "copper-ore", 1, defines.inventory.furnace_source}}
commandqueue[29872] = {{"put", {-7, 27}, "copper-ore", 1, defines.inventory.furnace_source}}
commandqueue[29866] = {{"move", "N"}}
commandqueue[29880] = {{"move", "STOP"}}
--Presently at: (-8.46093750,29.90234375)
commandqueue[29878] = {{"build", "burner-inserter", {-8.5, 31.5}, defines.direction.west}}
commandqueue[29879] = {{"put", {-8.5, 31.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[29881] = {{"mine", {-9.5, 31.5}}}
commandqueue[29931] = {{"mine", nil}}
commandqueue[29932] = {{"mine", {-9.5, 28.5}}}
commandqueue[29982] = {{"mine", nil}}
commandqueue[29984] = {{"build", "transport-belt", {-9.5, 31.5}, defines.direction.north}}
commandqueue[29985] = {{"build", "transport-belt", {-9.5, 30.5}, defines.direction.north}}
commandqueue[29986] = {{"build", "transport-belt", {-9.5, 29.5}, defines.direction.north}}
commandqueue[29987] = {{"build", "transport-belt", {-9.5, 28.5}, defines.direction.north}}
commandqueue[29988] = {{"build", "transport-belt", {-9.5, 27.5}, defines.direction.north}}
commandqueue[29989] = {{"build", "transport-belt", {-9.5, 26.5}, defines.direction.north}}
commandqueue[29990] = {{"put", {-7, 33}, "copper-ore", 9, defines.inventory.furnace_source}}
commandqueue[29991] = {{"take", {-7, 27}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[29983] = {{"move", "N"}}
commandqueue[30023] = {{"move", "STOP"}}
--Presently at: (-8.46093750,23.96484375)
commandqueue[30017] = {{"build", "burner-inserter", {-8.5, 28.5}, defines.direction.west}}
commandqueue[30018] = {{"put", {-8.5, 28.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[30019] = {{"build", "burner-inserter", {-8.5, 27.5}, defines.direction.west}}
commandqueue[30020] = {{"put", {-8.5, 27.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[30021] = {{"build", "burner-inserter", {-8.5, 25.5}, defines.direction.west}}
commandqueue[30022] = {{"put", {-8.5, 25.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[30024] = {{"mine", {-9.5, 25.5}}}
commandqueue[30074] = {{"mine", nil}}
commandqueue[30075] = {{"mine", {-9.5, 22.5}}}
commandqueue[30125] = {{"mine", nil}}
commandqueue[30127] = {{"build", "transport-belt", {-9.5, 25.5}, defines.direction.north}}
commandqueue[30128] = {{"build", "transport-belt", {-9.5, 24.5}, defines.direction.north}}
commandqueue[30129] = {{"build", "transport-belt", {-9.5, 23.5}, defines.direction.north}}
commandqueue[30130] = {{"build", "transport-belt", {-9.5, 22.5}, defines.direction.north}}
commandqueue[30131] = {{"build", "transport-belt", {-9.5, 21.5}, defines.direction.north}}
commandqueue[30132] = {{"build", "transport-belt", {-9.5, 20.5}, defines.direction.north}}
commandqueue[30133] = {{"build", "burner-inserter", {-8.5, 23.5}, defines.direction.west}}
commandqueue[30134] = {{"put", {-8.5, 23.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[30135] = {{"take", {-7, 25}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[30136] = {{"take", {-7, 23}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[30137] = {{"take", {-7, 21}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[30138] = {{"put", {-7, 21}, "copper-ore", 4, defines.inventory.furnace_source}}
commandqueue[30126] = {{"move", "N"}}
commandqueue[30146] = {{"move", "STOP"}}
--Presently at: (-8.46093750,20.99609375)
commandqueue[30147] = {{"mine", {-9.5, 19.5}}}
commandqueue[30197] = {{"mine", nil}}
commandqueue[30199] = {{"build", "burner-inserter", {-8.5, 15.5}, defines.direction.west}}
commandqueue[30200] = {{"put", {-8.5, 15.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[30201] = {{"build", "burner-inserter", {-8.5, 16.5}, defines.direction.west}}
commandqueue[30202] = {{"put", {-8.5, 16.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[30203] = {{"build", "transport-belt", {-9.5, 19.5}, defines.direction.north}}
commandqueue[30204] = {{"build", "burner-inserter", {-8.5, 21.5}, defines.direction.west}}
commandqueue[30205] = {{"put", {-8.5, 21.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[30206] = {{"build", "transport-belt", {-9.5, 14.5}, defines.direction.north}}
commandqueue[30207] = {{"build", "transport-belt", {-9.5, 15.5}, defines.direction.north}}
commandqueue[30208] = {{"build", "transport-belt", {-9.5, 16.5}, defines.direction.north}}
commandqueue[30209] = {{"build", "transport-belt", {-9.5, 17.5}, defines.direction.north}}
commandqueue[30210] = {{"build", "transport-belt", {-9.5, 18.5}, defines.direction.north}}
commandqueue[30211] = {{"build", "transport-belt", {-9.5, 13.5}, defines.direction.north}}
commandqueue[30213] = {{"put", {-7.5, 13.7}, "copper-ore", 5, defines.inventory.furnace_source}}
commandqueue[30214] = {{"take", {-7.5, 13.7}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[30215] = {{"put", {-7, 19}, "copper-ore", 5, defines.inventory.furnace_source}}
commandqueue[30216] = {{"take", {-7, 19}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[30217] = {{"put", {-7, 15}, "copper-ore", 5, defines.inventory.furnace_source}}
commandqueue[30218] = {{"take", {-7, 15}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[30219] = {{"put", {-7, 17}, "copper-ore", 5, defines.inventory.furnace_source}}
commandqueue[30220] = {{"take", {-7, 17}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[30198] = {{"move", "N"}}
commandqueue[30212] = {{"move", "NW"}}
commandqueue[30227] = {{"move", "STOP"}}
--Presently at: (-10.04296875,17.33593750)
commandqueue[30225] = {{"build", "burner-inserter", {-8.5, 18.5}, defines.direction.west}}
commandqueue[30226] = {{"put", {-8.5, 18.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[30229] = {{"build", "burner-inserter", {-8.5, 13.5}, defines.direction.west}}
commandqueue[30230] = {{"put", {-8.5, 13.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[30253] = {{"build", "electric-mining-drill", {-11.5, 16.5}, defines.direction.east}}
commandqueue[30254] = {{"craft", "small-electric-pole", 1}}
commandqueue[30228] = {{"move", "W"}}
commandqueue[30251] = {{"move", "SW"}}
commandqueue[30286] = {{"move", "STOP"}}
--Presently at: (-17.14843750,21.02734375)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-17.543,20.9805)
commandqueue[30282] = {{"take", {-16, 22}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[30283] = {{"take", {-16, 24}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[30285] = {{"take", {-16, 26}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[30288] = {{"put", {-19, 23}, "copper-plate", 32, defines.inventory.assembling_machine_input}}
commandqueue[30289] = {{"put", {-22, 23}, "copper-plate", 32, defines.inventory.assembling_machine_input}}
commandqueue[30290] = {{"take", {-20, 22}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[30291] = {{"take", {-22, 23}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[30307] = {{"take", {-25, 22}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[30287] = {{"move", "W"}}
commandqueue[30405] = {{"move", "SW"}}
commandqueue[30415] = {{"move", "STOP"}}
--Presently at: (-36.11328125,22.03515625)
commandqueue[30416] = {{"move", "S"}}
commandqueue[30483] = {{"move", "SE"}}
commandqueue[30485] = {{"move", "STOP"}}
--Presently at: (-35.90234375,32.19140625)
commandqueue[30478] = {{"take", {-39, 33}, "coal", "all", defines.inventory.fuel}}
commandqueue[30479] = {{"take", {-41, 33}, "coal", "all", defines.inventory.fuel}}
commandqueue[30480] = {{"take", {-41, 31}, "coal", "all", defines.inventory.fuel}}
commandqueue[30481] = {{"take", {-39, 31}, "coal", "all", defines.inventory.fuel}}
commandqueue[30482] = {{"take", {-39, 29}, "coal", "all", defines.inventory.fuel}}
commandqueue[30484] = {{"take", {-41, 29}, "coal", "all", defines.inventory.fuel}}
commandqueue[30487] = {{"take", {-37, 36.3}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[30488] = {{"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[30489] = {{"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[30490] = {{"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[30491] = {{"craft", "transport-belt", 5}}
commandqueue[30542] = {{"take", {-35, 28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[30486] = {{"move", "N"}}
commandqueue[30534] = {{"move", "STOP"}}
--Presently at: (-35.90234375,25.06640625)
commandqueue[30535] = {{"move", "E"}}
commandqueue[30595] = {{"move", "STOP"}}
--Presently at: (-26.99609375,25.06640625)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-26.8594,25.082)
commandqueue[30566] = {{"put", {-26, 23}, "iron-plate", 20, defines.inventory.assembling_machine_input}}
commandqueue[30594] = {{"take", {-26, 23}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[30597] = {{"take", {-28, 26}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[30598] = {{"take", {-28, 28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[30599] = {{"take", {-28, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[30600] = {{"take", {-24, 28}, "stone-furnace", "all", defines.inventory.assembling_machine_output}}
commandqueue[30601] = {{"recipe", {-24,28}, "iron-gear-wheel"}}
commandqueue[30602] = {{"put", {-24, 28}, "iron-plate", 12, defines.inventory.assembling_machine_input}}
commandqueue[30626] = {{"take", {-24, 31}, "stone-furnace", "all", defines.inventory.assembling_machine_output}}
commandqueue[30627] = {{"recipe", {-24,31}, "iron-gear-wheel"}}
commandqueue[30628] = {{"take", {-28, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[30629] = {{"take", {-28, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[30630] = {{"take", {-28, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[30631] = {{"put", {-24, 31}, "iron-plate", 8, defines.inventory.assembling_machine_input}}
commandqueue[30632] = {{"craft", "inserter", 1}}
commandqueue[30633] = {{"craft", "electric-mining-drill", 1}}
commandqueue[30671] = {{"take", {-28, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[30672] = {{"take", {-28, 40}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[30596] = {{"move", "S"}}
commandqueue[30703] = {{"move", "SW"}}
commandqueue[30705] = {{"move", "STOP"}}
--Presently at: (-27.07031250,41.17578125)
commandqueue[30701] = {{"take", {-28, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[30702] = {{"take", {-28, 44}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[30704] = {{"take", {-28, 46}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[30706] = {{"move", "E"}}
commandqueue[30719] = {{"move", "NE"}}
commandqueue[30797] = {{"move", "STOP"}}
--Presently at: (-16.91406250,32.94921875)
commandqueue[30798] = {{"move", "N"}}
commandqueue[30811] = {{"move", "STOP"}}
--Presently at: (-16.91406250,31.01953125)
commandqueue[30812] = {{"mine", {-16.5, 29.5}}}
commandqueue[30834] = {{"mine", nil}}
commandqueue[30835] = {{"move", "W"}}
commandqueue[30856] = {{"move", "NW"}}
commandqueue[30876] = {{"move", "STOP"}}
--Presently at: (-22.14062500,28.91015625)
commandqueue[30877] = {{"mine", {-23, 30}}}
commandqueue[30899] = {{"mine", nil}}
commandqueue[30901] = {{"take", {-23, 27}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[30902] = {{"craft", "electric-mining-drill", 1}}
commandqueue[30903] = {{"craft", "transport-belt", 3}}
commandqueue[30900] = {{"move", "N"}}
commandqueue[30921] = {{"move", "NW"}}
commandqueue[30930] = {{"move", "STOP"}}
--Presently at: (-23.08984375,24.84375000)
commandqueue[30926] = {{"put", {-24.5, 23.5}, "iron-plate", 8, defines.inventory.assembling_machine_input}}
commandqueue[30927] = {{"take", {-24.5, 23.5}, "iron-gear-wheel", 4, defines.inventory.assembling_machine_output}}
commandqueue[30928] = {{"put", {-28.5, 23.5}, "copper-plate", 15, defines.inventory.assembling_machine_input}}
commandqueue[30929] = {{"build", "inserter", {-27.5, 22.5}, defines.direction.east}}
commandqueue[30931] = {{"move", "S"}}
commandqueue[30932] = {{"move", "SE"}}
commandqueue[30935] = {{"move", "STOP"}}
--Presently at: (-22.77343750,25.30859375)
commandqueue[30936] = {{"mine", {-21.5, 26.5}}}
commandqueue[30958] = {{"mine", nil}}
commandqueue[30959] = {{"mine", {-22.5, 26.5}}}
commandqueue[30981] = {{"mine", nil}}
commandqueue[30982] = {{"move", "E"}}
commandqueue[30992] = {{"move", "NE"}}
commandqueue[30995] = {{"move", "STOP"}}
--Presently at: (-20.97265625,24.99218750)
commandqueue[30996] = {{"mine", {-20.5, 23.5}}}
commandqueue[31018] = {{"mine", nil}}
commandqueue[31020] = {{"put", {-22, 23}, "copper-plate", 25, defines.inventory.assembling_machine_input}}
commandqueue[31019] = {{"move", "N"}}
commandqueue[31026] = {{"move", "NE"}}
commandqueue[31083] = {{"move", "STOP"}}
--Presently at: (-14.96093750,17.94140625)
commandqueue[31085] = {{"craft", "burner-inserter", 10}}
commandqueue[31086] = {{"craft", "burner-inserter", 3}}
commandqueue[31087] = {{"craft", "copper-cable", 27}}
commandqueue[31118] = {{"build", "small-electric-pole", {-13.5, 12.5}, defines.direction.north}}
commandqueue[31165] = {{"build", "small-electric-pole", {-6.5, 10.5}, defines.direction.north}}
commandqueue[31224] = {{"build", "small-electric-pole", {0.5, 9.5}, defines.direction.north}}
commandqueue[31084] = {{"move", "N"}}
commandqueue[31098] = {{"move", "NE"}}
commandqueue[31136] = {{"move", "STOP"}}
--Presently at: (-10.95312500,11.85546875)
commandqueue[31271] = {{"build", "small-electric-pole", {7.5, 9.5}, defines.direction.north}}
commandqueue[31318] = {{"build", "small-electric-pole", {14.5, 9.5}, defines.direction.north}}
commandqueue[31365] = {{"build", "small-electric-pole", {21.5, 9.5}, defines.direction.north}}
commandqueue[31412] = {{"build", "small-electric-pole", {28.5, 9.5}, defines.direction.north}}
commandqueue[31413] = {{"build", "small-electric-pole", {32.5, 3.5}, defines.direction.north}}
commandqueue[31137] = {{"move", "E"}}
commandqueue[31354] = {{"move", "NE"}}
commandqueue[31514] = {{"move", "STOP"}}
--Presently at: (38.13281250,-5.01953125)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (38.1797,-4.8711)
commandqueue[31512] = {{"build", "small-electric-pole", {38.5, -0.5}, defines.direction.north}}
commandqueue[31513] = {{"build", "small-electric-pole", {41.5, -4.5}, defines.direction.north}}
commandqueue[31516] = {{"build", "stone-furnace", {40, -6}, defines.direction.north}}
commandqueue[31530] = {{"build", "stone-furnace", {40, -8}, defines.direction.north}}
commandqueue[31542] = {{"build", "small-electric-pole", {41.5, -9.5}, defines.direction.north}}
commandqueue[31544] = {{"build", "stone-furnace", {40, -10}, defines.direction.north}}
commandqueue[31545] = {{"build", "transport-belt", {37.5, -6.5}, defines.direction.south}}
commandqueue[31552] = {{"build", "transport-belt", {37.5, -7.5}, defines.direction.south}}
commandqueue[31558] = {{"build", "stone-furnace", {40, -12}, defines.direction.north}}
commandqueue[31559] = {{"build", "transport-belt", {37.5, -8.5}, defines.direction.south}}
commandqueue[31566] = {{"build", "transport-belt", {37.5, -9.5}, defines.direction.south}}
commandqueue[31572] = {{"build", "stone-furnace", {40, -14}, defines.direction.north}}
commandqueue[31573] = {{"build", "transport-belt", {37.5, -10.5}, defines.direction.south}}
commandqueue[31580] = {{"build", "transport-belt", {37.5, -11.5}, defines.direction.south}}
commandqueue[31586] = {{"build", "stone-furnace", {40, -16}, defines.direction.north}}
commandqueue[31587] = {{"build", "transport-belt", {37.5, -12.5}, defines.direction.south}}
commandqueue[31591] = {{"build", "small-electric-pole", {41.5, -16.5}, defines.direction.north}}
commandqueue[31594] = {{"build", "transport-belt", {37.5, -13.5}, defines.direction.south}}
commandqueue[31600] = {{"build", "stone-furnace", {40, -18}, defines.direction.north}}
commandqueue[31601] = {{"build", "transport-belt", {37.5, -14.5}, defines.direction.south}}
commandqueue[31610] = {{"build", "transport-belt", {37.5, -15.5}, defines.direction.south}}
commandqueue[31614] = {{"build", "stone-furnace", {40, -20}, defines.direction.north}}
commandqueue[31617] = {{"build", "transport-belt", {37.5, -16.5}, defines.direction.south}}
commandqueue[31624] = {{"build", "transport-belt", {37.5, -17.5}, defines.direction.south}}
commandqueue[31625] = {{"build", "small-electric-pole", {41.5, -21.5}, defines.direction.north}}
commandqueue[31628] = {{"build", "stone-furnace", {40, -22}, defines.direction.north}}
commandqueue[31631] = {{"build", "transport-belt", {37.5, -18.5}, defines.direction.south}}
commandqueue[31638] = {{"build", "transport-belt", {37.5, -19.5}, defines.direction.south}}
commandqueue[31642] = {{"build", "stone-furnace", {40, -24}, defines.direction.north}}
commandqueue[31643] = {{"put", {40, -24}, "coal", 1, defines.inventory.fuel}}
commandqueue[31645] = {{"build", "transport-belt", {37.5, -20.5}, defines.direction.south}}
commandqueue[31652] = {{"build", "transport-belt", {37.5, -21.5}, defines.direction.south}}
commandqueue[31656] = {{"build", "stone-furnace", {40, -26}, defines.direction.north}}
commandqueue[31657] = {{"put", {40, -26}, "coal", 2, defines.inventory.fuel}}
commandqueue[31659] = {{"build", "transport-belt", {37.5, -22.5}, defines.direction.south}}
commandqueue[31660] = {{"build", "burner-inserter", {38.5, -23.5}, defines.direction.west}}
commandqueue[31661] = {{"put", {38.5, -23.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[31666] = {{"build", "transport-belt", {37.5, -23.5}, defines.direction.south}}
commandqueue[31670] = {{"build", "stone-furnace", {40, -28}, defines.direction.north}}
commandqueue[31671] = {{"put", {40, -28}, "coal", 2, defines.inventory.fuel}}
commandqueue[31672] = {{"build", "small-electric-pole", {41.5, -27.5}, defines.direction.north}}
commandqueue[31673] = {{"build", "transport-belt", {37.5, -24.5}, defines.direction.south}}
commandqueue[31675] = {{"build", "electric-mining-drill", {35.5, -30.5}, defines.direction.east}}
commandqueue[31676] = {{"build", "burner-inserter", {38.5, -26.5}, defines.direction.west}}
commandqueue[31677] = {{"put", {38.5, -26.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[31680] = {{"build", "transport-belt", {37.5, -25.5}, defines.direction.south}}
commandqueue[31684] = {{"build", "stone-furnace", {40, -30}, defines.direction.north}}
commandqueue[31685] = {{"build", "burner-inserter", {38.5, -28.5}, defines.direction.west}}
commandqueue[31686] = {{"put", {38.5, -28.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[31687] = {{"build", "transport-belt", {37.5, -26.5}, defines.direction.south}}
commandqueue[31688] = {{"put", {40, -30}, "coal", 2, defines.inventory.fuel}}
commandqueue[31694] = {{"build", "transport-belt", {37.5, -27.5}, defines.direction.south}}
commandqueue[31696] = {{"build", "burner-inserter", {38.5, -30.5}, defines.direction.west}}
commandqueue[31697] = {{"put", {38.5, -30.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[31698] = {{"build", "stone-furnace", {40, -32}, defines.direction.north}}
commandqueue[31699] = {{"build", "electric-mining-drill", {35.5, -33.5}, defines.direction.east}}
commandqueue[31700] = {{"put", {40, -32}, "coal", 2, defines.inventory.fuel}}
commandqueue[31701] = {{"build", "transport-belt", {37.5, -28.5}, defines.direction.south}}
commandqueue[31707] = {{"build", "small-electric-pole", {41.5, -33.5}, defines.direction.north}}
commandqueue[31708] = {{"build", "transport-belt", {37.5, -29.5}, defines.direction.south}}
commandqueue[31711] = {{"build", "small-electric-pole", {38.5, -33.5}, defines.direction.north}}
commandqueue[31712] = {{"build", "stone-furnace", {40, -34}, defines.direction.north}}
commandqueue[31713] = {{"build", "burner-inserter", {38.5, -32.5}, defines.direction.west}}
commandqueue[31714] = {{"put", {38.5, -32.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[31715] = {{"build", "transport-belt", {37.5, -30.5}, defines.direction.south}}
commandqueue[31716] = {{"put", {40, -34}, "coal", 2, defines.inventory.fuel}}
commandqueue[31722] = {{"build", "transport-belt", {37.5, -31.5}, defines.direction.south}}
commandqueue[31726] = {{"build", "stone-furnace", {40, -36}, defines.direction.north}}
commandqueue[31727] = {{"build", "electric-mining-drill", {35.5, -36.5}, defines.direction.east}}
commandqueue[31728] = {{"put", {40, -36}, "coal", 2, defines.inventory.fuel}}
commandqueue[31729] = {{"build", "transport-belt", {37.5, -32.5}, defines.direction.south}}
commandqueue[31730] = {{"build", "burner-inserter", {38.5, -34.5}, defines.direction.west}}
commandqueue[31731] = {{"put", {38.5, -34.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[31732] = {{"build", "burner-inserter", {38.5, -36.5}, defines.direction.west}}
commandqueue[31733] = {{"put", {38.5, -36.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[31736] = {{"build", "transport-belt", {37.5, -33.5}, defines.direction.south}}
commandqueue[31739] = {{"build", "stone-furnace", {40, -38}, defines.direction.north}}
commandqueue[31740] = {{"put", {40, -38}, "coal", 2, defines.inventory.fuel}}
commandqueue[31743] = {{"build", "transport-belt", {37.5, -34.5}, defines.direction.south}}
commandqueue[31746] = {{"build", "burner-inserter", {38.5, -38.5}, defines.direction.west}}
commandqueue[31747] = {{"put", {38.5, -38.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[31750] = {{"build", "transport-belt", {37.5, -35.5}, defines.direction.south}}
commandqueue[31752] = {{"build", "stone-furnace", {40, -40}, defines.direction.north}}
commandqueue[31753] = {{"build", "electric-mining-drill", {35.5, -39.5}, defines.direction.east}}
commandqueue[31754] = {{"build", "small-electric-pole", {41.5, -40.5}, defines.direction.north}}
commandqueue[31755] = {{"put", {40, -40}, "coal", 2, defines.inventory.fuel}}
commandqueue[31757] = {{"build", "transport-belt", {37.5, -36.5}, defines.direction.south}}
commandqueue[31762] = {{"build", "burner-inserter", {38.5, -40.5}, defines.direction.west}}
commandqueue[31763] = {{"put", {38.5, -40.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[31764] = {{"build", "transport-belt", {37.5, -37.5}, defines.direction.south}}
commandqueue[31766] = {{"build", "stone-furnace", {40, -42}, defines.direction.north}}
commandqueue[31767] = {{"build", "electric-mining-drill", {35.5, -42.5}, defines.direction.east}}
commandqueue[31768] = {{"build", "small-electric-pole", {38.5, -41.5}, defines.direction.north}}
commandqueue[31769] = {{"put", {40, -42}, "coal", 2, defines.inventory.fuel}}
commandqueue[31771] = {{"build", "transport-belt", {37.5, -38.5}, defines.direction.south}}
commandqueue[31778] = {{"build", "transport-belt", {37.5, -39.5}, defines.direction.south}}
commandqueue[31780] = {{"build", "stone-furnace", {40, -44}, defines.direction.north}}
commandqueue[31781] = {{"build", "burner-inserter", {38.5, -42.5}, defines.direction.west}}
commandqueue[31782] = {{"put", {38.5, -42.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[31783] = {{"put", {40, -44}, "coal", 2, defines.inventory.fuel}}
commandqueue[31785] = {{"build", "transport-belt", {37.5, -40.5}, defines.direction.south}}
commandqueue[31789] = {{"build", "small-electric-pole", {41.5, -45.5}, defines.direction.north}}
commandqueue[31790] = {{"build", "electric-mining-drill", {35.5, -45.5}, defines.direction.east}}
commandqueue[31791] = {{"build", "electric-mining-drill", {35.5, -48.5}, defines.direction.east}}
commandqueue[31792] = {{"build", "transport-belt", {37.5, -41.5}, defines.direction.south}}
commandqueue[31794] = {{"build", "stone-furnace", {40, -46}, defines.direction.north}}
commandqueue[31795] = {{"build", "burner-inserter", {38.5, -44.5}, defines.direction.west}}
commandqueue[31796] = {{"put", {38.5, -44.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[31797] = {{"put", {40, -46}, "coal", 2, defines.inventory.fuel}}
commandqueue[31798] = {{"build", "transport-belt", {37.5, -42.5}, defines.direction.south}}
commandqueue[31802] = {{"build", "transport-belt", {37.5, -43.5}, defines.direction.south}}
commandqueue[31803] = {{"build", "transport-belt", {37.5, -44.5}, defines.direction.south}}
commandqueue[31804] = {{"build", "transport-belt", {37.5, -45.5}, defines.direction.south}}
commandqueue[31805] = {{"build", "transport-belt", {37.5, -46.5}, defines.direction.south}}
commandqueue[31806] = {{"build", "transport-belt", {37.5, -47.5}, defines.direction.south}}
commandqueue[31807] = {{"build", "electric-mining-drill", {35.5, -51.5}, defines.direction.east}}
commandqueue[31808] = {{"build", "stone-furnace", {40, -48}, defines.direction.north}}
commandqueue[31809] = {{"build", "stone-furnace", {40, -50}, defines.direction.north}}
commandqueue[31810] = {{"build", "burner-inserter", {38.5, -46.5}, defines.direction.west}}
commandqueue[31811] = {{"put", {38.5, -46.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[31813] = {{"build", "small-electric-pole", {38.5, -48.5}, defines.direction.north}}
commandqueue[31515] = {{"move", "N"}}
commandqueue[31812] = {{"move", "NW"}}
commandqueue[31814] = {{"move", "STOP"}}
--Presently at: (37.96875000,-49.16796875)
commandqueue[31816] = {{"put", {40, -48}, "coal", 2, defines.inventory.fuel}}
commandqueue[31817] = {{"put", {40, -50}, "coal", 2, defines.inventory.fuel}}
commandqueue[31818] = {{"build", "transport-belt", {37.5, -48.5}, defines.direction.south}}
commandqueue[31819] = {{"build", "small-electric-pole", {41.5, -51.5}, defines.direction.north}}
commandqueue[31821] = {{"build", "transport-belt", {37.5, -51.5}, defines.direction.south}}
commandqueue[31823] = {{"build", "transport-belt", {37.5, -50.5}, defines.direction.south}}
commandqueue[31824] = {{"build", "transport-belt", {37.5, -49.5}, defines.direction.south}}
commandqueue[31827] = {{"build", "burner-inserter", {38.5, -50.5}, defines.direction.west}}
commandqueue[31828] = {{"put", {38.5, -50.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[31829] = {{"build", "burner-inserter", {38.5, -47.5}, defines.direction.west}}
commandqueue[31830] = {{"put", {38.5, -47.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[31815] = {{"move", "S"}}
commandqueue[31820] = {{"move", "SW"}}
commandqueue[31825] = {{"move", "STOP"}}
--Presently at: (37.44140625,-47.89843750)
commandqueue[31826] = {{"move", "S"}}
commandqueue[32068] = {{"move", "STOP"}}
--Presently at: (37.44140625,-11.97656250)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (37.4415,-4.5078)
commandqueue[32069] = {{"move", "W"}}
commandqueue[32332] = {{"move", "SW"}}
commandqueue[32574] = {{"move", "STOP"}}
--Presently at: (-27.12103975,21.01562500)
commandqueue[32550] = {{"take", {-25, 22}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[32551] = {{"craft", "science-pack-1", 1}}
commandqueue[32578] = {{"take", {-23, 22}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[32579] = {{"build", "assembling-machine-1", {-25.5, 19.5}, defines.direction.north}}
commandqueue[32580] = {{"recipe", {-25.5,19.5}, "iron-gear-wheel"}}
commandqueue[32575] = {{"move", "S"}}
commandqueue[32592] = {{"move", "SW"}}
commandqueue[32622] = {{"move", "STOP"}}
--Presently at: (-30.28510225,26.70312500)
commandqueue[32591] = {{"take", {-28, 26}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[32593] = {{"build", "assembling-machine-1", {-25.5, 26.5}, defines.direction.north}}
commandqueue[32594] = {{"recipe", {-25.5,26.5}, "iron-gear-wheel"}}
commandqueue[32595] = {{"put", {-25.5, 26.5}, "iron-plate", 10, defines.inventory.assembling_machine_input}}
commandqueue[32596] = {{"take", {-28, 28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[32597] = {{"put", {-26, 23}, "iron-plate", 8, defines.inventory.assembling_machine_input}}
commandqueue[32634] = {{"build", "assembling-machine-1", {-25.5, 30.5}, defines.direction.north}}
commandqueue[32635] = {{"recipe", {-25.5,30.5}, "iron-gear-wheel"}}
commandqueue[32636] = {{"take", {-28, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[32637] = {{"put", {-25.5, 30.5}, "iron-plate", 8, defines.inventory.assembling_machine_input}}
commandqueue[32638] = {{"take", {-28, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[32639] = {{"take", {-28, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[32623] = {{"move", "S"}}
commandqueue[32703] = {{"move", "STOP"}}
--Presently at: (-30.28510225,38.57812500)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-30.2852,40.9922)
commandqueue[32700] = {{"take", {-28, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[32701] = {{"take", {-28, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[32702] = {{"take", {-28, 40}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[32704] = {{"move", "E"}}
commandqueue[32708] = {{"move", "STOP"}}
--Presently at: (-29.69140625,40.99218750)
commandqueue[32710] = {{"take", {-28, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[32711] = {{"take", {-28, 44}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[32712] = {{"take", {-28.5, 45.5}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[32713] = {{"put", {-28.5, 45.5}, "coal", 2, defines.inventory.fuel}}
commandqueue[32714] = {{"put", {-28, 38}, "coal", 2, defines.inventory.fuel}}
commandqueue[32715] = {{"put", {-28, 40}, "coal", 2, defines.inventory.fuel}}
commandqueue[32716] = {{"put", {-28, 42}, "coal", 2, defines.inventory.fuel}}
commandqueue[32717] = {{"put", {-28, 44}, "coal", 2, defines.inventory.fuel}}
commandqueue[32709] = {{"move", "N"}}
commandqueue[32818] = {{"move", "NW"}}
commandqueue[32831] = {{"move", "STOP"}}
--Presently at: (-31.06250000,23.44140625)
commandqueue[32804] = {{"take", {-26, 30}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[32805] = {{"put", {-26, 30}, "iron-plate", 18, defines.inventory.assembling_machine_input}}
commandqueue[32806] = {{"put", {-26, 23}, "iron-plate", 18, defines.inventory.assembling_machine_input}}
commandqueue[32808] = {{"craft", "pipe", 5}}
commandqueue[32819] = {{"put", {-26.5, 20.5}, "iron-plate", 18, defines.inventory.assembling_machine_input}}
commandqueue[32828] = {{"put", {-26, 26}, "iron-plate", 16, defines.inventory.assembling_machine_input}}
commandqueue[32830] = {{"take", {-26, 26}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[32832] = {{"move", "W"}}
commandqueue[32878] = {{"move", "SW"}}
commandqueue[32889] = {{"move", "STOP"}}
--Presently at: (-39.05078125,24.60156250)
commandqueue[32888] = {{"put", {-34, 23}, "science-pack-1", 1, defines.inventory.lab_input}}
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-36.8867,24.9688)
commandqueue[32891] = {{"build", "assembling-machine-1", {-37.5, 21.5}, defines.direction.north}}
commandqueue[32892] = {{"recipe", {-37.5,21.5}, "iron-gear-wheel"}}
commandqueue[32890] = {{"move", "S"}}
commandqueue[32918] = {{"move", "STOP"}}
--Presently at: (-36.88670000,29.12500000)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-36.8828,28.7773)
commandqueue[32920] = {{"take", {-35, 28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[32919] = {{"move", "S"}}
commandqueue[32922] = {{"move", "SE"}}
commandqueue[32931] = {{"move", "STOP"}}
--Presently at: (-35.93359375,30.17187500)
commandqueue[32932] = {{"move", "S"}}
commandqueue[32944] = {{"move", "STOP"}}
--Presently at: (-35.93359375,31.95312500)
commandqueue[32937] = {{"take", {-39, 33}, "coal", "all", defines.inventory.fuel}}
commandqueue[32938] = {{"take", {-41, 33}, "coal", "all", defines.inventory.fuel}}
commandqueue[32939] = {{"take", {-41, 31}, "coal", "all", defines.inventory.fuel}}
commandqueue[32940] = {{"take", {-39, 31}, "coal", "all", defines.inventory.fuel}}
commandqueue[32941] = {{"take", {-39, 29}, "coal", "all", defines.inventory.fuel}}
commandqueue[32943] = {{"take", {-41, 29}, "coal", "all", defines.inventory.fuel}}
commandqueue[32946] = {{"take", {-37, 36.3}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[32947] = {{"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[32948] = {{"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[32949] = {{"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[32950] = {{"craft", "burner-inserter", 1}}
commandqueue[32982] = {{"put", {-38, 22}, "iron-plate", 10, defines.inventory.assembling_machine_input}}
commandqueue[32945] = {{"move", "N"}}
commandqueue[32958] = {{"move", "NW"}}
commandqueue[33044] = {{"move", "STOP"}}
--Presently at: (-45.00390625,20.95312500)
commandqueue[33046] = {{"craft", "steam-engine", 1}}
commandqueue[33047] = {{"craft", "burner-inserter", 5}}
commandqueue[33048] = {{"craft", "electronic-circuit", 2}}
commandqueue[33045] = {{"move", "W"}}
commandqueue[33119] = {{"move", "STOP"}}
--Presently at: (-55.98828125,20.95312500)
commandqueue[33121] = {{"take", {-59.2, 25.2}, "coal", "all", defines.inventory.chest}}
commandqueue[33180] = {{"build", "steam-engine", {-47.5, 22.5}, defines.direction.east}}
commandqueue[33120] = {{"move", "E"}}
commandqueue[33229] = {{"move", "NE"}}
commandqueue[33239] = {{"move", "STOP"}}
--Presently at: (-38.75390625,19.89843750)
commandqueue[33240] = {{"move", "E"}}
commandqueue[33258] = {{"move", "SE"}}
commandqueue[33269] = {{"move", "STOP"}}
--Presently at: (-34.92187500,21.05859375)
commandqueue[33270] = {{"mine", {-37, 21}}}
commandqueue[33292] = {{"mine", nil}}
commandqueue[33294] = {{"craft", "burner-inserter", 3}}
commandqueue[33295] = {{"craft", "transport-belt", 2}}
commandqueue[33293] = {{"move", "E"}}
commandqueue[33343] = {{"move", "STOP"}}
--Presently at: (-27.50000000,21.05859375)
commandqueue[33342] = {{"put", {-26, 22}, "iron-plate", 22, defines.inventory.assembling_machine_input}}
commandqueue[33344] = {{"mine", {-26, 20}}}
commandqueue[33366] = {{"mine", nil}}
commandqueue[33367] = {{"move", "S"}}
commandqueue[33391] = {{"move", "SE"}}
commandqueue[33396] = {{"move", "STOP"}}
--Presently at: (-26.97265625,25.14843750)
commandqueue[33395] = {{"put", {-26.5, 29.5}, "iron-plate", 4, defines.inventory.assembling_machine_input}}
commandqueue[33397] = {{"mine", {-26, 26}}}
commandqueue[33419] = {{"mine", nil}}
commandqueue[33420] = {{"move", "W"}}
commandqueue[33432] = {{"move", "SW"}}
commandqueue[33446] = {{"move", "STOP"}}
--Presently at: (-30.23046875,26.62500000)
commandqueue[33448] = {{"take", {-28, 26}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[33449] = {{"take", {-28, 28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[33450] = {{"take", {-28, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[33451] = {{"craft", "electric-mining-drill", 1}}
commandqueue[33462] = {{"take", {-28, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[33463] = {{"take", {-28, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[33464] = {{"put", {-26, 31}, "iron-plate", 2, defines.inventory.assembling_machine_input}}
commandqueue[33447] = {{"move", "S"}}
commandqueue[33528] = {{"move", "STOP"}}
--Presently at: (-30.23046875,38.64843750)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-30.4805,40.9141)
commandqueue[33525] = {{"take", {-28, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[33526] = {{"take", {-28, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[33527] = {{"take", {-28, 40}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[33530] = {{"take", {-28, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[33531] = {{"take", {-28, 44}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[33532] = {{"take", {-28.5, 45.5}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[33533] = {{"craft", "electric-mining-drill", 2}}
commandqueue[33529] = {{"move", "E"}}
commandqueue[33552] = {{"move", "STOP"}}
--Presently at: (-27.06640625,40.91406250)
commandqueue[33553] = {{"move", "N"}}
commandqueue[33593] = {{"move", "NE"}}
commandqueue[33613] = {{"move", "STOP"}}
--Presently at: (-24.95703125,32.86718750)
commandqueue[33597] = {{"take", {-28, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[33614] = {{"mine", {-25, 31.5}}}
commandqueue[33636] = {{"mine", nil}}
commandqueue[33638] = {{"take", {-28, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[33640] = {{"take", {-28, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[33641] = {{"take", {-28, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[33642] = {{"take", {-28, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[33637] = {{"move", "N"}}
commandqueue[33684] = {{"move", "NE"}}
commandqueue[33694] = {{"move", "STOP"}}
--Presently at: (-23.90234375,24.83593750)
commandqueue[33692] = {{"take", {-28, 28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[33693] = {{"take", {-28, 26}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[33695] = {{"mine", {-23, 23}}}
commandqueue[33717] = {{"mine", nil}}
commandqueue[33718] = {{"move", "E"}}
commandqueue[33750] = {{"move", "SE"}}
commandqueue[33771] = {{"move", "STOP"}}
--Presently at: (-16.93750000,27.05078125)
commandqueue[33768] = {{"put", {-14, 22}, "coal", 5, defines.inventory.fuel}}
commandqueue[33769] = {{"put", {-14, 24}, "coal", 5, defines.inventory.fuel}}
commandqueue[33770] = {{"put", {-14, 26}, "coal", 5, defines.inventory.fuel}}
commandqueue[33773] = {{"put", {-16, 22}, "coal", 3, defines.inventory.fuel}}
commandqueue[33774] = {{"take", {-16, 22}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[33775] = {{"put", {-16, 24}, "coal", 3, defines.inventory.fuel}}
commandqueue[33776] = {{"take", {-16, 24}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[33777] = {{"put", {-16, 26}, "coal", 3, defines.inventory.fuel}}
commandqueue[33778] = {{"take", {-16, 26}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[33779] = {{"craft", "electric-mining-drill", 1}}
commandqueue[33780] = {{"craft", "small-electric-pole", 15}}
commandqueue[33781] = {{"craft", "inserter", 3}}
commandqueue[33772] = {{"move", "S"}}
commandqueue[33787] = {{"move", "SE"}}
commandqueue[33825] = {{"move", "STOP"}}
--Presently at: (-12.92968750,33.28515625)
commandqueue[33826] = {{"move", "E"}}
commandqueue[33851] = {{"move", "STOP"}}
--Presently at: (-9.21875000,33.28515625)
commandqueue[33853] = {{"take", {-7, 33}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[33854] = {{"take", {-7, 33}, "coal", "all", defines.inventory.fuel}}
commandqueue[33864] = {{"take", {-7, 31}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[33875] = {{"take", {-7, 29}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[33876] = {{"put", {-7, 29}, "coal", 1, defines.inventory.fuel}}
commandqueue[33886] = {{"take", {-7, 27}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[33887] = {{"put", {-7, 27}, "coal", 1, defines.inventory.fuel}}
commandqueue[33897] = {{"take", {-7, 25}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[33898] = {{"put", {-7, 25}, "coal", 1, defines.inventory.fuel}}
commandqueue[33908] = {{"take", {-7, 23}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[33909] = {{"put", {-7, 23}, "coal", 1, defines.inventory.fuel}}
commandqueue[33919] = {{"take", {-7, 21}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[33920] = {{"put", {-7, 21}, "coal", 2, defines.inventory.fuel}}
commandqueue[33930] = {{"take", {-7, 19}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[33931] = {{"put", {-7, 19}, "coal", 1, defines.inventory.fuel}}
commandqueue[33941] = {{"take", {-7, 17}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[33942] = {{"put", {-7, 17}, "coal", 1, defines.inventory.fuel}}
commandqueue[33952] = {{"take", {-7, 15}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[33953] = {{"put", {-7, 15}, "coal", 1, defines.inventory.fuel}}
commandqueue[33962] = {{"take", {-7, 13}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[33963] = {{"put", {-7, 13}, "coal", 1, defines.inventory.fuel}}
commandqueue[33852] = {{"move", "N"}}
commandqueue[33976] = {{"move", "STOP"}}
--Presently at: (-9.21875000,14.87890625)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-9.2188,11.6914)
commandqueue[33977] = {{"move", "E"}}
commandqueue[34180] = {{"move", "NE"}}
commandqueue[34348] = {{"move", "STOP"}}
--Presently at: (38.63281250,-6.02734375)
commandqueue[34356] = {{"build", "burner-inserter", {38.5, -6.5}, defines.direction.west}}
commandqueue[34357] = {{"put", {38.5, -6.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[34358] = {{"put", {40, -6}, "coal", 2, defines.inventory.fuel}}
commandqueue[34370] = {{"build", "burner-inserter", {38.5, -8.5}, defines.direction.west}}
commandqueue[34371] = {{"put", {38.5, -8.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[34372] = {{"put", {40, -8}, "coal", 2, defines.inventory.fuel}}
commandqueue[34384] = {{"build", "burner-inserter", {38.5, -10.5}, defines.direction.west}}
commandqueue[34385] = {{"put", {38.5, -10.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[34386] = {{"put", {40, -10}, "coal", 2, defines.inventory.fuel}}
commandqueue[34398] = {{"build", "burner-inserter", {38.5, -12.5}, defines.direction.west}}
commandqueue[34399] = {{"put", {38.5, -12.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[34400] = {{"put", {40, -12}, "coal", 2, defines.inventory.fuel}}
commandqueue[34412] = {{"build", "burner-inserter", {38.5, -14.5}, defines.direction.west}}
commandqueue[34413] = {{"put", {38.5, -14.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[34414] = {{"put", {40, -14}, "coal", 2, defines.inventory.fuel}}
commandqueue[34415] = {{"build", "electric-mining-drill", {35.5, -18.5}, defines.direction.east}}
commandqueue[34426] = {{"build", "burner-inserter", {38.5, -16.5}, defines.direction.west}}
commandqueue[34427] = {{"put", {38.5, -16.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[34428] = {{"put", {40, -16}, "coal", 2, defines.inventory.fuel}}
commandqueue[34440] = {{"build", "burner-inserter", {38.5, -18.5}, defines.direction.west}}
commandqueue[34441] = {{"put", {38.5, -18.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[34442] = {{"put", {40, -18}, "coal", 2, defines.inventory.fuel}}
commandqueue[34443] = {{"build", "electric-mining-drill", {35.5, -21.5}, defines.direction.east}}
commandqueue[34444] = {{"build", "small-electric-pole", {38.5, -19.5}, defines.direction.north}}
commandqueue[34453] = {{"build", "burner-inserter", {38.5, -20.5}, defines.direction.west}}
commandqueue[34454] = {{"put", {38.5, -20.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[34455] = {{"put", {40, -20}, "coal", 2, defines.inventory.fuel}}
commandqueue[34456] = {{"take", {40, -24}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[34457] = {{"take", {40, -26}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[34458] = {{"craft", "long-handed-inserter", 1}}
commandqueue[34459] = {{"build", "electric-mining-drill", {35.5, -24.5}, defines.direction.east}}
commandqueue[34460] = {{"build", "small-electric-pole", {38.5, -24.5}, defines.direction.north}}
commandqueue[34467] = {{"build", "burner-inserter", {38.5, -22.5}, defines.direction.west}}
commandqueue[34468] = {{"put", {38.5, -22.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[34469] = {{"put", {40, -22}, "coal", 2, defines.inventory.fuel}}
commandqueue[34470] = {{"build", "electric-mining-drill", {35.5, -27.5}, defines.direction.east}}
commandqueue[34471] = {{"take", {40, -28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[34506] = {{"take", {40, -30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[34520] = {{"take", {40, -32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[34529] = {{"craft", "long-handed-inserter", 1}}
commandqueue[34530] = {{"craft", "long-handed-inserter", 1}}
commandqueue[34531] = {{"craft", "electric-mining-drill", 2}}
commandqueue[34532] = {{"craft", "electronic-circuit", 10}}
commandqueue[34534] = {{"take", {40, -34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[34548] = {{"take", {40, -36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[34549] = {{"build", "assembling-machine-1", {42.5, -35.5}, defines.direction.north}}
commandqueue[34550] = {{"recipe", {42.5,-35.5}, "iron-gear-wheel"}}
commandqueue[34562] = {{"take", {40, -38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[34563] = {{"put", {42.5, -35.5}, "iron-plate", 30, defines.inventory.assembling_machine_input}}
commandqueue[34564] = {{"build", "assembling-machine-1", {42.5, -38.5}, defines.direction.north}}
commandqueue[34565] = {{"recipe", {42.5,-38.5}, "iron-gear-wheel"}}
commandqueue[34566] = {{"put", {42.5, -38.5}, "iron-plate", 10, defines.inventory.assembling_machine_input}}
commandqueue[34567] = {{"build", "long-handed-inserter", {42.5, -40.5}, defines.direction.south}}
commandqueue[34576] = {{"take", {40, -40}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[34590] = {{"take", {40, -42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[34591] = {{"build", "assembling-machine-1", {42.5, -43.5}, defines.direction.north}}
commandqueue[34592] = {{"recipe", {42.5,-43.5}, "transport-belt"}}
commandqueue[34593] = {{"put", {42.5, -43.5}, "iron-plate", 20, defines.inventory.assembling_machine_input}}
commandqueue[34604] = {{"take", {40, -44}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[34605] = {{"build", "long-handed-inserter", {42.5, -46.5}, defines.direction.south}}
commandqueue[34606] = {{"build", "wooden-chest", {42.5, -48.5}, defines.direction.north}}
commandqueue[34618] = {{"take", {40, -46}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[34619] = {{"take", {40, -48}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[34620] = {{"take", {40, -50}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[34621] = {{"build", "long-handed-inserter", {43.5, -46.5}, defines.direction.south}}
commandqueue[34622] = {{"build", "wooden-chest", {43.5, -48.5}, defines.direction.north}}
commandqueue[34623] = {{"put", {41.5, -39.5}, "iron-plate", 30, defines.inventory.assembling_machine_input}}
commandqueue[34349] = {{"move", "N"}}
commandqueue[34610] = {{"move", "NE"}}
commandqueue[34614] = {{"move", "STOP"}}
--Presently at: (39.05468750,-45.19140625)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (39.0664,-44.8945)
commandqueue[34615] = {{"move", "E"}}
commandqueue[34648] = {{"move", "STOP"}}
--Presently at: (43.96484375,-44.89453125)
commandqueue[34649] = {{"mine", {44.6, -44.7}}}
commandqueue[35050] = {{"mine", nil}}
commandqueue[35051] = {{"move", "N"}}
commandqueue[35052] = {{"move", "NW"}}
commandqueue[35081] = {{"move", "STOP"}}
--Presently at: (40.90625000,-48.10156250)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (40.9688,-47.5859)
commandqueue[35082] = {{"move", "N"}}
commandqueue[35119] = {{"move", "STOP"}}
--Presently at: (40.96875000,-53.07812500)
commandqueue[35117] = {{"take", {42.5, -48.5}, "transport-belt", "all", defines.inventory.chest}}
commandqueue[35118] = {{"take", {43.5, -48.5}, "transport-belt", "all", defines.inventory.chest}}
commandqueue[35121] = {{"build", "electric-mining-drill", {39.5, -57.5}, defines.direction.west}}
commandqueue[35122] = {{"build", "transport-belt", {37.5, -57.5}, defines.direction.south}}
commandqueue[35123] = {{"build", "small-electric-pole", {41.5, -58.5}, defines.direction.north}}
commandqueue[35124] = {{"build", "transport-belt", {37.5, -56.5}, defines.direction.south}}
commandqueue[35125] = {{"build", "transport-belt", {37.5, -55.5}, defines.direction.south}}
commandqueue[35126] = {{"build", "transport-belt", {37.5, -54.5}, defines.direction.south}}
commandqueue[35127] = {{"build", "transport-belt", {37.5, -53.5}, defines.direction.south}}
commandqueue[35128] = {{"build", "transport-belt", {37.5, -52.5}, defines.direction.south}}
commandqueue[35130] = {{"build", "electric-mining-drill", {39.5, -54.5}, defines.direction.west}}
commandqueue[35159] = {{"take", {40, -50}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35161] = {{"take", {40, -48}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35162] = {{"take", {40, -46}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35163] = {{"build", "stone-furnace", {45, -50}, defines.direction.north}}
commandqueue[35164] = {{"build", "stone-furnace", {45, -48}, defines.direction.north}}
commandqueue[35165] = {{"build", "stone-furnace", {45, -46}, defines.direction.north}}
commandqueue[35166] = {{"build", "transport-belt", {47.5, -48.5}, defines.direction.south}}
commandqueue[35167] = {{"build", "transport-belt", {47.5, -47.5}, defines.direction.south}}
commandqueue[35168] = {{"build", "transport-belt", {47.5, -46.5}, defines.direction.south}}
commandqueue[35169] = {{"build", "transport-belt", {47.5, -45.5}, defines.direction.south}}
commandqueue[35120] = {{"move", "S"}}
commandqueue[35154] = {{"move", "SE"}}
commandqueue[35183] = {{"move", "STOP"}}
--Presently at: (44.02734375,-44.97265625)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (43.7109,-45.6055)
commandqueue[35185] = {{"take", {42.5, -48.5}, "transport-belt", "all", defines.inventory.chest}}
commandqueue[35186] = {{"take", {43.5, -48.5}, "transport-belt", "all", defines.inventory.chest}}
commandqueue[35187] = {{"recipe", {42.5,-43.5}, "burner-inserter"}}
commandqueue[35191] = {{"take", {40, -44}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35205] = {{"take", {40, -42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35206] = {{"build", "stone-furnace", {45, -44}, defines.direction.north}}
commandqueue[35207] = {{"build", "transport-belt", {47.5, -44.5}, defines.direction.south}}
commandqueue[35208] = {{"build", "transport-belt", {47.5, -43.5}, defines.direction.south}}
commandqueue[35209] = {{"build", "transport-belt", {47.5, -42.5}, defines.direction.south}}
commandqueue[35210] = {{"build", "transport-belt", {47.5, -41.5}, defines.direction.south}}
commandqueue[35211] = {{"build", "transport-belt", {47.5, -40.5}, defines.direction.south}}
commandqueue[35219] = {{"take", {40, -40}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35220] = {{"build", "stone-furnace", {45, -42}, defines.direction.north}}
commandqueue[35224] = {{"take", {42.5, -35.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[35225] = {{"craft", "electric-mining-drill", 2}}
commandqueue[35226] = {{"take", {40, -38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35227] = {{"craft", "iron-gear-wheel", 3}}
commandqueue[35228] = {{"build", "stone-furnace", {45, -40}, defines.direction.north}}
commandqueue[35240] = {{"take", {40, -36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35241] = {{"build", "stone-furnace", {45, -38}, defines.direction.north}}
commandqueue[35242] = {{"build", "transport-belt", {47.5, -39.5}, defines.direction.south}}
commandqueue[35243] = {{"build", "transport-belt", {47.5, -38.5}, defines.direction.south}}
commandqueue[35244] = {{"build", "transport-belt", {47.5, -37.5}, defines.direction.south}}
commandqueue[35245] = {{"build", "transport-belt", {47.5, -36.5}, defines.direction.south}}
commandqueue[35246] = {{"build", "transport-belt", {47.5, -35.5}, defines.direction.south}}
commandqueue[35254] = {{"take", {40, -34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35255] = {{"put", {42.5, -35.5}, "iron-plate", 14, defines.inventory.assembling_machine_input}}
commandqueue[35256] = {{"build", "stone-furnace", {45, -36}, defines.direction.north}}
commandqueue[35268] = {{"take", {40, -32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35269] = {{"craft", "iron-gear-wheel", 1}}
commandqueue[35270] = {{"build", "stone-furnace", {45, -34}, defines.direction.north}}
commandqueue[35282] = {{"take", {40, -30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35283] = {{"build", "stone-furnace", {45, -32}, defines.direction.north}}
commandqueue[35296] = {{"take", {40, -28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35297] = {{"build", "stone-furnace", {45, -30}, defines.direction.north}}
commandqueue[35310] = {{"take", {40, -26}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35311] = {{"build", "stone-furnace", {45, -28}, defines.direction.north}}
commandqueue[35324] = {{"take", {40, -24}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35325] = {{"build", "stone-furnace", {45, -26}, defines.direction.north}}
commandqueue[35338] = {{"take", {40, -22}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35339] = {{"build", "stone-furnace", {45, -24}, defines.direction.north}}
commandqueue[35352] = {{"take", {40, -20}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35353] = {{"build", "stone-furnace", {45, -22}, defines.direction.north}}
commandqueue[35366] = {{"take", {40, -18}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35367] = {{"build", "stone-furnace", {45, -20}, defines.direction.north}}
commandqueue[35380] = {{"take", {40, -16}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35381] = {{"build", "stone-furnace", {45, -18}, defines.direction.north}}
commandqueue[35382] = {{"build", "small-electric-pole", {38.5, -13.5}, defines.direction.north}}
commandqueue[35184] = {{"move", "S"}}
commandqueue[35359] = {{"move", "SW"}}
commandqueue[35385] = {{"move", "STOP"}}
--Presently at: (40.96875000,-16.88671875)
commandqueue[35386] = {{"move", "S"}}
commandqueue[35392] = {{"move", "STOP"}}
--Presently at: (40.96875000,-15.99609375)
commandqueue[35395] = {{"build", "electric-mining-drill", {35.5, -15.5}, defines.direction.east}}
commandqueue[35393] = {{"move", "E"}}
commandqueue[35394] = {{"move", "SE"}}
commandqueue[35409] = {{"move", "STOP"}}
--Presently at: (42.69921875,-14.41406250)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (42.6211,-14.7109)
commandqueue[35411] = {{"build", "stone-furnace", {45, -16}, defines.direction.north}}
commandqueue[35412] = {{"build", "stone-furnace", {45, -14}, defines.direction.north}}
commandqueue[35426] = {{"build", "stone-furnace", {45, -12}, defines.direction.north}}
commandqueue[35427] = {{"build", "stone-furnace", {45, -10}, defines.direction.north}}
commandqueue[35410] = {{"move", "S"}}
commandqueue[35441] = {{"move", "SW"}}
commandqueue[35443] = {{"move", "STOP"}}
--Presently at: (42.41015250,-9.89840000)
commandqueue[35440] = {{"build", "stone-furnace", {45, -8}, defines.direction.north}}
commandqueue[35442] = {{"build", "stone-furnace", {45, -6}, defines.direction.north}}
commandqueue[35445] = {{"take", {40.5, -6.5}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35446] = {{"take", {40, -10}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35472] = {{"take", {40, -14}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35500] = {{"take", {40, -18}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35514] = {{"take", {40, -20}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35528] = {{"take", {40, -22}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35542] = {{"take", {40, -24}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35556] = {{"take", {40, -26}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35570] = {{"take", {40, -28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35584] = {{"take", {40, -30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35597] = {{"take", {40, -32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35444] = {{"move", "N"}}
commandqueue[35596] = {{"move", "NE"}}
commandqueue[35612] = {{"move", "STOP"}}
--Presently at: (44.09765250,-34.14840000)
commandqueue[35598] = {{"take", {42.5, -35.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[35599] = {{"craft", "electric-mining-drill", 1}}
commandqueue[35609] = {{"build", "assembling-machine-1", {42.5, -31.5}, defines.direction.north}}
commandqueue[35610] = {{"recipe", {42.5,-31.5}, "iron-gear-wheel"}}
commandqueue[35611] = {{"put", {42.5, -31.5}, "iron-plate", 10, defines.inventory.assembling_machine_input}}
commandqueue[35614] = {{"craft", "electric-mining-drill", 1}}
commandqueue[35615] = {{"take", {40, -34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35629] = {{"take", {40, -36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35643] = {{"take", {40, -38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35657] = {{"take", {40, -40}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35671] = {{"take", {40, -42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35672] = {{"put", {42.5, -38.5}, "iron-plate", 14, defines.inventory.assembling_machine_input}}
commandqueue[35673] = {{"put", {42.5, -43.5}, "iron-plate", 6, defines.inventory.assembling_machine_input}}
commandqueue[35613] = {{"move", "N"}}
commandqueue[35686] = {{"move", "STOP"}}
--Presently at: (44.09765250,-44.98433750)
commandqueue[35681] = {{"take", {40.5, -47.5}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35682] = {{"build", "small-electric-pole", {46.5, -45.5}, defines.direction.north}}
commandqueue[35683] = {{"recipe", {42.5,-43.5}, "transport-belt"}}
commandqueue[35684] = {{"put", {42.5, -43.5}, "iron-gear-wheel", 1, defines.inventory.assembling_machine_input}}
commandqueue[35685] = {{"take", {40.5, -49.5}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35688] = {{"take", {42.5, -48.5}, "burner-inserter", "all", defines.inventory.chest}}
commandqueue[35689] = {{"take", {43.5, -48.5}, "burner-inserter", "all", defines.inventory.chest}}
commandqueue[35690] = {{"build", "burner-inserter", {46.5, -47.5}, defines.direction.east}}
commandqueue[35691] = {{"put", {46.5, -47.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[35692] = {{"build", "burner-inserter", {46.5, -46.5}, defines.direction.east}}
commandqueue[35693] = {{"put", {46.5, -46.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[35694] = {{"build", "burner-inserter", {46.5, -44.5}, defines.direction.east}}
commandqueue[35695] = {{"put", {46.5, -44.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[35696] = {{"build", "burner-inserter", {46.5, -42.5}, defines.direction.east}}
commandqueue[35697] = {{"put", {46.5, -42.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[35698] = {{"put", {45, -48}, "coal", 2, defines.inventory.fuel}}
commandqueue[35699] = {{"put", {45, -46}, "coal", 1, defines.inventory.fuel}}
commandqueue[35687] = {{"move", "E"}}
commandqueue[35700] = {{"move", "STOP"}}
--Presently at: (46.02734000,-44.98433750)
commandqueue[35702] = {{"build", "electric-mining-drill", {49.5, -48.5}, defines.direction.west}}
commandqueue[35704] = {{"put", {45, -42}, "coal", 1, defines.inventory.fuel}}
commandqueue[35705] = {{"build", "burner-inserter", {46.5, -40.5}, defines.direction.east}}
commandqueue[35706] = {{"put", {46.5, -40.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[35707] = {{"build", "burner-inserter", {46.5, -38.5}, defines.direction.east}}
commandqueue[35708] = {{"put", {46.5, -38.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[35710] = {{"put", {45, -42}, "coal", 1, defines.inventory.fuel}}
commandqueue[35711] = {{"put", {45, -40}, "coal", 1, defines.inventory.fuel}}
commandqueue[35701] = {{"move", "S"}}
commandqueue[35728] = {{"move", "STOP"}}
--Presently at: (46.02734000,-40.97652500)
commandqueue[35730] = {{"build", "electric-mining-drill", {49.5, -42.5}, defines.direction.west}}
commandqueue[35731] = {{"build", "burner-inserter", {46.5, -35.5}, defines.direction.east}}
commandqueue[35732] = {{"put", {46.5, -35.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[35734] = {{"craft", "electronic-circuit", 2}}
commandqueue[35764] = {{"take", {40, -46}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35765] = {{"take", {40, -44}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35766] = {{"take", {40, -42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35767] = {{"take", {40, -40}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35768] = {{"take", {40, -38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35769] = {{"take", {40, -36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35729] = {{"move", "W"}}
commandqueue[35783] = {{"move", "STOP"}}
--Presently at: (38.01171500,-40.97652500)
commandqueue[35784] = {{"move", "W"}}
commandqueue[35785] = {{"move", "SW"}}
commandqueue[35790] = {{"move", "STOP"}}
--Presently at: (37.33593375,-40.44918125)
commandqueue[35834] = {{"take", {41.5, -34.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[35835] = {{"take", {40, -34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35836] = {{"recipe", {41.5,-34.5}, "copper-cable"}}
commandqueue[35837] = {{"put", {41.5, -34.5}, "copper-plate", 100, defines.inventory.assembling_machine_input}}
commandqueue[35838] = {{"put", {40, -34}, "coal", 1, defines.inventory.fuel}}
commandqueue[35846] = {{"take", {40, -32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35847] = {{"craft", "electronic-circuit", 1}}
commandqueue[35848] = {{"put", {40, -32}, "coal", 1, defines.inventory.fuel}}
commandqueue[35856] = {{"take", {40, -30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35857] = {{"take", {40, -28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35858] = {{"take", {40, -26}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35859] = {{"take", {40, -24}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35860] = {{"put", {41.5, -30.5}, "iron-plate", 20, defines.inventory.assembling_machine_input}}
commandqueue[35861] = {{"take", {41.5, -30.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[35862] = {{"put", {40, -30}, "coal", 1, defines.inventory.fuel}}
commandqueue[35863] = {{"put", {40, -28}, "coal", 1, defines.inventory.fuel}}
commandqueue[35864] = {{"put", {40, -26}, "coal", 1, defines.inventory.fuel}}
commandqueue[35865] = {{"put", {40, -24}, "coal", 1, defines.inventory.fuel}}
commandqueue[35879] = {{"take", {40, -26}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35890] = {{"take", {40, -24}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35901] = {{"take", {40, -22}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35912] = {{"take", {40, -20}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35923] = {{"take", {40, -18}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35934] = {{"take", {40, -16}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35941] = {{"craft", "science-pack-1", 1}}
commandqueue[35942] = {{"craft", "electronic-circuit", 4}}
commandqueue[35945] = {{"take", {40, -14}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35956] = {{"take", {40, -12}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35967] = {{"take", {40, -10}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35968] = {{"craft", "electric-mining-drill", 1}}
commandqueue[35969] = {{"craft", "stone-furnace", 1}}
commandqueue[35791] = {{"move", "S"}}
commandqueue[35981] = {{"move", "STOP"}}
--Presently at: (37.33593375,-6.30855625)
commandqueue[36077] = {{"tech", "electronics"}}
commandqueue[35982] = {{"move", "W"}}
commandqueue[36232] = {{"move", "SW"}}
commandqueue[36491] = {{"move", "STOP"}}
--Presently at: (-27.08984750,21.00785000)
commandqueue[36488] = {{"put", {-29, 19}, "science-pack-1", 1, defines.inventory.lab_input}}
commandqueue[36489] = {{"take", {-25, 22}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[36502] = {{"build", "assembling-machine-1", {-25.5, 26.5}, defines.direction.north}}
commandqueue[36503] = {{"recipe", {-25.5,26.5}, "electronic-circuit"}}
commandqueue[36504] = {{"put", {-25.5, 26.5}, "copper-cable", 57, defines.inventory.assembling_machine_input}}
commandqueue[36492] = {{"move", "S"}}
commandqueue[36509] = {{"move", "SW"}}
commandqueue[36539] = {{"move", "STOP"}}
--Presently at: (-30.25391000,26.69535000)
commandqueue[36508] = {{"take", {-28, 26}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[36510] = {{"craft", "pipe", 5}}
commandqueue[36513] = {{"take", {-28, 28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[36514] = {{"put", {-26.5, 23.5}, "iron-plate", 10, defines.inventory.assembling_machine_input}}
commandqueue[36553] = {{"take", {-28, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[36554] = {{"take", {-28, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[36555] = {{"take", {-28, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[36556] = {{"put", {-25.5, 26.5}, "iron-plate", 19, defines.inventory.assembling_machine_input}}
commandqueue[36558] = {{"craft", "transport-belt", 4}}
commandqueue[36559] = {{"build", "assembling-machine-1", {-25.5, 30.5}, defines.direction.north}}
commandqueue[36560] = {{"recipe", {-25.5,30.5}, "electronic-circuit"}}
commandqueue[36561] = {{"put", {-25.5, 30.5}, "copper-cable", 57, defines.inventory.assembling_machine_input}}
commandqueue[36562] = {{"put", {-25.5, 30.5}, "iron-plate", 10, defines.inventory.assembling_machine_input}}
commandqueue[36540] = {{"move", "S"}}
commandqueue[36620] = {{"move", "STOP"}}
--Presently at: (-30.25391000,38.57035000)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-30.254,40.875)
commandqueue[36617] = {{"take", {-28, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[36618] = {{"take", {-28, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[36619] = {{"take", {-28, 40}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[36621] = {{"move", "E"}}
commandqueue[36624] = {{"move", "SE"}}
commandqueue[36626] = {{"move", "STOP"}}
--Presently at: (-29.59775000,41.08593750)
commandqueue[36628] = {{"take", {-28, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[36629] = {{"take", {-28, 44}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[36630] = {{"take", {-28.5, 45.5}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[36683] = {{"put", {-25.5, 30.5}, "iron-plate", 9, defines.inventory.assembling_machine_input}}
commandqueue[36684] = {{"craft", "boiler", 1}}
commandqueue[36685] = {{"craft", "steam-engine", 1}}
commandqueue[36627] = {{"move", "N"}}
commandqueue[36736] = {{"move", "NW"}}
commandqueue[36750] = {{"move", "STOP"}}
--Presently at: (-31.07431250,23.42968750)
commandqueue[36744] = {{"put", {-26.5, 23.5}, "iron-plate", 60, defines.inventory.assembling_machine_input}}
commandqueue[36745] = {{"take", {-26.5, 23.5}, "iron-gear-wheel", 2, defines.inventory.assembling_machine_output}}
commandqueue[36746] = {{"craft", "steam-engine", 1}}
commandqueue[36747] = {{"craft", "pipe", 1}}
commandqueue[36751] = {{"move", "W"}}
commandqueue[36797] = {{"move", "SW"}}
commandqueue[36809] = {{"move", "STOP"}}
--Presently at: (-39.16806250,24.69531250)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-36.883,24.84)
commandqueue[36810] = {{"move", "S"}}
commandqueue[36839] = {{"move", "STOP"}}
--Presently at: (-36.88300000,29.14468750)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-36.863,28.734)
commandqueue[36841] = {{"take", {-35, 28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[36840] = {{"move", "S"}}
commandqueue[36843] = {{"move", "SE"}}
commandqueue[36852] = {{"move", "STOP"}}
--Presently at: (-35.91378125,30.12853125)
commandqueue[36853] = {{"move", "S"}}
commandqueue[36866] = {{"move", "STOP"}}
--Presently at: (-35.91378125,32.05821875)
commandqueue[36859] = {{"take", {-39, 33}, "coal", "all", defines.inventory.fuel}}
commandqueue[36860] = {{"take", {-41, 33}, "coal", "all", defines.inventory.fuel}}
commandqueue[36861] = {{"take", {-41, 31}, "coal", "all", defines.inventory.fuel}}
commandqueue[36862] = {{"take", {-39, 31}, "coal", "all", defines.inventory.fuel}}
commandqueue[36863] = {{"take", {-39, 29}, "coal", "all", defines.inventory.fuel}}
commandqueue[36865] = {{"take", {-41, 29}, "coal", "all", defines.inventory.fuel}}
commandqueue[36868] = {{"take", {-37, 36.3}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[36869] = {{"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[36870] = {{"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[36871] = {{"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[36873] = {{"craft", "science-pack-1", 1}}
commandqueue[36867] = {{"move", "N"}}
commandqueue[36881] = {{"move", "NW"}}
commandqueue[36968] = {{"move", "STOP"}}
--Presently at: (-45.08956250,20.80431250)
commandqueue[36969] = {{"move", "W"}}
commandqueue[37055] = {{"move", "SW"}}
commandqueue[37067] = {{"move", "STOP"}}
--Presently at: (-59.12081250,22.06993750)
commandqueue[37048] = {{"put", {-57, 22}, "coal", 2, defines.inventory.fuel}}
commandqueue[37049] = {{"put", {-57, 25}, "coal", 2, defines.inventory.fuel}}
commandqueue[37058] = {{"build", "electric-mining-drill", {-61.5, 19.5}, defines.direction.east}}
commandqueue[37059] = {{"build", "electric-mining-drill", {-61.5, 22.5}, defines.direction.east}}
commandqueue[37060] = {{"build", "transport-belt", {-59.5, 19.5}, defines.direction.south}}
commandqueue[37061] = {{"build", "transport-belt", {-59.5, 20.5}, defines.direction.south}}
commandqueue[37062] = {{"build", "transport-belt", {-59.5, 21.5}, defines.direction.south}}
commandqueue[37063] = {{"build", "transport-belt", {-59.5, 22.5}, defines.direction.south}}
commandqueue[37064] = {{"build", "transport-belt", {-59.5, 23.5}, defines.direction.east}}
commandqueue[37068] = {{"move", "S"}}
commandqueue[37081] = {{"move", "SE"}}
commandqueue[37083] = {{"move", "STOP"}}
--Presently at: (-58.90987500,24.21056250)
commandqueue[37084] = {{"mine", {-59.5, 25.5}}}
commandqueue[37134] = {{"mine", nil}}
commandqueue[37135] = {{"mine", {-59.5, 24.5}}}
commandqueue[37157] = {{"mine", nil}}
commandqueue[37159] = {{"build", "transport-belt", {-59.5, 25.5}, defines.direction.north}}
commandqueue[37160] = {{"build", "transport-belt", {-59.5, 24.5}, defines.direction.north}}
commandqueue[37158] = {{"move", "N"}}
commandqueue[37174] = {{"move", "NE"}}
commandqueue[37183] = {{"move", "STOP"}}
--Presently at: (-57.96065625,20.88634375)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-57.906,20.098)
commandqueue[37185] = {{"build", "burner-inserter", {-58.5, 20.5}, defines.direction.west}}
commandqueue[37186] = {{"put", {-58.5, 20.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[37187] = {{"craft", "iron-gear-wheel", 10}}
commandqueue[37198] = {{"build", "boiler", {-57, 19}, defines.direction.east}}
commandqueue[37234] = {{"build", "small-electric-pole", {-50.5, 17.5}, defines.direction.north}}
commandqueue[37235] = {{"build", "steam-engine", {-53.5, 19.5}, defines.direction.east}}
commandqueue[37244] = {{"build", "pipe", {-50.5, 19.5}, defines.direction.east}}
commandqueue[37284] = {{"build", "steam-engine", {-47.5, 19.5}, defines.direction.east}}
commandqueue[37184] = {{"move", "E"}}
commandqueue[37313] = {{"move", "SE"}}
commandqueue[37355] = {{"move", "STOP"}}
--Presently at: (-34.32787500,24.52768750)
commandqueue[37356] = {{"move", "E"}}
commandqueue[37376] = {{"move", "STOP"}}
--Presently at: (-30.73412500,24.52768750)
commandqueue[37377] = {{"move", "S"}}
commandqueue[37494] = {{"move", "STOP"}}
--Presently at: (-30.73412500,45.55112500)
commandqueue[37495] = {{"move", "E"}}
commandqueue[37497] = {{"move", "SE"}}
commandqueue[37511] = {{"move", "STOP"}}
--Presently at: (-28.96068750,47.02768750)
commandqueue[37512] = {{"move", "S"}}
commandqueue[37523] = {{"move", "SE"}}
commandqueue[37542] = {{"move", "STOP"}}
--Presently at: (-26.95678125,50.66440625)
commandqueue[37538] = {{"put", {-26, 53}, "coal", 6, defines.inventory.fuel}}
commandqueue[37539] = {{"put", {-24, 54}, "coal", 6, defines.inventory.fuel}}
commandqueue[37540] = {{"put", {-27, 55}, "coal", 6, defines.inventory.fuel}}
commandqueue[37541] = {{"put", {-25, 56}, "coal", 6, defines.inventory.fuel}}
commandqueue[37544] = {{"take", {-25, 54.5}, "stone", "all", defines.inventory.chest}}
commandqueue[37571] = {{"take", {-28, 46}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[37585] = {{"take", {-28, 44}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[37599] = {{"take", {-28, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[37613] = {{"take", {-28, 40}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[37627] = {{"take", {-28, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[37641] = {{"take", {-28, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[37655] = {{"take", {-28, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[37669] = {{"take", {-28, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[37683] = {{"take", {-28, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[37543] = {{"move", "N"}}
commandqueue[37693] = {{"move", "STOP"}}
--Presently at: (-26.95678125,28.39878125)
commandqueue[37691] = {{"put", {-28.3, 23.8}, "copper-plate", 11, defines.inventory.assembling_machine_input}}
commandqueue[37692] = {{"put", {-28.3, 23.8}, "science-pack-1", 1, defines.inventory.assembling_machine_output}}
commandqueue[37694] = {{"mine", {-26.5, 29.5}}}
commandqueue[37716] = {{"mine", nil}}
commandqueue[37717] = {{"mine", {-26.5, 27.5}}}
commandqueue[37739] = {{"mine", nil}}
commandqueue[37741] = {{"take", {-28, 28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[37742] = {{"take", {-28, 26}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[37754] = {{"take", {-24.5, 23.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[37740] = {{"move", "E"}}
commandqueue[37798] = {{"move", "NE"}}
commandqueue[37812] = {{"move", "STOP"}}
--Presently at: (-16.87084375,26.92221875)
commandqueue[37814] = {{"take", {-16, 22}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[37815] = {{"take", {-16, 24}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[37816] = {{"take", {-16, 26}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[37817] = {{"craft", "long-handed-inserter", 3}}
commandqueue[37818] = {{"craft", "electric-mining-drill", 4}}
commandqueue[37819] = {{"craft", "iron-gear-wheel", 3}}
commandqueue[37813] = {{"move", "S"}}
commandqueue[37830] = {{"move", "SE"}}
commandqueue[37867] = {{"move", "STOP"}}
--Presently at: (-12.96850000,33.34800000)
commandqueue[37868] = {{"move", "E"}}
commandqueue[37888] = {{"move", "NE"}}
commandqueue[37895] = {{"move", "STOP"}}
--Presently at: (-9.26146875,32.60971875)
commandqueue[37896] = {{"move", "N"}}
commandqueue[37899] = {{"move", "NW"}}
commandqueue[37902] = {{"move", "STOP"}}
--Presently at: (-9.57787500,31.84800000)
commandqueue[37915] = {{"take", {-7, 31}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[37926] = {{"take", {-7, 29}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[37927] = {{"put", {-7, 29}, "coal", 2, defines.inventory.fuel}}
commandqueue[37937] = {{"take", {-7, 27}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[37938] = {{"put", {-7, 27}, "coal", 2, defines.inventory.fuel}}
commandqueue[37948] = {{"take", {-7, 25}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[37949] = {{"put", {-7, 25}, "coal", 2, defines.inventory.fuel}}
commandqueue[37959] = {{"take", {-7, 23}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[37960] = {{"put", {-7, 23}, "coal", 2, defines.inventory.fuel}}
commandqueue[37970] = {{"take", {-7, 21}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[37971] = {{"put", {-7, 21}, "coal", 1, defines.inventory.fuel}}
commandqueue[37981] = {{"take", {-7, 19}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[37982] = {{"put", {-7, 19}, "coal", 1, defines.inventory.fuel}}
commandqueue[37992] = {{"take", {-7, 17}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[37993] = {{"put", {-7, 17}, "coal", 1, defines.inventory.fuel}}
commandqueue[38003] = {{"take", {-7, 15}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[38004] = {{"put", {-7, 15}, "coal", 1, defines.inventory.fuel}}
commandqueue[38013] = {{"take", {-7, 13}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[38014] = {{"put", {-7, 13}, "coal", 1, defines.inventory.fuel}}
commandqueue[37903] = {{"move", "N"}}
commandqueue[38009] = {{"move", "STOP"}}
--Presently at: (-9.57787500,12.80112500)
commandqueue[38010] = {{"move", "N"}}
commandqueue[38032] = {{"move", "NE"}}
commandqueue[38066] = {{"move", "STOP"}}
--Presently at: (-5.99193750,5.94956250)
commandqueue[38067] = {{"move", "E"}}
commandqueue[38310] = {{"move", "NE"}}
commandqueue[38414] = {{"move", "STOP"}}
--Presently at: (41.04712500,-5.01918750)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (41.097,-4.48)
commandqueue[38416] = {{"take", {40, -6}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[38417] = {{"take", {40, -6}, "iron-ore", "all", defines.inventory.furnace_source}}
commandqueue[38418] = {{"put", {45, -6}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[38419] = {{"put", {45, -6}, "coal", 1, defines.inventory.fuel}}
commandqueue[38429] = {{"take", {40, -8}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[38430] = {{"take", {40, -8}, "iron-ore", "all", defines.inventory.furnace_source}}
commandqueue[38431] = {{"put", {45, -8}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[38432] = {{"put", {45, -8}, "coal", 1, defines.inventory.fuel}}
commandqueue[38443] = {{"take", {40, -10}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[38444] = {{"take", {40, -10}, "iron-ore", "all", defines.inventory.furnace_source}}
commandqueue[38445] = {{"put", {45, -10}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[38446] = {{"put", {45, -10}, "coal", 1, defines.inventory.fuel}}
commandqueue[38457] = {{"take", {40, -12}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[38458] = {{"take", {40, -12}, "iron-ore", "all", defines.inventory.furnace_source}}
commandqueue[38459] = {{"put", {45, -12}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[38460] = {{"put", {45, -12}, "coal", 1, defines.inventory.fuel}}
commandqueue[38471] = {{"take", {40, -14}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[38472] = {{"take", {40, -14}, "iron-ore", "all", defines.inventory.furnace_source}}
commandqueue[38473] = {{"put", {45, -14}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[38474] = {{"put", {45, -14}, "coal", 1, defines.inventory.fuel}}
commandqueue[38485] = {{"take", {40, -16}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[38486] = {{"take", {40, -16}, "iron-ore", "all", defines.inventory.furnace_source}}
commandqueue[38487] = {{"put", {45, -16}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[38488] = {{"put", {45, -16}, "coal", 1, defines.inventory.fuel}}
commandqueue[38499] = {{"take", {40, -18}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[38500] = {{"take", {40, -18}, "iron-ore", "all", defines.inventory.furnace_source}}
commandqueue[38501] = {{"put", {45, -18}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[38502] = {{"put", {45, -18}, "coal", 1, defines.inventory.fuel}}
commandqueue[38510] = {{"take", {40, -20}, "iron-ore", "all", defines.inventory.furnace_source}}
commandqueue[38511] = {{"put", {45, -20}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[38512] = {{"put", {45, -20}, "coal", 1, defines.inventory.fuel}}
commandqueue[38513] = {{"take", {40, -20}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[38514] = {{"build", "assembling-machine-1", {42.5, -19.5}, defines.direction.north}}
commandqueue[38515] = {{"recipe", {42.5,-19.5}, "iron-gear-wheel"}}
commandqueue[38516] = {{"put", {42.5, -19.5}, "iron-plate", 28, defines.inventory.assembling_machine_input}}
commandqueue[38517] = {{"build", "long-handed-inserter", {42.5, -21.5}, defines.direction.south}}
commandqueue[38518] = {{"build", "assembling-machine-1", {42.5, -23.5}, defines.direction.north}}
commandqueue[38519] = {{"recipe", {42.5,-23.5}, "burner-inserter"}}
commandqueue[38520] = {{"put", {42.5, -23.5}, "iron-plate", 15, defines.inventory.assembling_machine_input}}
commandqueue[38521] = {{"put", {42.5, -23.5}, "iron-gear-wheel", 1, defines.inventory.assembling_machine_input}}
commandqueue[38522] = {{"build", "long-handed-inserter", {42.5, -25.5}, defines.direction.south}}
commandqueue[38527] = {{"take", {40, -22}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[38528] = {{"take", {40, -22}, "iron-ore", "all", defines.inventory.furnace_source}}
commandqueue[38529] = {{"put", {45, -22}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[38530] = {{"put", {45, -22}, "coal", 1, defines.inventory.fuel}}
commandqueue[38541] = {{"take", {40, -24}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[38542] = {{"take", {40, -24}, "iron-ore", "all", defines.inventory.furnace_source}}
commandqueue[38543] = {{"put", {45, -24}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[38544] = {{"put", {45, -24}, "coal", 1, defines.inventory.fuel}}
commandqueue[38555] = {{"take", {40, -26}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[38556] = {{"take", {40, -26}, "iron-ore", "all", defines.inventory.furnace_source}}
commandqueue[38557] = {{"put", {45, -26}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[38558] = {{"put", {45, -26}, "coal", 1, defines.inventory.fuel}}
commandqueue[38566] = {{"take", {40, -28}, "iron-ore", "all", defines.inventory.furnace_source}}
commandqueue[38567] = {{"put", {45, -28}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[38568] = {{"put", {45, -28}, "coal", 1, defines.inventory.fuel}}
commandqueue[38569] = {{"take", {40, -28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[38570] = {{"build", "wooden-chest", {42.5, -27.5}, defines.direction.north}}
commandqueue[38571] = {{"take", {42.5, -31.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[38572] = {{"recipe", {42.5,-31.5}, "electronic-circuit"}}
commandqueue[38573] = {{"put", {42.5, -31.5}, "iron-plate", 33, defines.inventory.assembling_machine_input}}
commandqueue[38574] = {{"put", {42.5, -31.5}, "copper-cable", 9, defines.inventory.assembling_machine_input}}
commandqueue[38575] = {{"build", "long-handed-inserter", {42.5, -29.5}, defines.direction.north}}
commandqueue[38576] = {{"craft", "electric-mining-drill", 2}}
commandqueue[38577] = {{"craft", "assembling-machine-1", 1}}
commandqueue[38583] = {{"take", {40, -30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[38584] = {{"take", {40, -30}, "iron-ore", "all", defines.inventory.furnace_source}}
commandqueue[38585] = {{"put", {45, -30}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[38586] = {{"put", {45, -30}, "coal", 1, defines.inventory.fuel}}
commandqueue[38595] = {{"take", {42.5, -35.5}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[38596] = {{"take", {42.5, -35.5}, "copper-plate", "all", defines.inventory.assembling_machine_input}}
commandqueue[38597] = {{"take", {40, -32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[38598] = {{"recipe", {42.5,-35.5}, "iron-gear-wheel"}}
commandqueue[38599] = {{"put", {42.5, -35.5}, "iron-plate", 50, defines.inventory.assembling_machine_input}}
commandqueue[38600] = {{"put", {42.5, -31.5}, "copper-cable", 90, defines.inventory.assembling_machine_input}}
commandqueue[38601] = {{"put", {41.5, -37.5}, "iron-plate", 40, defines.inventory.assembling_machine_input}}
commandqueue[38602] = {{"take", {40, -32}, "iron-ore", "all", defines.inventory.furnace_source}}
commandqueue[38603] = {{"put", {45, -32}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[38604] = {{"put", {45, -32}, "coal", 1, defines.inventory.fuel}}
commandqueue[38611] = {{"take", {40, -34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[38612] = {{"take", {40, -34}, "iron-ore", "all", defines.inventory.furnace_source}}
commandqueue[38613] = {{"put", {45, -34}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[38614] = {{"put", {45, -34}, "coal", 1, defines.inventory.fuel}}
commandqueue[38625] = {{"take", {40, -36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[38639] = {{"take", {40, -38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[38653] = {{"take", {40, -40}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[38654] = {{"put", {42.5, -43.5}, "iron-plate", 20, defines.inventory.assembling_machine_input}}
commandqueue[38667] = {{"take", {40, -42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[38681] = {{"take", {40, -44}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[38682] = {{"take", {40, -44}, "iron-ore", "all", defines.inventory.furnace_source}}
commandqueue[38695] = {{"take", {40, -46}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[38696] = {{"take", {40, -46}, "iron-ore", "all", defines.inventory.furnace_source}}
commandqueue[38697] = {{"put", {45, -44}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[38698] = {{"put", {45, -44}, "coal", 2, defines.inventory.fuel}}
commandqueue[38709] = {{"take", {40, -48}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[38710] = {{"take", {40, -48}, "iron-ore", "all", defines.inventory.furnace_source}}
commandqueue[38723] = {{"take", {40, -50}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[38724] = {{"take", {40, -50}, "iron-ore", "all", defines.inventory.furnace_source}}
commandqueue[38725] = {{"put", {45, -50}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[38726] = {{"put", {45, -50}, "coal", 2, defines.inventory.fuel}}
commandqueue[38745] = {{"take", {42.5, -48.5}, "transport-belt", "all", defines.inventory.chest}}
commandqueue[38746] = {{"take", {43.5, -48.5}, "transport-belt", "all", defines.inventory.chest}}
commandqueue[38747] = {{"take", {43.5, -48.5}, "burner-inserter", "all", defines.inventory.chest}}
commandqueue[38415] = {{"move", "N"}}
commandqueue[38736] = {{"move", "NE"}}
commandqueue[38764] = {{"move", "STOP"}}
--Presently at: (44.05012500,-55.08156250)
commandqueue[38766] = {{"build", "electric-mining-drill", {42.5, -60.5}, defines.direction.east}}
commandqueue[38767] = {{"build", "transport-belt", {44.5, -60.5}, defines.direction.south}}
commandqueue[38768] = {{"build", "transport-belt", {44.5, -59.5}, defines.direction.south}}
commandqueue[38769] = {{"build", "transport-belt", {44.5, -58.5}, defines.direction.south}}
commandqueue[38771] = {{"build", "transport-belt", {44.5, -57.5}, defines.direction.south}}
commandqueue[38772] = {{"build", "transport-belt", {44.5, -56.5}, defines.direction.south}}
commandqueue[38773] = {{"build", "electric-mining-drill", {42.5, -56.5}, defines.direction.east}}
commandqueue[38774] = {{"build", "transport-belt", {44.5, -55.5}, defines.direction.south}}
commandqueue[38775] = {{"build", "transport-belt", {44.5, -54.5}, defines.direction.south}}
commandqueue[38776] = {{"build", "transport-belt", {44.5, -53.5}, defines.direction.south}}
commandqueue[38777] = {{"build", "transport-belt", {44.5, -52.5}, defines.direction.south}}
commandqueue[38778] = {{"build", "transport-belt", {44.5, -51.5}, defines.direction.east}}
commandqueue[38779] = {{"build", "transport-belt", {45.5, -51.5}, defines.direction.east}}
commandqueue[38780] = {{"build", "transport-belt", {46.5, -51.5}, defines.direction.east}}
commandqueue[38781] = {{"build", "small-electric-pole", {46.5, -52.5}, defines.direction.north}}
commandqueue[38782] = {{"build", "electric-mining-drill", {49.5, -51.5}, defines.direction.west}}
commandqueue[38783] = {{"build", "transport-belt", {47.5, -52.5}, defines.direction.south}}
commandqueue[38784] = {{"build", "transport-belt", {47.5, -51.5}, defines.direction.south}}
commandqueue[38785] = {{"build", "transport-belt", {47.5, -50.5}, defines.direction.south}}
commandqueue[38786] = {{"build", "transport-belt", {47.5, -49.5}, defines.direction.south}}
commandqueue[38787] = {{"build", "burner-inserter", {46.5, -49.5}, defines.direction.east}}
commandqueue[38788] = {{"put", {46.5, -49.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[38765] = {{"move", "S"}}
commandqueue[38770] = {{"move", "SE"}}
commandqueue[38803] = {{"move", "STOP"}}
--Presently at: (47.53059375,-50.85890625)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (47.61,-50.609)
commandqueue[38805] = {{"take", {42.5, -48.5}, "transport-belt", "all", defines.inventory.chest}}
commandqueue[38806] = {{"take", {43.5, -48.5}, "transport-belt", "all", defines.inventory.chest}}
commandqueue[38808] = {{"build", "electric-mining-drill", {49.5, -45.5}, defines.direction.west}}
commandqueue[38809] = {{"take", {45, -48}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[38810] = {{"take", {45, -46}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[38838] = {{"take", {45, -42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[38852] = {{"take", {45, -40}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[38888] = {{"put", {45, -38}, "coal", 2, defines.inventory.fuel}}
commandqueue[38889] = {{"put", {45, -36}, "coal", 2, defines.inventory.fuel}}
commandqueue[38890] = {{"build", "electric-mining-drill", {49.5, -39.5}, defines.direction.west}}
commandqueue[38891] = {{"build", "small-electric-pole", {46.5, -36.5}, defines.direction.north}}
commandqueue[38892] = {{"build", "electric-mining-drill", {49.5, -36.5}, defines.direction.west}}
commandqueue[38893] = {{"build", "transport-belt", {47.5, -34.5}, defines.direction.south}}
commandqueue[38894] = {{"build", "transport-belt", {47.5, -33.5}, defines.direction.south}}
commandqueue[38895] = {{"build", "transport-belt", {47.5, -32.5}, defines.direction.south}}
commandqueue[38896] = {{"build", "transport-belt", {47.5, -31.5}, defines.direction.south}}
commandqueue[38897] = {{"build", "transport-belt", {47.5, -30.5}, defines.direction.south}}
commandqueue[38804] = {{"move", "S"}}
commandqueue[38919] = {{"move", "STOP"}}
--Presently at: (47.61000000,-29.94493750)
commandqueue[38918] = {{"build", "small-electric-pole", {46.5, -27.5}, defines.direction.north}}
commandqueue[38921] = {{"take", {42.5, -27.5}, "burner-inserter", "all", defines.inventory.chest}}
commandqueue[38922] = {{"build", "burner-inserter", {46.5, -33.5}, defines.direction.east}}
commandqueue[38923] = {{"put", {46.5, -33.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[38924] = {{"build", "burner-inserter", {46.5, -31.5}, defines.direction.east}}
commandqueue[38926] = {{"put", {46.5, -31.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[38927] = {{"take", {45, -34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[38928] = {{"take", {45, -32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[38929] = {{"take", {45, -30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[38930] = {{"take", {45, -28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[38931] = {{"take", {45, -26}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[38932] = {{"take", {45, -24}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[38920] = {{"move", "W"}}
commandqueue[38925] = {{"move", "SW"}}
commandqueue[38934] = {{"move", "STOP"}}
--Presently at: (45.91859375,-28.99571875)
commandqueue[38933] = {{"take", {43.5, -34.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[38936] = {{"build", "burner-inserter", {46.5, -29.5}, defines.direction.east}}
commandqueue[38937] = {{"put", {46.5, -29.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[38938] = {{"craft", "assembling-machine-1", 1}}
commandqueue[38939] = {{"craft", "long-handed-inserter", 1}}
commandqueue[38940] = {{"craft", "electric-mining-drill", 1}}
commandqueue[38941] = {{"take", {42.5, -27.5}, "electronic-circuit", "all", defines.inventory.chest}}
commandqueue[38942] = {{"take", {42.5, -27.5}, "burner-inserter", "all", defines.inventory.chest}}
commandqueue[38991] = {{"take", {45, -22}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39005] = {{"take", {45, -20}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39019] = {{"take", {45, -18}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39020] = {{"build", "assembling-machine-1", {42.5, -14.5}, defines.direction.north}}
commandqueue[39021] = {{"recipe", {42.5,-14.5}, "iron-gear-wheel"}}
commandqueue[39022] = {{"put", {42.5, -14.5}, "iron-plate", 40, defines.inventory.assembling_machine_input}}
commandqueue[39033] = {{"take", {45, -16}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39047] = {{"take", {45, -14}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39061] = {{"take", {45, -12}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[38935] = {{"move", "W"}}
commandqueue[38948] = {{"move", "STOP"}}
--Presently at: (43.98890625,-28.99571875)
commandqueue[38949] = {{"move", "S"}}
commandqueue[39057] = {{"move", "SW"}}
commandqueue[39086] = {{"move", "STOP"}}
--Presently at: (40.93031250,-9.90587500)
commandqueue[39083] = {{"take", {45, -10}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39084] = {{"take", {45, -8}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39085] = {{"take", {45, -6}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39088] = {{"build", "assembling-machine-1", {42.5, -11.5}, defines.direction.north}}
commandqueue[39089] = {{"recipe", {42.5,-11.5}, "iron-gear-wheel"}}
commandqueue[39090] = {{"put", {42.5, -11.5}, "iron-plate", 40, defines.inventory.assembling_machine_input}}
commandqueue[39091] = {{"take", {40, -6}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39092] = {{"put", {40, -6}, "coal", 1, defines.inventory.fuel}}
commandqueue[39093] = {{"take", {40, -8}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39094] = {{"put", {40, -8}, "coal", 1, defines.inventory.fuel}}
commandqueue[39095] = {{"take", {40, -10}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39096] = {{"put", {40, -10}, "coal", 1, defines.inventory.fuel}}
commandqueue[39097] = {{"take", {40, -12}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39098] = {{"put", {40, -12}, "coal", 1, defines.inventory.fuel}}
commandqueue[39101] = {{"take", {40, -14}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39102] = {{"put", {40, -14}, "coal", 1, defines.inventory.fuel}}
commandqueue[39115] = {{"take", {40, -16}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39116] = {{"put", {40, -16}, "coal", 1, defines.inventory.fuel}}
commandqueue[39129] = {{"take", {40, -18}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39130] = {{"put", {40, -18}, "coal", 1, defines.inventory.fuel}}
commandqueue[39142] = {{"put", {40, -20}, "coal", 1, defines.inventory.fuel}}
commandqueue[39143] = {{"take", {40, -20}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39144] = {{"put", {42.5, -19.5}, "iron-plate", 24, defines.inventory.assembling_machine_input}}
commandqueue[39145] = {{"recipe", {42.5,-23.5}, "transport-belt"}}
commandqueue[39146] = {{"put", {42.5, -23.5}, "iron-plate", 12, defines.inventory.assembling_machine_input}}
commandqueue[39157] = {{"take", {40, -22}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39158] = {{"put", {40, -22}, "coal", 1, defines.inventory.fuel}}
commandqueue[39171] = {{"take", {40, -24}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39172] = {{"build", "long-handed-inserter", {43.5, -25.5}, defines.direction.south}}
commandqueue[39173] = {{"build", "wooden-chest", {43.5, -27.5}, defines.direction.north}}
commandqueue[39174] = {{"put", {40, -24}, "coal", 1, defines.inventory.fuel}}
commandqueue[39185] = {{"take", {40, -26}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39186] = {{"put", {40, -26}, "coal", 1, defines.inventory.fuel}}
commandqueue[39199] = {{"take", {40, -28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39200] = {{"put", {40, -28}, "coal", 1, defines.inventory.fuel}}
commandqueue[39201] = {{"take", {42.5, -27.5}, "burner-inserter", "all", defines.inventory.chest}}
commandqueue[39202] = {{"take", {42.5, -27.5}, "electronic-circuit", "all", defines.inventory.chest}}
commandqueue[39213] = {{"take", {40, -30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39214] = {{"put", {40, -30}, "coal", 1, defines.inventory.fuel}}
commandqueue[39227] = {{"take", {40, -32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39228] = {{"put", {40, -32}, "coal", 1, defines.inventory.fuel}}
commandqueue[39241] = {{"take", {40, -34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39255] = {{"take", {40, -36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39269] = {{"take", {40, -38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39283] = {{"take", {40, -40}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39284] = {{"take", {41.5, -36.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[39285] = {{"put", {41.5, -36.5}, "iron-plate", 10, defines.inventory.assembling_machine_input}}
commandqueue[39297] = {{"take", {40, -42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39311] = {{"take", {40, -44}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39326] = {{"take", {40, -46}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39327] = {{"take", {40, -48}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39328] = {{"take", {40, -50}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39329] = {{"craft", "electric-mining-drill", 1}}
commandqueue[39330] = {{"craft", "burner-inserter", 1}}
commandqueue[39087] = {{"move", "N"}}
commandqueue[39323] = {{"move", "STOP"}}
--Presently at: (40.93031250,-44.93712500)
commandqueue[39324] = {{"move", "E"}}
commandqueue[39359] = {{"move", "SE"}}
commandqueue[39371] = {{"move", "STOP"}}
--Presently at: (47.39125000,-43.67150000)
commandqueue[39357] = {{"take", {42.5, -48.5}, "transport-belt", "all", defines.inventory.chest}}
commandqueue[39358] = {{"take", {43.5, -48.5}, "transport-belt", "all", defines.inventory.chest}}
commandqueue[39360] = {{"put", {45, -48}, "coal", 1, defines.inventory.fuel}}
commandqueue[39361] = {{"put", {45, -46}, "coal", 1, defines.inventory.fuel}}
commandqueue[39362] = {{"put", {45, -42}, "coal", 1, defines.inventory.fuel}}
commandqueue[39363] = {{"put", {45, -40}, "coal", 1, defines.inventory.fuel}}
commandqueue[39364] = {{"take", {45, -50}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39365] = {{"take", {45, -48}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39366] = {{"take", {45, -46}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39367] = {{"take", {45, -44}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39368] = {{"take", {45, -42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39369] = {{"take", {45, -40}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39370] = {{"put", {42.5, -43.5}, "iron-plate", 10, defines.inventory.assembling_machine_input}}
commandqueue[39405] = {{"take", {45, -38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39406] = {{"build", "electric-mining-drill", {49.5, -33.5}, defines.direction.west}}
commandqueue[39416] = {{"take", {45, -36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39417] = {{"put", {42.5, -38.5}, "iron-plate", 20, defines.inventory.assembling_machine_input}}
commandqueue[39448] = {{"take", {43.5, -34.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[39449] = {{"build", "transport-belt", {47.5, -29.5}, defines.direction.south}}
commandqueue[39450] = {{"craft", "burner-inserter", 2}}
commandqueue[39456] = {{"build", "transport-belt", {47.5, -28.5}, defines.direction.south}}
commandqueue[39460] = {{"build", "transport-belt", {47.5, -27.5}, defines.direction.south}}
commandqueue[39461] = {{"build", "burner-inserter", {46.5, -28.5}, defines.direction.east}}
commandqueue[39462] = {{"put", {46.5, -28.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[39467] = {{"build", "transport-belt", {47.5, -26.5}, defines.direction.south}}
commandqueue[39468] = {{"build", "burner-inserter", {46.5, -26.5}, defines.direction.east}}
commandqueue[39469] = {{"put", {46.5, -26.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[39471] = {{"build", "transport-belt", {47.5, -25.5}, defines.direction.south}}
commandqueue[39472] = {{"take", {42.5, -27.5}, "transport-belt", "all", defines.inventory.chest}}
commandqueue[39473] = {{"take", {43.5, -27.5}, "transport-belt", "all", defines.inventory.chest}}
commandqueue[39474] = {{"build", "electric-mining-drill", {49.5, -30.5}, defines.direction.west}}
commandqueue[39478] = {{"build", "transport-belt", {47.5, -24.5}, defines.direction.south}}
commandqueue[39479] = {{"build", "burner-inserter", {46.5, -24.5}, defines.direction.east}}
commandqueue[39480] = {{"put", {46.5, -24.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[39482] = {{"build", "transport-belt", {47.5, -23.5}, defines.direction.south}}
commandqueue[39489] = {{"build", "transport-belt", {47.5, -22.5}, defines.direction.south}}
commandqueue[39490] = {{"build", "burner-inserter", {46.5, -22.5}, defines.direction.east}}
commandqueue[39491] = {{"put", {46.5, -22.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[39493] = {{"build", "transport-belt", {47.5, -21.5}, defines.direction.south}}
commandqueue[39500] = {{"build", "transport-belt", {47.5, -20.5}, defines.direction.south}}
commandqueue[39501] = {{"build", "burner-inserter", {46.5, -20.5}, defines.direction.east}}
commandqueue[39502] = {{"put", {46.5, -20.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[39504] = {{"build", "transport-belt", {47.5, -19.5}, defines.direction.south}}
commandqueue[39511] = {{"build", "transport-belt", {47.5, -18.5}, defines.direction.south}}
commandqueue[39512] = {{"build", "burner-inserter", {46.5, -18.5}, defines.direction.east}}
commandqueue[39513] = {{"put", {46.5, -18.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[39515] = {{"build", "transport-belt", {47.5, -17.5}, defines.direction.south}}
commandqueue[39522] = {{"build", "transport-belt", {47.5, -16.5}, defines.direction.south}}
commandqueue[39523] = {{"build", "burner-inserter", {46.5, -16.5}, defines.direction.east}}
commandqueue[39524] = {{"put", {46.5, -16.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[39526] = {{"build", "transport-belt", {47.5, -15.5}, defines.direction.south}}
commandqueue[39533] = {{"build", "transport-belt", {47.5, -14.5}, defines.direction.south}}
commandqueue[39534] = {{"build", "burner-inserter", {46.5, -14.5}, defines.direction.east}}
commandqueue[39535] = {{"take", {42.5, -14.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[39536] = {{"craft", "assembling-machine-1", 1}}
commandqueue[39537] = {{"build", "transport-belt", {47.5, -13.5}, defines.direction.south}}
commandqueue[39544] = {{"build", "transport-belt", {47.5, -12.5}, defines.direction.south}}
commandqueue[39548] = {{"build", "transport-belt", {47.5, -11.5}, defines.direction.south}}
commandqueue[39555] = {{"build", "transport-belt", {47.5, -10.5}, defines.direction.south}}
commandqueue[39559] = {{"build", "transport-belt", {47.5, -9.5}, defines.direction.south}}
commandqueue[39566] = {{"build", "transport-belt", {47.5, -8.5}, defines.direction.south}}
commandqueue[39567] = {{"build", "transport-belt", {47.5, -7.5}, defines.direction.south}}
commandqueue[39568] = {{"build", "transport-belt", {47.5, -6.5}, defines.direction.south}}
commandqueue[39372] = {{"move", "S"}}
commandqueue[39562] = {{"move", "STOP"}}
--Presently at: (47.39125000,-9.53087500)
commandqueue[39563] = {{"move", "W"}}
commandqueue[39569] = {{"move", "SW"}}
commandqueue[39575] = {{"move", "STOP"}}
--Presently at: (45.86781250,-8.89806250)
commandqueue[39577] = {{"build", "burner-inserter", {46.5, -12.5}, defines.direction.east}}
commandqueue[39578] = {{"take", {42.5, -11.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[39579] = {{"craft", "electric-mining-drill", 1}}
commandqueue[39580] = {{"build", "assembling-machine-1", {42.5, -7.5}, defines.direction.north}}
commandqueue[39576] = {{"move", "W"}}
commandqueue[39588] = {{"move", "STOP"}}
--Presently at: (44.08656250,-8.89806250)
commandqueue[39590] = {{"take", {40, -6}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39591] = {{"take", {40, -8}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39592] = {{"take", {40, -10}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39593] = {{"take", {40, -12}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39603] = {{"take", {40, -14}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39617] = {{"take", {40, -16}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39631] = {{"take", {40, -18}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39632] = {{"take", {42.5, -11.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[39633] = {{"take", {42.5, -14.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[39634] = {{"craft", "electric-mining-drill", 1}}
commandqueue[39645] = {{"take", {40, -20}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39659] = {{"take", {40, -22}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39673] = {{"take", {40, -24}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39687] = {{"take", {40, -26}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39701] = {{"take", {40, -28}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39715] = {{"take", {40, -30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39716] = {{"take", {42.5, -27.5}, "transport-belt", "all", defines.inventory.chest}}
commandqueue[39717] = {{"take", {43.5, -27.5}, "transport-belt", "all", defines.inventory.chest}}
commandqueue[39718] = {{"take", {42.5, -27.5}, "electronic-circuit", "all", defines.inventory.chest}}
commandqueue[39729] = {{"take", {40, -32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39743] = {{"take", {40, -34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39757] = {{"take", {40, -36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39771] = {{"take", {40, -38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39785] = {{"take", {40, -40}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39786] = {{"take", {42.5, -35.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[39799] = {{"take", {40, -42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39813] = {{"take", {40, -44}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39828] = {{"take", {40, -46}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39829] = {{"take", {40, -48}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39589] = {{"move", "N"}}
commandqueue[39839] = {{"move", "STOP"}}
--Presently at: (44.08656250,-46.00743750)
commandqueue[39838] = {{"take", {40, -50}, "iron-plate", "all", defines.inventory.furnace_result}}
-- ----------------------------------------- --
-- Various controls and end of run messages. --
-- ----------------------------------------- --
commandqueue[39850] = {{"print", "End of programmed route at tick 39840."}}
commandqueue[39851] = {{"print", "Carried out 4205 actions in 0h:11m:4sec."}}
commandqueue[39852] = {{"print", "This corresponds to an average APM of 379.9699."}}
commandqueue[6] = {{"print", "#===================================================#"}}
commandqueue[7] = {{"print", "#         Welcome to this tool-assisted speedrun of factorio!            #"}}
commandqueue[8] = {{"print", "# Please lean back, praise the steel-axe and enjoy what it looks  #"}}
commandqueue[9] = {{"print", "#           like when a game about automation is automated :)          #"}}
commandqueue[10] = {{"print", "#                                               - Starbrow                                                #"}}
commandqueue[11] = {{"print", "#===================================================# "}}
commandqueue[863] = {{"print", "#=========================================================================#"}}
commandqueue[864] = {{"print", "#              The actions that the script performs can be read here in this wall of text.                   #"}}
commandqueue[865] = {{"print", "#  The number in [brackets] is the tick that the action is performed at (60 ticks to a second). #"}}
commandqueue[866] = {{"print", "#=========================================================================# "}}
commandqueue[39973] = {{"print", "#=====================================================#"}}
commandqueue[39974] = {{"print", "# I hope you have enjoyed watching this TAS speedrun of factorio,  #"}}
commandqueue[39975] = {{"print", "# even though this project is still a work in progress!                           #"}}
commandqueue[39976] = {{"print", "#=====================================================# "}}
commandqueue[39977] = {{"print", "# This run was programmed by Starbrow, and compiled on:               #"}}
commandqueue[39978] = {{"print", "# 29-Aug-2017 22:58:47                                                                             #"}}
commandqueue[39979] = {{"print", "#=====================================================#  "}}
commandqueue[39980] = {{"print", "# Shoutout to AntiElitz for inspiring me to do factorio related            #"}}
commandqueue[39981] = {{"print", "# speed-running, to the TeamSteelaxe discord channel, to                #"}}
commandqueue[39982] = {{"print", "# szerspliexiust and Hexicube for coding the first scripts,                  #"}}
commandqueue[39983] = {{"print", "# since much revised by your name here, Alastor and Bilka.               #"}}
commandqueue[39984] = {{"print", "#=====================================================#   "}}

return commandqueue
