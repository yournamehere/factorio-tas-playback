-- The map exchange string is: >>>AAAPABUAAAADAAcAAAAEAAAAY29hbAUEBQoAAABjb3BwZXItb3JlBQUFCQAAAGNydWRlLW9pbAQFBQoAAABlbmVteS1iYXNlAQADCAAAAGlyb24tb3JlBQUFBQAAAHN0b25lBQQFCwAAAHVyYW5pdW0tb3JlAQADjvdOcoCEHgCAhB4AAwEBAQF7FK5H4XqUPwEAAAAAAAAuQAEAAAAAAADwPwEAAAAAAFi7QAEAAAAAAOCFQAEAAAAAAFirQAEAAAAAAIjDQAEAAAAAAECfQAEAAAAAAEB/QAEAAAAAAECPQAEzMzMzMzPzPwEzMzMzMzPzPwF7FK5H4Xp0PwEAAQAAAAAAAAhAAQAAAAAAAAhAAXsUrkfheoQ/AQABAQGN7bWg98bQPgH8qfHSTWJgPwFpHVVNEHXvPgEBAQcAAAABAgAAAAECAAAAAZqZmZmZmbk/AQAAAAAAAABAAQAAAAAAAOA/AZqZmZmZmdk/Ac3MzMzMzOw/AQUAAAABFAAAAAFAOAAAAcBLAwABEA4AAAGgjAAAASAcAAABAAAAAAAAPkABAAAAAAAAFEABZmZmZmZm9j8BMzMzMzMz4z8BMzMzMzMz0z8BAAAAAAAACEABAAAAAAAAJEABPAAAAAEeAAAAAcgAAAABBQAAAAEAAAAAAAAAQAEBAQAAAAAAAFlAAQUAAAABGQAAAAEAAAAAAAAkQAEyAAAAAQAAAAAAAD5AAWQAAAABmpmZmZmZyT8BMzMzMzMzwz8BMzMzMzMz0z8BMzMzMzMz0z8BAAAAAAAAJEABAAAAAAAANEABAAAAAAAAPkABAAAAAAAAFEABAAAAAAAAPkABAAAAAAAAJEABAAAAAAAACEABCgAAAAFkAAAAAWQAAAAB6AMAAAEAAAAAAADgPwHQBwAAAQAAAAAAQH9AAwAAAAAAAAAAAAAA8D8SVIG9<<<
local commandqueue = {}

commandqueue["settings"] = {
    allowspeed = true
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
commandqueue[1] = {
    {"move", "W"}
}
commandqueue[3] = {
    {"move", "SW"}
}
commandqueue[209] = {
    {"move", "STOP"}
--Presently at: (-22.02343750,21.72656250)
}
commandqueue[210] = {
    {"mine", {-23.3, 23}}
}
commandqueue[260] = {
    {"mine", nil}
}
commandqueue[2] = {
    {"craft", "iron-axe", 1}
}
commandqueue[4] = {
    {"craft", "iron-gear-wheel", 2}
}
commandqueue[261] = {
    {"move", "W"}
}
commandqueue[299] = {
    {"move", "SW"}
}
commandqueue[378] = {
    {"move", "STOP"}
--Presently at: (-35.99609375,30.05859375)
}
commandqueue[340] = {
    {"build", "burner-mining-drill", {-35, 31}, defines.direction.west}
}
commandqueue[341] = {
    {"put", {-35, 31}, "raw-wood", 2, defines.inventory.fuel}
}
commandqueue[379] = {
    {"move", "S"}
}
commandqueue[386] = {
    {"move", "STOP"}
--Presently at: (-35.99609375,31.09765625)
}
commandqueue[387] = {
    {"mine", {-37, 32.4}}
}
commandqueue[487] = {
    {"mine", nil}
}
commandqueue[488] = {
    {"build", "stone-furnace", {-37, 31}, defines.direction.north}
}
commandqueue[489] = {
    {"put", {-37, 31}, "raw-wood", 2, defines.inventory.fuel}
}
commandqueue[490] = {
    {"move", "N"}
}
commandqueue[498] = {
    {"move", "NE"}
}
commandqueue[500] = {
    {"move", "STOP"}
--Presently at: (-35.78515625,29.69921875)
}
commandqueue[501] = {
    {"mine", {-35.6, 27.9}}
}
commandqueue[551] = {
    {"mine", nil}
}
commandqueue[552] = {
    {"put", {-35, 31}, "raw-wood", 1, defines.inventory.fuel}
}
commandqueue[553] = {
    {"put", {-37, 31}, "raw-wood", 1, defines.inventory.fuel}
}
commandqueue[554] = {
    {"move", "N"}
}
commandqueue[557] = {
    {"move", "NW"}
}
commandqueue[565] = {
    {"move", "STOP"}
--Presently at: (-36.62890625,28.41015625)
}
commandqueue[566] = {
    {"mine", {-37.6, 26.9}}
}
commandqueue[616] = {
    {"mine", nil}
}
commandqueue[617] = {
    {"move", "W"}
}
commandqueue[637] = {
    {"move", "NW"}
}
commandqueue[655] = {
    {"move", "STOP"}
--Presently at: (-41.49609375,26.51171875)
}
commandqueue[656] = {
    {"mine", {-43.1, 25.9}}
}
commandqueue[706] = {
    {"mine", nil}
}
commandqueue[707] = {
    {"move", "W"}
}
commandqueue[726] = {
    {"move", "NW"}
}
commandqueue[763] = {
    {"move", "STOP"}
--Presently at: (-48.21875000,22.60937500)
}
commandqueue[764] = {
    {"mine", {-49.8, 21.7}}
}
commandqueue[814] = {
    {"mine", nil}
}
commandqueue[815] = {
    {"move", "W"}
}
commandqueue[822] = {
    {"move", "NW"}
}
commandqueue[861] = {
    {"move", "STOP"}
--Presently at: (-53.37109375,18.49609375)
}
commandqueue[862] = {
    {"mine", {-54.6, 17.4}}
}
commandqueue[1263] = {
    {"mine", nil}
}
commandqueue[1264] = {
    {"craft", "stone-furnace", 4}
}
commandqueue[1265] = {
    {"move", "S"}
}
commandqueue[1270] = {
    {"move", "SE"}
}
commandqueue[1273] = {
    {"move", "STOP"}
--Presently at: (-53.05468750,19.55468750)
}
commandqueue[1274] = {
    {"mine", {-52.5, 21.3}}
}
commandqueue[1324] = {
    {"mine", nil}
}
commandqueue[1325] = {
    {"move", "S"}
}
commandqueue[1326] = {
    {"move", "SE"}
}
commandqueue[1337] = {
    {"move", "STOP"}
--Presently at: (-51.89453125,20.86328125)
}
commandqueue[1338] = {
    {"mine", {-50.6, 22.1}}
}
commandqueue[1388] = {
    {"mine", nil}
}
commandqueue[1389] = {
    {"move", "E"}
}
commandqueue[1407] = {
    {"move", "SE"}
}
commandqueue[1513] = {
    {"move", "STOP"}
--Presently at: (-38.04296875,32.04296875)
}
commandqueue[1494] = {
    {"take", {-37, 31}, "iron-plate", 3, defines.inventory.furnace_result}
}
commandqueue[1495] = {
    {"craft", "iron-gear-wheel", 1}
}
-- Second furnace placement
commandqueue[1504] = {
    {"build", "stone-furnace", {-37, 33}, defines.direction.north}
}
commandqueue[1505] = {
    {"put", {-37, 33}, "raw-wood", 2, defines.inventory.fuel}
}
commandqueue[1514] = {
    {"move", "E"}
}
commandqueue[1516] = {
    {"move", "STOP"}
--Presently at: (-37.74609375,32.04296875)
}
commandqueue[1517] = {
    {"mine", {-35.9, 32.1}}
}
commandqueue[1642] = {
    {"mine", nil}
}
commandqueue[1643] = {
    {"put", {-37, 33}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[1644] = {
    {"put", {-35, 31}, "raw-wood", 2, defines.inventory.fuel}
}
commandqueue[1645] = {
    {"mine", {-35.9, 32.1}}
}
commandqueue[1770] = {
    {"mine", nil}
}
commandqueue[1771] = {
    {"move", "S"}
}
commandqueue[1774] = {
    {"move", "STOP"}
--Presently at: (-37.74609375,32.48828125)
}
commandqueue[1775] = {
    {"mine", {-38.1, 34.4}}
}
commandqueue[1875] = {
    {"mine", nil}
}
-- Third furnace placement
commandqueue[1876] = {
    {"build", "stone-furnace", {-37, 35}, defines.direction.north}
}
commandqueue[1877] = {
    {"put", {-37, 35}, "raw-wood", 2, defines.inventory.fuel}
}
commandqueue[1878] = {
    {"put", {-37, 35}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[1879] = {
    {"take", {-37, 31}, "iron-plate", 2, defines.inventory.furnace_result}
}
commandqueue[1880] = {
    {"craft", "burner-mining-drill", 1}
}
commandqueue[1881] = {
    {"mine", {-35.9, 32.1}}
}
commandqueue[2006] = {
    {"mine", nil}
}
commandqueue[2007] = {
    {"put", {-37, 33}, "iron-ore", 1, defines.inventory.furnace_source}
}
-- Second miner placement
commandqueue[2008] = {
    {"build", "burner-mining-drill", {-35, 33}, defines.direction.west}
}
commandqueue[2009] = {
    {"put", {-35, 33}, "raw-wood", 2, defines.inventory.fuel}
}
commandqueue[2010] = {
    {"take", {-37, 33}, "iron-plate", 1, defines.inventory.furnace_result}
}
commandqueue[2011] = {
    {"mine", {-39.7, 32.9}}
}
commandqueue[2111] = {
    {"mine", nil}
}
commandqueue[2112] = {
    {"move", "S"}
}
commandqueue[2121] = {
    {"move", "SW"}
}
commandqueue[2124] = {
    {"move", "STOP"}
--Presently at: (-38.06250000,34.14062500)
}
commandqueue[2125] = {
    {"move", "E"}
}
commandqueue[2127] = {
    {"move", "STOP"}
--Presently at: (-37.76562500,34.14062500)
}
commandqueue[2128] = {
    {"mine", {-35.9, 34.1}}
}
commandqueue[2253] = {
    {"mine", nil}
}
commandqueue[2254] = {
    {"put", {-37, 35}, "iron-ore", 1, defines.inventory.furnace_source}
}
-- Fourth furnace placement
commandqueue[2255] = {
    {"build", "stone-furnace", {-37, 37}, defines.direction.north}
}
commandqueue[2256] = {
    {"mine", {-35.9, 34.1}}
}
commandqueue[2381] = {
    {"mine", nil}
}
commandqueue[2382] = {
    {"put", {-37, 37}, "raw-wood", 1, defines.inventory.fuel}
}
commandqueue[2383] = {
    {"put", {-37, 37}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[2384] = {
    {"mine", {-35.9, 34.1}}
}
commandqueue[2509] = {
    {"mine", nil}
}
commandqueue[2510] = {
    {"put", {-37, 35}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[2511] = {
    {"mine", {-35.9, 34.1}}
}
commandqueue[2636] = {
    {"mine", nil}
}
commandqueue[2641] = {
    {"put", {-37, 37}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[2642] = {
    {"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[2643] = {
    {"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[2644] = {
    {"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[2645] = {
    {"take", {-37, 37}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[2646] = {
    {"put", {-37, 37}, "raw-wood", 2, defines.inventory.fuel}
}
commandqueue[2647] = {
    {"put", {-37, 35}, "raw-wood", 1, defines.inventory.fuel}
}
commandqueue[2648] = {
    {"put", {-37, 33}, "raw-wood", 2, defines.inventory.fuel}
}
commandqueue[2649] = {
    {"put", {-37, 31}, "raw-wood", 2, defines.inventory.fuel}
}
commandqueue[2650] = {
    {"put", {-35, 33}, "raw-wood", 2, defines.inventory.fuel}
}
commandqueue[2651] = {
    {"craft", "iron-gear-wheel", 3}
}
commandqueue[2637] = {
    {"move", "N"}
}
commandqueue[2913] = {
    {"move", "NW"}
}
commandqueue[2916] = {
    {"move", "STOP"}
--Presently at: (-38.08203125,-7.14453125)
}
commandqueue[2917] = {
    {"mine", {-38, -8.9}}
}
commandqueue[3318] = {
    {"mine", nil}
}
-- Position tracking update here, maybe because of entity collisions?
-- You are presently at: (-38.2422,-7.4414)
commandqueue[3319] = {
    {"move", "S"}
}
commandqueue[3611] = {
    {"move", "SE"}
}
commandqueue[3614] = {
    {"move", "STOP"}
--Presently at: (-37.92578125,36.21875000)
}
commandqueue[3324] = {
    {"craft", "burner-mining-drill", 1}
}
commandqueue[3325] = {
    {"craft", "stone-furnace", 3}
}
-- Third miner placement
commandqueue[3575] = {
    {"build", "burner-mining-drill", {-35, 35}, defines.direction.west}
}
commandqueue[3576] = {
    {"put", {-35, 35}, "raw-wood", 2, defines.inventory.fuel}
}
commandqueue[3577] = {
    {"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[3578] = {
    {"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[3579] = {
    {"craft", "burner-mining-drill", 1}
}
commandqueue[3580] = {
    {"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[3581] = {
    {"take", {-37, 37}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[3615] = {
    {"mine", {-39.8, 36.1}}
}
commandqueue[3715] = {
    {"mine", nil}
}
commandqueue[3716] = {
    {"move", "S"}
}
commandqueue[3717] = {
    {"move", "SW"}
}
commandqueue[3722] = {
    {"move", "STOP"}
--Presently at: (-38.45312500,36.89453125)
}
commandqueue[3723] = {
    {"mine", {-39.7, 38.2}}
}
commandqueue[3823] = {
    {"mine", nil}
}
commandqueue[3824] = {
    {"move", "S"}
}
commandqueue[3829] = {
    {"move", "SE"}
}
commandqueue[3834] = {
    {"move", "STOP"}
--Presently at: (-37.92578125,38.16406250)
}
commandqueue[3835] = {
    {"move", "E"}
}
commandqueue[3842] = {
    {"move", "STOP"}
--Presently at: (-36.88671875,38.16406250)
}
commandqueue[3843] = {
    {"move", "E"}
}
commandqueue[3844] = {
    {"move", "STOP"}
--Presently at: (-36.73828125,38.16406250)
}
commandqueue[3845] = {
    {"mine", {-34.9, 37.9}}
}
commandqueue[3945] = {
    {"mine", nil}
}
-- Fourth miner placement
commandqueue[3946] = {
    {"build", "burner-mining-drill", {-35, 37}, defines.direction.west}
}
commandqueue[3947] = {
    {"put", {-35, 37}, "raw-wood", 2, defines.inventory.fuel}
}
commandqueue[3948] = {
    {"move", "E"}
}
commandqueue[3961] = {
    {"move", "NE"}
}
commandqueue[3966] = {
    {"move", "STOP"}
--Presently at: (-34.28125000,37.63671875)
}
commandqueue[3967] = {
    {"mine", {-32.5, 37.3}}
}
commandqueue[4067] = {
    {"mine", nil}
}
-- Position tracking update here, maybe because of entity collisions?
-- You are presently at: (-34.2812,37.9531)
commandqueue[4068] = {
    {"move", "E"}
}
commandqueue[4070] = {
    {"move", "NE"}
}
commandqueue[4087] = {
    {"move", "STOP"}
--Presently at: (-32.19140625,36.16015625)
}
commandqueue[4088] = {
    {"mine", {-30.9, 34.9}}
}
commandqueue[4188] = {
    {"mine", nil}
}
commandqueue[4189] = {
    {"move", "E"}
}
commandqueue[4209] = {
    {"move", "NE"}
}
commandqueue[4216] = {
    {"move", "STOP"}
--Presently at: (-28.48437500,35.42187500)
}
commandqueue[4217] = {
    {"mine", {-26.8, 35.1}}
}
commandqueue[4317] = {
    {"mine", nil}
}
commandqueue[4318] = {
    {"move", "W"}
}
commandqueue[4333] = {
    {"move", "NW"}
}
commandqueue[4347] = {
    {"move", "STOP"}
--Presently at: (-32.18750000,33.94531250)
}
commandqueue[4339] = {
    {"put", {-35, 37}, "raw-wood", 4, defines.inventory.fuel}
}
commandqueue[4340] = {
    {"put", {-35, 35}, "raw-wood", 4, defines.inventory.fuel}
}
commandqueue[4341] = {
    {"put", {-35, 33}, "raw-wood", 4, defines.inventory.fuel}
}
commandqueue[4342] = {
    {"put", {-35, 31}, "raw-wood", 4, defines.inventory.fuel}
}
commandqueue[4343] = {
    {"put", {-37, 35}, "raw-wood", 1, defines.inventory.fuel}
}
commandqueue[4344] = {
    {"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[4345] = {
    {"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[4346] = {
    {"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[4349] = {
    {"craft", "burner-mining-drill", 1}
}
commandqueue[4350] = {
    {"put", {-37, 31}, "raw-wood", 1, defines.inventory.fuel}
}
commandqueue[4351] = {
    {"put", {-35, 31}, "raw-wood", 1, defines.inventory.fuel}
}
commandqueue[4352] = {
    {"put", {-37, 33}, "raw-wood", 1, defines.inventory.fuel}
}
commandqueue[4348] = {
    {"move", "S"}
}
commandqueue[4361] = {
    {"move", "SE"}
}
commandqueue[4403] = {
    {"move", "STOP"}
--Presently at: (-27.75781250,40.30468750)
}
commandqueue[4404] = {
    {"mine", {-26.7, 41.8}}
}
commandqueue[4504] = {
    {"mine", nil}
}
commandqueue[4505] = {
    {"move", "E"}
}
commandqueue[4513] = {
    {"move", "SE"}
}
commandqueue[4520] = {
    {"move", "STOP"}
--Presently at: (-25.83203125,41.04296875)
}
commandqueue[4521] = {
    {"mine", {-24.2, 41.7}}
}
commandqueue[4621] = {
    {"mine", nil}
}
commandqueue[4622] = {
    {"move", "N"}
}
commandqueue[4664] = {
    {"move", "NE"}
}
commandqueue[4720] = {
    {"move", "STOP"}
--Presently at: (-19.92578125,28.90234375)
}
commandqueue[4721] = {
    {"move", "E"}
}
commandqueue[5030] = {
    {"move", "SE"}
}
commandqueue[5259] = {
    {"move", "STOP"}
--Presently at: (50.09375000,53.05468750)
}
-- First copper placement, then off for more stone
commandqueue[4750] = {
    {"build", "stone-furnace", {-16, 24}, defines.direction.north}
}
commandqueue[4751] = {
    {"build", "burner-mining-drill", {-14, 24}, defines.direction.west}
}
commandqueue[4752] = {
    {"put", {-16, 24}, "raw-wood", 5, defines.inventory.fuel}
}
commandqueue[4753] = {
    {"put", {-14, 24}, "raw-wood", 5, defines.inventory.fuel}
}
commandqueue[4754] = {
    {"craft", "iron-gear-wheel", 1}
}
commandqueue[5260] = {
    {"move", "E"}
}
commandqueue[5266] = {
    {"move", "SE"}
}
commandqueue[5283] = {
    {"move", "STOP"}
--Presently at: (52.77734375,54.84765625)
}
commandqueue[5284] = {
    {"mine", {54.3, 55.9}}
}
commandqueue[5685] = {
    {"mine", nil}
}
commandqueue[5686] = {
    {"move", "S"}
}
commandqueue[5842] = {
    {"move", "SE"}
}
commandqueue[5936] = {
    {"move", "STOP"}
--Presently at: (62.69140625,87.91796875)
}
commandqueue[5937] = {
    {"mine", {63.2, 89.7}}
}
commandqueue[5987] = {
    {"mine", nil}
}
commandqueue[5988] = {
    {"move", "E"}
}
commandqueue[5991] = {
    {"move", "SE"}
}
commandqueue[6019] = {
    {"move", "STOP"}
--Presently at: (66.08984375,90.87109375)
}
commandqueue[6020] = {
    {"mine", {67.4, 92.1}}
}
commandqueue[6421] = {
    {"mine", nil}
}
commandqueue[6422] = {
    {"move", "S"}
}
commandqueue[6425] = {
    {"move", "SW"}
}
commandqueue[6467] = {
    {"move", "STOP"}
--Presently at: (61.66015625,95.74609375)
}
commandqueue[6468] = {
    {"mine", {60.4, 97}}
}
commandqueue[6568] = {
    {"mine", nil}
}
commandqueue[6569] = {
    {"move", "S"}
}
commandqueue[6603] = {
    {"move", "SE"}
}
commandqueue[6615] = {
    {"move", "STOP"}
--Presently at: (62.92578125,102.05859375)
}
commandqueue[6616] = {
    {"mine", {63.2, 103.7}}
}
commandqueue[7017] = {
    {"mine", nil}
}
commandqueue[7018] = {
    {"move", "N"}
}
commandqueue[7046] = {
    {"move", "NW"}
}
commandqueue[7273] = {
    {"move", "STOP"}
--Presently at: (38.98437500,73.96093750)
}
commandqueue[7206] = {
    {"craft", "stone-furnace", 12}
}
commandqueue[7274] = {
    {"move", "W"}
}
commandqueue[7497] = {
    {"move", "NW"}
}
commandqueue[7867] = {
    {"move", "STOP"}
--Presently at: (-33.14062500,34.93750000)
}
commandqueue[7858] = {
    {"put", {-37, 37}, "raw-wood", 1, defines.inventory.fuel}
}
commandqueue[7859] = {
    {"put", {-37, 35}, "raw-wood", 1, defines.inventory.fuel}
}
commandqueue[7860] = {
    {"put", {-37, 33}, "raw-wood", 1, defines.inventory.fuel}
}
commandqueue[7866] = {
    {"put", {-37, 31}, "raw-wood", 1, defines.inventory.fuel}
}
commandqueue[7865] = {
    {"put", {-35, 31}, "raw-wood", 1, defines.inventory.fuel}
}
commandqueue[7864] = {
    {"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[7862] = {
    {"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[7863] = {
    {"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[7861] = {
    {"take", {-37, 37}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[7869] = {
    {"craft", "burner-mining-drill", 1}
}
commandqueue[7870] = {
    {"craft", "burner-mining-drill", 1}
}
commandqueue[7871] = {
    {"craft", "burner-mining-drill", 1}
}
commandqueue[7872] = {
    {"craft", "burner-mining-drill", 1}
}
commandqueue[7873] = {
    {"craft", "burner-mining-drill", 1}
}
commandqueue[7868] = {
    {"move", "S"}
}
commandqueue[7893] = {
    {"move", "SE"}
}
commandqueue[7927] = {
    {"move", "STOP"}
--Presently at: (-29.55468750,42.23437500)
}
commandqueue[7928] = {
    {"mine", {-28.8, 43.7}}
}
commandqueue[8028] = {
    {"mine", nil}
}
commandqueue[8029] = {
    {"move", "S"}
}
commandqueue[8030] = {
    {"move", "SE"}
}
commandqueue[8035] = {
    {"move", "STOP"}
--Presently at: (-29.02734375,42.91015625)
}
commandqueue[8036] = {
    {"mine", {-27.8, 44.3}}
}
commandqueue[8136] = {
    {"mine", nil}
}
commandqueue[8137] = {
    {"move", "S"}
}
commandqueue[8144] = {
    {"move", "SE"}
}
commandqueue[8151] = {
    {"move", "STOP"}
--Presently at: (-28.28906250,44.68750000)
}
commandqueue[8152] = {
    {"mine", {-27.6, 46.4}}
}
commandqueue[8252] = {
    {"mine", nil}
}
commandqueue[8253] = {
    {"move", "N"}
}
commandqueue[8274] = {
    {"move", "NW"}
}
commandqueue[8329] = {
    {"move", "STOP"}
--Presently at: (-34.08984375,35.76953125)
}
commandqueue[8325] = {
    {"put", {-37, 37}, "raw-wood", 2, defines.inventory.fuel}
}
commandqueue[8326] = {
    {"put", {-37, 35}, "raw-wood", 2, defines.inventory.fuel}
}
commandqueue[8327] = {
    {"put", {-37, 33}, "raw-wood", 2, defines.inventory.fuel}
}
commandqueue[8328] = {
    {"put", {-37, 31}, "raw-wood", 2, defines.inventory.fuel}
}
commandqueue[8331] = {
    {"put", {-35, 33}, "raw-wood", 1, defines.inventory.fuel}
}
commandqueue[8332] = {
    {"put", {-35, 35}, "raw-wood", 1, defines.inventory.fuel}
}
commandqueue[8340] = {
    {"build", "burner-mining-drill", {-38.6, 31.4}, defines.direction.south}
}
commandqueue[8341] = {
    {"put", {-39, 31}, "raw-wood", 1, defines.inventory.fuel}
}
commandqueue[8342] = {
    {"build", "burner-mining-drill", {-39, 33}, defines.direction.west}
}
commandqueue[8330] = {
    {"move", "W"}
}
commandqueue[8351] = {
    {"move", "SW"}
}
commandqueue[8368] = {
    {"move", "STOP"}
--Presently at: (-39.00000000,37.56250000)
}
commandqueue[8369] = {
    {"mine", {-40.7, 38.2}}
}
commandqueue[8469] = {
    {"mine", nil}
}
commandqueue[8471] = {
    {"put", {-39, 33}, "raw-wood", 1, defines.inventory.fuel}
}
commandqueue[8470] = {
    {"move", "W"}
}
commandqueue[8476] = {
    {"move", "NW"}
}
commandqueue[8483] = {
    {"move", "STOP"}
--Presently at: (-40.62890625,36.82421875)
}
commandqueue[8484] = {
    {"mine", {-42.2, 36.1}}
}
commandqueue[8584] = {
    {"mine", nil}
}
commandqueue[8586] = {
    {"build", "burner-mining-drill", {-41, 33}, defines.direction.north}
}
commandqueue[8587] = {
    {"put", {-41, 33}, "raw-wood", 1, defines.inventory.fuel}
}
commandqueue[8588] = {
    {"put", {-35, 37}, "raw-wood", 1, defines.inventory.fuel}
}
commandqueue[8585] = {
    {"move", "N"}
}
commandqueue[8595] = {
    {"move", "NW"}
}
commandqueue[8608] = {
    {"move", "STOP"}
--Presently at: (-42.00000000,33.96875000)
}
commandqueue[8609] = {
    {"move", "N"}
}
commandqueue[8613] = {
    {"move", "NW"}
}
commandqueue[8617] = {
    {"move", "STOP"}
--Presently at: (-42.42187500,32.95312500)
}
commandqueue[8618] = {
    {"mine", {-43, 31.3}}
}
commandqueue[8718] = {
    {"mine", nil}
}
-- Position tracking update here, maybe because of entity collisions?
-- You are presently at: (-42.3281,33.1328)
commandqueue[8720] = {
    {"build", "burner-mining-drill", {-41, 31}, defines.direction.east}
}
commandqueue[8721] = {
    {"put", {-41, 31}, "raw-wood", 1, defines.inventory.fuel}
}
commandqueue[8719] = {
    {"move", "W"}
}
commandqueue[8730] = {
    {"move", "SW"}
}
commandqueue[8735] = {
    {"move", "STOP"}
--Presently at: (-44.48828125,33.66015625)
}
commandqueue[8736] = {
    {"mine", {-46.3, 34.1}}
}
commandqueue[8836] = {
    {"mine", nil}
}
commandqueue[8837] = {
    {"move", "E"}
}
commandqueue[8843] = {
    {"move", "NE"}
}
commandqueue[8859] = {
    {"move", "STOP"}
--Presently at: (-41.91015625,31.97265625)
}
commandqueue[8895] = {
    {"take", {-41, 31}, "coal", "all", defines.inventory.fuel}
}
commandqueue[8896] = {
    {"take", {-41, 33}, "coal", "all", defines.inventory.fuel}
}
commandqueue[8898] = {
    {"take", {-39, 33}, "coal", "all", defines.inventory.fuel}
}
commandqueue[8899] = {
    {"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[8900] = {
    {"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[8901] = {
    {"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[8902] = {
    {"take", {-37, 37}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[8903] = {
    {"craft", "burner-mining-drill", 1}
}
commandqueue[8904] = {
    {"craft", "burner-mining-drill", 1}
}
commandqueue[8860] = {
    {"move", "E"}
}
commandqueue[8920] = {
    {"move", "STOP"}
--Presently at: (-33.00390625,31.97265625)
}
commandqueue[8922] = {
    {"put", {-35, 31}, "raw-wood", 3, defines.inventory.fuel}
}
commandqueue[8923] = {
    {"put", {-35, 33}, "raw-wood", 3, defines.inventory.fuel}
}
commandqueue[8924] = {
    {"put", {-35, 35}, "raw-wood", 3, defines.inventory.fuel}
}
commandqueue[8925] = {
    {"put", {-35, 37}, "raw-wood", 3, defines.inventory.fuel}
}
commandqueue[8921] = {
    {"move", "N"}
}
commandqueue[8935] = {
    {"move", "STOP"}
--Presently at: (-33.00390625,29.89453125)
}
commandqueue[8934] = {
    {"build", "burner-mining-drill", {-35, 26}, defines.direction.south}
}
commandqueue[8937] = {
    {"put", {-35, 26}, "coal", 1, defines.inventory.fuel}
}
commandqueue[8938] = {
    {"build", "stone-furnace", {-35, 28}, defines.direction.north}
}
commandqueue[8939] = {
    {"put", {-35, 28}, "coal", 1, defines.inventory.fuel}
}
commandqueue[8936] = {
    {"move", "E"}
}
commandqueue[9005] = {
    {"move", "NE"}
}
commandqueue[9052] = {
    {"move", "STOP"}
--Presently at: (-17.80468750,24.93750000)
}
commandqueue[9051] = {
    {"take", {-16, 24}, "copper-plate", 18, defines.inventory.furnace_result}
}
commandqueue[9054] = {
    {"put", {-14, 24}, "coal", 2, defines.inventory.fuel}
}
commandqueue[9055] = {
    {"put", {-16, 24}, "raw-wood", 2, defines.inventory.fuel}
}
commandqueue[9053] = {
    {"move", "W"}
}
commandqueue[9088] = {
    {"move", "SW"}
}
commandqueue[9174] = {
    {"move", "STOP"}
--Presently at: (-32.07031250,34.00781250)
}
commandqueue[9170] = {
    {"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[9171] = {
    {"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[9172] = {
    {"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[9173] = {
    {"take", {-37, 37}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[9176] = {
    {"craft", "burner-mining-drill", 1}
}
commandqueue[9175] = {
    {"move", "E"}
}
commandqueue[9241] = {
    {"move", "SE"}
}
commandqueue[9311] = {
    {"move", "STOP"}
--Presently at: (-14.89062500,41.39062500)
}
commandqueue[9312] = {
    {"mine", {-13.3, 42.1}}
}
commandqueue[9362] = {
    {"mine", nil}
}
commandqueue[9364] = {
    {"craft", "wooden-chest", 1}
}
commandqueue[9365] = {
    {"craft", "burner-mining-drill", 1}
}
commandqueue[9366] = {
    {"craft", "burner-mining-drill", 1}
}
commandqueue[9368] = {
    {"craft", "copper-cable", 9}
}
commandqueue[9369] = {
    {"craft", "iron-gear-wheel", 2}
}
commandqueue[9363] = {
    {"move", "W"}
}
commandqueue[9383] = {
    {"move", "SW"}
}
commandqueue[9442] = {
    {"move", "STOP"}
--Presently at: (-24.08203125,47.61328125)
}
commandqueue[9443] = {
    {"mine", {-25.5, 48.6}}
}
commandqueue[9543] = {
    {"mine", nil}
}
commandqueue[9544] = {
    {"move", "W"}
}
commandqueue[9545] = {
    {"move", "SW"}
}
commandqueue[9567] = {
    {"move", "STOP"}
--Presently at: (-26.55078125,49.93359375)
}
commandqueue[9568] = {
    {"mine", {-27.8, 51.2}}
}
commandqueue[9668] = {
    {"mine", nil}
}
commandqueue[9670] = {
    {"build", "burner-mining-drill", {-26, 53}, defines.direction.south}
}
commandqueue[9672] = {
    {"put", {-26, 53}, "raw-wood", 2, defines.inventory.fuel}
}
commandqueue[9673] = {
    {"build", "burner-mining-drill", {-24, 54}, defines.direction.west}
}
commandqueue[9674] = {
    {"put", {-24, 54}, "raw-wood", 2, defines.inventory.fuel}
}
commandqueue[9675] = {
    {"build", "wooden-chest", {-26, 54}, defines.direction.north}
}
commandqueue[9676] = {
    {"build", "burner-mining-drill", {-25.4, 55.6}, defines.direction.north}
}
commandqueue[9677] = {
    {"put", {-25, 56}, "raw-wood", 2, defines.inventory.fuel}
}
commandqueue[9669] = {
    {"move", "W"}
}
commandqueue[9671] = {
    {"move", "SW"}
}
commandqueue[9684] = {
    {"move", "STOP"}
--Presently at: (-28.21875000,51.30468750)
}
commandqueue[9685] = {
    {"mine", {-29.5, 52.5}}
}
commandqueue[9785] = {
    {"mine", nil}
}
commandqueue[9787] = {
    {"craft", "wood", 2}
}
commandqueue[9786] = {
    {"move", "S"}
}
commandqueue[9817] = {
    {"move", "SE"}
}
commandqueue[9820] = {
    {"move", "STOP"}
--Presently at: (-27.90234375,56.22265625)
}
commandqueue[9821] = {
    {"move", "W"}
}
commandqueue[9851] = {
    {"move", "SW"}
}
commandqueue[9858] = {
    {"move", "STOP"}
--Presently at: (-33.09375000,56.96093750)
}
commandqueue[9859] = {
    {"mine", {-34.9, 57.2}}
}
commandqueue[9959] = {
    {"mine", nil}
}
commandqueue[9960] = {
    {"move", "E"}
}
commandqueue[9968] = {
    {"move", "STOP"}
--Presently at: (-31.90625000,56.96093750)
}
commandqueue[9970] = {
    {"build", "burner-mining-drill", {-27, 55}, defines.direction.east}
}
commandqueue[9971] = {
    {"put", {-27, 55}, "raw-wood", 2, defines.inventory.fuel}
}
commandqueue[9969] = {
    {"move", "W"}
}
commandqueue[9974] = {
    {"move", "NW"}
}
commandqueue[9976] = {
    {"move", "STOP"}
--Presently at: (-32.85937500,56.75000000)
}
commandqueue[9977] = {
    {"mine", {-34.6, 56.5}}
}
commandqueue[10077] = {
    {"mine", nil}
}
commandqueue[10078] = {
    {"move", "W"}
}
commandqueue[10084] = {
    {"move", "NW"}
}
commandqueue[10089] = {
    {"move", "STOP"}
--Presently at: (-34.27734375,56.22265625)
}
commandqueue[10090] = {
    {"mine", {-36, 55.6}}
}
commandqueue[10190] = {
    {"mine", nil}
}
commandqueue[10191] = {
    {"move", "W"}
}
commandqueue[10199] = {
    {"move", "SW"}
}
commandqueue[10201] = {
    {"move", "STOP"}
--Presently at: (-35.67578125,56.43359375)
}
commandqueue[10202] = {
    {"mine", {-37.4, 56.5}}
}
commandqueue[10302] = {
    {"mine", nil}
}
commandqueue[10303] = {
    {"move", "E"}
}
commandqueue[10348] = {
    {"move", "STOP"}
--Presently at: (-28.99609375,56.43359375)
}
commandqueue[10349] = {
    {"mine", {-28.5, 56.6}}
}
commandqueue[10445] = {
    {"mine", nil}
}
commandqueue[10446] = {
    {"move", "E"}
}
commandqueue[10450] = {
    {"move", "NE"}
}
commandqueue[10455] = {
    {"move", "STOP"}
--Presently at: (-27.87500000,55.90625000)
}
commandqueue[10449] = {
    {"put", {-26, 53}, "raw-wood", 3, defines.inventory.fuel}
}
commandqueue[10452] = {
    {"put", {-24, 54}, "raw-wood", 3, defines.inventory.fuel}
}
commandqueue[10453] = {
    {"put", {-25, 56}, "raw-wood", 3, defines.inventory.fuel}
}
commandqueue[10454] = {
    {"put", {-27, 54}, "raw-wood", 3, defines.inventory.fuel}
}
commandqueue[10457] = {
    {"take", {-25.5, 54.5}, "stone", "all", defines.inventory.chest}
}
commandqueue[10458] = {
    {"craft", "stone-furnace", 3}
}
commandqueue[10459] = {
    {"craft", "wood", 1}
}
commandqueue[10456] = {
    {"move", "N"}
}
commandqueue[10563] = {
    {"move", "NW"}
}
commandqueue[10612] = {
    {"move", "STOP"}
--Presently at: (-33.04296875,34.85546875)
}
-- Position tracking update here, maybe because of entity collisions?
-- You are presently at: (-33.0742,35.0039)
commandqueue[10613] = {
    {"move", "N"}
}
commandqueue[10614] = {
    {"move", "NW"}
}
commandqueue[10623] = {
    {"move", "STOP"}
--Presently at: (-34.02343750,33.90625000)
}
commandqueue[10619] = {
    {"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[10620] = {
    {"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[10621] = {
    {"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[10622] = {
    {"take", {-37, 37}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[10625] = {
    {"craft", "burner-mining-drill", 1}
}
commandqueue[10626] = {
    {"craft", "burner-mining-drill", 1}
}
commandqueue[10627] = {
    {"craft", "offshore-pump", 1}
}
commandqueue[10628] = {
    {"craft", "boiler", 1}
}
commandqueue[10629] = {
    {"craft", "copper-cable", 8}
}
commandqueue[10624] = {
    {"move", "W"}
}
commandqueue[10637] = {
    {"move", "STOP"}
--Presently at: (-35.95312500,33.90625000)
}
commandqueue[10639] = {
    {"take", {-41, 31}, "coal", "all", defines.inventory.fuel}
}
commandqueue[10640] = {
    {"take", {-41, 33}, "coal", "all", defines.inventory.fuel}
}
commandqueue[10641] = {
    {"take", {-39, 31}, "coal", "all", defines.inventory.fuel}
}
commandqueue[10642] = {
    {"take", {-39, 33}, "coal", "all", defines.inventory.fuel}
}
commandqueue[10644] = {
    {"put", {-37, 37}, "coal", 3, defines.inventory.fuel}
}
commandqueue[10645] = {
    {"take", {-35, 37}, "raw-wood", "all", defines.inventory.fuel}
}
commandqueue[10646] = {
    {"put", {-35, 37}, "coal", 3, defines.inventory.fuel}
}
commandqueue[10647] = {
    {"take", {-37, 35}, "raw-wood", "all", defines.inventory.fuel}
}
commandqueue[10648] = {
    {"put", {-37, 35}, "coal", 3, defines.inventory.fuel}
}
commandqueue[10649] = {
    {"take", {-35, 35}, "raw-wood", "all", defines.inventory.fuel}
}
commandqueue[10650] = {
    {"put", {-35, 35}, "coal", 3, defines.inventory.fuel}
}
commandqueue[10651] = {
    {"take", {-37, 33}, "raw-wood", "all", defines.inventory.fuel}
}
commandqueue[10652] = {
    {"put", {-37, 33}, "coal", 3, defines.inventory.fuel}
}
commandqueue[10653] = {
    {"take", {-35, 33}, "raw-wood", "all", defines.inventory.fuel}
}
commandqueue[10654] = {
    {"put", {-35, 33}, "coal", 3, defines.inventory.fuel}
}
commandqueue[10655] = {
    {"take", {-37, 31}, "raw-wood", "all", defines.inventory.fuel}
}
commandqueue[10656] = {
    {"put", {-37, 31}, "coal", 3, defines.inventory.fuel}
}
commandqueue[10657] = {
    {"take", {-35, 31}, "raw-wood", "all", defines.inventory.fuel}
}
commandqueue[10658] = {
    {"put", {-35, 31}, "coal", 3, defines.inventory.fuel}
}
commandqueue[10638] = {
    {"move", "N"}
}
commandqueue[10664] = {
    {"move", "STOP"}
--Presently at: (-35.95312500,30.04687500)
}
commandqueue[10666] = {
    {"take", {-35, 28}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[10667] = {
    {"put", {-35, 26}, "coal", 3, defines.inventory.fuel}
}
commandqueue[10665] = {
    {"move", "E"}
}
commandqueue[10752] = {
    {"move", "NE"}
}
commandqueue[10791] = {
    {"move", "STOP"}
--Presently at: (-18.92578125,25.93359375)
}
commandqueue[10790] = {
    {"take", {-16, 24}, "copper-plate", "all", defines.inventory.furnace_result}
}
commandqueue[10792] = {
    {"move", "N"}
}
commandqueue[10805] = {
    {"move", "STOP"}
--Presently at: (-18.92578125,24.00390625)
}
commandqueue[10801] = {
    {"build", "burner-mining-drill", {-14, 22}, defines.direction.west}
}
commandqueue[10802] = {
    {"put", {-14, 22}, "coal", 2, defines.inventory.fuel}
}
commandqueue[10804] = {
    {"build", "stone-furnace", {-16, 22}, defines.direction.north}
}
commandqueue[10807] = {
    {"put", {-16, 22}, "raw-wood", 4, defines.inventory.fuel}
}
commandqueue[10806] = {
    {"move", "W"}
}
commandqueue[10868] = {
    {"move", "SW"}
}
commandqueue[10925] = {
    {"move", "STOP"}
--Presently at: (-34.14062500,30.01562500)
}
commandqueue[10926] = {
    {"move", "W"}
}
commandqueue[10952] = {
    {"move", "STOP"}
--Presently at: (-38.00000000,30.01562500)
}
commandqueue[10950] = {
    {"take", {-41, 33}, "coal", "all", defines.inventory.fuel}
}
commandqueue[10951] = {
    {"take", {-41, 31}, "coal", "all", defines.inventory.fuel}
}
commandqueue[10954] = {
    {"put", {-35, 28}, "coal", 3, defines.inventory.fuel}
}
commandqueue[10955] = {
    {"build", "burner-mining-drill", {-39, 29}, defines.direction.south}
}
commandqueue[10956] = {
    {"put", {-39, 29}, "raw-wood", 1, defines.inventory.fuel}
}
commandqueue[10995] = {
    {"rotate", {-41,31}, "N"}
}
commandqueue[10996] = {
    {"build", "burner-mining-drill", {-41, 29}, defines.direction.east}
}
commandqueue[10997] = {
    {"put", {-41, 29}, "raw-wood", 1, defines.inventory.fuel}
}
commandqueue[10953] = {
    {"move", "W"}
}
commandqueue[10994] = {
    {"move", "NW"}
}
commandqueue[11023] = {
    {"move", "STOP"}
--Presently at: (-47.14453125,26.95703125)
}
commandqueue[11025] = {
    {"craft", "iron-gear-wheel", 5}
}
commandqueue[11026] = {
    {"craft", "small-electric-pole", 3}
}
commandqueue[11027] = {
    {"craft", "electronic-circuit", 1}
}
commandqueue[11028] = {
    {"craft", "wooden-chest", 1}
}
commandqueue[11024] = {
    {"move", "W"}
}
commandqueue[11124] = {
    {"move", "SW"}
}
commandqueue[11134] = {
    {"move", "STOP"}
--Presently at: (-63.04296875,28.01171875)
}
commandqueue[11135] = {
    {"mine", {-64.8, 28.1}}
}
commandqueue[11235] = {
    {"mine", nil}
}
commandqueue[11236] = {
    {"move", "W"}
}
commandqueue[11249] = {
    {"move", "SW"}
}
commandqueue[11254] = {
    {"move", "STOP"}
--Presently at: (-65.50000000,28.53906250)
}
commandqueue[11255] = {
    {"mine", {-67.2, 28.9}}
}
commandqueue[11355] = {
    {"mine", nil}
}
commandqueue[11356] = {
    {"move", "W"}
}
commandqueue[11361] = {
    {"move", "SW"}
}
commandqueue[11363] = {
    {"move", "STOP"}
--Presently at: (-66.45312500,28.75000000)
}
commandqueue[11364] = {
    {"mine", {-68.2, 28.9}}
}
commandqueue[11414] = {
    {"mine", nil}
}
commandqueue[11415] = {
    {"move", "W"}
}
commandqueue[11423] = {
    {"move", "SW"}
}
commandqueue[11425] = {
    {"move", "STOP"}
--Presently at: (-67.85156250,28.96093750)
}
commandqueue[11426] = {
    {"mine", {-69.6, 29.1}}
}
commandqueue[11526] = {
    {"mine", nil}
}
commandqueue[11527] = {
    {"move", "W"}
}
commandqueue[11532] = {
    {"move", "NW"}
}
commandqueue[11537] = {
    {"move", "STOP"}
--Presently at: (-69.12109375,28.43359375)
}
commandqueue[11538] = {
    {"mine", {-70.7, 27.8}}
}
commandqueue[11638] = {
    {"mine", nil}
}
commandqueue[11639] = {
    {"move", "E"}
}
commandqueue[11671] = {
    {"move", "NE"}
}
commandqueue[11701] = {
    {"move", "STOP"}
--Presently at: (-61.20703125,25.26953125)
}
commandqueue[11702] = {
    {"mine", {-59.5, 24.6}}
}
commandqueue[11752] = {
    {"mine", nil}
}
-- First power structures being built
commandqueue[11797] = {
    {"build", "offshore-pump", {-58, 27}, defines.direction.south}
}
commandqueue[11798] = {
    {"build", "boiler", {-57, 25}, defines.direction.east}
}
commandqueue[11753] = {
    {"move", "E"}
}
commandqueue[11891] = {
    {"move", "SE"}
}
commandqueue[11917] = {
    {"move", "STOP"}
--Presently at: (-37.98046875,28.01171875)
}
commandqueue[11918] = {
    {"move", "S"}
}
commandqueue[11932] = {
    {"move", "STOP"}
--Presently at: (-37.98046875,30.08984375)
}
commandqueue[11833] = {
    {"build", "small-electric-pole", {-50.5, 24.5}, defines.direction.north}
}
commandqueue[11883] = {
    {"build", "small-electric-pole", {-43.5, 24.5}, defines.direction.north}
}
commandqueue[11923] = {
    {"build", "small-electric-pole", {-36.5, 23.5}, defines.direction.north}
}
commandqueue[11934] = {
    {"take", {-35, 28}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[11935] = {
    {"take", {-39, 29}, "coal", "all", defines.inventory.fuel}
}
commandqueue[11936] = {
    {"take", {-39, 31}, "coal", "all", defines.inventory.fuel}
}
commandqueue[11937] = {
    {"take", {-39, 33}, "coal", "all", defines.inventory.fuel}
}
commandqueue[11938] = {
    {"take", {-41, 33}, "coal", "all", defines.inventory.fuel}
}
commandqueue[11939] = {
    {"take", {-41, 31}, "coal", "all", defines.inventory.fuel}
}
commandqueue[11940] = {
    {"take", {-41, 29}, "coal", "all", defines.inventory.fuel}
}
commandqueue[11941] = {
    {"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[11942] = {
    {"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[11943] = {
    {"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[11944] = {
    {"craft", "steam-engine", 1}
}
commandqueue[11945] = {
    {"craft", "electronic-circuit", 2}
}
commandqueue[11946] = {
    {"put", {-39, 31}, "raw-wood", 1, defines.inventory.fuel}
}
commandqueue[11953] = {
    {"take", {-37, 37}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[11954] = {
    {"craft", "iron-gear-wheel", 3}
}
commandqueue[11933] = {
    {"move", "S"}
}
commandqueue[11987] = {
    {"move", "STOP"}
--Presently at: (-37.98046875,38.10546875)
}
commandqueue[11988] = {
    {"move", "E"}
}
commandqueue[12029] = {
    {"move", "SE"}
}
commandqueue[12047] = {
    {"move", "STOP"}
--Presently at: (-29.99609375,40.00390625)
}
commandqueue[12048] = {
    {"move", "S"}
}
commandqueue[12055] = {
    {"move", "SE"}
}
commandqueue[12084] = {
    {"move", "STOP"}
--Presently at: (-26.93750000,44.10156250)
}
commandqueue[12085] = {
    {"move", "S"}
}
commandqueue[12126] = {
    {"move", "SE"}
}
commandqueue[12135] = {
    {"move", "STOP"}
--Presently at: (-25.98828125,51.13671875)
}
commandqueue[12132] = {
    {"take", {-26, 53}, "raw-wood", "all", defines.inventory.fuel}
}
commandqueue[12133] = {
    {"put", {-26, 53}, "coal", 5, defines.inventory.fuel}
}
commandqueue[12134] = {
    {"take", {-24, 54}, "raw-wood", "all", defines.inventory.fuel}
}
commandqueue[12137] = {
    {"put", {-24, 54}, "coal", 5, defines.inventory.fuel}
}
commandqueue[12138] = {
    {"take", {-25, 56}, "raw-wood", "all", defines.inventory.fuel}
}
commandqueue[12139] = {
    {"put", {-25, 56}, "coal", 5, defines.inventory.fuel}
}
commandqueue[12140] = {
    {"take", {-27, 55}, "raw-wood", "all", defines.inventory.fuel}
}
commandqueue[12141] = {
    {"put", {-27, 55}, "coal", 5, defines.inventory.fuel}
}
commandqueue[12142] = {
    {"take", {-25, 54}, "stone", "all", defines.inventory.chest}
}
commandqueue[12143] = {
    {"craft", "stone-furnace", 4}
}
commandqueue[12136] = {
    {"move", "N"}
}
commandqueue[12177] = {
    {"move", "NW"}
}
commandqueue[12244] = {
    {"move", "STOP"}
--Presently at: (-33.05468750,37.98437500)
}
commandqueue[12245] = {
    {"move", "W"}
}
commandqueue[12265] = {
    {"move", "STOP"}
--Presently at: (-36.02343750,37.98437500)
}
commandqueue[12273] = {
    {"take", {-37, 37}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[12274] = {
    {"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[12275] = {
    {"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[12276] = {
    {"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[12277] = {
    {"craft", "iron-gear-wheel", 1}
}
commandqueue[12266] = {
    {"move", "N"}
}
commandqueue[12320] = {
    {"move", "STOP"}
--Presently at: (-36.02343750,29.96875000)
}
commandqueue[12323] = {
    {"take", {-35, 28}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[12324] = {
    {"take", {-39, 29}, "coal", "all", defines.inventory.fuel}
}
commandqueue[12326] = {
    {"take", {-39, 33}, "coal", "all", defines.inventory.fuel}
}
commandqueue[12327] = {
    {"take", {-41, 33}, "coal", "all", defines.inventory.fuel}
}
commandqueue[12328] = {
    {"take", {-41, 31}, "coal", "all", defines.inventory.fuel}
}
commandqueue[12329] = {
    {"take", {-41, 29}, "coal", "all", defines.inventory.fuel}
}
commandqueue[12321] = {
    {"move", "W"}
}
commandqueue[12322] = {
    {"move", "NW"}
}
commandqueue[12351] = {
    {"move", "STOP"}
--Presently at: (-39.23046875,26.91015625)
}
commandqueue[12352] = {
    {"move", "W"}
}
commandqueue[12431] = {
    {"move", "STOP"}
--Presently at: (-50.95703125,26.91015625)
}
-- First steam engine
commandqueue[12433] = {
    {"build", "steam-engine", {-54, 25}, defines.direction.west}
}
commandqueue[12434] = {
    {"put", {-56.5, 26.5}, "coal", 10, defines.inventory.fuel}
}
commandqueue[12432] = {
    {"move", "E"}
}
commandqueue[12459] = {
    {"move", "STOP"}
--Presently at: (-46.94921875,26.91015625)
}
commandqueue[12460] = {
    {"move", "S"}
}
commandqueue[12461] = {
    {"move", "SE"}
}
commandqueue[12508] = {
    {"move", "STOP"}
--Presently at: (-41.99218750,32.01562500)
}
commandqueue[12524] = {
    {"take", {-39, 29}, "coal", "all", defines.inventory.fuel}
}
commandqueue[12525] = {
    {"take", {-41, 33}, "coal", "all", defines.inventory.fuel}
}
commandqueue[12526] = {
    {"take", {-41, 29}, "coal", "all", defines.inventory.fuel}
}
commandqueue[12527] = {
    {"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[12528] = {
    {"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[12529] = {
    {"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[12530] = {
    {"take", {-37, 37}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[12531] = {
    {"take", {-41, 31}, "coal", "all", defines.inventory.fuel}
}
commandqueue[12532] = {
    {"take", {-35, 28}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[12533] = {
    {"craft", "electric-mining-drill", 1}
}
commandqueue[12534] = {
    {"craft", "stone-furnace", 1}
}
commandqueue[12535] = {
    {"build", "small-electric-pole", {-34.5, 29.5}, defines.direction.north}
}
commandqueue[12536] = {
    {"craft", "wooden-chest", 1}
}
commandqueue[12537] = {
    {"craft", "electronic-circuit", 1}
}
commandqueue[12509] = {
    {"move", "E"}
}
commandqueue[12631] = {
    {"move", "NE"}
}
commandqueue[12689] = {
    {"move", "STOP"}
--Presently at: (-17.76562500,25.89843750)
}
commandqueue[12691] = {
    {"put", {-14, 24}, "coal", 4, defines.inventory.fuel}
}
commandqueue[12692] = {
    {"take", {-16, 22}, "copper-plate", "all", defines.inventory.furnace_result}
}
commandqueue[12693] = {
    {"take", {-16, 24}, "copper-plate", "all", defines.inventory.furnace_result}
}
commandqueue[12694] = {
    {"take", {-16, 25}, "raw-wood", "all", defines.inventory.fuel}
}
commandqueue[12695] = {
    {"put", {-16, 24}, "coal", 2, defines.inventory.fuel}
}
commandqueue[12690] = {
    {"move", "W"}
}
commandqueue[12698] = {
    {"move", "SW"}
}
commandqueue[12737] = {
    {"move", "STOP"}
--Presently at: (-23.06640625,30.01171875)
}
commandqueue[12738] = {
    {"move", "W"}
}
commandqueue[12812] = {
    {"move", "STOP"}
--Presently at: (-34.05078125,30.01171875)
}
commandqueue[12780] = {
    {"build", "stone-furnace", {-28, 26}, defines.direction.north}
}
commandqueue[12781] = {
    {"build", "stone-furnace", {-28, 28}, defines.direction.north}
}
commandqueue[12782] = {
    {"build", "stone-furnace", {-28, 32}, defines.direction.north}
}
commandqueue[12783] = {
    {"build", "stone-furnace", {-28, 34}, defines.direction.north}
}
-- First electric mining drill placed
commandqueue[12784] = {
    {"build", "wooden-chest", {-30.5, 26.5}, defines.direction.north}
}
commandqueue[12785] = {
    {"build", "electric-mining-drill", {-32.5, 26.5}, defines.direction.east}
}
commandqueue[12786] = {
    {"put", {-28, 26}, "raw-wood", 3, defines.inventory.fuel}
}
commandqueue[12787] = {
    {"put", {-28, 28}, "raw-wood", 3, defines.inventory.fuel}
}
commandqueue[12788] = {
    {"put", {-28, 32}, "raw-wood", 3, defines.inventory.fuel}
}
commandqueue[12789] = {
    {"put", {-28, 34}, "raw-wood", 3, defines.inventory.fuel}
}
commandqueue[12790] = {
    {"craft", "copper-cable", 1}
}
commandqueue[12806] = {
    {"build", "stone-furnace", {-28, 30}, defines.direction.north}
}
commandqueue[12807] = {
    {"put", {-28, 30}, "raw-wood", 3, defines.inventory.fuel}
}
commandqueue[12813] = {
    {"move", "W"}
}
commandqueue[12827] = {
    {"move", "STOP"}
--Presently at: (-36.12890625,30.01171875)
}
commandqueue[12829] = {
    {"take", {-39, 29}, "coal", "all", defines.inventory.fuel}
}
commandqueue[12830] = {
    {"take", {-39, 31}, "coal", "all", defines.inventory.fuel}
}
commandqueue[12831] = {
    {"take", {-39, 33}, "coal", "all", defines.inventory.fuel}
}
commandqueue[12832] = {
    {"take", {-41, 33}, "coal", "all", defines.inventory.fuel}
}
commandqueue[12834] = {
    {"take", {-41, 29}, "coal", "all", defines.inventory.fuel}
}
commandqueue[12835] = {
    {"take", {-35, 28}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[12836] = {
    {"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[12837] = {
    {"craft", "electronic-circuit", 2}
}
commandqueue[12838] = {
    {"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[12839] = {
    {"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[12840] = {
    {"take", {-37, 36}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[12842] = {
    {"put", {-37, 31}, "coal", 2, defines.inventory.fuel}
}
commandqueue[12845] = {
    {"put", {-37, 33}, "coal", 2, defines.inventory.fuel}
}
commandqueue[12846] = {
    {"craft", "iron-gear-wheel", 2}
}
commandqueue[12847] = {
    {"craft", "stone-furnace", 3}
}
commandqueue[12848] = {
    {"craft", "copper-cable", 3}
}
commandqueue[12828] = {
    {"move", "S"}
}
commandqueue[12841] = {
    {"move", "SE"}
}
commandqueue[12843] = {
    {"move", "STOP"}
--Presently at: (-35.91796875,32.15234375)
}
-- Position tracking update here, maybe because of entity collisions?
-- You are presently at: (-35.8828,32.0039)
commandqueue[12844] = {
    {"move", "E"}
}
commandqueue[12871] = {
    {"move", "NE"}
}
commandqueue[12881] = {
    {"move", "STOP"}
--Presently at: (-30.82031250,30.94921875)
}
commandqueue[12882] = {
    {"mine", {-32.5, 30.5}}
}
commandqueue[13007] = {
    {"mine", nil}
}
commandqueue[13008] = {
    {"take", {-30.5, 26.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[13009] = {
    {"put", {-28, 26}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[13010] = {
    {"put", {-28, 28}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[13011] = {
    {"mine", {-32.5, 30.5}}
}
commandqueue[13136] = {
    {"mine", nil}
}
commandqueue[13138] = {
    {"take", {-30.5, 26.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[13139] = {
    {"put", {-28, 30}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[13140] = {
    {"put", {-28, 32}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[13141] = {
    {"put", {-28, 34}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[13137] = {
    {"move", "W"}
}
commandqueue[13152] = {
    {"move", "SW"}
}
commandqueue[13162] = {
    {"move", "STOP"}
--Presently at: (-34.10156250,32.00390625)
}
commandqueue[13156] = {
    {"build", "wooden-chest", {-30.5, 29.5}, defines.direction.north}
}
commandqueue[13157] = {
    {"take", {-35, 28}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[13158] = {
    {"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[13159] = {
    {"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[13160] = {
    {"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[13161] = {
    {"take", {-37, 36}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[13164] = {
    {"craft", "iron-gear-wheel", 3}
}
commandqueue[13165] = {
    {"craft", "wooden-chest", 1}
}
commandqueue[13163] = {
    {"move", "E"}
}
commandqueue[13178] = {
    {"move", "NE"}
}
commandqueue[13188] = {
    {"move", "STOP"}
--Presently at: (-30.82031250,30.94921875)
}
commandqueue[13189] = {
    {"mine", {-32.5, 30.5}}
}
commandqueue[13314] = {
    {"mine", nil}
}
commandqueue[13316] = {
    {"take", {-30.5, 26.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[13317] = {
    {"put", {-28, 26}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[13318] = {
    {"put", {-28, 28}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[13319] = {
    {"take", {-28.5, 26.5}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[13320] = {
    {"take", {-28, 28}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[13315] = {
    {"move", "W"}
}
commandqueue[13330] = {
    {"move", "SW"}
}
commandqueue[13340] = {
    {"move", "STOP"}
--Presently at: (-34.10156250,32.00390625)
}
commandqueue[13336] = {
    {"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[13338] = {
    {"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[13339] = {
    {"take", {-36.5, 36.5}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[13341] = {
    {"move", "E"}
}
commandqueue[13362] = {
    {"move", "STOP"}
--Presently at: (-30.98437500,32.00390625)
}
commandqueue[13357] = {
    {"take", {-35, 28}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[13358] = {
    {"take", {-28, 30}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[13359] = {
    {"take", {-28, 32}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[13360] = {
    {"take", {-28, 34}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[13361] = {
    {"craft", "electric-mining-drill", 1}
}
commandqueue[13363] = {
    {"move", "W"}
}
commandqueue[13404] = {
    {"move", "STOP"}
--Presently at: (-37.07031250,32.00390625)
}
commandqueue[13406] = {
    {"take", {-39, 29}, "coal", "all", defines.inventory.fuel}
}
commandqueue[13407] = {
    {"take", {-39, 31}, "coal", "all", defines.inventory.fuel}
}
commandqueue[13408] = {
    {"take", {-39, 33}, "coal", "all", defines.inventory.fuel}
}
commandqueue[13409] = {
    {"take", {-41, 33}, "coal", "all", defines.inventory.fuel}
}
commandqueue[13411] = {
    {"take", {-41, 29}, "coal", "all", defines.inventory.fuel}
}
commandqueue[13420] = {
    {"take", {-37, 37}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[13435] = {
    {"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[13436] = {
    {"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[13438] = {
    {"craft", "iron-axe", 1}
}
commandqueue[13440] = {
    {"craft", "copper-cable", 6}
}
commandqueue[13405] = {
    {"move", "E"}
}
commandqueue[13426] = {
    {"move", "SE"}
}
commandqueue[13464] = {
    {"move", "STOP"}
--Presently at: (-29.94531250,36.01171875)
}
commandqueue[13463] = {
    {"build", "stone-furnace", {-28, 40}, defines.direction.north}
}
commandqueue[13467] = {
    {"build", "stone-furnace", {-28, 38}, defines.direction.north}
}
commandqueue[13468] = {
    {"build", "stone-furnace", {-28, 36}, defines.direction.north}
}
commandqueue[13469] = {
    {"put", {-28, 36}, "coal", 2, defines.inventory.fuel}
}
commandqueue[13465] = {
    {"move", "W"}
}
commandqueue[13466] = {
    {"move", "NW"}
}
commandqueue[13476] = {
    {"move", "STOP"}
--Presently at: (-31.14843750,34.95703125)
}
commandqueue[13478] = {
    {"take", {-36.5, 35}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[13479] = {
    {"craft", "electronic-circuit", 1}
}
commandqueue[13477] = {
    {"move", "N"}
}
commandqueue[13496] = {
    {"move", "NE"}
}
commandqueue[13498] = {
    {"move", "STOP"}
--Presently at: (-30.93750000,31.92578125)
}
commandqueue[13488] = {
    {"build", "electric-mining-drill", {-32.5, 29.5}, defines.direction.east}
}
commandqueue[13489] = {
    {"build", "small-electric-pole", {-29.5, 34.5}, defines.direction.north}
}
commandqueue[13495] = {
    {"build", "wooden-chest", {-30.5, 32.5}, defines.direction.north}
}
commandqueue[13499] = {
    {"take", {-30.5, 26.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[13500] = {
    {"put", {-28, 30}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[13501] = {
    {"put", {-28, 32}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[13502] = {
    {"mine", {-32.5, 31.5}}
}
commandqueue[13627] = {
    {"mine", nil}
}
commandqueue[13628] = {
    {"take", {-30.5, 26.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[13629] = {
    {"take", {-30.5, 29.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[13630] = {
    {"put", {-28.6, 26.7}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[13631] = {
    {"put", {-28, 28}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[13632] = {
    {"put", {-28, 34}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[13633] = {
    {"mine", {-32.5, 31.5}}
}
commandqueue[13758] = {
    {"mine", nil}
}
commandqueue[13761] = {
    {"take", {-30.5, 26.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[13762] = {
    {"take", {-30.5, 29.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[13763] = {
    {"take", {-28, 30}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[13764] = {
    {"take", {-28, 32}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[13765] = {
    {"craft", "electronic-circuit", 2}
}
commandqueue[13759] = {
    {"move", "E"}
}
commandqueue[13760] = {
    {"move", "NE"}
}
commandqueue[13769] = {
    {"move", "STOP"}
--Presently at: (-29.83984375,30.97656250)
}
-- Position tracking update here, maybe because of entity collisions?
-- You are presently at: (-29.9453,30.9766)
commandqueue[13767] = {
    {"put", {-28, 28}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[13766] = {
    {"put", {-28, 34}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[13768] = {
    {"put", {-28.6, 26.7}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[13772] = {
    {"craft", "copper-cable", 4}
}
commandqueue[13770] = {
    {"move", "W"}
}
commandqueue[13771] = {
    {"move", "SW"}
}
commandqueue[13781] = {
    {"move", "STOP"}
--Presently at: (-31.14843750,32.03125000)
}
commandqueue[13782] = {
    {"mine", {-32.5, 31.5}}
}
commandqueue[13907] = {
    {"mine", nil}
}
commandqueue[13908] = {
    {"move", "W"}
}
commandqueue[13927] = {
    {"move", "STOP"}
--Presently at: (-33.96875000,32.03125000)
}
commandqueue[13921] = {
    {"take", {-35, 28}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[13922] = {
    {"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[13923] = {
    {"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[13924] = {
    {"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[13925] = {
    {"take", {-37, 36.3}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[13926] = {
    {"craft", "iron-gear-wheel", 5}
}
commandqueue[13928] = {
    {"move", "E"}
}
commandqueue[13948] = {
    {"move", "NE"}
}
commandqueue[13958] = {
    {"move", "STOP"}
--Presently at: (-29.94531250,30.97656250)
}
-- Position tracking update here, maybe because of entity collisions?
-- You are presently at: (-30.0938,30.8906)
commandqueue[13956] = {
    {"take", {-30.5, 26.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[13957] = {
    {"take", {-30.5, 29.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[13960] = {
    {"put", {-28, 34}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[13961] = {
    {"put", {-28, 32}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[13962] = {
    {"put", {-28, 30}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[13963] = {
    {"put", {-28, 28}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[13964] = {
    {"put", {-28, 26}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[13959] = {
    {"move", "N"}
}
commandqueue[13972] = {
    {"move", "STOP"}
--Presently at: (-30.09375000,28.96093750)
}
-- Position tracking update here, maybe because of entity collisions?
-- You are presently at: (-29.9453,29.1094)
commandqueue[13971] = {
    {"put", {-34.5, 26.5}, "coal", 2, defines.inventory.fuel}
}
commandqueue[13973] = {
    {"move", "E"}
}
commandqueue[14033] = {
    {"move", "NE"}
}
commandqueue[14063] = {
    {"move", "STOP"}
--Presently at: (-17.87500000,25.94531250)
}
-- Position tracking update here, maybe because of entity collisions?
-- You are presently at: (-18.0234,25.9297)
commandqueue[14061] = {
    {"take", {-16, 24}, "copper-plate", "all", defines.inventory.furnace_result}
}
commandqueue[14062] = {
    {"take", {-16, 22}, "copper-plate", "all", defines.inventory.furnace_result}
}
commandqueue[14065] = {
    {"put", {-14, 24}, "coal", 3, defines.inventory.fuel}
}
commandqueue[14066] = {
    {"put", {-14, 22}, "coal", 3, defines.inventory.fuel}
}
commandqueue[14067] = {
    {"craft", "copper-cable", 4}
}
commandqueue[14068] = {
    {"craft", "wooden-chest", 1}
}
commandqueue[14064] = {
    {"move", "W"}
}
commandqueue[14091] = {
    {"move", "SW"}
}
commandqueue[14140] = {
    {"move", "STOP"}
--Presently at: (-27.19921875,31.09765625)
}
commandqueue[14142] = {
    {"take", {-28, 26}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[14143] = {
    {"take", {-28, 28}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[14147] = {
    {"take", {-28, 34}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[14141] = {
    {"move", "W"}
}
commandqueue[14160] = {
    {"move", "STOP"}
--Presently at: (-30.01953125,31.09765625)
}
commandqueue[14156] = {
    {"take", {-30.5, 29.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[14157] = {
    {"put", {-28, 32}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[14161] = {
    {"take", {-30.5, 26.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[14163] = {
    {"put", {-28, 30}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[14165] = {
    {"put", {-28, 34}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[14162] = {
    {"move", "W"}
}
commandqueue[14164] = {
    {"move", "SW"}
}
commandqueue[14166] = {
    {"move", "STOP"}
--Presently at: (-30.52734375,31.30859375)
}
commandqueue[14167] = {
    {"mine", {-32.1, 32.1}}
}
commandqueue[14292] = {
    {"mine", nil}
}
commandqueue[14294] = {
    {"take", {-28, 30}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[14295] = {
    {"take", {-28, 32}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[14296] = {
    {"craft", "electric-mining-drill", 1}
}
commandqueue[14297] = {
    {"take", {-30.5, 26.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[14298] = {
    {"take", {-30.5, 29.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[14300] = {
    {"put", {-28, 28}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[14301] = {
    {"put", {-28.3, 35.6}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[14293] = {
    {"move", "W"}
}
commandqueue[14299] = {
    {"move", "SW"}
}
commandqueue[14306] = {
    {"move", "STOP"}
--Presently at: (-32.15625000,32.04687500)
}
commandqueue[14307] = {
    {"move", "W"}
}
commandqueue[14320] = {
    {"move", "STOP"}
--Presently at: (-34.08593750,32.04687500)
}
commandqueue[14314] = {
    {"take", {-35, 28}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[14315] = {
    {"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[14316] = {
    {"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[14317] = {
    {"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[14318] = {
    {"take", {-37, 36.3}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[14319] = {
    {"craft", "iron-gear-wheel", 5}
}
commandqueue[14321] = {
    {"move", "W"}
}
commandqueue[14341] = {
    {"move", "STOP"}
--Presently at: (-37.05468750,32.04687500)
}
commandqueue[14343] = {
    {"take", {-41, 29}, "coal", "all", defines.inventory.fuel}
}
commandqueue[14344] = {
    {"take", {-41, 31}, "coal", "all", defines.inventory.fuel}
}
commandqueue[14345] = {
    {"take", {-41, 33}, "coal", "all", defines.inventory.fuel}
}
commandqueue[14346] = {
    {"take", {-39, 33}, "coal", "all", defines.inventory.fuel}
}
commandqueue[14348] = {
    {"take", {-39, 31}, "coal", "all", defines.inventory.fuel}
}
commandqueue[14349] = {
    {"take", {-39, 29}, "coal", "all", defines.inventory.fuel}
}
commandqueue[14350] = {
    {"put", {-35, 31}, "coal", 3, defines.inventory.fuel}
}
commandqueue[14351] = {
    {"put", {-35, 33}, "coal", 3, defines.inventory.fuel}
}
commandqueue[14352] = {
    {"put", {-35, 35}, "coal", 3, defines.inventory.fuel}
}
commandqueue[14353] = {
    {"put", {-35, 37}, "coal", 3, defines.inventory.fuel}
}
commandqueue[14342] = {
    {"move", "E"}
}
commandqueue[14383] = {
    {"move", "NE"}
}
commandqueue[14393] = {
    {"move", "STOP"}
--Presently at: (-29.91406250,30.99218750)
}
commandqueue[14392] = {
    {"take", {-28, 26}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[14395] = {
    {"put", {-28, 26}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[14396] = {
    {"take", {-30.5, 26.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[14397] = {
    {"put", {-28, 30}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[14398] = {
    {"put", {-28, 32}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[14399] = {
    {"take", {-28, 30}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[14400] = {
    {"take", {-28, 32}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[14401] = {
    {"craft", "electronic-circuit", 3}
}
commandqueue[14402] = {
    {"move", "W"}
}
commandqueue[14404] = {
    {"move", "STOP"}
--Presently at: (-30.21093750,30.99218750)
}
commandqueue[14405] = {
    {"mine", {-32.1, 31.1}}
}
commandqueue[14530] = {
    {"mine", nil}
}
commandqueue[14532] = {
    {"build", "electric-mining-drill", {-32.5, 32.9}, defines.direction.east}
}
commandqueue[14533] = {
    {"take", {-30.5, 26.9}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[14534] = {
    {"take", {-30.5, 29.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[14546] = {
    {"put", {-28, 34}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[14547] = {
    {"put", {-28, 36}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[14548] = {
    {"put", {-28, 38}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[14550] = {
    {"put", {-28, 38}, "coal", 1, defines.inventory.fuel}
}
commandqueue[14566] = {
    {"put", {-28, 40}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[14567] = {
    {"put", {-28, 40}, "coal", 1, defines.inventory.fuel}
}
commandqueue[14531] = {
    {"move", "S"}
}
commandqueue[14631] = {
    {"move", "SE"}
}
commandqueue[14643] = {
    {"move", "STOP"}
--Presently at: (-28.94531250,47.10156250)
}
-- Position tracking update here, maybe because of entity collisions?
-- You are presently at: (-28.6797,46.5547)
commandqueue[14644] = {
    {"move", "S"}
}
commandqueue[14663] = {
    {"move", "SE"}
}
commandqueue[14679] = {
    {"move", "STOP"}
--Presently at: (-26.99218750,51.06250000)
}
commandqueue[14675] = {
    {"put", {-26, 53}, "coal", 4, defines.inventory.fuel}
}
commandqueue[14676] = {
    {"put", {-24, 54}, "coal", 4, defines.inventory.fuel}
}
commandqueue[14677] = {
    {"put", {-27, 55}, "coal", 4, defines.inventory.fuel}
}
commandqueue[14678] = {
    {"put", {-25, 56}, "coal", 4, defines.inventory.fuel}
}
commandqueue[14681] = {
    {"take", {-25.5, 54.5}, "stone", "all", defines.inventory.chest}
}
commandqueue[14682] = {
    {"craft", "stone-furnace", 3}
}
commandqueue[14680] = {
    {"move", "N"}
}
commandqueue[14735] = {
    {"move", "NW"}
}
commandqueue[14755] = {
    {"move", "STOP"}
--Presently at: (-29.10156250,40.78906250)
}
commandqueue[14756] = {
    {"move", "N"}
}
commandqueue[14816] = {
    {"move", "NW"}
}
commandqueue[14825] = {
    {"move", "STOP"}
--Presently at: (-30.05078125,30.93359375)
}
commandqueue[14786] = {
    {"take", {-28, 40}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[14796] = {
    {"take", {-28, 38}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[14797] = {
    {"take", {-28, 36}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[14798] = {
    {"take", {-28, 34}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[14799] = {
    {"take", {-28, 32}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[14800] = {
    {"take", {-28, 30}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[14811] = {
    {"take", {-28, 28}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[14812] = {
    {"craft", "electric-mining-drill", 1}
}
commandqueue[14824] = {
    {"take", {-28, 26}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[14827] = {
    {"take", {-35, 28}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[14829] = {
    {"take", {-30.5, 26.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[14830] = {
    {"put", {-28, 26}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[14831] = {
    {"take", {-30.5, 29.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[14832] = {
    {"take", {-30.5, 32.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[14833] = {
    {"put", {-28, 28}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[14834] = {
    {"put", {-28, 30}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[14835] = {
    {"put", {-28, 32}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[14836] = {
    {"put", {-28, 34}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[14837] = {
    {"put", {-28, 36}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[14826] = {
    {"move", "S"}
}
commandqueue[14854] = {
    {"move", "STOP"}
--Presently at: (-30.05078125,35.08984375)
}
commandqueue[14855] = {
    {"move", "W"}
}
commandqueue[14875] = {
    {"move", "NW"}
}
commandqueue[14886] = {
    {"move", "STOP"}
--Presently at: (-34.17968750,33.92968750)
}
commandqueue[14882] = {
    {"take", {-37, 37}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[14883] = {
    {"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[14884] = {
    {"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[14885] = {
    {"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[14888] = {
    {"craft", "electronic-circuit", 3}
}
commandqueue[14889] = {
    {"craft", "iron-gear-wheel", 5}
}
commandqueue[14890] = {
    {"craft", "wooden-chest", 1}
}
commandqueue[14887] = {
    {"move", "W"}
}
commandqueue[14899] = {
    {"move", "STOP"}
--Presently at: (-35.96093750,33.92968750)
}
commandqueue[14900] = {
    {"move", "N"}
}
commandqueue[14920] = {
    {"move", "STOP"}
--Presently at: (-35.96093750,30.96093750)
}
commandqueue[14922] = {
    {"take", {-41, 29}, "coal", "all", defines.inventory.fuel}
}
commandqueue[14923] = {
    {"take", {-41, 31}, "coal", "all", defines.inventory.fuel}
}
commandqueue[14924] = {
    {"take", {-41, 33}, "coal", "all", defines.inventory.fuel}
}
commandqueue[14925] = {
    {"take", {-39, 33}, "coal", "all", defines.inventory.fuel}
}
commandqueue[14927] = {
    {"take", {-39, 31}, "coal", "all", defines.inventory.fuel}
}
commandqueue[14928] = {
    {"take", {-39, 29}, "coal", "all", defines.inventory.fuel}
}
commandqueue[14921] = {
    {"move", "S"}
}
commandqueue[14942] = {
    {"move", "STOP"}
--Presently at: (-35.96093750,34.07812500)
}
commandqueue[14943] = {
    {"move", "E"}
}
commandqueue[14983] = {
    {"move", "STOP"}
--Presently at: (-30.02343750,34.07812500)
}
-- Position tracking update here, maybe because of entity collisions?
-- You are presently at: (-30.5625,34.1055)
commandqueue[14980] = {
    {"build", "wooden-chest", {-30.5, 35.5}, defines.direction.north}
}
commandqueue[14982] = {
    {"build", "electric-mining-drill", {-32.5, 35.5}, defines.direction.east}
}
commandqueue[14986] = {
    {"put", {-28, 38}, "coal", 1, defines.inventory.fuel}
}
commandqueue[14987] = {
    {"put", {-28, 36}, "coal", 1, defines.inventory.fuel}
}
commandqueue[14988] = {
    {"take", {-28, 34}, "raw-wood", "all", defines.inventory.fuel}
}
commandqueue[14989] = {
    {"put", {-28, 34}, "coal", 2, defines.inventory.fuel}
}
commandqueue[14990] = {
    {"take", {-30.5, 29.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[14991] = {
    {"take", {-28, 32}, "raw-wood", "all", defines.inventory.fuel}
}
commandqueue[14992] = {
    {"put", {-28, 32}, "coal", 2, defines.inventory.fuel}
}
commandqueue[14993] = {
    {"take", {-28, 30}, "raw-wood", "all", defines.inventory.fuel}
}
commandqueue[14996] = {
    {"put", {-28, 30}, "coal", 2, defines.inventory.fuel}
}
commandqueue[14997] = {
    {"take", {-28, 28}, "raw-wood", "all", defines.inventory.fuel}
}
commandqueue[14998] = {
    {"put", {-28, 28}, "coal", 2, defines.inventory.fuel}
}
commandqueue[14984] = {
    {"move", "N"}
}
commandqueue[14985] = {
    {"move", "NE"}
}
commandqueue[14994] = {
    {"move", "STOP"}
--Presently at: (-29.61328125,33.00781250)
}
commandqueue[14995] = {
    {"move", "N"}
}
commandqueue[15006] = {
    {"move", "NW"}
}
commandqueue[15010] = {
    {"move", "STOP"}
--Presently at: (-30.03515625,30.95312500)
}
commandqueue[15005] = {
    {"take", {-28, 26.9}, "raw-wood", "all", defines.inventory.fuel}
}
commandqueue[15007] = {
    {"put", {-28, 26.9}, "coal", 2, defines.inventory.fuel}
}
commandqueue[15008] = {
    {"take", {-30.5, 32.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[15009] = {
    {"take", {-30.5, 26.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[15012] = {
    {"put", {-28, 26}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[15013] = {
    {"put", {-28, 28}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[15014] = {
    {"put", {-28, 30}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[15015] = {
    {"put", {-28, 32}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[15016] = {
    {"put", {-28, 34}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[15017] = {
    {"put", {-28, 36}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[15011] = {
    {"move", "S"}
}
commandqueue[15052] = {
    {"move", "STOP"}
--Presently at: (-30.03515625,37.03906250)
}
commandqueue[15053] = {
    {"move", "W"}
}
commandqueue[15055] = {
    {"move", "STOP"}
--Presently at: (-30.33203125,37.03906250)
}
commandqueue[15056] = {
    {"mine", {-32.1, 37.5}}
}
commandqueue[15181] = {
    {"mine", nil}
}
commandqueue[15183] = {
    {"put", {-28, 40}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[15184] = {
    {"take", {-28, 36}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[15185] = {
    {"craft", "stone-furnace", 2}
}
commandqueue[15188] = {
    {"take", {-30.5, 32.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[15189] = {
    {"put", {-28, 38}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[15182] = {
    {"move", "N"}
}
commandqueue[15228] = {
    {"move", "NE"}
}
commandqueue[15232] = {
    {"move", "STOP"}
--Presently at: (-29.91015625,29.78906250)
}
commandqueue[15231] = {
    {"take", {-35, 28}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[15234] = {
    {"take", {-30.5, 26.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[15235] = {
    {"take", {-30.5, 29.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[15236] = {
    {"take", {-30.5, 35.2}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[15233] = {
    {"move", "S"}
}
commandqueue[15248] = {
    {"move", "STOP"}
--Presently at: (-29.91015625,32.01562500)
}
commandqueue[15250] = {
    {"put", {-28, 26.9}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[15251] = {
    {"take", {-28, 26.9}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[15252] = {
    {"put", {-28, 28}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[15253] = {
    {"put", {-28, 30}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[15254] = {
    {"put", {-28, 32}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[15255] = {
    {"put", {-28, 34}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[15256] = {
    {"put", {-28, 36}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[15257] = {
    {"take", {-28, 28}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[15258] = {
    {"take", {-28, 30}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[15259] = {
    {"take", {-28, 32}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[15260] = {
    {"craft", "electric-mining-drill", 1}
}
commandqueue[15261] = {
    {"take", {-28, 34}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[15249] = {
    {"move", "S"}
}
commandqueue[15282] = {
    {"move", "SW"}
}
commandqueue[15293] = {
    {"move", "STOP"}
--Presently at: (-31.07031250,38.07421875)
}
-- Position tracking update here, maybe because of entity collisions?
-- You are presently at: (-31.0156,37.7773)
commandqueue[15291] = {
    {"take", {-28, 36}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[15294] = {
    {"move", "W"}
}
commandqueue[15300] = {
    {"move", "SW"}
}
commandqueue[15303] = {
    {"move", "STOP"}
--Presently at: (-32.22265625,38.09375000)
}
commandqueue[15304] = {
    {"move", "W"}
}
commandqueue[15343] = {
    {"move", "STOP"}
--Presently at: (-38.01171875,38.09375000)
}
commandqueue[15345] = {
    {"take", {-37, 37}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[15346] = {
    {"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[15347] = {
    {"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[15364] = {
    {"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[15344] = {
    {"move", "N"}
}
commandqueue[15385] = {
    {"move", "STOP"}
--Presently at: (-38.01171875,32.00781250)
}
commandqueue[15384] = {
    {"craft", "electronic-circuit", 6}
}
commandqueue[15392] = {
    {"take", {-41, 29}, "coal", "all", defines.inventory.fuel}
}
commandqueue[15388] = {
    {"take", {-41, 31}, "coal", "all", defines.inventory.fuel}
}
commandqueue[15389] = {
    {"take", {-41, 33}, "coal", "all", defines.inventory.fuel}
}
commandqueue[15390] = {
    {"take", {-39, 33}, "coal", "all", defines.inventory.fuel}
}
commandqueue[15387] = {
    {"take", {-39, 31}, "coal", "all", defines.inventory.fuel}
}
commandqueue[15393] = {
    {"take", {-39, 29}, "coal", "all", defines.inventory.fuel}
}
commandqueue[15394] = {
    {"craft", "iron-gear-wheel", 4}
}
commandqueue[15386] = {
    {"move", "W"}
}
commandqueue[15413] = {
    {"move", "STOP"}
--Presently at: (-42.01953125,32.00781250)
}
commandqueue[15414] = {
    {"move", "N"}
}
commandqueue[15415] = {
    {"move", "NW"}
}
commandqueue[15463] = {
    {"move", "STOP"}
--Presently at: (-47.08203125,26.79687500)
}
commandqueue[15464] = {
    {"move", "W"}
}
commandqueue[15490] = {
    {"move", "SW"}
}
commandqueue[15492] = {
    {"move", "STOP"}
--Presently at: (-51.15234375,27.00781250)
}
commandqueue[15491] = {
    {"put", {-56.5, 26.5}, "coal", 10, defines.inventory.fuel}
}
commandqueue[15493] = {
    {"move", "E"}
}
commandqueue[15582] = {
    {"move", "NE"}
}
commandqueue[15602] = {
    {"move", "STOP"}
--Presently at: (-35.83203125,24.89843750)
}
commandqueue[15563] = {
    {"take", {-41, 29}, "coal", "all", defines.inventory.fuel}
}
commandqueue[15564] = {
    {"take", {-39, 29}, "coal", "all", defines.inventory.fuel}
}
commandqueue[15604] = {
    {"build", "electric-mining-drill", {-38.5, 24.5}, defines.direction.east}
}
commandqueue[15605] = {
    {"build", "wooden-chest", {-36.5, 24.5}, defines.direction.north}
}
commandqueue[15606] = {
    {"put", {-35, 26}, "coal", 1, defines.inventory.fuel}
}
commandqueue[15645] = {
    {"take", {-30.5, 26.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[15653] = {
    {"put", {-28, 26}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[15654] = {
    {"put", {-28, 28}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[15655] = {
    {"put", {-28, 29.3}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[15656] = {
    {"take", {-28, 29.3}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[15657] = {
    {"take", {-28, 28}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[15658] = {
    {"take", {-28, 26}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[15603] = {
    {"move", "E"}
}
commandqueue[15716] = {
    {"move", "STOP"}
--Presently at: (-19.05859375,24.89843750)
}
commandqueue[15715] = {
    {"put", {-16, 22}, "coal", 2, defines.inventory.fuel}
}
commandqueue[15718] = {
    {"take", {-16, 22}, "copper-plate", "all", defines.inventory.furnace_result}
}
commandqueue[15719] = {
    {"take", {-16, 24}, "copper-plate", "all", defines.inventory.furnace_result}
}
commandqueue[15717] = {
    {"move", "W"}
}
commandqueue[15743] = {
    {"move", "SW"}
}
commandqueue[15782] = {
    {"move", "STOP"}
--Presently at: (-27.03125000,29.01171875)
}
commandqueue[15781] = {
    {"take", {-28, 32}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[15784] = {
    {"craft", "iron-gear-wheel", 1}
}
commandqueue[15785] = {
    {"craft", "wooden-chest", 1}
}
commandqueue[15783] = {
    {"move", "W"}
}
commandqueue[15797] = {
    {"move", "SW"}
}
commandqueue[15807] = {
    {"move", "STOP"}
--Presently at: (-30.16406250,30.06640625)
}
commandqueue[15802] = {
    {"take", {-30.5, 26.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[15803] = {
    {"take", {-30.5, 29.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[15804] = {
    {"put", {-28, 26}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[15805] = {
    {"put", {-28, 28}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[15806] = {
    {"put", {-28, 29.3}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[15809] = {
    {"take", {-30.5, 32.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[15823] = {
    {"take", {-30.5, 35.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[15843] = {
    {"take", {-28, 34}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[15844] = {
    {"take", {-28, 36}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[15845] = {
    {"take", {-28, 38}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[15846] = {
    {"put", {-28, 32}, "iron-ore", 2, defines.inventory.furnace_source}
}
commandqueue[15847] = {
    {"put", {-28, 34}, "iron-ore", 2, defines.inventory.furnace_source}
}
commandqueue[15848] = {
    {"put", {-28, 36}, "iron-ore", 2, defines.inventory.furnace_source}
}
commandqueue[15849] = {
    {"put", {-28, 38}, "iron-ore", 2, defines.inventory.furnace_source}
}
commandqueue[15850] = {
    {"put", {-28, 40}, "iron-ore", 2, defines.inventory.furnace_source}
}
commandqueue[15808] = {
    {"move", "S"}
}
commandqueue[15868] = {
    {"move", "SE"}
}
commandqueue[15870] = {
    {"move", "STOP"}
--Presently at: (-29.95312500,39.18359375)
}
commandqueue[15866] = {
    {"build", "stone-furnace", {-28, 42}, defines.direction.north}
}
commandqueue[15867] = {
    {"put", {-28, 42}, "iron-ore", 2, defines.inventory.furnace_source}
}
commandqueue[15869] = {
    {"put", {-28, 42}, "coal", 1, defines.inventory.fuel}
}
commandqueue[15872] = {
    {"build", "stone-furnace", {-28.4, 43.5}, defines.direction.north}
}
commandqueue[15873] = {
    {"put", {-28.5, 43.5}, "iron-ore", 3, defines.inventory.furnace_source}
}
commandqueue[15874] = {
    {"put", {-28.5, 43.5}, "coal", 2, defines.inventory.fuel}
}
commandqueue[15875] = {
    {"build", "small-electric-pole", {-29.5, 41.5}, defines.direction.north}
}
commandqueue[15871] = {
    {"move", "W"}
}
commandqueue[15884] = {
    {"move", "NW"}
}
commandqueue[15896] = {
    {"move", "STOP"}
--Presently at: (-33.14843750,37.91796875)
}
-- Position tracking update here, maybe because of entity collisions?
-- You are presently at: (-32.918,37.7695)
commandqueue[15897] = {
    {"move", "W"}
}
commandqueue[15917] = {
    {"move", "SW"}
}
commandqueue[15920] = {
    {"move", "STOP"}
--Presently at: (-36.20312500,38.08593750)
}
commandqueue[15922] = {
    {"take", {-37, 37}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[15923] = {
    {"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[15924] = {
    {"craft", "electric-mining-drill", 1}
}
commandqueue[15951] = {
    {"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[15952] = {
    {"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[15921] = {
    {"move", "N"}
}
commandqueue[15975] = {
    {"move", "NE"}
}
commandqueue[15977] = {
    {"move", "STOP"}
--Presently at: (-35.99218750,29.85937500)
}
commandqueue[15970] = {
    {"take", {-41, 33}, "coal", "all", defines.inventory.fuel}
}
commandqueue[15971] = {
    {"take", {-39, 33}, "coal", "all", defines.inventory.fuel}
}
commandqueue[15972] = {
    {"take", {-41, 31}, "coal", "all", defines.inventory.fuel}
}
commandqueue[15973] = {
    {"take", {-39, 31}, "coal", "all", defines.inventory.fuel}
}
commandqueue[15974] = {
    {"take", {-41, 29}, "coal", "all", defines.inventory.fuel}
}
commandqueue[15976] = {
    {"take", {-39, 29}, "coal", "all", defines.inventory.fuel}
}
commandqueue[15979] = {
    {"take", {-36.5, 24.9}, "coal", "all", defines.inventory.chest}
}
commandqueue[15981] = {
    {"take", {-35, 28}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[15982] = {
    {"craft", "iron-gear-wheel", 4}
}
commandqueue[15978] = {
    {"move", "N"}
}
commandqueue[16011] = {
    {"move", "STOP"}
--Presently at: (-35.99218750,24.96093750)
}
-- Position tracking update here, maybe because of entity collisions?
-- You are presently at: (-35.9062,25.2461)
commandqueue[16012] = {
    {"move", "E"}
}
commandqueue[16049] = {
    {"move", "SE"}
}
commandqueue[16057] = {
    {"move", "STOP"}
--Presently at: (-29.57031250,26.08984375)
}
commandqueue[16068] = {
    {"take", {-30.7, 26.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[16069] = {
    {"take", {-30.7, 29.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[16070] = {
    {"put", {-28, 26}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[16071] = {
    {"put", {-28, 28}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[16072] = {
    {"put", {-28, 30}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[16073] = {
    {"take", {-28, 26}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[16074] = {
    {"craft", "iron-gear-wheel", 1}
}
commandqueue[16075] = {
    {"take", {-28, 28}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[16076] = {
    {"take", {-28, 30}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[16108] = {
    {"take", {-30.7, 32.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[16109] = {
    {"take", {-30.7, 35.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[16110] = {
    {"build", "electric-mining-drill", {-32.5, 38.5}, defines.direction.east}
}
commandqueue[16111] = {
    {"build", "wooden-chest", {-30.5, 38.5}, defines.direction.north}
}
commandqueue[16112] = {
    {"take", {-28, 32}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[16113] = {
    {"take", {-28, 34}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[16114] = {
    {"take", {-28, 36}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[16115] = {
    {"take", {-28, 38}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[16116] = {
    {"put", {-28, 32}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[16117] = {
    {"put", {-28, 34}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[16118] = {
    {"put", {-28, 36}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[16119] = {
    {"put", {-28, 38}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[16120] = {
    {"put", {-28, 39.2}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[16058] = {
    {"move", "S"}
}
commandqueue[16149] = {
    {"move", "SW"}
}
commandqueue[16154] = {
    {"move", "STOP"}
--Presently at: (-30.09765625,40.12500000)
}
commandqueue[16151] = {
    {"take", {-28, 40}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[16152] = {
    {"take", {-28, 42}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[16153] = {
    {"take", {-28.4, 43.3}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[16155] = {
    {"move", "S"}
}
commandqueue[16188] = {
    {"move", "SE"}
}
commandqueue[16199] = {
    {"move", "STOP"}
--Presently at: (-28.93750000,46.18359375)
}
commandqueue[16200] = {
    {"move", "S"}
}
commandqueue[16220] = {
    {"move", "SE"}
}
commandqueue[16239] = {
    {"move", "STOP"}
--Presently at: (-26.93359375,51.15625000)
}
commandqueue[16235] = {
    {"put", {-26, 53}, "coal", 3, defines.inventory.fuel}
}
commandqueue[16236] = {
    {"put", {-24, 54}, "coal", 3, defines.inventory.fuel}
}
commandqueue[16237] = {
    {"put", {-27, 55}, "coal", 3, defines.inventory.fuel}
}
commandqueue[16238] = {
    {"put", {-25, 56}, "coal", 3, defines.inventory.fuel}
}
commandqueue[16241] = {
    {"take", {-25.5, 54.5}, "stone", "all", defines.inventory.chest}
}
commandqueue[16240] = {
    {"move", "N"}
}
commandqueue[16258] = {
    {"move", "NW"}
}
commandqueue[16283] = {
    {"move", "STOP"}
--Presently at: (-29.57031250,45.84765625)
}
commandqueue[16285] = {
    {"build", "stone-furnace", {-28, 46}, defines.direction.north}
}
commandqueue[16286] = {
    {"put", {-28, 46}, "coal", 2, defines.inventory.fuel}
}
commandqueue[16260] = {
    {"craft", "electric-mining-drill", 1}
}
commandqueue[16261] = {
    {"craft", "wooden-chest", 1}
}
commandqueue[16262] = {
    {"craft", "copper-cable", 15}
}
commandqueue[16284] = {
    {"move", "N"}
}
commandqueue[16384] = {
    {"move", "STOP"}
--Presently at: (-29.57031250,31.00390625)
}
commandqueue[16325] = {
    {"take", {-28, 43.3}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[16331] = {
    {"take", {-28, 42}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[16337] = {
    {"take", {-28, 40}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[16343] = {
    {"take", {-28, 38}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[16349] = {
    {"take", {-28, 36}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[16355] = {
    {"take", {-28, 34}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[16361] = {
    {"take", {-28, 32}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[16367] = {
    {"take", {-28, 30}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[16373] = {
    {"take", {-28, 28}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[16379] = {
    {"take", {-28, 26}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[16383] = {
    {"craft", "transport-belt", 2}
}
commandqueue[16358] = {
    {"take", {-30.5, 38.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[16364] = {
    {"take", {-30.5, 35.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[16370] = {
    {"take", {-30.5, 32.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[16376] = {
    {"take", {-30.5, 29.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[16382] = {
    {"take", {-30.5, 26.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[16386] = {
    {"put", {-28, 26}, "iron-ore", 2, defines.inventory.furnace_source}
}
commandqueue[16387] = {
    {"put", {-28, 28}, "iron-ore", 2, defines.inventory.furnace_source}
}
commandqueue[16388] = {
    {"put", {-28, 30}, "iron-ore", 2, defines.inventory.furnace_source}
}
commandqueue[16395] = {
    {"put", {-28, 32}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[16401] = {
    {"put", {-28, 34}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[16407] = {
    {"put", {-28, 36}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[16413] = {
    {"put", {-28, 38}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[16432] = {
    {"put", {-28, 40}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[16437] = {
    {"put", {-28, 42}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[16449] = {
    {"put", {-28, 44}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[16452] = {
    {"put", {-28, 45.3}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[16385] = {
    {"move", "S"}
}
commandqueue[16425] = {
    {"move", "STOP"}
--Presently at: (-29.57031250,36.94140625)
}
commandqueue[16424] = {
    {"build", "electric-mining-drill", {-32.5, 41.5}, defines.direction.east}
}
commandqueue[16485] = {
    {"build", "wooden-chest", {-30.5, 41.5}, defines.direction.north}
}
commandqueue[16426] = {
    {"move", "S"}
}
commandqueue[16453] = {
    {"move", "STOP"}
--Presently at: (-29.57031250,40.94921875)
}
-- Position tracking update here, maybe because of entity collisions?
-- You are presently at: (-29.9453,40.4492)
commandqueue[16454] = {
    {"move", "N"}
}
commandqueue[16551] = {
    {"move", "STOP"}
--Presently at: (-29.94531250,26.05078125)
}
commandqueue[16552] = {
    {"move", "N"}
}
commandqueue[16554] = {
    {"move", "NW"}
}
commandqueue[16564] = {
    {"move", "STOP"}
--Presently at: (-31.00000000,24.69921875)
}
commandqueue[16565] = {
    {"move", "W"}
}
commandqueue[16597] = {
    {"move", "SW"}
}
commandqueue[16600] = {
    {"move", "STOP"}
--Presently at: (-36.06640625,25.01562500)
}
commandqueue[16602] = {
    {"take", {-36.5, 24.5}, "coal", "all", defines.inventory.chest}
}
commandqueue[16601] = {
    {"move", "S"}
}
commandqueue[16662] = {
    {"move", "STOP"}
--Presently at: (-36.06640625,34.07031250)
}
commandqueue[16660] = {
    {"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[16661] = {
    {"take", {-37, 37}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[16664] = {
    {"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[16665] = {
    {"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[16666] = {
    {"take", {-39, 33}, "coal", "all", defines.inventory.fuel}
}
commandqueue[16667] = {
    {"take", {-41, 33}, "coal", "all", defines.inventory.fuel}
}
commandqueue[16679] = {
    {"take", {-41, 31}, "coal", "all", defines.inventory.fuel}
}
commandqueue[16680] = {
    {"take", {-39, 31}, "coal", "all", defines.inventory.fuel}
}
commandqueue[16691] = {
    {"take", {-39, 29}, "coal", "all", defines.inventory.fuel}
}
commandqueue[16692] = {
    {"take", {-41, 29}, "coal", "all", defines.inventory.fuel}
}
commandqueue[16713] = {
    {"take", {-35, 28}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[16663] = {
    {"move", "N"}
}
commandqueue[16724] = {
    {"move", "STOP"}
--Presently at: (-36.06640625,25.01562500)
}
commandqueue[16725] = {
    {"move", "E"}
}
commandqueue[16761] = {
    {"move", "SE"}
}
commandqueue[16771] = {
    {"move", "STOP"}
--Presently at: (-29.66796875,26.07031250)
}
commandqueue[16792] = {
    {"take", {-30.5, 26.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[16793] = {
    {"take", {-30.5, 29.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[16794] = {
    {"take", {-30.5, 32.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[16795] = {
    {"put", {-28, 26}, "iron-ore", 2, defines.inventory.furnace_source}
}
commandqueue[16796] = {
    {"put", {-28, 28}, "iron-ore", 2, defines.inventory.furnace_source}
}
commandqueue[16797] = {
    {"put", {-28, 30}, "iron-ore", 2, defines.inventory.furnace_source}
}
commandqueue[16798] = {
    {"put", {-28, 32}, "iron-ore", 2, defines.inventory.furnace_source}
}
commandqueue[16799] = {
    {"put", {-28, 34}, "iron-ore", 2, defines.inventory.furnace_source}
}
commandqueue[16800] = {
    {"put", {-28, 26}, "coal", 1, defines.inventory.fuel}
}
commandqueue[16801] = {
    {"put", {-28, 28}, "coal", 1, defines.inventory.fuel}
}
commandqueue[16802] = {
    {"put", {-28, 30}, "coal", 1, defines.inventory.fuel}
}
commandqueue[16803] = {
    {"put", {-28, 32}, "coal", 1, defines.inventory.fuel}
}
commandqueue[16804] = {
    {"put", {-28, 34}, "coal", 1, defines.inventory.fuel}
}
commandqueue[16807] = {
    {"take", {-30.5, 29.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[16772] = {
    {"move", "S"}
}
commandqueue[16879] = {
    {"move", "STOP"}
--Presently at: (-29.66796875,41.95312500)
}
commandqueue[16858] = {
    {"take", {-30.5, 35.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[16859] = {
    {"take", {-30.5, 38.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[16860] = {
    {"take", {-30.5, 41.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[16861] = {
    {"put", {-28, 36}, "iron-ore", 2, defines.inventory.furnace_source}
}
commandqueue[16862] = {
    {"put", {-28, 36}, "coal", 1, defines.inventory.fuel}
}
commandqueue[16863] = {
    {"put", {-28, 38}, "coal", 1, defines.inventory.fuel}
}
commandqueue[16864] = {
    {"put", {-28, 40}, "coal", 1, defines.inventory.fuel}
}
commandqueue[16870] = {
    {"put", {-28, 38}, "iron-ore", 2, defines.inventory.furnace_source}
}
commandqueue[16871] = {
    {"put", {-28, 40}, "iron-ore", 2, defines.inventory.furnace_source}
}
commandqueue[16872] = {
    {"put", {-28, 42}, "coal", 1, defines.inventory.fuel}
}
commandqueue[16873] = {
    {"put", {-28, 44}, "coal", 1, defines.inventory.fuel}
}
commandqueue[16875] = {
    {"put", {-28, 42}, "iron-ore", 2, defines.inventory.furnace_source}
}
commandqueue[16876] = {
    {"put", {-28, 44}, "iron-ore", 2, defines.inventory.furnace_source}
}
commandqueue[16877] = {
    {"put", {-28, 45.3}, "coal", 1, defines.inventory.fuel}
}
commandqueue[16878] = {
    {"put", {-28, 45.3}, "iron-ore", 2, defines.inventory.furnace_source}
}
commandqueue[16881] = {
    {"take", {-28, 45.3}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[16882] = {
    {"take", {-28, 44}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[16883] = {
    {"take", {-28, 42}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[16884] = {
    {"take", {-28, 40}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[16885] = {
    {"take", {-28, 38}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[16910] = {
    {"take", {-30.5, 41.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[16912] = {
    {"take", {-28, 36}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[16940] = {
    {"take", {-28, 34}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[16941] = {
    {"take", {-28, 32}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[16942] = {
    {"take", {-30.5, 35.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[16943] = {
    {"take", {-30.5, 32.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[16944] = {
    {"take", {-30.5, 29.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[16945] = {
    {"take", {-30.5, 26.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[16946] = {
    {"put", {-28, 35.2}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[16947] = {
    {"put", {-28, 34}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[16948] = {
    {"put", {-28, 32}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[16949] = {
    {"put", {-28, 30}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[16950] = {
    {"put", {-28, 28}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[16951] = {
    {"put", {-28, 26}, "iron-ore", 1, defines.inventory.furnace_source}
}
commandqueue[16955] = {
    {"take", {-28, 30}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[16956] = {
    {"take", {-28, 28}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[16957] = {
    {"take", {-28, 26}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[16880] = {
    {"move", "N"}
}
commandqueue[16987] = {
    {"move", "STOP"}
--Presently at: (-29.66796875,26.07031250)
}
commandqueue[17063] = {
    {"craft", "lab", 1}
}
commandqueue[17064] = {
    {"craft", "science-pack-1", 1}
}
commandqueue[17065] = {
    {"craft", "burner-mining-drill", 1}
}
commandqueue[16988] = {
    {"move", "N"}
}
commandqueue[17000] = {
    {"move", "NW"}
}
commandqueue[17070] = {
    {"move", "STOP"}
--Presently at: (-37.05078125,16.90625000)
}
commandqueue[17071] = {
    {"move", "W"}
}
commandqueue[17151] = {
    {"move", "STOP"}
--Presently at: (-48.92578125,16.90625000)
}
commandqueue[17152] = {
    {"move", "W"}
}
commandqueue[17166] = {
    {"move", "NW"}
}
commandqueue[17180] = {
    {"move", "STOP"}
--Presently at: (-52.48046875,15.42968750)
}
commandqueue[17181] = {
    {"mine", {-54, 14.8}}
}
commandqueue[17281] = {
    {"mine", nil}
}
commandqueue[17282] = {
    {"move", "W"}
}
commandqueue[17291] = {
    {"move", "NW"}
}
commandqueue[17295] = {
    {"move", "STOP"}
--Presently at: (-54.23828125,15.00781250)
}
commandqueue[17296] = {
    {"mine", {-56, 14.6}}
}
commandqueue[17396] = {
    {"mine", nil}
}
commandqueue[17397] = {
    {"move", "N"}
}
commandqueue[17433] = {
    {"move", "NW"}
}
commandqueue[17447] = {
    {"move", "STOP"}
--Presently at: (-55.71484375,8.18750000)
}
commandqueue[17448] = {
    {"mine", {-56, 6.5}}
}
commandqueue[17548] = {
    {"mine", nil}
}
commandqueue[17549] = {
    {"mine", {-54.8, 7}}
}
commandqueue[17649] = {
    {"mine", nil}
}
commandqueue[17650] = {
    {"move", "N"}
}
commandqueue[17671] = {
    {"move", "NE"}
}
commandqueue[17675] = {
    {"move", "STOP"}
--Presently at: (-55.29296875,4.64843750)
}
commandqueue[17676] = {
    {"mine", {-55.2, 3}}
}
commandqueue[17776] = {
    {"mine", nil}
}
commandqueue[17777] = {
    {"move", "E"}
}
commandqueue[17789] = {
    {"move", "NE"}
}
commandqueue[17792] = {
    {"move", "STOP"}
--Presently at: (-53.19531250,4.33203125)
}
commandqueue[17793] = {
    {"mine", {-51.4, 4.1}}
}
commandqueue[17843] = {
    {"mine", nil}
}
commandqueue[17844] = {
    {"move", "S"}
}
commandqueue[17942] = {
    {"move", "SE"}
}
commandqueue[17954] = {
    {"move", "STOP"}
--Presently at: (-51.92968750,20.14453125)
}
commandqueue[17956] = {
    {"put", {-56.3, 24.3}, "coal", 12, defines.inventory.fuel}
}
commandqueue[17955] = {
    {"move", "S"}
}
commandqueue[17968] = {
    {"move", "SE"}
}
commandqueue[18063] = {
    {"move", "STOP"}
--Presently at: (-41.91015625,32.09375000)
}
commandqueue[18057] = {
    {"take", {-39, 33}, "coal", "all", defines.inventory.fuel}
}
commandqueue[18058] = {
    {"take", {-41, 33}, "coal", "all", defines.inventory.fuel}
}
commandqueue[18059] = {
    {"take", {-41, 31}, "coal", "all", defines.inventory.fuel}
}
commandqueue[18060] = {
    {"take", {-39, 31}, "coal", "all", defines.inventory.fuel}
}
commandqueue[18061] = {
    {"take", {-39, 29}, "coal", "all", defines.inventory.fuel}
}
commandqueue[18062] = {
    {"take", {-41, 29}, "coal", "all", defines.inventory.fuel}
}
commandqueue[18064] = {
    {"move", "E"}
}
commandqueue[18104] = {
    {"move", "STOP"}
--Presently at: (-35.97265625,32.09375000)
}
commandqueue[18097] = {
    {"put", {-35, 31}, "coal", 3, defines.inventory.fuel}
}
commandqueue[18098] = {
    {"put", {-35, 33}, "coal", 3, defines.inventory.fuel}
}
commandqueue[18099] = {
    {"put", {-35, 35}, "coal", 3, defines.inventory.fuel}
}
commandqueue[18100] = {
    {"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[18101] = {
    {"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[18102] = {
    {"take", {-37, 37}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[18103] = {
    {"put", {-37, 37}, "coal", 2, defines.inventory.fuel}
}
commandqueue[18107] = {
    {"put", {-35, 37}, "coal", 3, defines.inventory.fuel}
}
commandqueue[18106] = {
    {"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[18108] = {
    {"put", {-37, 35}, "coal", 2, defines.inventory.fuel}
}
commandqueue[18109] = {
    {"put", {-37, 33}, "coal", 2, defines.inventory.fuel}
}
commandqueue[18110] = {
    {"put", {-37, 31}, "coal", 2, defines.inventory.fuel}
}
commandqueue[18105] = {
    {"move", "N"}
}
commandqueue[18153] = {
    {"move", "STOP"}
--Presently at: (-35.97265625,24.96875000)
}
commandqueue[18152] = {
    {"take", {-35, 28}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[18156] = {
    {"take", {-36.5, 24.5}, "coal", "all", defines.inventory.chest}
}
commandqueue[18157] = {
    {"put", {-35, 28}, "coal", 2, defines.inventory.fuel}
}
commandqueue[18158] = {
    {"put", {-35, 26}, "coal", 3, defines.inventory.fuel}
}
commandqueue[18154] = {
    {"move", "E"}
}
commandqueue[18155] = {
    {"move", "NE"}
}
commandqueue[18160] = {
    {"move", "STOP"}
--Presently at: (-35.29687500,24.44140625)
}
commandqueue[18161] = {
    {"move", "E"}
}
commandqueue[18191] = {
    {"move", "SE"}
}
commandqueue[18202] = {
    {"move", "STOP"}
--Presently at: (-29.68359375,25.60156250)
}
commandqueue[18199] = {
    {"tech", "automation"}
}
commandqueue[18200] = {
    {"build", "lab", {-33.5, 22.5}, defines.direction.north}
}
commandqueue[18201] = {
    {"put", {-34.5, 22.5}, "science-pack-1", 1, defines.inventory.lab_input}
}
commandqueue[18204] = {
    {"craft", "science-pack-1", 1}
}
commandqueue[18229] = {
    {"take", {-28, 26}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[18230] = {
    {"take", {-28, 28}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[18231] = {
    {"take", {-28, 30}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[18232] = {
    {"take", {-30.5, 26.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[18233] = {
    {"take", {-30.5, 29.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[18234] = {
    {"take", {-30.5, 32.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[18235] = {
    {"take", {-30.5, 35.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[18236] = {
    {"put", {-28, 26}, "iron-ore", 6, defines.inventory.furnace_source}
}
commandqueue[18237] = {
    {"put", {-28, 28}, "iron-ore", 6, defines.inventory.furnace_source}
}
commandqueue[18238] = {
    {"put", {-28, 30}, "iron-ore", 6, defines.inventory.furnace_source}
}
commandqueue[18239] = {
    {"put", {-28, 32}, "iron-ore", 6, defines.inventory.furnace_source}
}
commandqueue[18240] = {
    {"put", {-28, 34}, "iron-ore", 6, defines.inventory.furnace_source}
}
commandqueue[18241] = {
    {"put", {-28, 36}, "iron-ore", 6, defines.inventory.furnace_source}
}
commandqueue[18242] = {
    {"take", {-28, 32}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[18243] = {
    {"take", {-28, 34}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[18244] = {
    {"take", {-28, 36}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[18203] = {
    {"move", "S"}
}
commandqueue[18303] = {
    {"move", "SE"}
}
commandqueue[18310] = {
    {"move", "STOP"}
--Presently at: (-28.94531250,41.18359375)
}
commandqueue[18301] = {
    {"take", {-30.5, 38.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[18302] = {
    {"take", {-30.5, 41.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[18304] = {
    {"put", {-28, 38}, "iron-ore", 6, defines.inventory.furnace_source}
}
commandqueue[18305] = {
    {"put", {-28, 40}, "iron-ore", 6, defines.inventory.furnace_source}
}
commandqueue[18306] = {
    {"put", {-28, 42}, "iron-ore", 6, defines.inventory.furnace_source}
}
commandqueue[18307] = {
    {"put", {-28, 44}, "iron-ore", 6, defines.inventory.furnace_source}
}
commandqueue[18308] = {
    {"take", {-28, 38}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[18309] = {
    {"take", {-28, 40}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[18312] = {
    {"take", {-28, 42}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[18313] = {
    {"take", {-28, 44}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[18314] = {
    {"put", {-28, 46}, "iron-ore", 9, defines.inventory.furnace_source}
}
commandqueue[18315] = {
    {"take", {-28, 46}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[18311] = {
    {"move", "E"}
}
commandqueue[18323] = {
    {"move", "NE"}
}
commandqueue[18325] = {
    {"move", "STOP"}
--Presently at: (-26.95312500,40.97265625)
}
commandqueue[18326] = {
    {"move", "N"}
}
commandqueue[18381] = {
    {"move", "NE"}
}
commandqueue[18466] = {
    {"move", "STOP"}
--Presently at: (-17.98828125,23.84375000)
}
commandqueue[18464] = {
    {"build", "burner-mining-drill", {-14, 26}, defines.direction.west}
}
commandqueue[18465] = {
    {"put", {-14, 26}, "coal", 4, defines.inventory.fuel}
}
commandqueue[18468] = {
    {"put", {-14, 24}, "coal", 4, defines.inventory.fuel}
}
commandqueue[18469] = {
    {"put", {-14, 22}, "coal", 4, defines.inventory.fuel}
}
commandqueue[18470] = {
    {"put", {-16, 22}, "coal", 3, defines.inventory.fuel}
}
commandqueue[18471] = {
    {"put", {-16, 24}, "coal", 3, defines.inventory.fuel}
}
commandqueue[18472] = {
    {"build", "stone-furnace", {-16, 26}, defines.direction.north}
}
commandqueue[18473] = {
    {"put", {-16, 26}, "coal", 3, defines.inventory.fuel}
}
commandqueue[18474] = {
    {"take", {-16, 22}, "copper-plate", "all", defines.inventory.furnace_result}
}
commandqueue[18475] = {
    {"take", {-16, 24}, "copper-plate", "all", defines.inventory.furnace_result}
}
commandqueue[18478] = {
    {"craft", "science-pack-1", 1}
}
commandqueue[18479] = {
    {"craft", "science-pack-1", 1}
}
commandqueue[18480] = {
    {"craft", "science-pack-1", 1}
}
commandqueue[18481] = {
    {"craft", "science-pack-1", 1}
}
commandqueue[18482] = {
    {"craft", "science-pack-1", 1}
}
commandqueue[18467] = {
    {"move", "W"}
}
commandqueue[18541] = {
    {"move", "SW"}
}
commandqueue[18543] = {
    {"move", "STOP"}
--Presently at: (-29.18359375,24.05468750)
}
-- Position tracking update here, maybe because of entity collisions?
-- You are presently at: (-29.3242,24.3672)
commandqueue[18544] = {
    {"move", "W"}
}
commandqueue[18587] = {
    {"move", "SW"}
}
commandqueue[18593] = {
    {"move", "STOP"}
--Presently at: (-36.33984375,25.00000000)
}
commandqueue[18594] = {
    {"move", "S"}
}
commandqueue[18639] = {
    {"move", "SE"}
}
commandqueue[18643] = {
    {"move", "STOP"}
--Presently at: (-35.91796875,32.10156250)
}
-- Position tracking update here, maybe because of entity collisions?
-- You are presently at: (-35.707,31.9961)
commandqueue[18636] = {
    {"take", {-39, 33}, "coal", "all", defines.inventory.fuel}
}
commandqueue[18637] = {
    {"take", {-41, 33}, "coal", "all", defines.inventory.fuel}
}
commandqueue[18638] = {
    {"take", {-41, 31}, "coal", "all", defines.inventory.fuel}
}
commandqueue[18640] = {
    {"take", {-39, 31}, "coal", "all", defines.inventory.fuel}
}
commandqueue[18641] = {
    {"take", {-39, 29}, "coal", "all", defines.inventory.fuel}
}
commandqueue[18642] = {
    {"take", {-41, 29}, "coal", "all", defines.inventory.fuel}
}
commandqueue[18645] = {
    {"take", {-37, 36.3}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[18646] = {
    {"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[18647] = {
    {"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[18648] = {
    {"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[18649] = {
    {"take", {-35, 28}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[18644] = {
    {"move", "N"}
}
commandqueue[18690] = {
    {"move", "NW"}
}
commandqueue[18694] = {
    {"move", "STOP"}
--Presently at: (-36.12890625,24.74609375)
}
commandqueue[18695] = {
    {"move", "E"}
}
commandqueue[18733] = {
    {"move", "SE"}
}
commandqueue[18741] = {
    {"move", "STOP"}
--Presently at: (-29.64453125,25.58984375)
}
commandqueue[18743] = {
    {"put", {-33.3, 23.7}, "science-pack-1", 1, defines.inventory.lab_input}
}
commandqueue[18768] = {
    {"take", {-28, 26}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[18769] = {
    {"take", {-28, 28}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[18770] = {
    {"take", {-28, 30}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[18771] = {
    {"take", {-30.5, 26.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[18772] = {
    {"take", {-30.5, 29.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[18773] = {
    {"take", {-30.5, 32.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[18774] = {
    {"take", {-30.5, 35.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[18775] = {
    {"put", {-28, 26}, "iron-ore", 3, defines.inventory.furnace_source}
}
commandqueue[18776] = {
    {"put", {-28, 28}, "iron-ore", 3, defines.inventory.furnace_source}
}
commandqueue[18777] = {
    {"put", {-28, 30}, "iron-ore", 3, defines.inventory.furnace_source}
}
commandqueue[18778] = {
    {"put", {-28, 32}, "iron-ore", 3, defines.inventory.furnace_source}
}
commandqueue[18779] = {
    {"put", {-28, 34}, "iron-ore", 3, defines.inventory.furnace_source}
}
commandqueue[18780] = {
    {"put", {-28, 36}, "iron-ore", 3, defines.inventory.furnace_source}
}
commandqueue[18781] = {
    {"take", {-28, 32}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[18782] = {
    {"take", {-28, 34}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[18783] = {
    {"take", {-28, 36}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[18742] = {
    {"move", "S"}
}
commandqueue[18842] = {
    {"move", "SE"}
}
commandqueue[18849] = {
    {"move", "STOP"}
--Presently at: (-28.90625000,41.17187500)
}
commandqueue[18840] = {
    {"take", {-30.5, 38.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[18841] = {
    {"take", {-30.5, 41.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[18843] = {
    {"put", {-28, 38}, "iron-ore", 3, defines.inventory.furnace_source}
}
commandqueue[18844] = {
    {"put", {-28, 40}, "iron-ore", 2, defines.inventory.furnace_source}
}
commandqueue[18845] = {
    {"put", {-28, 42}, "iron-ore", 2, defines.inventory.furnace_source}
}
commandqueue[18846] = {
    {"put", {-28, 44}, "iron-ore", 2, defines.inventory.furnace_source}
}
commandqueue[18847] = {
    {"take", {-28, 38}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[18848] = {
    {"take", {-28, 40}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[18851] = {
    {"take", {-28, 46}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[18852] = {
    {"put", {-28, 46}, "iron-ore", 2, defines.inventory.furnace_source}
}
commandqueue[18853] = {
    {"take", {-28, 44}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[18854] = {
    {"take", {-28, 42}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[18850] = {
    {"move", "E"}
}
commandqueue[18862] = {
    {"move", "NE"}
}
commandqueue[18864] = {
    {"move", "STOP"}
--Presently at: (-26.91406250,40.96093750)
}
commandqueue[18865] = {
    {"move", "E"}
}
commandqueue[19019] = {
    {"move", "NE"}
}
commandqueue[19054] = {
    {"move", "STOP"}
--Presently at: (-0.36328125,37.26953125)
}
commandqueue[19055] = {
    {"mine", {1.4, 37.1}}
}
commandqueue[19105] = {
    {"mine", nil}
}
commandqueue[19106] = {
    {"move", "W"}
}
commandqueue[19203] = {
    {"move", "NW"}
}
commandqueue[19320] = {
    {"move", "STOP"}
--Presently at: (-27.10156250,24.92968750)
}
commandqueue[19321] = {
    {"move", "W"}
}
commandqueue[19339] = {
    {"move", "STOP"}
--Presently at: (-29.77343750,24.92968750)
}
commandqueue[19341] = {
    {"put", {-33.3, 23.7}, "science-pack-1", 1, defines.inventory.lab_input}
}
commandqueue[19340] = {
    {"move", "W"}
}
commandqueue[19383] = {
    {"move", "STOP"}
--Presently at: (-36.15625000,24.92968750)
}
commandqueue[19384] = {
    {"move", "S"}
}
commandqueue[19431] = {
    {"move", "SE"}
}
commandqueue[19433] = {
    {"move", "STOP"}
--Presently at: (-35.94531250,32.11718750)
}
commandqueue[19426] = {
    {"take", {-39, 33}, "coal", "all", defines.inventory.fuel}
}
commandqueue[19427] = {
    {"take", {-41, 33}, "coal", "all", defines.inventory.fuel}
}
commandqueue[19428] = {
    {"take", {-41, 31}, "coal", "all", defines.inventory.fuel}
}
commandqueue[19429] = {
    {"take", {-39, 31}, "coal", "all", defines.inventory.fuel}
}
commandqueue[19430] = {
    {"take", {-39, 29}, "coal", "all", defines.inventory.fuel}
}
commandqueue[19432] = {
    {"take", {-41, 29}, "coal", "all", defines.inventory.fuel}
}
commandqueue[19435] = {
    {"take", {-37, 36.3}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[19436] = {
    {"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[19437] = {
    {"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[19438] = {
    {"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[19439] = {
    {"take", {-35, 28}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[19434] = {
    {"move", "N"}
}
commandqueue[19482] = {
    {"move", "NW"}
}
commandqueue[19484] = {
    {"move", "STOP"}
--Presently at: (-36.15625000,24.78125000)
}
commandqueue[19485] = {
    {"move", "E"}
}
commandqueue[19523] = {
    {"move", "SE"}
}
commandqueue[19530] = {
    {"move", "STOP"}
--Presently at: (-29.77734375,25.51953125)
}
commandqueue[19532] = {
    {"put", {-33.3, 23.7}, "science-pack-1", 1, defines.inventory.lab_input}
}
commandqueue[19557] = {
    {"take", {-28, 26}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[19558] = {
    {"take", {-28, 28}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[19559] = {
    {"take", {-28, 30}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[19560] = {
    {"take", {-30.5, 26.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[19561] = {
    {"take", {-30.5, 29.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[19562] = {
    {"take", {-30.5, 32.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[19563] = {
    {"take", {-30.5, 35.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[19564] = {
    {"put", {-28, 26}, "iron-ore", 3, defines.inventory.furnace_source}
}
commandqueue[19565] = {
    {"put", {-28, 28}, "iron-ore", 3, defines.inventory.furnace_source}
}
commandqueue[19566] = {
    {"put", {-28, 30}, "iron-ore", 3, defines.inventory.furnace_source}
}
commandqueue[19567] = {
    {"put", {-28, 32}, "iron-ore", 3, defines.inventory.furnace_source}
}
commandqueue[19568] = {
    {"put", {-28, 34}, "iron-ore", 3, defines.inventory.furnace_source}
}
commandqueue[19569] = {
    {"put", {-28, 36}, "iron-ore", 3, defines.inventory.furnace_source}
}
commandqueue[19570] = {
    {"take", {-28, 32}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[19571] = {
    {"take", {-28, 34}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[19572] = {
    {"take", {-28, 36}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[19531] = {
    {"move", "S"}
}
commandqueue[19631] = {
    {"move", "SE"}
}
commandqueue[19639] = {
    {"move", "STOP"}
--Presently at: (-28.93359375,41.20703125)
}
commandqueue[19630] = {
    {"take", {-30.5, 38.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[19632] = {
    {"take", {-30.5, 41.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[19633] = {
    {"put", {-28, 38}, "iron-ore", 3, defines.inventory.furnace_source}
}
commandqueue[19634] = {
    {"put", {-28, 40}, "iron-ore", 5, defines.inventory.furnace_source}
}
commandqueue[19635] = {
    {"put", {-28, 42}, "iron-ore", 5, defines.inventory.furnace_source}
}
commandqueue[19636] = {
    {"put", {-28, 44}, "iron-ore", 5, defines.inventory.furnace_source}
}
commandqueue[19637] = {
    {"take", {-28, 38}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[19638] = {
    {"take", {-28, 40}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[19641] = {
    {"take", {-28, 46}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[19642] = {
    {"put", {-28, 46}, "iron-ore", 5, defines.inventory.furnace_source}
}
commandqueue[19643] = {
    {"take", {-28, 44}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[19644] = {
    {"take", {-28, 42}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[19640] = {
    {"move", "E"}
}
commandqueue[19652] = {
    {"move", "NE"}
}
commandqueue[19654] = {
    {"move", "STOP"}
--Presently at: (-26.94140625,40.99609375)
}
commandqueue[19656] = {
    {"craft", "small-electric-pole", 1}
}
commandqueue[19657] = {
    {"craft", "steam-engine", 1}
}
commandqueue[19658] = {
    {"craft", "pipe", 1}
}
commandqueue[19659] = {
    {"craft", "electric-mining-drill", 1}
}
commandqueue[19660] = {
    {"craft", "wooden-chest", 1}
}
commandqueue[19661] = {
    {"craft", "small-electric-pole", 2}
}
commandqueue[19662] = {
    {"craft", "science-pack-1", 1}
}
commandqueue[19663] = {
    {"craft", "science-pack-1", 1}
}
commandqueue[19664] = {
    {"craft", "stone-furnace", 2}
}
commandqueue[19665] = {
    {"craft", "science-pack-1", 1}
}
commandqueue[19666] = {
    {"craft", "science-pack-1", 1}
}
commandqueue[19655] = {
    {"move", "E"}
}
commandqueue[19797] = {
    {"move", "SE"}
}
commandqueue[19987] = {
    {"move", "STOP"}
--Presently at: (14.17578125,61.03515625)
}
-- Position tracking update here, maybe because of entity collisions?
-- You are presently at: (14.0078,60.957)
commandqueue[19988] = {
    {"mine", {14, 61.7}}
}
commandqueue[20038] = {
    {"mine", nil}
}
commandqueue[20039] = {
    {"mine", {15.4, 61.4}}
}
commandqueue[20089] = {
    {"mine", nil}
}
commandqueue[20090] = {
    {"move", "S"}
}
commandqueue[20118] = {
    {"move", "STOP"}
--Presently at: (14.00781250,65.11328125)
}
commandqueue[20119] = {
    {"mine", {12.8, 65.8}}
}
commandqueue[20169] = {
    {"mine", nil}
}
commandqueue[20170] = {
    {"move", "N"}
}
commandqueue[20178] = {
    {"move", "NW"}
}
commandqueue[20548] = {
    {"move", "STOP"}
--Presently at: (-25.01562500,24.90234375)
}
commandqueue[20549] = {
    {"move", "W"}
}
commandqueue[20578] = {
    {"move", "SW"}
}
commandqueue[20584] = {
    {"move", "STOP"}
--Presently at: (-29.95312500,25.53515625)
}
commandqueue[20583] = {
    {"put", {-33.3, 23.7}, "science-pack-1", 3, defines.inventory.lab_input}
}
commandqueue[20611] = {
    {"take", {-28, 26}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[20612] = {
    {"take", {-28, 28}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[20613] = {
    {"take", {-28, 30}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[20614] = {
    {"take", {-30.5, 26.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[20615] = {
    {"take", {-30.5, 29.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[20616] = {
    {"take", {-30.5, 32.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[20617] = {
    {"take", {-30.5, 35.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[20618] = {
    {"put", {-28, 26}, "iron-ore", 5, defines.inventory.furnace_source}
}
commandqueue[20619] = {
    {"put", {-28, 28}, "iron-ore", 5, defines.inventory.furnace_source}
}
commandqueue[20620] = {
    {"put", {-28, 30}, "iron-ore", 5, defines.inventory.furnace_source}
}
commandqueue[20621] = {
    {"put", {-28, 32}, "iron-ore", 5, defines.inventory.furnace_source}
}
commandqueue[20622] = {
    {"put", {-28, 34}, "iron-ore", 5, defines.inventory.furnace_source}
}
commandqueue[20623] = {
    {"put", {-28, 36}, "iron-ore", 5, defines.inventory.furnace_source}
}
commandqueue[20624] = {
    {"take", {-28, 32}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[20625] = {
    {"take", {-28, 34}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[20626] = {
    {"take", {-28, 36}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[20585] = {
    {"move", "S"}
}
commandqueue[20689] = {
    {"move", "SE"}
}
commandqueue[20691] = {
    {"move", "STOP"}
--Presently at: (-29.74218750,41.18359375)
}
commandqueue[20682] = {
    {"take", {-30.5, 38.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[20683] = {
    {"take", {-30.5, 41.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[20684] = {
    {"put", {-28, 38}, "iron-ore", 5, defines.inventory.furnace_source}
}
commandqueue[20685] = {
    {"put", {-28, 40}, "iron-ore", 5, defines.inventory.furnace_source}
}
commandqueue[20686] = {
    {"put", {-28, 42}, "iron-ore", 5, defines.inventory.furnace_source}
}
commandqueue[20687] = {
    {"put", {-28, 44}, "iron-ore", 5, defines.inventory.furnace_source}
}
commandqueue[20688] = {
    {"take", {-28, 38}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[20690] = {
    {"take", {-28, 40}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[20693] = {
    {"take", {-28, 46}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[20694] = {
    {"put", {-28, 46}, "iron-ore", 5, defines.inventory.furnace_source}
}
commandqueue[20695] = {
    {"take", {-28, 44}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[20696] = {
    {"take", {-28, 42}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[20692] = {
    {"move", "N"}
}
commandqueue[20797] = {
    {"move", "NW"}
}
commandqueue[20805] = {
    {"move", "STOP"}
--Presently at: (-30.58593750,24.75390625)
}
commandqueue[20806] = {
    {"move", "W"}
}
commandqueue[20843] = {
    {"move", "SW"}
}
commandqueue[20845] = {
    {"move", "STOP"}
--Presently at: (-36.28906250,24.96484375)
}
commandqueue[20846] = {
    {"move", "S"}
}
commandqueue[20892] = {
    {"move", "SE"}
}
commandqueue[20895] = {
    {"move", "STOP"}
--Presently at: (-35.97265625,32.10937500)
}
commandqueue[20888] = {
    {"take", {-39, 33}, "coal", "all", defines.inventory.fuel}
}
commandqueue[20889] = {
    {"take", {-41, 33}, "coal", "all", defines.inventory.fuel}
}
commandqueue[20890] = {
    {"take", {-41, 31}, "coal", "all", defines.inventory.fuel}
}
commandqueue[20891] = {
    {"take", {-39, 31}, "coal", "all", defines.inventory.fuel}
}
commandqueue[20893] = {
    {"take", {-39, 29}, "coal", "all", defines.inventory.fuel}
}
commandqueue[20894] = {
    {"take", {-41, 29}, "coal", "all", defines.inventory.fuel}
}
commandqueue[20897] = {
    {"take", {-37, 36.3}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[20898] = {
    {"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[20899] = {
    {"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[20900] = {
    {"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[20901] = {
    {"take", {-35, 28}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[20902] = {
    {"put", {-41, 31}, "coal", 1, defines.inventory.fuel}
}
commandqueue[20896] = {
    {"move", "N"}
}
commandqueue[20912] = {
    {"move", "NW"}
}
commandqueue[20939] = {
    {"move", "STOP"}
--Presently at: (-38.82031250,26.88671875)
}
commandqueue[20941] = {
    {"take", {-36.5, 24.5}, "coal", "all", defines.inventory.chest}
}
commandqueue[20940] = {
    {"move", "W"}
}
commandqueue[20982] = {
    {"move", "NW"}
}
commandqueue[21012] = {
    {"move", "STOP"}
--Presently at: (-48.21875000,23.72265625)
}
commandqueue[21013] = {
    {"move", "W"}
}
commandqueue[21186] = {
    {"move", "NW"}
}
commandqueue[21188] = {
    {"move", "STOP"}
--Presently at: (-74.10937500,23.51171875)
}
commandqueue[21189] = {
    {"mine", {-76, 23.5}}
}
commandqueue[21289] = {
    {"mine", nil}
}
commandqueue[21290] = {
    {"move", "N"}
}
commandqueue[21297] = {
    {"move", "NW"}
}
commandqueue[21322] = {
    {"move", "STOP"}
--Presently at: (-76.74609375,19.83593750)
}
commandqueue[21323] = {
    {"mine", {-77.8, 18.5}}
}
commandqueue[21373] = {
    {"mine", nil}
}
commandqueue[21374] = {
    {"move", "E"}
}
commandqueue[21380] = {
    {"move", "NE"}
}
commandqueue[21452] = {
    {"move", "STOP"}
--Presently at: (-68.26171875,12.24218750)
}
commandqueue[21453] = {
    {"mine", {-66.9, 11}}
}
commandqueue[21503] = {
    {"mine", nil}
}
commandqueue[21504] = {
    {"move", "E"}
}
commandqueue[21515] = {
    {"move", "SE"}
}
commandqueue[21608] = {
    {"move", "STOP"}
--Presently at: (-56.82031250,22.05078125)
}
-- Position tracking update here, maybe because of entity collisions?
-- You are presently at: (-56.7539,22.1367)
commandqueue[21610] = {
    {"put", {-57, 25.5}, "coal", 40, defines.inventory.fuel}
}
commandqueue[21651] = {
    {"build", "pipe", {-50.5, 25.6}, defines.direction.north}
}
commandqueue[21652] = {
    {"build", "steam-engine", {-47.5, 25.5}, defines.direction.west}
}
commandqueue[21609] = {
    {"move", "E"}
}
commandqueue[21738] = {
    {"move", "SE"}
}
commandqueue[21747] = {
    {"move", "STOP"}
--Presently at: (-36.65625000,23.08593750)
}
commandqueue[21748] = {
    {"move", "S"}
}
commandqueue[21754] = {
    {"move", "SW"}
}
commandqueue[21756] = {
    {"move", "STOP"}
--Presently at: (-36.86718750,24.18750000)
}
commandqueue[21758] = {
    {"take", {-36.5, 24.5}, "coal", "all", defines.inventory.chest}
}
commandqueue[21757] = {
    {"move", "E"}
}
commandqueue[21796] = {
    {"move", "SE"}
}
commandqueue[21809] = {
    {"move", "STOP"}
--Presently at: (-29.70703125,25.55859375)
}
-- Position tracking update here, maybe because of entity collisions?
-- You are presently at: (-29.8438,25.2773)
commandqueue[21833] = {
    {"put", {-28, 26}, "coal", 3, defines.inventory.fuel}
}
commandqueue[21834] = {
    {"put", {-28, 28}, "coal", 3, defines.inventory.fuel}
}
commandqueue[21835] = {
    {"put", {-28, 30}, "coal", 3, defines.inventory.fuel}
}
commandqueue[21836] = {
    {"take", {-28, 26}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[21837] = {
    {"take", {-28, 28}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[21838] = {
    {"take", {-28, 30}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[21839] = {
    {"take", {-30.5, 26.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[21840] = {
    {"take", {-30.5, 29.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[21841] = {
    {"take", {-30.5, 32.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[21842] = {
    {"take", {-30.5, 35.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[21843] = {
    {"put", {-28, 26}, "iron-ore", 6, defines.inventory.furnace_source}
}
commandqueue[21844] = {
    {"put", {-28, 28}, "iron-ore", 6, defines.inventory.furnace_source}
}
commandqueue[21845] = {
    {"put", {-28, 30}, "iron-ore", 6, defines.inventory.furnace_source}
}
commandqueue[21846] = {
    {"put", {-28, 32}, "iron-ore", 6, defines.inventory.furnace_source}
}
commandqueue[21847] = {
    {"put", {-28, 34}, "iron-ore", 6, defines.inventory.furnace_source}
}
commandqueue[21848] = {
    {"put", {-28, 36}, "iron-ore", 6, defines.inventory.furnace_source}
}
commandqueue[21849] = {
    {"take", {-28, 32}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[21850] = {
    {"take", {-28, 34}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[21851] = {
    {"take", {-28, 36}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[21852] = {
    {"put", {-28, 32}, "coal", 3, defines.inventory.fuel}
}
commandqueue[21853] = {
    {"put", {-28, 34}, "coal", 3, defines.inventory.fuel}
}
commandqueue[21854] = {
    {"put", {-28, 36}, "coal", 3, defines.inventory.fuel}
}
commandqueue[21810] = {
    {"move", "S"}
}
commandqueue[21911] = {
    {"move", "SE"}
}
commandqueue[21919] = {
    {"move", "STOP"}
--Presently at: (-29.00000000,41.11328125)
}
commandqueue[21908] = {
    {"put", {-28, 38}, "coal", 3, defines.inventory.fuel}
}
commandqueue[21909] = {
    {"put", {-28, 40}, "coal", 3, defines.inventory.fuel}
}
commandqueue[21910] = {
    {"take", {-30.5, 38.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[21912] = {
    {"take", {-30.5, 41.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[21913] = {
    {"put", {-28, 38}, "iron-ore", 6, defines.inventory.furnace_source}
}
commandqueue[21914] = {
    {"put", {-28, 40}, "iron-ore", 6, defines.inventory.furnace_source}
}
commandqueue[21915] = {
    {"put", {-28, 42}, "iron-ore", 6, defines.inventory.furnace_source}
}
commandqueue[21916] = {
    {"put", {-28, 44}, "iron-ore", 6, defines.inventory.furnace_source}
}
commandqueue[21917] = {
    {"take", {-28, 38}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[21918] = {
    {"take", {-28, 40}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[21921] = {
    {"take", {-28, 46}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[21922] = {
    {"put", {-28, 46}, "iron-ore", 5, defines.inventory.furnace_source}
}
commandqueue[21923] = {
    {"take", {-28, 44}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[21924] = {
    {"take", {-28, 42}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[21925] = {
    {"put", {-28, 42}, "coal", 3, defines.inventory.fuel}
}
commandqueue[21926] = {
    {"put", {-28, 44}, "coal", 3, defines.inventory.fuel}
}
commandqueue[21927] = {
    {"put", {-28, 46}, "coal", 3, defines.inventory.fuel}
}
commandqueue[21920] = {
    {"move", "E"}
}
commandqueue[21933] = {
    {"move", "NE"}
}
commandqueue[21935] = {
    {"move", "STOP"}
--Presently at: (-26.85937500,40.90234375)
}
commandqueue[22006] = {
    {"build", "small-electric-pole", {-22.2, 32.8}, defines.direction.north}
}
commandqueue[22016] = {
    {"build", "small-electric-pole", {-15.5, 32.5}, defines.direction.north}
}
commandqueue[21936] = {
    {"move", "E"}
}
commandqueue[21970] = {
    {"move", "NE"}
}
commandqueue[22036] = {
    {"move", "STOP"}
--Presently at: (-14.85156250,33.94140625)
}
commandqueue[22035] = {
    {"build", "small-electric-pole", {-13.5, 28.5}, defines.direction.north}
}
commandqueue[22038] = {
    {"build", "electric-mining-drill", {-11.5, 31.5}, defines.direction.east}
}
commandqueue[22047] = {
    {"build", "wooden-chest", {-9.9, 31.1}, defines.direction.north}
}
commandqueue[22037] = {
    {"move", "N"}
}
commandqueue[22063] = {
    {"move", "NW"}
}
commandqueue[22084] = {
    {"move", "STOP"}
--Presently at: (-17.06640625,27.86718750)
}
commandqueue[22085] = {
    {"move", "N"}
}
commandqueue[22098] = {
    {"move", "STOP"}
--Presently at: (-17.06640625,25.93750000)
}
commandqueue[22094] = {
    {"put", {-14, 26}, "coal", 5, defines.inventory.fuel}
}
commandqueue[22095] = {
    {"put", {-14, 24}, "coal", 5, defines.inventory.fuel}
}
commandqueue[22096] = {
    {"put", {-16, 26}, "coal", 3, defines.inventory.fuel}
}
commandqueue[22097] = {
    {"put", {-16, 24}, "coal", 3, defines.inventory.fuel}
}
commandqueue[22100] = {
    {"put", {-14, 22}, "coal", 5, defines.inventory.fuel}
}
commandqueue[22101] = {
    {"put", {-16, 22}, "coal", 3, defines.inventory.fuel}
}
commandqueue[22102] = {
    {"take", {-16, 22}, "copper-plate", "all", defines.inventory.furnace_result}
}
commandqueue[22103] = {
    {"take", {-16, 24}, "copper-plate", "all", defines.inventory.furnace_result}
}
commandqueue[22104] = {
    {"take", {-16, 26}, "copper-plate", "all", defines.inventory.furnace_result}
}
commandqueue[22099] = {
    {"move", "W"}
}
commandqueue[22147] = {
    {"move", "NW"}
}
commandqueue[22156] = {
    {"move", "STOP"}
--Presently at: (-25.14062500,24.98828125)
}
-- Position tracking update here, maybe because of entity collisions?
-- You are presently at: (-25.1523,24.8398)
commandqueue[22157] = {
    {"move", "W"}
}
commandqueue[22231] = {
    {"move", "STOP"}
--Presently at: (-36.13671875,24.83984375)
}
-- Position tracking update here, maybe because of entity collisions?
-- You are presently at: (-35.8398,25.0547)
commandqueue[22230] = {
    {"put", {-33.3, 23.7}, "science-pack-1", 1, defines.inventory.lab_input}
}
commandqueue[22232] = {
    {"move", "S"}
}
commandqueue[22278] = {
    {"move", "SW"}
}
commandqueue[22280] = {
    {"move", "STOP"}
--Presently at: (-36.05078125,32.09375000)
}
commandqueue[22272] = {
    {"take", {-39, 33}, "coal", "all", defines.inventory.fuel}
}
commandqueue[22273] = {
    {"take", {-41, 33}, "coal", "all", defines.inventory.fuel}
}
commandqueue[22274] = {
    {"take", {-41, 31}, "coal", "all", defines.inventory.fuel}
}
commandqueue[22275] = {
    {"take", {-39, 31}, "coal", "all", defines.inventory.fuel}
}
commandqueue[22276] = {
    {"take", {-39, 29}, "coal", "all", defines.inventory.fuel}
}
commandqueue[22277] = {
    {"take", {-41, 29}, "coal", "all", defines.inventory.fuel}
}
commandqueue[22279] = {
    {"put", {-35.5, 36.5}, "coal", 4, defines.inventory.fuel}
}
commandqueue[22282] = {
    {"take", {-37, 36.3}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[22283] = {
    {"put", {-36.5, 36.5}, "coal", 4, defines.inventory.fuel}
}
commandqueue[22284] = {
    {"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[22285] = {
    {"put", {-37, 35}, "coal", 3, defines.inventory.fuel}
}
commandqueue[22286] = {
    {"put", {-35, 35}, "coal", 4, defines.inventory.fuel}
}
commandqueue[22287] = {
    {"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[22288] = {
    {"put", {-37, 33}, "coal", 3, defines.inventory.fuel}
}
commandqueue[22289] = {
    {"put", {-35, 33}, "coal", 4, defines.inventory.fuel}
}
commandqueue[22290] = {
    {"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[22291] = {
    {"put", {-37, 31}, "coal", 3, defines.inventory.fuel}
}
commandqueue[22292] = {
    {"put", {-35, 31}, "coal", 4, defines.inventory.fuel}
}
commandqueue[22293] = {
    {"take", {-35, 28}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[22294] = {
    {"put", {-35, 28}, "coal", 3, defines.inventory.fuel}
}
commandqueue[22295] = {
    {"put", {-35, 26}, "coal", 4, defines.inventory.fuel}
}
commandqueue[22281] = {
    {"move", "N"}
}
commandqueue[22330] = {
    {"move", "STOP"}
--Presently at: (-36.05078125,24.82031250)
}
commandqueue[22345] = {
    {"take", {-36.5, 24.5}, "coal", "all", defines.inventory.chest}
}
commandqueue[22331] = {
    {"move", "E"}
}
commandqueue[22369] = {
    {"move", "SE"}
}
commandqueue[22376] = {
    {"move", "STOP"}
--Presently at: (-29.67187500,25.55859375)
}
-- Position tracking update here, maybe because of entity collisions?
-- You are presently at: (-29.7148,25.6328)
commandqueue[22403] = {
    {"take", {-28, 26}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[22404] = {
    {"take", {-28, 28}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[22405] = {
    {"take", {-28, 30}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[22406] = {
    {"take", {-30.5, 26.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[22407] = {
    {"take", {-30.5, 29.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[22408] = {
    {"take", {-30.5, 32.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[22409] = {
    {"take", {-30.5, 35.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[22410] = {
    {"put", {-28, 26}, "iron-ore", 3, defines.inventory.furnace_source}
}
commandqueue[22411] = {
    {"put", {-28, 28}, "iron-ore", 3, defines.inventory.furnace_source}
}
commandqueue[22412] = {
    {"put", {-28, 30}, "iron-ore", 3, defines.inventory.furnace_source}
}
commandqueue[22413] = {
    {"put", {-28, 32}, "iron-ore", 3, defines.inventory.furnace_source}
}
commandqueue[22414] = {
    {"put", {-28, 34}, "iron-ore", 3, defines.inventory.furnace_source}
}
commandqueue[22415] = {
    {"put", {-28, 36}, "iron-ore", 3, defines.inventory.furnace_source}
}
commandqueue[22416] = {
    {"take", {-28, 32}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[22417] = {
    {"take", {-28, 34}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[22418] = {
    {"take", {-28, 36}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[22377] = {
    {"move", "S"}
}
commandqueue[22476] = {
    {"move", "SE"}
}
commandqueue[22483] = {
    {"move", "STOP"}
--Presently at: (-28.97656250,41.06640625)
}
commandqueue[22474] = {
    {"take", {-30.5, 38.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[22475] = {
    {"take", {-30.5, 41.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[22477] = {
    {"put", {-28, 38}, "iron-ore", 2, defines.inventory.furnace_source}
}
commandqueue[22478] = {
    {"put", {-28, 40}, "iron-ore", 2, defines.inventory.furnace_source}
}
commandqueue[22479] = {
    {"put", {-28, 42}, "iron-ore", 2, defines.inventory.furnace_source}
}
commandqueue[22480] = {
    {"put", {-28, 44}, "iron-ore", 2, defines.inventory.furnace_source}
}
commandqueue[22481] = {
    {"take", {-28, 38}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[22482] = {
    {"take", {-28, 40}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[22485] = {
    {"take", {-28, 46}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[22486] = {
    {"put", {-28, 46}, "iron-ore", 2, defines.inventory.furnace_source}
}
commandqueue[22487] = {
    {"take", {-28, 44}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[22488] = {
    {"take", {-28, 42}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[22484] = {
    {"move", "E"}
}
commandqueue[22497] = {
    {"move", "STOP"}
--Presently at: (-27.04687500,41.06640625)
}
commandqueue[22498] = {
    {"move", "E"}
}
commandqueue[22559] = {
    {"move", "NE"}
}
commandqueue[22626] = {
    {"move", "STOP"}
--Presently at: (-10.92578125,34.00000000)
}
commandqueue[22624] = {
    {"build", "stone-furnace", {-7, 33}, defines.direction.north}
}
commandqueue[22625] = {
    {"build", "stone-furnace", {-7, 31}, defines.direction.north}
}
commandqueue[22628] = {
    {"take", {-9.5, 31.5}, "copper-ore", "all", defines.inventory.chest}
}
commandqueue[22629] = {
    {"put", {-7, 31}, "copper-ore", 2, defines.inventory.furnace_source}
}
commandqueue[22630] = {
    {"put", {-7, 31}, "coal", 3, defines.inventory.fuel}
}
commandqueue[22631] = {
    {"put", {-7, 33}, "copper-ore", 3, defines.inventory.furnace_source}
}
commandqueue[22632] = {
    {"put", {-7, 33}, "coal", 3, defines.inventory.fuel}
}
commandqueue[22627] = {
    {"move", "W"}
}
commandqueue[22662] = {
    {"move", "NW"}
}
commandqueue[22748] = {
    {"move", "STOP"}
--Presently at: (-25.19140625,24.92968750)
}
-- Position tracking update here, maybe because of entity collisions?
-- You are presently at: (-25.332,24.7812)
commandqueue[22749] = {
    {"move", "W"}
}
commandqueue[22775] = {
    {"move", "SW"}
}
commandqueue[22782] = {
    {"move", "STOP"}
--Presently at: (-29.92968750,25.51953125)
}
commandqueue[22793] = {
    {"put", {-33.3, 23.7}, "science-pack-1", 1, defines.inventory.lab_input}
}
commandqueue[22794] = {
    {"craft", "iron-gear-wheel", 10}
}
commandqueue[22795] = {
    {"craft", "electronic-circuit", 6}
}
commandqueue[22796] = {
    {"craft", "copper-cable", 2}
}
commandqueue[22809] = {
    {"take", {-28, 26}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[22810] = {
    {"take", {-28, 28}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[22811] = {
    {"take", {-28, 30}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[22812] = {
    {"take", {-30.5, 26.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[22813] = {
    {"take", {-30.5, 29.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[22814] = {
    {"take", {-30.5, 32.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[22815] = {
    {"take", {-30.5, 35.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[22816] = {
    {"put", {-28, 26}, "iron-ore", 2, defines.inventory.furnace_source}
}
commandqueue[22817] = {
    {"put", {-28, 28}, "iron-ore", 2, defines.inventory.furnace_source}
}
commandqueue[22818] = {
    {"put", {-28, 30}, "iron-ore", 2, defines.inventory.furnace_source}
}
commandqueue[22819] = {
    {"put", {-28, 32}, "iron-ore", 2, defines.inventory.furnace_source}
}
commandqueue[22820] = {
    {"put", {-28, 34}, "iron-ore", 2, defines.inventory.furnace_source}
}
commandqueue[22821] = {
    {"put", {-28, 36}, "iron-ore", 2, defines.inventory.furnace_source}
}
commandqueue[22822] = {
    {"take", {-28, 32}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[22823] = {
    {"take", {-28, 34}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[22824] = {
    {"take", {-28, 36}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[22783] = {
    {"move", "S"}
}
commandqueue[22887] = {
    {"move", "SE"}
}
commandqueue[22889] = {
    {"move", "STOP"}
--Presently at: (-29.71875000,41.16796875)
}
commandqueue[22880] = {
    {"take", {-30.5, 38.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[22881] = {
    {"take", {-30.5, 41.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[22882] = {
    {"put", {-28, 38}, "iron-ore", 2, defines.inventory.furnace_source}
}
commandqueue[22883] = {
    {"put", {-28, 40}, "iron-ore", 2, defines.inventory.furnace_source}
}
commandqueue[22884] = {
    {"put", {-28, 42}, "iron-ore", 2, defines.inventory.furnace_source}
}
commandqueue[22885] = {
    {"put", {-28, 44}, "iron-ore", 2, defines.inventory.furnace_source}
}
commandqueue[22886] = {
    {"take", {-28, 38}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[22888] = {
    {"take", {-28, 40}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[22891] = {
    {"take", {-28, 46}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[22892] = {
    {"put", {-28, 46}, "iron-ore", 2, defines.inventory.furnace_source}
}
commandqueue[22893] = {
    {"take", {-28, 44}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[22894] = {
    {"take", {-28, 42}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[22890] = {
    {"move", "N"}
}
commandqueue[22995] = {
    {"move", "NW"}
}
commandqueue[23003] = {
    {"move", "STOP"}
--Presently at: (-30.56250000,24.73828125)
}
commandqueue[23004] = {
    {"move", "W"}
}
commandqueue[23041] = {
    {"move", "SW"}
}
commandqueue[23043] = {
    {"move", "STOP"}
--Presently at: (-36.26562500,24.94921875)
}
commandqueue[23044] = {
    {"move", "S"}
}
commandqueue[23090] = {
    {"move", "SE"}
}
commandqueue[23093] = {
    {"move", "STOP"}
--Presently at: (-35.94921875,32.09375000)
}
commandqueue[23086] = {
    {"take", {-39, 33}, "coal", "all", defines.inventory.fuel}
}
commandqueue[23087] = {
    {"take", {-41, 33}, "coal", "all", defines.inventory.fuel}
}
commandqueue[23088] = {
    {"take", {-41, 31}, "coal", "all", defines.inventory.fuel}
}
commandqueue[23089] = {
    {"take", {-39, 31}, "coal", "all", defines.inventory.fuel}
}
commandqueue[23091] = {
    {"take", {-39, 29}, "coal", "all", defines.inventory.fuel}
}
commandqueue[23092] = {
    {"take", {-41, 29}, "coal", "all", defines.inventory.fuel}
}
commandqueue[23095] = {
    {"take", {-37, 36.3}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[23096] = {
    {"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[23097] = {
    {"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[23098] = {
    {"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[23099] = {
    {"take", {-35, 28}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[23108] = {
    {"take", {-36.5, 24.5}, "coal", "all", defines.inventory.chest}
}
commandqueue[23094] = {
    {"move", "N"}
}
commandqueue[23142] = {
    {"move", "NW"}
}
commandqueue[23144] = {
    {"move", "STOP"}
--Presently at: (-36.16015625,24.75781250)
}
commandqueue[23147] = {
    {"put", {-33.3, 23.7}, "science-pack-1", 2, defines.inventory.lab_input}
}
commandqueue[23148] = {
    {"craft", "iron-gear-wheel", 5}
}
commandqueue[23149] = {
    {"craft", "copper-cable", 1}
}
commandqueue[23145] = {
    {"move", "E"}
}
commandqueue[23256] = {
    {"move", "SE"}
}
commandqueue[23297] = {
    {"move", "STOP"}
--Presently at: (-15.35937500,29.08203125)
}
commandqueue[23258] = {
    {"take", {-16, 22}, "copper-plate", "all", defines.inventory.furnace_result}
}
commandqueue[23259] = {
    {"take", {-16, 24}, "copper-plate", "all", defines.inventory.furnace_result}
}
commandqueue[23260] = {
    {"take", {-16, 26}, "copper-plate", "all", defines.inventory.furnace_result}
}
commandqueue[23298] = {
    {"move", "E"}
}
commandqueue[23321] = {
    {"move", "STOP"}
--Presently at: (-11.94531250,29.08203125)
}
commandqueue[23319] = {
    {"take", {-7, 31}, "copper-plate", "all", defines.inventory.furnace_result}
}
commandqueue[23320] = {
    {"take", {-7.8, 32.2}, "copper-plate", "all", defines.inventory.furnace_result}
}
commandqueue[23323] = {
    {"take", {-9.5, 31.5}, "copper-ore", "all", defines.inventory.chest}
}
commandqueue[23324] = {
    {"put", {-7.8, 32.2}, "copper-ore", 3, defines.inventory.furnace_source}
}
commandqueue[23325] = {
    {"put", {-7, 31}, "copper-ore", 3, defines.inventory.furnace_source}
}
commandqueue[23322] = {
    {"move", "W"}
}
commandqueue[23383] = {
    {"move", "NW"}
}
commandqueue[23422] = {
    {"move", "STOP"}
--Presently at: (-25.11328125,24.96875000)
}
commandqueue[23424] = {
    {"build", "small-electric-pole", {-22.5, 25.5}, defines.direction.north}
}
commandqueue[23423] = {
    {"move", "W"}
}
commandqueue[23451] = {
    {"move", "SW"}
}
commandqueue[23457] = {
    {"move", "STOP"}
--Presently at: (-29.90234375,25.60156250)
}
commandqueue[23484] = {
    {"take", {-28, 26}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[23485] = {
    {"take", {-28, 28}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[23486] = {
    {"take", {-28, 30}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[23487] = {
    {"take", {-30.5, 26.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[23488] = {
    {"take", {-30.5, 29.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[23489] = {
    {"take", {-30.5, 32.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[23490] = {
    {"take", {-30.5, 35.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[23491] = {
    {"put", {-28, 26}, "iron-ore", 4, defines.inventory.furnace_source}
}
commandqueue[23492] = {
    {"put", {-28, 28}, "iron-ore", 4, defines.inventory.furnace_source}
}
commandqueue[23493] = {
    {"put", {-28, 30}, "iron-ore", 4, defines.inventory.furnace_source}
}
commandqueue[23494] = {
    {"put", {-28, 32}, "iron-ore", 3, defines.inventory.furnace_source}
}
commandqueue[23495] = {
    {"put", {-28, 34}, "iron-ore", 3, defines.inventory.furnace_source}
}
commandqueue[23496] = {
    {"put", {-28, 36}, "iron-ore", 3, defines.inventory.furnace_source}
}
commandqueue[23497] = {
    {"take", {-28, 32}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[23498] = {
    {"take", {-28, 34}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[23499] = {
    {"take", {-28, 36}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[23458] = {
    {"move", "S"}
}
commandqueue[23562] = {
    {"move", "STOP"}
--Presently at: (-29.90234375,41.03906250)
}
commandqueue[23553] = {
    {"take", {-30.5, 38.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[23554] = {
    {"take", {-30.5, 41.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[23555] = {
    {"put", {-28, 38}, "iron-ore", 3, defines.inventory.furnace_source}
}
commandqueue[23556] = {
    {"put", {-28, 40}, "iron-ore", 3, defines.inventory.furnace_source}
}
commandqueue[23557] = {
    {"put", {-28, 42}, "iron-ore", 3, defines.inventory.furnace_source}
}
commandqueue[23558] = {
    {"put", {-28, 44}, "iron-ore", 3, defines.inventory.furnace_source}
}
commandqueue[23559] = {
    {"take", {-28, 38}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[23561] = {
    {"take", {-28, 40}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[23564] = {
    {"take", {-28, 46}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[23565] = {
    {"put", {-28, 46}, "iron-ore", 3, defines.inventory.furnace_source}
}
commandqueue[23566] = {
    {"take", {-28, 44}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[23567] = {
    {"take", {-28, 42}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[23563] = {
    {"move", "S"}
}
commandqueue[23598] = {
    {"move", "SE"}
}
commandqueue[23607] = {
    {"move", "STOP"}
--Presently at: (-28.95312500,47.18359375)
}
commandqueue[23608] = {
    {"move", "S"}
}
commandqueue[23614] = {
    {"move", "SE"}
}
commandqueue[23642] = {
    {"move", "STOP"}
--Presently at: (-26.00000000,51.02734375)
}
commandqueue[23640] = {
    {"put", {-26, 53}, "coal", 5, defines.inventory.fuel}
}
commandqueue[23644] = {
    {"put", {-24, 54}, "coal", 5, defines.inventory.fuel}
}
commandqueue[23646] = {
    {"put", {-25, 56}, "coal", 5, defines.inventory.fuel}
}
commandqueue[23648] = {
    {"put", {-27, 55}, "coal", 5, defines.inventory.fuel}
}
commandqueue[23649] = {
    {"take", {-25, 54}, "stone", "all", defines.inventory.chest}
}
commandqueue[23643] = {
    {"move", "N"}
}
commandqueue[23657] = {
    {"move", "NE"}
}
commandqueue[23800] = {
    {"move", "STOP"}
--Presently at: (-10.91796875,33.86718750)
}
commandqueue[23802] = {
    {"take", {-9.5, 31.5}, "copper-ore", "all", defines.inventory.chest}
}
commandqueue[23803] = {
    {"put", {-7, 31}, "copper-ore", 2, defines.inventory.furnace_source}
}
commandqueue[23805] = {
    {"put", {-7, 33}, "copper-ore", 2, defines.inventory.furnace_source}
}
commandqueue[23801] = {
    {"move", "W"}
}
commandqueue[23837] = {
    {"move", "NW"}
}
commandqueue[23922] = {
    {"move", "STOP"}
--Presently at: (-25.22656250,24.90234375)
}
-- Position tracking update here, maybe because of entity collisions?
-- You are presently at: (-25.2695,24.8789)
commandqueue[23923] = {
    {"move", "W"}
}
commandqueue[23996] = {
    {"move", "STOP"}
--Presently at: (-36.10546875,24.87890625)
}
commandqueue[23997] = {
    {"move", "S"}
}
commandqueue[24045] = {
    {"move", "STOP"}
--Presently at: (-36.10546875,32.00390625)
}
commandqueue[24038] = {
    {"take", {-39, 33}, "coal", "all", defines.inventory.fuel}
}
commandqueue[24039] = {
    {"take", {-41, 33}, "coal", "all", defines.inventory.fuel}
}
commandqueue[24040] = {
    {"take", {-41, 31}, "coal", "all", defines.inventory.fuel}
}
commandqueue[24041] = {
    {"take", {-39, 31}, "coal", "all", defines.inventory.fuel}
}
commandqueue[24043] = {
    {"take", {-39, 29}, "coal", "all", defines.inventory.fuel}
}
commandqueue[24044] = {
    {"take", {-41, 29}, "coal", "all", defines.inventory.fuel}
}
commandqueue[24047] = {
    {"take", {-37, 36.3}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[24048] = {
    {"take", {-37, 35}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[24049] = {
    {"take", {-37, 33}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[24050] = {
    {"take", {-37, 31}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[24051] = {
    {"take", {-35, 28}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[24060] = {
    {"take", {-36.5, 24.5}, "coal", "all", defines.inventory.chest}
}
commandqueue[24046] = {
    {"move", "N"}
}
commandqueue[24094] = {
    {"move", "STOP"}
--Presently at: (-36.10546875,24.87890625)
}
commandqueue[24096] = {
    {"craft", "electronic-circuit", 1}
}
commandqueue[24095] = {
    {"move", "E"}
}
commandqueue[24134] = {
    {"move", "SE"}
}
commandqueue[24140] = {
    {"move", "STOP"}
--Presently at: (-29.68359375,25.51171875)
}
commandqueue[24167] = {
    {"take", {-28, 26}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[24168] = {
    {"take", {-28, 28}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[24169] = {
    {"take", {-28, 30}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[24170] = {
    {"take", {-30.5, 26.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[24171] = {
    {"take", {-30.5, 29.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[24172] = {
    {"take", {-30.5, 32.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[24173] = {
    {"take", {-30.5, 35.5}, "iron-ore", "all", defines.inventory.chest}
}
commandqueue[24174] = {
    {"put", {-28, 26}, "iron-ore", 4, defines.inventory.furnace_source}
}
commandqueue[24175] = {
    {"put", {-28, 28}, "iron-ore", 4, defines.inventory.furnace_source}
}
commandqueue[24176] = {
    {"put", {-28, 30}, "iron-ore", 4, defines.inventory.furnace_source}
}
commandqueue[24177] = {
    {"put", {-28, 32}, "iron-ore", 3, defines.inventory.furnace_source}
}
commandqueue[24178] = {
    {"put", {-28, 34}, "iron-ore", 3, defines.inventory.furnace_source}
}
commandqueue[24179] = {
    {"put", {-28, 36}, "iron-ore", 3, defines.inventory.furnace_source}
}
commandqueue[24180] = {
    {"take", {-28, 32}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[24182] = {
    {"take", {-28, 34}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[24185] = {
    {"take", {-28, 36}, "iron-plate", "all", defines.inventory.furnace_result}
}
commandqueue[24201] = {
    {"tech", "logistics"}
}
commandqueue[24202] = {
    {"craft", "assembling-machine-1", 1}
}
commandqueue[24203] = {
    {"craft", "assembling-machine-1", 1}
}
commandqueue[24204] = {
    {"craft", "assembling-machine-1", 1}
}
commandqueue[24141] = {
    {"move", "S"}
}
commandqueue[24181] = {
    {"move", "SW"}
}
commandqueue[24183] = {
    {"move", "STOP"}
--Presently at: (-29.89453125,31.66015625)
}
commandqueue[24184] = {
    {"move", "N"}
}
commandqueue[24223] = {
    {"move", "NE"}
}
commandqueue[24232] = {
    {"move", "STOP"}
--Presently at: (-28.94531250,24.92187500)
}
commandqueue[24234] = {
    {"build", "assembling-machine-1", {-25.5, 22.5}, defines.direction.north}
}
commandqueue[24235] = {
    {"recipe", {-25.5,22.5}, "iron-gear-wheel"}
}
commandqueue[24236] = {
    {"put", {-25.5, 22.5}, "iron-plate", 100, defines.inventory.assembling_machine_input}
}
commandqueue[24233] = {
    {"move", "E"}
}
commandqueue[24266] = {
    {"move", "STOP"}
--Presently at: (-24.04687500,24.92187500)
}
commandqueue[24265] = {
    {"build", "assembling-machine-1", {-19.5, 22.5}, defines.direction.north}
}
commandqueue[24268] = {
    {"recipe", {-19.5,22.5}, "copper-cable"}
}
commandqueue[24269] = {
    {"put", {-19.5, 22.5}, "copper-plate", 50, defines.inventory.assembling_machine_input}
}
commandqueue[24277] = {
    {"print", "End of programmed route at tick 24267."}
}
commandqueue[24278] = {
    {"print", "Carried out 1985 actions in 0h:6m:44sec."}
}
commandqueue[24279] = {
    {"print", "This corresponds to an average APM of 294.474."}
}
commandqueue[6] = {
    {"print", "#===================================================#"}
}
commandqueue[7] = {
    {"print", "#         Welcome to this tool-assisted speedrun of factorio!            #"}
}
commandqueue[8] = {
    {"print", "# Please lean back, praise the steel-axe and enjoy what it looks  #"}
}
commandqueue[9] = {
    {"print", "#           like when a game about automation is automated :)          #"}
}
commandqueue[10] = {
    {"print", "#                                               - Starbrow                                                #"}
}
commandqueue[11] = {
    {"print", "#===================================================# "}
}
commandqueue[863] = {
    {"print", "#=========================================================================#"}
}
commandqueue[864] = {
    {"print", "#              The actions that the script performs can be read here in this wall of text.                   #"}
}
commandqueue[865] = {
    {"print", "#  The number in [brackets] is the tick that the action is performed at (60 ticks to a second). #"}
}
commandqueue[866] = {
    {"print", "#=========================================================================# "}
}
commandqueue[24400] = {
    {"print", "#=====================================================#"}
}
commandqueue[24401] = {
    {"print", "# I hope you have enjoyed watching this TAS speedrun of factorio,  #"}
}
commandqueue[24402] = {
    {"print", "# even though this project is still a work in progress.                           #"}
}
commandqueue[24403] = {
    {"print", "#=====================================================# "}
}
commandqueue[24404] = {
    {"print", "# This run was programmed by Starbrow, and compiled on:               #"}
}
commandqueue[24405] = {
    {"print", "# 24-Jul-2017 15:56:34                                                                                #"}
}
commandqueue[24406] = {
    {"print", "#=====================================================#  "}
}
commandqueue[24407] = {
    {"print", "# Shoutout to AntiElitz for inspiring me to do factorio related            #"}
}
commandqueue[24408] = {
    {"print", "# speed-running, to the TeamSteelaxe discord channel, and to         #"}
}
commandqueue[24409] = {
    {"print", "# szerspliexiust and Hexicube for coding the first scripts that           #"}
}
commandqueue[24410] = {
    {"print", "# in revised form have made this run possible.                                      #"}
}
commandqueue[24411] = {
    {"print", "#=====================================================#   "}
}

return commandqueue
