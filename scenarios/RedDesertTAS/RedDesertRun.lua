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

commandqueue[1] = {{"move", "S"}}
commandqueue[345] = {{"move", "SW"}}
commandqueue[402] = {{"move", "STOP"}}
--Presently at: (-6.01171875,57.07421875)
commandqueue[2] = {{"craft", "iron-axe", 1}}
commandqueue[3] = {{"craft", "iron-gear-wheel", 2}}
commandqueue[258] = {{"build", "burner-mining-drill", {-5, 38}, defines.direction.east}}
commandqueue[259] = {{"build", "stone-furnace", {-3, 38}, defines.direction.north}}
commandqueue[413] = {{"mine", {-6.6, 58.3}}}
commandqueue[664] = {{"mine", nil}}
commandqueue[666] = {{"craft", "stone-furnace", 9}}
commandqueue[665] = {{"move", "N"}}
commandqueue[780] = {{"move", "STOP"}}
--Presently at: (-6.01171875,40.00390625)
commandqueue[754] = {{"put", {-5, 38}, "coal", 5, defines.inventory.fuel}}
commandqueue[766] = {{"put", {-3, 38}, "coal", 3, defines.inventory.fuel}}
commandqueue[767] = {{"build", "stone-furnace", {-9, 38}, defines.direction.north}}
commandqueue[768] = {{"put", {-9, 38}, "coal", 3, defines.inventory.fuel}}
commandqueue[776] = {{"build", "stone-furnace", {-3, 36}, defines.direction.north}}
commandqueue[777] = {{"put", {-3, 36}, "coal", 3, defines.inventory.fuel}}
commandqueue[778] = {{"build", "stone-furnace", {-9, 36}, defines.direction.north}}
commandqueue[779] = {{"put", {-9, 36}, "coal", 3, defines.inventory.fuel}}
commandqueue[781] = {{"mine", {-6.5, 38.5}}}
commandqueue[906] = {{"mine", nil}}
commandqueue[907] = {{"put", {-9, 38}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[908] = {{"mine", {-6.5, 38.5}}}
commandqueue[1033] = {{"mine", nil}}
commandqueue[1034] = {{"put", {-9, 36}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[1035] = {{"mine", {-6.5, 38.5}}}
commandqueue[1160] = {{"mine", nil}}
commandqueue[1161] = {{"put", {-9, 38}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[1162] = {{"mine", {-6.5, 38.5}}}
commandqueue[1287] = {{"mine", nil}}
commandqueue[1288] = {{"put", {-9, 36}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[1289] = {{"mine", {-6.5, 38.5}}}
commandqueue[1414] = {{"mine", nil}}
commandqueue[1415] = {{"put", {-9, 38}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[1416] = {{"take", {-9, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[1417] = {{"craft", "iron-gear-wheel", 1}}
commandqueue[1418] = {{"mine", {-6.5, 38.5}}}
commandqueue[1543] = {{"mine", nil}}
commandqueue[1545] = {{"put", {-9, 36}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[1546] = {{"take", {-9, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[1547] = {{"take", {-3, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[1548] = {{"craft", "burner-mining-drill", 1}}
commandqueue[1544] = {{"move", "N"}}
commandqueue[1549] = {{"move", "STOP"}}
--Presently at: (-6.01171875,39.26171875)
commandqueue[1550] = {{"mine", {-6.5, 38.5}}}
commandqueue[1675] = {{"mine", nil}}
commandqueue[1677] = {{"build", "burner-mining-drill", {-5, 36}, defines.direction.east}}
commandqueue[1678] = {{"put", {-5, 36}, "coal", 5, defines.inventory.fuel}}
commandqueue[1679] = {{"put", {-9, 38}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[1676] = {{"move", "N"}}
commandqueue[1680] = {{"move", "STOP"}}
--Presently at: (-6.01171875,38.66796875)
commandqueue[1681] = {{"mine", {-6.5, 38.5}}}
commandqueue[1806] = {{"mine", nil}}
commandqueue[1808] = {{"take", {-9, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[1809] = {{"take", {-9, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[1810] = {{"take", {-3, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[1811] = {{"craft", "iron-gear-wheel", 2}}
commandqueue[1812] = {{"put", {-9, 36}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[1807] = {{"move", "N"}}
commandqueue[1813] = {{"move", "STOP"}}
--Presently at: (-6.01171875,37.77734375)
commandqueue[1814] = {{"mine", {-6.5, 38.5}}}
commandqueue[1939] = {{"mine", nil}}
commandqueue[1941] = {{"take", {-9, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[1942] = {{"take", {-3, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[1943] = {{"craft", "iron-gear-wheel", 1}}
commandqueue[1944] = {{"put", {-9, 38}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[1940] = {{"move", "N"}}
commandqueue[1945] = {{"move", "STOP"}}
--Presently at: (-6.01171875,37.03515625)
commandqueue[1946] = {{"mine", {-6.5, 38.5}}}
commandqueue[2071] = {{"mine", nil}}
commandqueue[2072] = {{"put", {-9, 36}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[2073] = {{"mine", {-6.5, 36.5}}}
commandqueue[2198] = {{"mine", nil}}
commandqueue[2200] = {{"take", {-9, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[2201] = {{"take", {-9, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[2202] = {{"take", {-3, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[2203] = {{"craft", "burner-mining-drill", 1}}
commandqueue[2204] = {{"put", {-9, 38}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[2199] = {{"move", "N"}}
commandqueue[2205] = {{"move", "STOP"}}
--Presently at: (-6.01171875,36.14453125)
commandqueue[2206] = {{"mine", {-6.5, 35.5}}}
commandqueue[2331] = {{"mine", nil}}
commandqueue[2333] = {{"build", "burner-mining-drill", {-7, 38}, defines.direction.west}}
commandqueue[2334] = {{"put", {-7, 38}, "coal", 5, defines.inventory.fuel}}
commandqueue[2335] = {{"build", "stone-furnace", {-9, 34}, defines.direction.north}}
commandqueue[2336] = {{"put", {-9, 34}, "coal", 3, defines.inventory.fuel}}
commandqueue[2337] = {{"put", {-9, 36}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[2332] = {{"move", "N"}}
commandqueue[2338] = {{"move", "STOP"}}
--Presently at: (-6.01171875,35.25390625)
commandqueue[2339] = {{"mine", {-6.5, 35.5}}}
commandqueue[2464] = {{"mine", nil}}
commandqueue[2465] = {{"take", {-3, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[2466] = {{"craft", "iron-gear-wheel", 1}}
commandqueue[2467] = {{"put", {-9, 34}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[2468] = {{"mine", {-6.5, 35.5}}}
commandqueue[2593] = {{"mine", nil}}
commandqueue[2595] = {{"take", {-3, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[2596] = {{"take", {-3, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[2597] = {{"take", {-9, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[2598] = {{"take", {-9, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[2599] = {{"put", {-9, 36}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[2600] = {{"craft", "iron-gear-wheel", 2}}
commandqueue[2594] = {{"move", "N"}}
commandqueue[2601] = {{"move", "STOP"}}
--Presently at: (-6.01171875,34.21484375)
commandqueue[2602] = {{"mine", {-6.5, 35.5}}}
commandqueue[2727] = {{"mine", nil}}
commandqueue[2729] = {{"take", {-3, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[2730] = {{"craft", "burner-mining-drill", 1}}
commandqueue[2731] = {{"put", {-9, 34}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[2728] = {{"mine", {-6.5, 34.5}}}
commandqueue[2853] = {{"mine", nil}}
commandqueue[2854] = {{"build", "burner-mining-drill", {-7, 36}, defines.direction.west}}
commandqueue[2855] = {{"put", {-7, 36}, "coal", 5, defines.inventory.fuel}}
commandqueue[2856] = {{"put", {-9, 36}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[2857] = {{"take", {-3, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[2858] = {{"take", {-9, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[2859] = {{"take", {-9, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[2860] = {{"take", {-9, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[2861] = {{"craft", "iron-gear-wheel", 2}}
commandqueue[2862] = {{"mine", {-6.5, 34.5}}}
commandqueue[2987] = {{"mine", nil}}
commandqueue[2988] = {{"build", "stone-furnace", {-3, 34}, defines.direction.north}}
commandqueue[2989] = {{"put", {-3, 34}, "coal", 3, defines.inventory.fuel}}
commandqueue[2990] = {{"put", {-3, 34}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[2991] = {{"mine", {-6.5, 34.5}}}
commandqueue[3116] = {{"mine", nil}}
commandqueue[3117] = {{"take", {-3, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[3118] = {{"take", {-3, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[3119] = {{"take", {-9, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[3120] = {{"take", {-9, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[3121] = {{"craft", "burner-mining-drill", 1}}
commandqueue[3122] = {{"take", {-9, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[3123] = {{"put", {-9, 34}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[3124] = {{"mine", {-6.5, 34.5}}}
commandqueue[3249] = {{"mine", nil}}
commandqueue[3251] = {{"put", {-9, 34}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[3273] = {{"build", "burner-mining-drill", {-5, 34}, defines.direction.east}}
commandqueue[3274] = {{"put", {-5, 34}, "coal", 5, defines.inventory.fuel}}
commandqueue[3250] = {{"move", "S"}}
commandqueue[3835] = {{"move", "SE"}}
commandqueue[3845] = {{"move", "STOP"}}
--Presently at: (-4.95703125,122.10546875)
commandqueue[3848] = {{"mine", {-4, 123.4}}}
commandqueue[4099] = {{"mine", nil}}
commandqueue[4100] = {{"move", "S"}}
commandqueue[4269] = {{"move", "STOP"}}
--Presently at: (-4.95703125,147.19140625)
commandqueue[4273] = {{"mine", {-5, 149.05}}}
commandqueue[4524] = {{"mine", nil}}
commandqueue[4526] = {{"craft", "stone-furnace", 19}}
commandqueue[4525] = {{"move", "W"}}
commandqueue[4679] = {{"move", "NW"}}
commandqueue[4909] = {{"move", "STOP"}}
--Presently at: (-52.07421875,122.93359375)
commandqueue[4910] = {{"move", "W"}}
commandqueue[4930] = {{"move", "STOP"}}
--Presently at: (-55.04296875,122.93359375)
commandqueue[4933] = {{"mine", {-56.7, 122.4}}}
commandqueue[5184] = {{"mine", nil}}
commandqueue[5186] = {{"craft", "stone-furnace", 9}}
commandqueue[5185] = {{"move", "N"}}
commandqueue[5414] = {{"move", "NE"}}
commandqueue[5879] = {{"move", "STOP"}}
--Presently at: (-6.00000000,39.89843750)
commandqueue[5852] = {{"take", {-9, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[5853] = {{"craft", "burner-mining-drill", 1}}
commandqueue[5880] = {{"move", "N"}}
commandqueue[5920] = {{"move", "STOP"}}
--Presently at: (-6.00000000,33.96093750)
commandqueue[5911] = {{"put", {-5, 36}, "coal", 3, defines.inventory.fuel}}
commandqueue[5912] = {{"put", {-5, 38}, "coal", 3, defines.inventory.fuel}}
commandqueue[5913] = {{"put", {-7, 38}, "coal", 3, defines.inventory.fuel}}
commandqueue[5914] = {{"put", {-7, 36}, "coal", 3, defines.inventory.fuel}}
commandqueue[5915] = {{"take", {-9, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[5916] = {{"take", {-3, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[5917] = {{"take", {-3, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[5918] = {{"take", {-3, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[5919] = {{"take", {-9, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[5921] = {{"mine", {-6.5, 34.5}}}
commandqueue[6046] = {{"mine", nil}}
commandqueue[6048] = {{"put", {-9, 34}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[6049] = {{"craft", "burner-mining-drill", 1}}
commandqueue[6050] = {{"craft", "burner-mining-drill", 1}}
commandqueue[6051] = {{"craft", "burner-mining-drill", 1}}
commandqueue[6052] = {{"craft", "burner-mining-drill", 1}}
commandqueue[6053] = {{"put", {-5, 34}, "coal", 2, defines.inventory.fuel}}
commandqueue[6054] = {{"put", {-3, 34}, "coal", 2, defines.inventory.fuel}}
commandqueue[6055] = {{"put", {-3, 36}, "coal", 2, defines.inventory.fuel}}
commandqueue[6056] = {{"put", {-3, 38}, "coal", 2, defines.inventory.fuel}}
commandqueue[6057] = {{"put", {-9, 38}, "coal", 2, defines.inventory.fuel}}
commandqueue[6058] = {{"put", {-9, 36}, "coal", 2, defines.inventory.fuel}}
commandqueue[6059] = {{"put", {-9, 34}, "coal", 1, defines.inventory.fuel}}
commandqueue[6060] = {{"build", "stone-furnace", {-9, 32}, defines.direction.north}}
commandqueue[6061] = {{"build", "stone-furnace", {-3, 32}, defines.direction.north}}
commandqueue[6062] = {{"put", {-9, 32}, "coal", 3, defines.inventory.fuel}}
commandqueue[6063] = {{"put", {-3, 32}, "coal", 3, defines.inventory.fuel}}
commandqueue[6064] = {{"build", "stone-furnace", {-9, 30}, defines.direction.north}}
commandqueue[6065] = {{"build", "stone-furnace", {-3, 30}, defines.direction.north}}
commandqueue[6067] = {{"build", "burner-mining-drill", {-7, 34}, defines.direction.west}}
commandqueue[6068] = {{"put", {-7, 34}, "coal", 5, defines.inventory.fuel}}
commandqueue[6069] = {{"mine", {-6.5, 32.5}}}
commandqueue[6194] = {{"mine", nil}}
commandqueue[6195] = {{"put", {-9, 32}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[6196] = {{"mine", {-6.5, 32.5}}}
commandqueue[6321] = {{"mine", nil}}
commandqueue[6322] = {{"build", "burner-mining-drill", {-5, 32}, defines.direction.east}}
commandqueue[6323] = {{"put", {-5, 32}, "coal", 5, defines.inventory.fuel}}
commandqueue[6324] = {{"put", {-3, 32}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[6325] = {{"mine", {-6.5, 32.5}}}
commandqueue[6450] = {{"mine", nil}}
commandqueue[6452] = {{"put", {-9, 32}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[6453] = {{"take", {-3, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[6454] = {{"take", {-9, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[6455] = {{"take", {-3, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[6456] = {{"take", {-9, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[6457] = {{"take", {-3, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[6458] = {{"take", {-9, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[6460] = {{"take", {-9, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[6461] = {{"craft", "burner-mining-drill", 1}}
commandqueue[6462] = {{"craft", "burner-mining-drill", 1}}
commandqueue[6495] = {{"build", "burner-mining-drill", {-7, 32}, defines.direction.west}}
commandqueue[6496] = {{"put", {-7, 32}, "coal", 5, defines.inventory.fuel}}
commandqueue[6451] = {{"move", "N"}}
commandqueue[6522] = {{"move", "NW"}}
commandqueue[6546] = {{"move", "STOP"}}
--Presently at: (-8.53125000,20.89062500)
commandqueue[6547] = {{"mine", {-8.8, 19.2}}}
commandqueue[6597] = {{"mine", nil}}
commandqueue[6598] = {{"move", "E"}}
commandqueue[6620] = {{"move", "NE"}}
commandqueue[6630] = {{"move", "STOP"}}
--Presently at: (-4.21093750,19.83593750)
commandqueue[6631] = {{"mine", {-2.6, 19.5}}}
commandqueue[6681] = {{"mine", nil}}
commandqueue[6682] = {{"move", "E"}}
commandqueue[6684] = {{"move", "NE"}}
commandqueue[6726] = {{"move", "STOP"}}
--Presently at: (0.51562500,15.40625000)
commandqueue[6727] = {{"mine", {1.7, 14.2}}}
commandqueue[6777] = {{"mine", nil}}
commandqueue[6778] = {{"move", "W"}}
commandqueue[6785] = {{"move", "NW"}}
commandqueue[6813] = {{"move", "STOP"}}
--Presently at: (-3.47656250,12.45312500)
commandqueue[6814] = {{"mine", {-4.8, 11.4}}}
commandqueue[6864] = {{"mine", nil}}
commandqueue[6865] = {{"move", "N"}}
commandqueue[6896] = {{"move", "NE"}}
commandqueue[6901] = {{"move", "STOP"}}
--Presently at: (-2.94921875,7.32421875)
commandqueue[6902] = {{"mine", {-2.8, 5.6}}}
commandqueue[6952] = {{"mine", nil}}
commandqueue[6953] = {{"move", "N"}}
commandqueue[6962] = {{"move", "NW"}}
commandqueue[6991] = {{"move", "STOP"}}
--Presently at: (-6.00781250,2.92968750)
commandqueue[6987] = {{"build", "stone-furnace", {-7, 0}, defines.direction.north}}
commandqueue[6988] = {{"put", {-7, 0}, "coal", 3, defines.inventory.fuel}}
commandqueue[6989] = {{"build", "stone-furnace", {-9, 0}, defines.direction.north}}
commandqueue[6990] = {{"put", {-9, 0}, "coal", 3, defines.inventory.fuel}}
commandqueue[6993] = {{"build", "burner-mining-drill", {-9, -2}, defines.direction.south}}
commandqueue[6994] = {{"put", {-8.5, -1.5}, "coal", 5, defines.inventory.fuel}}
commandqueue[6995] = {{"build", "burner-mining-drill", {-7, -2}, defines.direction.south}}
commandqueue[6996] = {{"put", {-7, -2}, "coal", 5, defines.inventory.fuel}}
commandqueue[6992] = {{"move", "S"}}
commandqueue[7161] = {{"move", "STOP"}}
--Presently at: (-6.00781250,28.01562500)
commandqueue[7140] = {{"build", "burner-mining-drill", {-5, 30}, defines.direction.east}}
commandqueue[7141] = {{"put", {-5, 30}, "coal", 5, defines.inventory.fuel}}
commandqueue[7142] = {{"put", {-3, 30}, "coal", 3, defines.inventory.fuel}}
commandqueue[7143] = {{"put", {-9, 30}, "coal", 3, defines.inventory.fuel}}
commandqueue[7144] = {{"craft", "burner-mining-drill", 1}}
commandqueue[7145] = {{"craft", "burner-mining-drill", 1}}
commandqueue[7162] = {{"mine", {-6.5, 28.5}}}
commandqueue[7287] = {{"mine", nil}}
commandqueue[7288] = {{"put", {-9, 30}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[7289] = {{"mine", {-6.5, 28.5}}}
commandqueue[7414] = {{"mine", nil}}
commandqueue[7416] = {{"build", "burner-mining-drill", {-7, 30}, defines.direction.west}}
commandqueue[7417] = {{"put", {-7, 30}, "coal", 5, defines.inventory.fuel}}
commandqueue[7418] = {{"put", {-9, 30}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[7415] = {{"move", "S"}}
commandqueue[7456] = {{"move", "STOP"}}
--Presently at: (-6.00781250,34.10156250)
commandqueue[7458] = {{"take", {-3, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[7459] = {{"take", {-9, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[7460] = {{"take", {-3, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[7461] = {{"take", {-9, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[7462] = {{"take", {-3, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[7463] = {{"take", {-9, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[7464] = {{"take", {-3, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[7465] = {{"take", {-9, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[7687] = {{"build", "burner-mining-drill", {-5, -2}, defines.direction.south}}
commandqueue[7688] = {{"put", {-5, -2}, "coal", 5, defines.inventory.fuel}}
commandqueue[7694] = {{"build", "stone-furnace", {-5, 0}, defines.direction.north}}
commandqueue[7695] = {{"put", {-5, 0}, "coal", 3, defines.inventory.fuel}}
commandqueue[7457] = {{"move", "N"}}
commandqueue[7671] = {{"move", "NE"}}
commandqueue[7708] = {{"move", "STOP"}}
--Presently at: (-2.10546875,-1.56640625)
commandqueue[7709] = {{"mine", {-2, -3.3}}}
commandqueue[7759] = {{"mine", nil}}
commandqueue[7762] = {{"craft", "iron-gear-wheel", 16}}
commandqueue[7760] = {{"move", "N"}}
commandqueue[7761] = {{"move", "NW"}}
commandqueue[7765] = {{"move", "STOP"}}
--Presently at: (-2.52734375,-2.13671875)
commandqueue[7766] = {{"mine", {-3.6, -3.6}}}
commandqueue[7816] = {{"mine", nil}}
commandqueue[7817] = {{"move", "N"}}
commandqueue[7820] = {{"move", "NW"}}
commandqueue[7834] = {{"move", "STOP"}}
--Presently at: (-4.00390625,-4.05859375)
commandqueue[7835] = {{"move", "W"}}
commandqueue[7875] = {{"move", "STOP"}}
--Presently at: (-9.94140625,-4.05859375)
commandqueue[7856] = {{"build", "burner-mining-drill", {-11, -2}, defines.direction.south}}
commandqueue[7857] = {{"put", {-11, -2}, "coal", 5, defines.inventory.fuel}}
commandqueue[7877] = {{"build", "stone-furnace", {-11, 0}, defines.direction.north}}
commandqueue[7878] = {{"put", {-11, 0}, "coal", 3, defines.inventory.fuel}}
commandqueue[7879] = {{"take", {-7, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[7880] = {{"take", {-9, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[7882] = {{"craft", "copper-cable", 3}}
commandqueue[7883] = {{"craft", "wood", 14}}
commandqueue[7884] = {{"craft", "science-pack-1", 3}}
commandqueue[7876] = {{"move", "N"}}
commandqueue[8327] = {{"move", "NW"}}
commandqueue[8641] = {{"move", "STOP"}}
--Presently at: (-43.05859375,-104.12109375)
commandqueue[8650] = {{"mine", {-44, -105.5}}}
commandqueue[8901] = {{"mine", nil}}
commandqueue[8903] = {{"craft", "stone-furnace", 9}}
commandqueue[8902] = {{"move", "W"}}
commandqueue[8977] = {{"move", "NW"}}
commandqueue[9251] = {{"move", "STOP"}}
--Presently at: (-83.08984375,-133.01953125)
commandqueue[9263] = {{"mine", {-84, -134.4}}}
commandqueue[9514] = {{"mine", nil}}
commandqueue[9516] = {{"craft", "stone-furnace", 9}}
commandqueue[9517] = {{"craft", "offshore-pump", 1}}
commandqueue[9515] = {{"move", "W"}}
commandqueue[9535] = {{"move", "SW"}}
commandqueue[9574] = {{"move", "STOP"}}
--Presently at: (-90.17187500,-128.90625000)
commandqueue[9577] = {{"mine", {-90.5, -128.5}}}
commandqueue[9828] = {{"mine", nil}}
commandqueue[9830] = {{"craft", "stone-furnace", 9}}
commandqueue[9829] = {{"move", "W"}}
commandqueue[9856] = {{"move", "SW"}}
commandqueue[9998] = {{"move", "STOP"}}
--Presently at: (-109.15625000,-113.92968750)
commandqueue[10004] = {{"mine", {-109.5, -113.5}}}
commandqueue[10255] = {{"mine", nil}}
commandqueue[10257] = {{"craft", "stone-furnace", 10}}
commandqueue[10259] = {{"craft", "pipe", 2}}
commandqueue[10260] = {{"craft", "wooden-chest", 4}}
commandqueue[10256] = {{"move", "S"}}
commandqueue[10322] = {{"move", "SE"}}
commandqueue[10969] = {{"move", "STOP"}}
--Presently at: (-40.91796875,-35.89453125)
commandqueue[10970] = {{"move", "S"}}
commandqueue[11058] = {{"move", "SE"}}
commandqueue[11295] = {{"move", "STOP"}}
--Presently at: (-15.92187500,2.16406250)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-15.8164,2.1641)
commandqueue[11297] = {{"take", {-11, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[11298] = {{"craft", "small-electric-pole", 3}}
commandqueue[11299] = {{"craft", "copper-cable", 1}}
commandqueue[11296] = {{"move", "E"}}
commandqueue[11344] = {{"move", "SE"}}
commandqueue[11352] = {{"move", "STOP"}}
--Presently at: (-7.84765625,3.00781250)
commandqueue[11355] = {{"take", {-9, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[11356] = {{"take", {-7, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[11357] = {{"take", {-5, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[11353] = {{"move", "S"}}
commandqueue[11516] = {{"move", "SE"}}
commandqueue[11534] = {{"move", "STOP"}}
--Presently at: (-5.94921875,29.10156250)
commandqueue[11535] = {{"move", "S"}}
commandqueue[11568] = {{"move", "STOP"}}
--Presently at: (-5.94921875,34.00000000)
commandqueue[11492] = {{"take", {-9, 29.4}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[11493] = {{"craft", "boiler", 1}}
commandqueue[11494] = {{"craft", "steam-engine", 1}}
commandqueue[11495] = {{"craft", "pipe", 1}}
commandqueue[11570] = {{"take", {-9, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[11571] = {{"take", {-3, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[11572] = {{"take", {-3, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[11573] = {{"take", {-9, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[11574] = {{"take", {-9, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[11575] = {{"take", {-3, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[11576] = {{"take", {-3, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[11577] = {{"take", {-9, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[11578] = {{"take", {-3, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[11579] = {{"craft", "iron-axe", 1}}
commandqueue[11580] = {{"craft", "lab", 1}}
commandqueue[11581] = {{"craft", "small-electric-pole", 1}}
commandqueue[11582] = {{"craft", "electric-mining-drill", 1}}
commandqueue[11583] = {{"craft", "electric-mining-drill", 1}}
commandqueue[11584] = {{"craft", "science-pack-1", 1}}
commandqueue[11585] = {{"craft", "small-electric-pole", 1}}
commandqueue[11586] = {{"craft", "electric-mining-drill", 1}}
commandqueue[11569] = {{"move", "S"}}
commandqueue[11603] = {{"move", "STOP"}}
--Presently at: (-5.94921875,39.04687500)
commandqueue[11604] = {{"move", "E"}}
commandqueue[11840] = {{"move", "SE"}}
commandqueue[11897] = {{"move", "STOP"}}
--Presently at: (35.09375000,45.05859375)
commandqueue[11598] = {{"build", "small-electric-pole", {-3.5, 40.5}, defines.direction.north}}
commandqueue[11648] = {{"build", "small-electric-pole", {3.5, 40.5}, defines.direction.north}}
commandqueue[11698] = {{"build", "small-electric-pole", {10.5, 41.5}, defines.direction.north}}
commandqueue[11748] = {{"build", "small-electric-pole", {17.5, 42.5}, defines.direction.north}}
commandqueue[11798] = {{"build", "small-electric-pole", {24.5, 43.5}, defines.direction.north}}
commandqueue[11899] = {{"build", "offshore-pump", {38.5, 47.5}, defines.direction.south}}
commandqueue[11900] = {{"build", "boiler", {37.5, 45.5}, defines.direction.west}}
commandqueue[11901] = {{"put", {37.5, 45.5}, "coal", 50, defines.inventory.fuel}}
commandqueue[11904] = {{"build", "pipe", {31.5, 45.5}, defines.direction.north}}
commandqueue[11905] = {{"build", "small-electric-pole", {30.5, 47.5}, defines.direction.north}}
commandqueue[11908] = {{"build", "steam-engine", {34.5, 45.5}, defines.direction.east}}
commandqueue[11898] = {{"move", "N"}}
commandqueue[12048] = {{"move", "NE"}}
commandqueue[12076] = {{"move", "STOP"}}
--Presently at: (38.04687500,19.83984375)
commandqueue[12077] = {{"mine", {38.6, 18.7}}}
commandqueue[12177] = {{"mine", nil}}
commandqueue[12178] = {{"mine", {37.9, 18}}}
commandqueue[12278] = {{"mine", nil}}
commandqueue[12279] = {{"move", "N"}}
commandqueue[12281] = {{"move", "NW"}}
commandqueue[12283] = {{"move", "STOP"}}
--Presently at: (37.83593750,19.33203125)
commandqueue[12284] = {{"mine", {37.1, 17.8}}}
commandqueue[12384] = {{"mine", nil}}
commandqueue[12385] = {{"move", "N"}}
commandqueue[12400] = {{"move", "NW"}}
commandqueue[12410] = {{"move", "STOP"}}
--Presently at: (36.78125000,16.05078125)
commandqueue[12411] = {{"mine", {36.2, 14.3}}}
commandqueue[12511] = {{"mine", nil}}
commandqueue[12512] = {{"move", "N"}}
commandqueue[12520] = {{"move", "NW"}}
commandqueue[12528] = {{"move", "STOP"}}
--Presently at: (35.93750000,14.01953125)
commandqueue[12529] = {{"mine", {35.3, 12.5}}}
commandqueue[12579] = {{"mine", nil}}
commandqueue[12580] = {{"move", "W"}}
commandqueue[12588] = {{"move", "NW"}}
commandqueue[12592] = {{"move", "STOP"}}
--Presently at: (34.32812500,13.59765625)
commandqueue[12593] = {{"mine", {32.6, 13.3}}}
commandqueue[12693] = {{"mine", nil}}
commandqueue[12694] = {{"move", "W"}}
commandqueue[12722] = {{"move", "SW"}}
commandqueue[12724] = {{"move", "STOP"}}
--Presently at: (29.96093750,13.80859375)
commandqueue[12725] = {{"mine", {28.1, 13.9}}}
commandqueue[12775] = {{"mine", nil}}
commandqueue[12776] = {{"move", "W"}}
commandqueue[12795] = {{"move", "SW"}}
commandqueue[12835] = {{"move", "STOP"}}
--Presently at: (22.92187500,18.02734375)
commandqueue[12836] = {{"move", "W"}}
commandqueue[12874] = {{"move", "SW"}}
commandqueue[12982] = {{"move", "STOP"}}
--Presently at: (5.89062500,29.41796875)
commandqueue[12983] = {{"mine", {4.4, 30.4}}}
commandqueue[13033] = {{"mine", nil}}
commandqueue[13034] = {{"move", "W"}}
commandqueue[13050] = {{"move", "SW"}}
commandqueue[13103] = {{"move", "STOP"}}
--Presently at: (-2.07421875,35.00781250)
commandqueue[13102] = {{"tech", "automation"}}
commandqueue[13105] = {{"take", {-3, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[13106] = {{"take", {-3, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[13107] = {{"take", {-3, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[13108] = {{"take", {-3, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[13109] = {{"take", {-3, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[13110] = {{"put", {-3, 30}, "coal", 3, defines.inventory.fuel}}
commandqueue[13111] = {{"put", {-3, 32}, "coal", 3, defines.inventory.fuel}}
commandqueue[13112] = {{"put", {-7, 34}, "coal", 5, defines.inventory.fuel}}
commandqueue[13113] = {{"put", {-3, 36}, "coal", 3, defines.inventory.fuel}}
commandqueue[13114] = {{"put", {-3, 38}, "coal", 3, defines.inventory.fuel}}
commandqueue[13115] = {{"put", {-5, 38}, "coal", 6, defines.inventory.fuel}}
commandqueue[13116] = {{"put", {-5, 36}, "coal", 5, defines.inventory.fuel}}
commandqueue[13117] = {{"put", {-3, 34}, "coal", 5, defines.inventory.fuel}}
commandqueue[13118] = {{"put", {-5, 32}, "coal", 5, defines.inventory.fuel}}
commandqueue[13119] = {{"put", {-5, 30}, "coal", 5, defines.inventory.fuel}}
commandqueue[13120] = {{"put", {-5, 34}, "coal", 5, defines.inventory.fuel}}
commandqueue[13122] = {{"build", "lab", {-0.5, 37.5}, defines.direction.north}}
commandqueue[13123] = {{"put", {-0.5, 37.5}, "science-pack-1", 3, defines.inventory.lab_input}}
commandqueue[13124] = {{"put", {-7, 30}, "coal", 5, defines.inventory.fuel}}
commandqueue[13125] = {{"put", {-7, 32}, "coal", 5, defines.inventory.fuel}}
commandqueue[13127] = {{"put", {-7, 36}, "coal", 5, defines.inventory.fuel}}
commandqueue[13128] = {{"put", {-7, 38}, "coal", 5, defines.inventory.fuel}}
commandqueue[13129] = {{"put", {-9, 38}, "coal", 3, defines.inventory.fuel}}
commandqueue[13130] = {{"put", {-9, 36}, "coal", 3, defines.inventory.fuel}}
commandqueue[13131] = {{"put", {-9, 34}, "coal", 3, defines.inventory.fuel}}
commandqueue[13132] = {{"put", {-9, 32}, "coal", 3, defines.inventory.fuel}}
commandqueue[13133] = {{"put", {-9, 30}, "coal", 3, defines.inventory.fuel}}
commandqueue[13135] = {{"take", {-9, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[13136] = {{"take", {-9, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[13137] = {{"take", {-9, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[13138] = {{"take", {-9, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[13139] = {{"take", {-9, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[13104] = {{"move", "W"}}
commandqueue[13196] = {{"move", "STOP"}}
--Presently at: (-15.73046875,35.00781250)
commandqueue[13197] = {{"mine", {-17.6, 35}}}
commandqueue[13598] = {{"mine", nil}}
commandqueue[13600] = {{"build", "small-electric-pole", {-17.5, 40.5}, defines.direction.north}}
commandqueue[13599] = {{"move", "E"}}
commandqueue[13611] = {{"move", "SE"}}
commandqueue[13649] = {{"move", "STOP"}}
--Presently at: (-9.94140625,39.01562500)
commandqueue[13645] = {{"build", "wooden-chest", {-14.5, 39.5}, defines.direction.north}}
commandqueue[13646] = {{"build", "stone-furnace", {-15, 42}, defines.direction.north}}
commandqueue[13647] = {{"build", "stone-furnace", {-13, 42}, defines.direction.north}}
commandqueue[13648] = {{"build", "stone-furnace", {-11, 42}, defines.direction.north}}
commandqueue[13651] = {{"build", "small-electric-pole", {-10.5, 40.4}, defines.direction.north}}
commandqueue[13652] = {{"build", "wooden-chest", {-11.5, 39.5}, defines.direction.north}}
commandqueue[13650] = {{"move", "E"}}
commandqueue[13677] = {{"move", "STOP"}}
--Presently at: (-5.93359375,39.01562500)
commandqueue[13678] = {{"move", "N"}}
commandqueue[13705] = {{"move", "STOP"}}
--Presently at: (-5.93359375,35.00781250)
commandqueue[13706] = {{"move", "W"}}
commandqueue[13714] = {{"move", "STOP"}}
--Presently at: (-7.12109375,35.00781250)
commandqueue[13716] = {{"build", "electric-mining-drill", {-11.5, 37.5}, defines.direction.south}}
commandqueue[13715] = {{"move", "E"}}
commandqueue[13723] = {{"move", "STOP"}}
--Presently at: (-5.93359375,35.00781250)
commandqueue[13724] = {{"move", "N"}}
commandqueue[13933] = {{"move", "NW"}}
commandqueue[13953] = {{"move", "STOP"}}
--Presently at: (-8.04296875,1.87500000)
commandqueue[13944] = {{"put", {-5, 0}, "coal", 3, defines.inventory.fuel}}
commandqueue[13945] = {{"put", {-7, 0}, "coal", 3, defines.inventory.fuel}}
commandqueue[13946] = {{"put", {-9, 0}, "coal", 3, defines.inventory.fuel}}
commandqueue[13947] = {{"put", {-11, 0}, "coal", 3, defines.inventory.fuel}}
commandqueue[13948] = {{"put", {-5, -2}, "coal", 5, defines.inventory.fuel}}
commandqueue[13949] = {{"put", {-7, -2}, "coal", 5, defines.inventory.fuel}}
commandqueue[13950] = {{"put", {-9, -2}, "coal", 5, defines.inventory.fuel}}
commandqueue[13951] = {{"put", {-11, -2}, "coal", 5, defines.inventory.fuel}}
commandqueue[13955] = {{"take", {-5, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[13956] = {{"take", {-7, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[13957] = {{"take", {-9, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[13958] = {{"take", {-11, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[13954] = {{"move", "S"}}
commandqueue[14137] = {{"move", "STOP"}}
--Presently at: (-8.04296875,29.03906250)
commandqueue[14138] = {{"move", "S"}}
commandqueue[14205] = {{"move", "STOP"}}
--Presently at: (-8.04296875,38.98437500)
commandqueue[14206] = {{"move", "W"}}
commandqueue[14220] = {{"move", "SW"}}
commandqueue[14240] = {{"move", "STOP"}}
--Presently at: (-12.23046875,41.09375000)
commandqueue[14238] = {{"take", {-11.5, 39}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[14239] = {{"build", "electric-mining-drill", {-14.5, 37.5}, defines.direction.south}}
commandqueue[14242] = {{"put", {-11, 42}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[14243] = {{"put", {-15, 42}, "coal", 3, defines.inventory.fuel}}
commandqueue[14244] = {{"put", {-13, 42}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[14245] = {{"put", {-13, 42}, "coal", 3, defines.inventory.fuel}}
commandqueue[14246] = {{"put", {-15, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[14247] = {{"put", {-11, 42}, "coal", 3, defines.inventory.fuel}}
commandqueue[14241] = {{"move", "S"}}
commandqueue[14253] = {{"move", "SE"}}
commandqueue[14256] = {{"move", "STOP"}}
--Presently at: (-11.91406250,43.19140625)
commandqueue[14257] = {{"move", "W"}}
commandqueue[14258] = {{"move", "SW"}}
commandqueue[14272] = {{"move", "STOP"}}
--Presently at: (-13.53906250,44.66796875)
commandqueue[14273] = {{"mine", {-14.8, 45.9}}}
commandqueue[14323] = {{"mine", nil}}
commandqueue[14324] = {{"move", "E"}}
commandqueue[14329] = {{"move", "SE"}}
commandqueue[14348] = {{"move", "STOP"}}
--Presently at: (-10.79296875,46.67187500)
commandqueue[14349] = {{"mine", {-9.4, 47.8}}}
commandqueue[14399] = {{"mine", nil}}
commandqueue[14400] = {{"move", "E"}}
commandqueue[14455] = {{"move", "NE"}}
commandqueue[14538] = {{"move", "STOP"}}
--Presently at: (6.12500000,37.91796875)
commandqueue[14537] = {{"put", {0.5, 37.5}, "science-pack-1", 1, defines.inventory.lab_input}}
commandqueue[14539] = {{"mine", {6.5, 36.7}}}
commandqueue[14940] = {{"mine", nil}}
commandqueue[14943] = {{"craft", "science-pack-1", 1}}
commandqueue[14944] = {{"craft", "science-pack-1", 1}}
commandqueue[14945] = {{"craft", "science-pack-1", 1}}
commandqueue[14946] = {{"craft", "science-pack-1", 1}}
commandqueue[14941] = {{"move", "E"}}
commandqueue[15122] = {{"move", "SE"}}
commandqueue[15161] = {{"move", "STOP"}}
--Presently at: (37.10546875,42.03125000)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (37.253,42.574)
commandqueue[15160] = {{"build", "small-electric-pole", {37.3, 47.6}, defines.direction.north}}
commandqueue[15162] = {{"move", "E"}}
commandqueue[15191] = {{"move", "NE"}}
commandqueue[15197] = {{"move", "STOP"}}
--Presently at: (42.19050000,41.94118750)
commandqueue[15195] = {{"build", "wooden-chest", {43.5, 44.5}, defines.direction.north}}
commandqueue[15196] = {{"build", "small-electric-pole", {42.5, 43.5}, defines.direction.north}}
commandqueue[15199] = {{"build", "electric-mining-drill", {45.5, 44.5}, defines.direction.west}}
commandqueue[15198] = {{"move", "W"}}
commandqueue[15544] = {{"move", "NW"}}
commandqueue[15553] = {{"move", "STOP"}}
--Presently at: (-10.11809375,40.99196875)
commandqueue[15484] = {{"put", {-0.5, 37.5}, "science-pack-1", 1, defines.inventory.lab_input}}
commandqueue[15555] = {{"take", {-11.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[15561] = {{"put", {-11, 42}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[15562] = {{"take", {-11, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[15575] = {{"put", {-13, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[15576] = {{"take", {-14.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[15577] = {{"take", {-13, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[15589] = {{"put", {-15, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[15590] = {{"build", "stone-furnace", {-17, 42}, defines.direction.north}}
commandqueue[15591] = {{"put", {-17, 42}, "coal", 3, defines.inventory.fuel}}
commandqueue[15593] = {{"take", {-15, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[15603] = {{"put", {-17, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[15604] = {{"build", "stone-furnace", {-19, 42}, defines.direction.north}}
commandqueue[15605] = {{"put", {-19, 42}, "coal", 3, defines.inventory.fuel}}
commandqueue[15617] = {{"put", {-19, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[15618] = {{"build", "stone-furnace", {-21, 42}, defines.direction.north}}
commandqueue[15619] = {{"put", {-21, 42}, "coal", 3, defines.inventory.fuel}}
commandqueue[15631] = {{"put", {-21, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[15632] = {{"build", "stone-furnace", {-23, 42}, defines.direction.north}}
commandqueue[15633] = {{"put", {-23, 42}, "coal", 3, defines.inventory.fuel}}
commandqueue[15645] = {{"put", {-23, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[15646] = {{"build", "stone-furnace", {-25, 42}, defines.direction.north}}
commandqueue[15647] = {{"put", {-25, 42}, "coal", 3, defines.inventory.fuel}}
commandqueue[15659] = {{"put", {-25, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[15660] = {{"build", "stone-furnace", {-27, 42}, defines.direction.north}}
commandqueue[15661] = {{"put", {-27, 42}, "coal", 3, defines.inventory.fuel}}
commandqueue[15673] = {{"put", {-27, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[15674] = {{"build", "stone-furnace", {-29, 42}, defines.direction.north}}
commandqueue[15675] = {{"put", {-29, 42}, "coal", 3, defines.inventory.fuel}}
commandqueue[15687] = {{"put", {-29, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[15688] = {{"build", "stone-furnace", {-31, 42}, defines.direction.north}}
commandqueue[15689] = {{"put", {-31, 42}, "coal", 3, defines.inventory.fuel}}
commandqueue[15701] = {{"put", {-31, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[15554] = {{"move", "W"}}
commandqueue[15702] = {{"move", "STOP"}}
--Presently at: (-32.08684375,40.99196875)
commandqueue[15703] = {{"mine", {-32.4, 41.7}}}
commandqueue[15753] = {{"mine", nil}}
commandqueue[15754] = {{"move", "E"}}
commandqueue[15917] = {{"move", "NE"}}
commandqueue[15936] = {{"move", "STOP"}}
--Presently at: (-5.88762500,38.98806250)
commandqueue[15935] = {{"put", {-0.5, 37.5}, "science-pack-1", 1, defines.inventory.lab_input}}
commandqueue[15937] = {{"move", "N"}}
commandqueue[16166] = {{"move", "NW"}}
commandqueue[16187] = {{"move", "STOP"}}
--Presently at: (-8.10246875,2.78103125)
commandqueue[16190] = {{"take", {-11, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[16191] = {{"take", {-9, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[16192] = {{"take", {-7, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[16193] = {{"take", {-5, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[16194] = {{"craft", "science-pack-1", 1}}
commandqueue[16195] = {{"craft", "science-pack-1", 1}}
commandqueue[16188] = {{"move", "S"}}
commandqueue[16351] = {{"move", "SE"}}
commandqueue[16371] = {{"move", "STOP"}}
--Presently at: (-5.99309375,29.08571875)
commandqueue[16378] = {{"take", {-3, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16379] = {{"take", {-9, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16392] = {{"take", {-3, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16393] = {{"take", {-9, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16406] = {{"take", {-3, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16407] = {{"take", {-9, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16420] = {{"take", {-3, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16421] = {{"take", {-9, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16434] = {{"take", {-3, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16435] = {{"take", {-9, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16372] = {{"move", "S"}}
commandqueue[16439] = {{"move", "STOP"}}
--Presently at: (-5.99309375,39.03103125)
commandqueue[16448] = {{"put", {-1.5, 38.5}, "science-pack-1", 2, defines.inventory.lab_input}}
commandqueue[16440] = {{"move", "W"}}
commandqueue[16454] = {{"move", "SW"}}
commandqueue[16473] = {{"move", "STOP"}}
--Presently at: (-10.07512500,41.03493750)
commandqueue[16475] = {{"take", {-11.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[16481] = {{"put", {-11, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[16482] = {{"take", {-11, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16494] = {{"take", {-14.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[16495] = {{"put", {-13, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[16496] = {{"take", {-13, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16509] = {{"put", {-15, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[16510] = {{"take", {-15, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16523] = {{"put", {-17, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[16524] = {{"take", {-17, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16537] = {{"put", {-19, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[16538] = {{"take", {-19, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16551] = {{"put", {-21, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[16552] = {{"take", {-21, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16565] = {{"put", {-23, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[16566] = {{"take", {-23, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16579] = {{"put", {-25, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[16580] = {{"take", {-25, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16594] = {{"take", {-27, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16608] = {{"take", {-29, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16474] = {{"move", "W"}}
commandqueue[16595] = {{"move", "STOP"}}
--Presently at: (-28.03606250,41.03493750)
commandqueue[16597] = {{"craft", "iron-gear-wheel", 5}}
commandqueue[16598] = {{"craft", "electronic-circuit", 3}}
commandqueue[16596] = {{"move", "S"}}
commandqueue[16609] = {{"move", "STOP"}}
--Presently at: (-28.03606250,42.96462500)
commandqueue[16610] = {{"move", "S"}}
commandqueue[16614] = {{"move", "SW"}}
commandqueue[16634] = {{"move", "STOP"}}
--Presently at: (-30.14543750,45.66775000)
commandqueue[16635] = {{"mine", {-31.3, 47}}}
commandqueue[16735] = {{"mine", nil}}
commandqueue[16736] = {{"move", "W"}}
commandqueue[16752] = {{"move", "SW"}}
commandqueue[16754] = {{"move", "STOP"}}
--Presently at: (-32.73137500,45.87868750)
commandqueue[16755] = {{"mine", {-34.6, 46}}}
commandqueue[16855] = {{"mine", nil}}
commandqueue[16856] = {{"move", "S"}}
commandqueue[16863] = {{"move", "SW"}}
commandqueue[16877] = {{"move", "STOP"}}
--Presently at: (-34.20793750,48.39431250)
commandqueue[16878] = {{"mine", {-35.1, 49.8}}}
commandqueue[16978] = {{"mine", nil}}
commandqueue[16979] = {{"move", "W"}}
commandqueue[16984] = {{"move", "SW"}}
commandqueue[16992] = {{"move", "STOP"}}
--Presently at: (-35.79387500,49.23806250)
commandqueue[16993] = {{"mine", {-37.4, 50.1}}}
commandqueue[17093] = {{"mine", nil}}
commandqueue[17094] = {{"move", "S"}}
commandqueue[17098] = {{"move", "SW"}}
commandqueue[17103] = {{"move", "STOP"}}
--Presently at: (-36.32121875,50.35915625)
commandqueue[17104] = {{"mine", {-37.1, 52}}}
commandqueue[17204] = {{"mine", nil}}
commandqueue[17205] = {{"move", "S"}}
commandqueue[17209] = {{"move", "STOP"}}
--Presently at: (-36.32121875,50.95290625)
commandqueue[17210] = {{"mine", {-36.5, 52.8}}}
commandqueue[17310] = {{"mine", nil}}
commandqueue[17311] = {{"move", "S"}}
commandqueue[17323] = {{"move", "SE"}}
commandqueue[17336] = {{"move", "STOP"}}
--Presently at: (-34.95012500,54.10525000)
commandqueue[17337] = {{"mine", {-34.3, 55.7}}}
commandqueue[17437] = {{"mine", nil}}
commandqueue[17439] = {{"craft", "science-pack-1", 1}}
commandqueue[17440] = {{"craft", "iron-gear-wheel", 5}}
commandqueue[17441] = {{"craft", "electronic-circuit", 3}}
commandqueue[17438] = {{"move", "E"}}
commandqueue[17442] = {{"move", "NE"}}
commandqueue[17444] = {{"move", "STOP"}}
--Presently at: (-34.14543750,53.89431250)
commandqueue[17445] = {{"mine", {-32.4, 53.4}}}
commandqueue[17545] = {{"mine", nil}}
commandqueue[17546] = {{"move", "E"}}
commandqueue[17601] = {{"move", "SE"}}
commandqueue[17603] = {{"move", "STOP"}}
--Presently at: (-25.77043750,54.10525000)
commandqueue[17604] = {{"mine", {-25.6, 54.6}}}
commandqueue[17704] = {{"mine", nil}}
commandqueue[17705] = {{"move", "E"}}
commandqueue[17711] = {{"move", "NE"}}
commandqueue[17731] = {{"move", "STOP"}}
--Presently at: (-22.77043750,51.99587500)
commandqueue[17732] = {{"mine", {-21.3, 50.9}}}
commandqueue[17782] = {{"mine", nil}}
commandqueue[17783] = {{"move", "E"}}
commandqueue[17829] = {{"move", "NE"}}
commandqueue[17934] = {{"move", "STOP"}}
--Presently at: (-4.86809375,40.92165625)
commandqueue[17920] = {{"put", {-1.7, 38.7}, "science-pack-1", 2, defines.inventory.lab_input}}
commandqueue[17936] = {{"craft", "iron-gear-wheel", 5}}
commandqueue[17937] = {{"craft", "electronic-circuit", 3}}
commandqueue[17935] = {{"move", "W"}}
commandqueue[17970] = {{"move", "STOP"}}
--Presently at: (-10.06340625,40.92165625)
commandqueue[17972] = {{"take", {-11.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[17978] = {{"put", {-11, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[17979] = {{"take", {-11, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[17991] = {{"take", {-14.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[17992] = {{"put", {-13, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[17993] = {{"take", {-13, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[18006] = {{"put", {-15, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[18007] = {{"take", {-15, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[18020] = {{"put", {-17, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[18021] = {{"take", {-17, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[18034] = {{"put", {-19, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[18035] = {{"take", {-19, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[18048] = {{"put", {-21, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[18049] = {{"take", {-21, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[18062] = {{"put", {-23, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[18063] = {{"take", {-23, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[18076] = {{"put", {-25, 42}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[18077] = {{"take", {-25, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[18090] = {{"put", {-27, 42}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[18105] = {{"put", {-29, 42}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[18106] = {{"put", {-31, 42}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[17971] = {{"move", "W"}}
commandqueue[18099] = {{"move", "STOP"}}
--Presently at: (-29.06340625,40.92165625)
commandqueue[18100] = {{"move", "N"}}
commandqueue[18104] = {{"move", "NW"}}
commandqueue[18121] = {{"move", "STOP"}}
--Presently at: (-30.85637500,38.53493750)
commandqueue[18122] = {{"mine", {-31.9, 37.1}}}
commandqueue[18172] = {{"mine", nil}}
commandqueue[18174] = {{"craft", "science-pack-1", 1}}
commandqueue[18173] = {{"move", "W"}}
commandqueue[18232] = {{"move", "SW"}}
commandqueue[18237] = {{"move", "STOP"}}
--Presently at: (-40.14153125,39.06228125)
commandqueue[18238] = {{"mine", {-41, 38.3}}}
commandqueue[18288] = {{"mine", nil}}
commandqueue[18290] = {{"craft", "iron-gear-wheel", 8}}
commandqueue[18291] = {{"craft", "burner-inserter", 1}}
commandqueue[18289] = {{"move", "W"}}
commandqueue[18322] = {{"move", "STOP"}}
--Presently at: (-45.03996875,39.06228125)
commandqueue[18323] = {{"mine", {-46, 38.8}}}
commandqueue[18373] = {{"mine", nil}}
commandqueue[18374] = {{"move", "S"}}
commandqueue[18408] = {{"move", "SW"}}
commandqueue[18427] = {{"move", "STOP"}}
--Presently at: (-47.04387500,46.11306250)
commandqueue[18428] = {{"mine", {-47.7, 46.5}}}
commandqueue[18478] = {{"mine", nil}}
commandqueue[18479] = {{"move", "S"}}
commandqueue[18495] = {{"move", "SE"}}
commandqueue[18501] = {{"move", "STOP"}}
--Presently at: (-46.41106250,49.12087500)
commandqueue[18502] = {{"mine", {-47.1, 50.3}}}
commandqueue[18602] = {{"mine", nil}}
commandqueue[18603] = {{"move", "E"}}
commandqueue[18612] = {{"move", "NE"}}
commandqueue[18614] = {{"move", "STOP"}}
--Presently at: (-44.86418750,48.90993750)
commandqueue[18615] = {{"mine", {-43.7, 49}}}
commandqueue[18665] = {{"mine", nil}}
commandqueue[18666] = {{"move", "E"}}
commandqueue[18672] = {{"move", "SE"}}
commandqueue[18698] = {{"move", "STOP"}}
--Presently at: (-41.23137500,51.65212500)
commandqueue[18699] = {{"mine", {-40.5, 52.6}}}
commandqueue[18749] = {{"mine", nil}}
commandqueue[18750] = {{"move", "E"}}
commandqueue[18768] = {{"move", "NE"}}
commandqueue[18841] = {{"move", "STOP"}}
--Presently at: (-30.86028125,43.95290625)
commandqueue[18843] = {{"take", {-31, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[18857] = {{"take", {-29, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[18871] = {{"take", {-27, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[18885] = {{"take", {-25, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[18899] = {{"take", {-23, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[18913] = {{"take", {-21, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[18927] = {{"take", {-19, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[18941] = {{"take", {-17, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[18955] = {{"take", {-15, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[18969] = {{"take", {-13, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[18983] = {{"take", {-11, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[18842] = {{"move", "E"}}
commandqueue[18997] = {{"move", "NE"}}
commandqueue[19025] = {{"move", "STOP"}}
--Presently at: (-4.89934375,40.99978125)
commandqueue[19016] = {{"put", {-1.7, 38.7}, "science-pack-1", 2, defines.inventory.lab_input}}
commandqueue[19026] = {{"move", "W"}}
commandqueue[19061] = {{"move", "STOP"}}
--Presently at: (-10.09465625,40.99978125)
commandqueue[19063] = {{"take", {-11.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[19069] = {{"put", {-11, 42}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[19082] = {{"take", {-14.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[19083] = {{"put", {-13, 42}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[19097] = {{"put", {-15, 42}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[19111] = {{"put", {-17, 42}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[19118] = {{"put", {-19, 42}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[19119] = {{"put", {-21, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[19120] = {{"put", {-23, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[19123] = {{"tech", "logistics"}}
commandqueue[19124] = {{"craft", "assembling-machine-1", 3}}
commandqueue[19062] = {{"move", "W"}}
commandqueue[19116] = {{"move", "STOP"}}
--Presently at: (-18.11028125,40.99978125)
commandqueue[19117] = {{"move", "E"}}
commandqueue[19172] = {{"move", "STOP"}}
--Presently at: (-9.94621875,40.99978125)
commandqueue[19171] = {{"build", "assembling-machine-1", {-5.9, 43.1}, defines.direction.north}}
commandqueue[19174] = {{"recipe", {-5.9,43.1}, "copper-cable"}}
commandqueue[19175] = {{"put", {-5.9, 43.1}, "copper-plate", 20, defines.inventory.assembling_machine_input}}
commandqueue[19202] = {{"build", "assembling-machine-1", {-1.9, 41.1}, defines.direction.north}}
commandqueue[19203] = {{"recipe", {-1.9,41.1}, "science-pack-1"}}
commandqueue[19204] = {{"put", {-1.9, 41.1}, "iron-gear-wheel", 2, defines.inventory.assembling_machine_input}}
commandqueue[19205] = {{"put", {-1.9, 41.1}, "copper-plate", 9, defines.inventory.assembling_machine_input}}
commandqueue[19173] = {{"move", "E"}}
commandqueue[19187] = {{"move", "NE"}}
commandqueue[19206] = {{"move", "STOP"}}
--Presently at: (-5.86418750,38.99587500)
commandqueue[19208] = {{"build", "burner-inserter", {-1.5, 39.5}, defines.direction.south}}
commandqueue[19209] = {{"put", {-1.5, 39.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[19210] = {{"craft", "iron-gear-wheel", 2}}
commandqueue[19207] = {{"move", "N"}}
commandqueue[19240] = {{"move", "NW"}}
commandqueue[19242] = {{"move", "STOP"}}
--Presently at: (-6.07512500,33.88650000)
commandqueue[19244] = {{"take", {-3, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[19245] = {{"take", {-9, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[19246] = {{"take", {-3, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[19247] = {{"take", {-9, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[19248] = {{"take", {-3, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[19249] = {{"take", {-9, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[19250] = {{"take", {-3, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[19251] = {{"take", {-9, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[19252] = {{"take", {-3, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[19253] = {{"take", {-9, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[19243] = {{"move", "S"}}
commandqueue[19277] = {{"move", "STOP"}}
--Presently at: (-6.07512500,38.93337500)
commandqueue[19274] = {{"build", "assembling-machine-1", {-8.5, 43.5}, defines.direction.north}}
commandqueue[19275] = {{"recipe", {-8.5,43.5}, "iron-gear-wheel"}}
commandqueue[19276] = {{"put", {-8.5, 43.5}, "iron-plate", 90, defines.inventory.assembling_machine_input}}
commandqueue[19299] = {{"take", {-5.5, 42.5}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[19300] = {{"craft", "electric-mining-drill", 1}}
commandqueue[19301] = {{"craft", "electronic-circuit", 3}}
commandqueue[19302] = {{"craft", "iron-gear-wheel", 3}}
commandqueue[19278] = {{"move", "E"}}
commandqueue[19588] = {{"move", "SE"}}
commandqueue[19608] = {{"move", "STOP"}}
--Presently at: (42.04987500,41.04275000)
commandqueue[19610] = {{"take", {43.5, 44.5}, "coal", "all", defines.inventory.chest}}
commandqueue[19611] = {{"build", "wooden-chest", {43.5, 41.5}, defines.direction.north}}
commandqueue[19616] = {{"build", "electric-mining-drill", {45.5, 41.5}, defines.direction.west}}
commandqueue[19609] = {{"move", "W"}}
commandqueue[19880] = {{"move", "SW"}}
commandqueue[19899] = {{"move", "STOP"}}
--Presently at: (-0.18059375,43.04665625)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (0.031,43.1484)
commandqueue[19901] = {{"take", {-4.5, 43}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[19910] = {{"take", {-7.3, 43}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[19911] = {{"craft", "assembling-machine-1", 1}}
commandqueue[19912] = {{"put", {-1.5, 41.5}, "iron-gear-wheel", 3, defines.inventory.assembling_machine_input}}
commandqueue[19900] = {{"move", "W"}}
commandqueue[19920] = {{"move", "NW"}}
commandqueue[19931] = {{"move", "STOP"}}
--Presently at: (-4.09790625,41.98824375)
commandqueue[19930] = {{"craft", "assembling-machine-1", 1}}
commandqueue[19933] = {{"craft", "electronic-circuit", 3}}
commandqueue[19934] = {{"craft", "small-electric-pole", 1}}
commandqueue[19948] = {{"build", "assembling-machine-1", {-5.5, 40.5}, defines.direction.north}}
commandqueue[19949] = {{"recipe", {-5.5,40.5}, "iron-gear-wheel"}}
commandqueue[19950] = {{"put", {-5.5, 40.5}, "iron-plate", 100, defines.inventory.assembling_machine_input}}
commandqueue[19932] = {{"move", "W"}}
commandqueue[19966] = {{"move", "NW"}}
commandqueue[19976] = {{"move", "STOP"}}
--Presently at: (-10.19946875,40.93355625)
commandqueue[19978] = {{"take", {-11.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[19984] = {{"put", {-11, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[19985] = {{"take", {-11, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[19997] = {{"take", {-14.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[19998] = {{"put", {-13, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[19999] = {{"take", {-13, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[20012] = {{"put", {-15, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[20013] = {{"take", {-15, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[20026] = {{"put", {-17, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[20027] = {{"take", {-17, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[20040] = {{"put", {-19, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[20041] = {{"take", {-19, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[20042] = {{"put", {-21, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[20043] = {{"take", {-21, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[20044] = {{"put", {-23, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[20045] = {{"take", {-23, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[20046] = {{"put", {-25, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[19977] = {{"move", "W"}}
commandqueue[20050] = {{"move", "STOP"}}
--Presently at: (-21.03540625,40.93355625)
commandqueue[20051] = {{"move", "E"}}
commandqueue[20113] = {{"move", "NE"}}
commandqueue[20132] = {{"move", "STOP"}}
--Presently at: (-9.82837500,38.92965000)
commandqueue[20105] = {{"build", "assembling-machine-1", {-8.8, 40.8}, defines.direction.north}}
commandqueue[20106] = {{"recipe", {-8.8,40.8}, "iron-gear-wheel"}}
commandqueue[20107] = {{"put", {-8.8, 40.8}, "iron-plate", 50, defines.inventory.assembling_machine_input}}
commandqueue[20133] = {{"move", "E"}}
commandqueue[20159] = {{"move", "STOP"}}
--Presently at: (-5.96900000,38.92965000)
commandqueue[20161] = {{"take", {-7.5, 42.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[20162] = {{"take", {-6, 42.5}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[20163] = {{"put", {-6, 42.5}, "copper-plate", 50, defines.inventory.assembling_machine_input}}
commandqueue[20181] = {{"take", {-6, 39.6}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[20182] = {{"craft", "assembling-machine-1", 1}}
commandqueue[20183] = {{"craft", "wood", 10}}
commandqueue[20184] = {{"craft", "copper-cable", 3}}
commandqueue[20160] = {{"move", "N"}}
commandqueue[20389] = {{"move", "NW"}}
commandqueue[20409] = {{"move", "STOP"}}
--Presently at: (-8.07837500,2.82808750)
commandqueue[20412] = {{"take", {-11, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[20413] = {{"take", {-9, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[20414] = {{"take", {-7, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[20415] = {{"take", {-5, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[20410] = {{"move", "S"}}
commandqueue[20573] = {{"move", "SE"}}
commandqueue[20593] = {{"move", "STOP"}}
--Presently at: (-5.96900000,29.13277500)
commandqueue[20595] = {{"craft", "wooden-chest", 2}}
commandqueue[20600] = {{"take", {-3, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[20601] = {{"take", {-9, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[20614] = {{"take", {-3, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[20615] = {{"take", {-9, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[20628] = {{"take", {-3, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[20629] = {{"take", {-9, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[20642] = {{"take", {-3, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[20643] = {{"take", {-9, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[20656] = {{"take", {-3, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[20657] = {{"take", {-9, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[20594] = {{"move", "S"}}
commandqueue[20661] = {{"move", "STOP"}}
--Presently at: (-5.96900000,39.07808750)
commandqueue[20663] = {{"take", {-6, 42.5}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[20664] = {{"take", {-5.5, 40.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[20665] = {{"take", {-8.5, 40.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[20666] = {{"take", {-8.5, 43.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[20667] = {{"craft", "steam-engine", 1}}
commandqueue[20668] = {{"craft", "assembling-machine-1", 1}}
commandqueue[20669] = {{"craft", "assembling-machine-1", 1}}
commandqueue[20670] = {{"craft", "electric-mining-drill", 1}}
commandqueue[20690] = {{"build", "assembling-machine-1", {1.5, 41.5}, defines.direction.north}}
commandqueue[20691] = {{"recipe", {1.5,41.5}, "copper-cable"}}
commandqueue[20692] = {{"put", {1.5, 41.5}, "copper-plate", 50, defines.inventory.assembling_machine_input}}
commandqueue[20662] = {{"move", "E"}}
commandqueue[20845] = {{"move", "SE"}}
commandqueue[20883] = {{"move", "STOP"}}
--Presently at: (25.20287500,43.08590000)
commandqueue[20885] = {{"build", "steam-engine", {28.5, 45.5}, defines.direction.east}}
commandqueue[20884] = {{"move", "E"}}
commandqueue[20977] = {{"move", "STOP"}}
--Presently at: (39.00756250,43.08590000)
commandqueue[20979] = {{"take", {43.5, 41.5}, "coal", "all", defines.inventory.chest}}
commandqueue[20980] = {{"take", {43.5, 44.5}, "coal", "all", defines.inventory.chest}}
commandqueue[20978] = {{"move", "W"}}
commandqueue[21261] = {{"move", "NW"}}
commandqueue[21272] = {{"move", "STOP"}}
--Presently at: (-4.16040625,41.92574375)
commandqueue[21253] = {{"build", "small-electric-pole", {-3.5, 46.5}, defines.direction.north}}
commandqueue[21254] = {{"build", "assembling-machine-1", {-5.5, 46.5}, defines.direction.north}}
commandqueue[21255] = {{"recipe", {-5.5,46.5}, "electronic-circuit"}}
commandqueue[21256] = {{"put", {-5.5, 46.5}, "copper-cable", 3, defines.inventory.assembling_machine_input}}
commandqueue[21257] = {{"put", {-5.5, 46.5}, "iron-plate", 10, defines.inventory.assembling_machine_input}}
commandqueue[21274] = {{"take", {1, 42}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[21275] = {{"take", {-5, 43}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[21276] = {{"take", {-6, 40}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[21277] = {{"craft", "lab", 1}}
commandqueue[21278] = {{"take", {-8, 41}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[21279] = {{"take", {-8, 43}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[21280] = {{"put", {-2, 42}, "iron-gear-wheel", 4, defines.inventory.assembling_machine_input}}
commandqueue[21281] = {{"put", {-5.5, 46.5}, "copper-cable", 6, defines.inventory.assembling_machine_input}}
commandqueue[21282] = {{"build", "assembling-machine-1", {-8.5, 46.5}, defines.direction.north}}
commandqueue[21283] = {{"recipe", {-8.5,46.5}, "copper-cable"}}
commandqueue[21284] = {{"put", {-8.5, 46.5}, "copper-plate", 34, defines.inventory.assembling_machine_input}}
commandqueue[21285] = {{"put", {-8.5, 40.5}, "iron-plate", 36, defines.inventory.assembling_machine_input}}
commandqueue[21293] = {{"build", "small-electric-pole", {-10.5, 46.5}, defines.direction.north}}
commandqueue[21273] = {{"move", "W"}}
commandqueue[21312] = {{"move", "STOP"}}
--Presently at: (-9.94946875,41.92574375)
commandqueue[21313] = {{"move", "S"}}
commandqueue[21320] = {{"move", "STOP"}}
--Presently at: (-9.94946875,42.96480625)
commandqueue[21322] = {{"take", {-11.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[21323] = {{"put", {-11, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[21324] = {{"take", {-11, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[21341] = {{"take", {-14.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[21337] = {{"put", {-13, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[21338] = {{"take", {-13, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[21351] = {{"put", {-15, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[21352] = {{"take", {-15, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[21358] = {{"build", "electric-mining-drill", {-17.5, 37.5}, defines.direction.south}}
commandqueue[21359] = {{"build", "wooden-chest", {-17.5, 39.5}, defines.direction.north}}
commandqueue[21360] = {{"build", "wooden-chest", {-20.5, 39.5}, defines.direction.north}}
commandqueue[21361] = {{"put", {-17, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[21362] = {{"take", {-17, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[21379] = {{"put", {-19, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[21385] = {{"take", {-19, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[21380] = {{"put", {-21, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[21381] = {{"take", {-21, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[21382] = {{"put", {-23, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[21383] = {{"take", {-23, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[21384] = {{"put", {-25, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[21386] = {{"take", {-25, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[21423] = {{"put", {-27, 42}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[21424] = {{"put", {-29, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[21425] = {{"put", {-31, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[21321] = {{"move", "W"}}
commandqueue[21436] = {{"move", "STOP"}}
--Presently at: (-27.01978125,42.96480625)
commandqueue[21437] = {{"move", "E"}}
commandqueue[21552] = {{"move", "STOP"}}
--Presently at: (-9.94946875,42.96480625)
commandqueue[21551] = {{"take", {-9, 46}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[21554] = {{"put", {-6.5, 45.5}, "copper-cable", 10, defines.inventory.assembling_machine_input}}
commandqueue[21555] = {{"take", {-6.5, 45.5}, "electronic-circuit", "all", defines.inventory.assembling_machine_output}}
commandqueue[21553] = {{"move", "N"}}
commandqueue[21560] = {{"move", "STOP"}}
--Presently at: (-9.94946875,41.92574375)
commandqueue[21561] = {{"move", "E"}}
commandqueue[21581] = {{"move", "STOP"}}
--Presently at: (-6.98071875,41.92574375)
commandqueue[21584] = {{"take", {-6, 44}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[21585] = {{"put", {-6, 45.5}, "copper-cable", 10, defines.inventory.assembling_machine_input}}
commandqueue[21586] = {{"take", {-8.5, 43.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[21587] = {{"take", {-8.5, 40.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[21588] = {{"take", {-5.5, 40.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[21582] = {{"move", "N"}}
commandqueue[21602] = {{"move", "STOP"}}
--Presently at: (-6.98071875,38.95699375)
commandqueue[21603] = {{"move", "E"}}
commandqueue[21610] = {{"move", "STOP"}}
--Presently at: (-5.94165625,38.95699375)
commandqueue[21612] = {{"take", {-3, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[21613] = {{"put", {-3, 38}, "coal", 2, defines.inventory.fuel}}
commandqueue[21614] = {{"take", {-9, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[21615] = {{"put", {-9, 38}, "coal", 2, defines.inventory.fuel}}
commandqueue[21618] = {{"take", {-3, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[21619] = {{"put", {-3, 36}, "coal", 2, defines.inventory.fuel}}
commandqueue[21621] = {{"take", {-9, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[21622] = {{"put", {-9, 36}, "coal", 2, defines.inventory.fuel}}
commandqueue[21625] = {{"take", {-3, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[21626] = {{"put", {-3, 34}, "coal", 2, defines.inventory.fuel}}
commandqueue[21628] = {{"take", {-9, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[21629] = {{"put", {-9, 34}, "coal", 2, defines.inventory.fuel}}
commandqueue[21632] = {{"take", {-3, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[21633] = {{"put", {-3, 32}, "coal", 2, defines.inventory.fuel}}
commandqueue[21635] = {{"take", {-9, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[21636] = {{"put", {-9, 32}, "coal", 2, defines.inventory.fuel}}
commandqueue[21639] = {{"take", {-3, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[21640] = {{"put", {-3, 30}, "coal", 2, defines.inventory.fuel}}
commandqueue[21642] = {{"take", {-9, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[21643] = {{"put", {-9, 30}, "coal", 2, defines.inventory.fuel}}
commandqueue[21611] = {{"move", "N"}}
commandqueue[21645] = {{"move", "STOP"}}
--Presently at: (-5.94165625,33.91011875)
commandqueue[21647] = {{"put", {-5, 30}, "coal", 3, defines.inventory.fuel}}
commandqueue[21648] = {{"put", {-7, 30}, "coal", 3, defines.inventory.fuel}}
commandqueue[21649] = {{"put", {-5, 32}, "coal", 3, defines.inventory.fuel}}
commandqueue[21650] = {{"put", {-7, 32}, "coal", 3, defines.inventory.fuel}}
commandqueue[21651] = {{"put", {-5, 34}, "coal", 3, defines.inventory.fuel}}
commandqueue[21652] = {{"put", {-7, 34}, "coal", 3, defines.inventory.fuel}}
commandqueue[21653] = {{"put", {-5, 36}, "coal", 3, defines.inventory.fuel}}
commandqueue[21654] = {{"put", {-7, 36}, "coal", 3, defines.inventory.fuel}}
commandqueue[21655] = {{"put", {-5, 38}, "coal", 3, defines.inventory.fuel}}
commandqueue[21656] = {{"put", {-7, 38}, "coal", 3, defines.inventory.fuel}}
commandqueue[21657] = {{"craft", "burner-inserter", 1}}
commandqueue[21658] = {{"craft", "electric-mining-drill", 1}}
commandqueue[21646] = {{"move", "S"}}
commandqueue[21680] = {{"move", "STOP"}}
--Presently at: (-5.94165625,38.95699375)
commandqueue[21682] = {{"take", {-2.5, 40.5}, "science-pack-1", "all", defines.inventory.assembling_machine_output}}
commandqueue[21681] = {{"move", "W"}}
commandqueue[21709] = {{"move", "SW"}}
commandqueue[21729] = {{"move", "STOP"}}
--Presently at: (-12.20728125,41.06636875)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-12.0586,41.215)
commandqueue[21736] = {{"take", {-11.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[21737] = {{"put", {-11, 42}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[21738] = {{"take", {-11, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[21750] = {{"take", {-14.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[21751] = {{"put", {-13, 42}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[21752] = {{"take", {-13, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[21753] = {{"take", {-17.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[21765] = {{"put", {-15, 42}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[21766] = {{"take", {-15, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[21779] = {{"put", {-17, 42}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[21780] = {{"take", {-17, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[21793] = {{"put", {-19, 42}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[21794] = {{"take", {-19, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[21795] = {{"put", {-21, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[21796] = {{"take", {-21, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[21797] = {{"put", {-23, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[21798] = {{"take", {-23, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[21799] = {{"put", {-25, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[21730] = {{"move", "W"}}
commandqueue[21783] = {{"move", "NW"}}
commandqueue[21786] = {{"move", "STOP"}}
--Presently at: (-20.24219375,40.89859375)
commandqueue[21787] = {{"move", "S"}}
commandqueue[21800] = {{"move", "SE"}}
commandqueue[21803] = {{"move", "STOP"}}
--Presently at: (-19.92578750,43.14468750)
commandqueue[21804] = {{"move", "E"}}
commandqueue[21859] = {{"move", "SE"}}
commandqueue[21877] = {{"move", "STOP"}}
--Presently at: (-9.86328750,45.04312500)
commandqueue[21878] = {{"move", "E"}}
commandqueue[21918] = {{"move", "NE"}}
commandqueue[21928] = {{"move", "STOP"}}
--Presently at: (-2.87110000,43.98843750)
commandqueue[21893] = {{"build", "lab", {-1.9, 45.9}, defines.direction.north}}
commandqueue[21894] = {{"put", {-1.9, 45.9}, "science-pack-1", 2, defines.inventory.lab_input}}
commandqueue[21899] = {{"take", {-6.5, 41.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[21900] = {{"take", {-6.5, 41.5}, "iron-plate", "all", defines.inventory.assembling_machine_input}}
commandqueue[21901] = {{"recipe", {-6.5,41.5}, "wood"}}
commandqueue[21902] = {{"put", {-6.5, 41.5}, "raw-wood", 24, defines.inventory.assembling_machine_input}}
commandqueue[21925] = {{"take", {-7.5, 45.5}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[21926] = {{"take", {-5.5, 43.5}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[21927] = {{"take", {0.5, 42.5}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[21931] = {{"put", {-5.5, 46.5}, "copper-cable", 19, defines.inventory.assembling_machine_input}}
commandqueue[21932] = {{"take", {-5.5, 46.5}, "electronic-circuit", "all", defines.inventory.assembling_machine_output}}
commandqueue[21933] = {{"build", "burner-inserter", {-1.5, 43.5}, defines.direction.north}}
commandqueue[21934] = {{"put", {-1.5, 43.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[21935] = {{"put", {-5.5, 46.5}, "iron-plate", 12, defines.inventory.assembling_machine_input}}
commandqueue[21936] = {{"craft", "electric-mining-drill", 2}}
commandqueue[21929] = {{"move", "W"}}
commandqueue[21930] = {{"move", "SW"}}
commandqueue[21940] = {{"move", "STOP"}}
--Presently at: (-4.07422500,45.04312500)
commandqueue[21963] = {{"take", {-8.5, 41.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[21965] = {{"put", {-8.5, 41.5}, "iron-plate", 30, defines.inventory.assembling_machine_input}}
commandqueue[21987] = {{"take", {-8.5, 42.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[21988] = {{"recipe", {-8.5,42.5}, "electronic-circuit"}}
commandqueue[21989] = {{"put", {-8.5, 42.5}, "copper-cable", 15, defines.inventory.assembling_machine_input}}
commandqueue[21990] = {{"put", {-8.5, 42.5}, "iron-plate", 5, defines.inventory.assembling_machine_input}}
commandqueue[21941] = {{"move", "W"}}
commandqueue[21981] = {{"move", "NW"}}
commandqueue[22001] = {{"move", "STOP"}}
--Presently at: (-12.12110000,42.93375000)
commandqueue[22008] = {{"take", {-11.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[22009] = {{"put", {-11, 42}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[22010] = {{"take", {-11, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22022] = {{"take", {-14.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[22023] = {{"put", {-13, 42}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[22024] = {{"take", {-13, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22025] = {{"take", {-17.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[22037] = {{"put", {-15, 42}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[22038] = {{"take", {-15, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22051] = {{"put", {-17, 42}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[22052] = {{"take", {-17, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22053] = {{"build", "electric-mining-drill", {-20.5, 37.5}, defines.direction.south}}
commandqueue[22065] = {{"put", {-19, 42}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[22066] = {{"take", {-19, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22067] = {{"put", {-21, 42}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[22068] = {{"take", {-21, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22070] = {{"take", {-23, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22002] = {{"move", "W"}}
commandqueue[22096] = {{"move", "STOP"}}
--Presently at: (-26.07422500,42.93375000)
commandqueue[22098] = {{"take", {-25, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22099] = {{"take", {-27, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22100] = {{"take", {-29, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22101] = {{"take", {-31, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22097] = {{"move", "E"}}
commandqueue[22205] = {{"move", "STOP"}}
--Presently at: (-10.04297500,42.93375000)
commandqueue[22207] = {{"craft", "small-electric-pole", 1}}
commandqueue[22208] = {{"craft", "wooden-chest", 2}}
commandqueue[22206] = {{"move", "N"}}
commandqueue[22213] = {{"move", "STOP"}}
--Presently at: (-10.04297500,41.89468750)
commandqueue[22214] = {{"move", "E"}}
commandqueue[22248] = {{"move", "STOP"}}
--Presently at: (-4.99610000,41.89468750)
commandqueue[22250] = {{"take", {0.5, 42}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[22251] = {{"take", {-5, 43}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[22252] = {{"take", {-8, 46}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[22253] = {{"take", {-6, 40}, "wood", "all", defines.inventory.assembling_machine_output}}
commandqueue[22254] = {{"take", {-8, 40}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[22255] = {{"take", {-6, 46}, "electronic-circuit", "all", defines.inventory.assembling_machine_output}}
commandqueue[22256] = {{"put", {-6, 46}, "copper-cable", 30, defines.inventory.assembling_machine_input}}
commandqueue[22257] = {{"put", {-6, 46}, "iron-plate", 4, defines.inventory.assembling_machine_input}}
commandqueue[22258] = {{"craft", "small-electric-pole", 5}}
commandqueue[22309] = {{"take", {-8, 43}, "electronic-circuit", "all", defines.inventory.assembling_machine_output}}
commandqueue[22310] = {{"recipe", {-9.5,42.5}, "iron-gear-wheel"}}
commandqueue[22311] = {{"put", {-9.5, 42.5}, "iron-plate", 50, defines.inventory.assembling_machine_input}}
commandqueue[22249] = {{"move", "W"}}
commandqueue[22283] = {{"move", "STOP"}}
--Presently at: (-10.04297500,41.89468750)
commandqueue[22284] = {{"move", "N"}}
commandqueue[22290] = {{"move", "STOP"}}
--Presently at: (-10.04297500,41.00406250)
commandqueue[22292] = {{"take", {-11.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[22298] = {{"put", {-11, 42}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[22299] = {{"take", {-11, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22308] = {{"take", {-14.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[22312] = {{"put", {-13, 42}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[22313] = {{"take", {-13, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22326] = {{"put", {-15, 42}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[22327] = {{"take", {-15, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22328] = {{"take", {-17.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[22329] = {{"take", {-20.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[22340] = {{"put", {-17, 42}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[22341] = {{"take", {-17, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22351] = {{"build", "wooden-chest", {-23.5, 39.5}, defines.direction.north}}
commandqueue[22352] = {{"build", "small-electric-pole", {-24.5, 40.5}, defines.direction.north}}
commandqueue[22353] = {{"build", "electric-mining-drill", {-23.5, 37.5}, defines.direction.south}}
commandqueue[22354] = {{"put", {-19, 42}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[22355] = {{"take", {-19, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22356] = {{"put", {-21, 42}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[22357] = {{"take", {-21, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22358] = {{"put", {-23, 42}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[22359] = {{"take", {-23, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22360] = {{"put", {-25, 42}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[22291] = {{"move", "W"}}
commandqueue[22379] = {{"move", "NW"}}
commandqueue[22399] = {{"move", "STOP"}}
--Presently at: (-25.21485000,38.89468750)
commandqueue[22395] = {{"put", {-27, 42}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[22396] = {{"put", {-29, 42}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[22397] = {{"build", "wooden-chest", {-26.5, 39.5}, defines.direction.north}}
commandqueue[22400] = {{"move", "N"}}
commandqueue[22420] = {{"move", "NE"}}
commandqueue[22430] = {{"move", "STOP"}}
--Presently at: (-24.16016250,34.87125000)
commandqueue[22432] = {{"craft", "electric-mining-drill", 2}}
commandqueue[22421] = {{"build", "electric-mining-drill", {-26.5, 37.5}, defines.direction.south}}
commandqueue[22431] = {{"move", "E"}}
commandqueue[22553] = {{"move", "SE"}}
commandqueue[22555] = {{"move", "STOP"}}
--Presently at: (-5.83985000,35.08218750)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-6.0195,35.1172)
commandqueue[22551] = {{"take", {-6, 39.5}, "wood", "all", defines.inventory.assembling_machine_output}}
commandqueue[22552] = {{"craft", "wooden-chest", 3}}
commandqueue[22554] = {{"craft", "electric-mining-drill", 1}}
commandqueue[22557] = {{"build", "small-electric-pole", {-1.5, 33.5}, defines.direction.north}}
commandqueue[22558] = {{"take", {-9, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22559] = {{"take", {-3, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22560] = {{"take", {-9, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22561] = {{"take", {-3, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22562] = {{"take", {-9, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22563] = {{"take", {-3, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22564] = {{"take", {-9, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22565] = {{"take", {-3, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22566] = {{"take", {-9, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22567] = {{"take", {-3, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22606] = {{"build", "small-electric-pole", {-1.5, 26.5}, defines.direction.north}}
commandqueue[22656] = {{"build", "small-electric-pole", {-1.5, 19.5}, defines.direction.north}}
commandqueue[22706] = {{"build", "small-electric-pole", {-1.5, 12.5}, defines.direction.north}}
commandqueue[22756] = {{"build", "small-electric-pole", {-1.5, 5.5}, defines.direction.north}}
commandqueue[22556] = {{"move", "N"}}
commandqueue[22786] = {{"move", "STOP"}}
--Presently at: (-6.01950000,0.97657500)
commandqueue[22788] = {{"take", {-11, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[22789] = {{"take", {-9, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[22790] = {{"take", {-7, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[22791] = {{"take", {-5, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[22792] = {{"put", {-5, 0}, "coal", 2, defines.inventory.fuel}}
commandqueue[22793] = {{"put", {-7, 0}, "coal", 2, defines.inventory.fuel}}
commandqueue[22794] = {{"put", {-9, 0}, "coal", 2, defines.inventory.fuel}}
commandqueue[22795] = {{"put", {-11, 0}, "coal", 2, defines.inventory.fuel}}
commandqueue[22796] = {{"put", {-5, -2}, "coal", 3, defines.inventory.fuel}}
commandqueue[22797] = {{"put", {-7, -2}, "coal", 3, defines.inventory.fuel}}
commandqueue[22798] = {{"put", {-9, -2}, "coal", 3, defines.inventory.fuel}}
commandqueue[22799] = {{"put", {-11, -2}, "coal", 3, defines.inventory.fuel}}
commandqueue[22800] = {{"build", "small-electric-pole", {-3.5, -1.5}, defines.direction.north}}
commandqueue[22801] = {{"build", "electric-mining-drill", {-3.5, -4.5}, defines.direction.north}}
commandqueue[22827] = {{"build", "electric-mining-drill", {-0.9, -4.5}, defines.direction.north}}
commandqueue[22837] = {{"build", "wooden-chest", {-0.9, -6.5}, defines.direction.north}}
commandqueue[22787] = {{"move", "N"}}
commandqueue[22841] = {{"move", "NW"}}
commandqueue[22860] = {{"move", "STOP"}}
--Presently at: (-8.02340625,-9.04295625)
commandqueue[22859] = {{"build", "wooden-chest", {-3.5, -6.5}, defines.direction.north}}
commandqueue[22861] = {{"mine", {-9, -9.5}}}
commandqueue[22911] = {{"mine", nil}}
commandqueue[22912] = {{"mine", {-7.3, -10.2}}}
commandqueue[22962] = {{"mine", nil}}
commandqueue[22964] = {{"craft", "boiler", 1}}
commandqueue[22965] = {{"craft", "steam-engine", 2}}
commandqueue[22966] = {{"craft", "burner-inserter", 3}}
commandqueue[22967] = {{"craft", "transport-belt", 4}}
commandqueue[23003] = {{"build", "wooden-chest", {-6.5, -6.5}, defines.direction.north}}
commandqueue[23006] = {{"build", "electric-mining-drill", {-6.5, -4.5}, defines.direction.north}}
commandqueue[22963] = {{"move", "S"}}
commandqueue[23206] = {{"move", "SE"}}
commandqueue[23226] = {{"move", "STOP"}}
--Presently at: (-5.91403125,29.13673125)
commandqueue[23233] = {{"take", {-3, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[23234] = {{"take", {-9, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[23247] = {{"take", {-3, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[23248] = {{"take", {-9, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[23261] = {{"take", {-3, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[23262] = {{"take", {-9, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[23275] = {{"take", {-3, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[23276] = {{"take", {-9, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[23289] = {{"take", {-3, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[23290] = {{"take", {-9, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[23227] = {{"move", "S"}}
commandqueue[23293] = {{"move", "STOP"}}
--Presently at: (-5.91403125,38.93360625)
commandqueue[23294] = {{"move", "W"}}
commandqueue[23301] = {{"move", "STOP"}}
--Presently at: (-6.95309375,38.93360625)
commandqueue[23302] = {{"move", "S"}}
commandqueue[23323] = {{"move", "STOP"}}
--Presently at: (-6.95309375,42.05079375)
commandqueue[23309] = {{"take", {-5.5, 43.5}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[23310] = {{"put", {-6.5, 45.5}, "copper-cable", 30, defines.inventory.assembling_machine_input}}
commandqueue[23311] = {{"put", {-6.5, 45.5}, "iron-plate", 10, defines.inventory.assembling_machine_input}}
commandqueue[23321] = {{"take", {-8.5, 40.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[23322] = {{"take", {-8.5, 43.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[23342] = {{"put", {-5.5, 43.5}, "copper-plate", 25, defines.inventory.assembling_machine_input}}
commandqueue[23343] = {{"take", {-6.5, 41.5}, "wood", "all", defines.inventory.assembling_machine_output}}
commandqueue[23344] = {{"recipe", {-6.5,41.5}, "burner-inserter"}}
commandqueue[23349] = {{"put", {-6.5, 41.5}, "iron-plate", 11, defines.inventory.assembling_machine_input}}
commandqueue[23350] = {{"put", {-6.5, 41.5}, "iron-gear-wheel", 11, defines.inventory.assembling_machine_input}}
commandqueue[23351] = {{"take", {-7.5, 45.5}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[23324] = {{"move", "W"}}
commandqueue[23345] = {{"move", "STOP"}}
--Presently at: (-10.07028125,42.05079375)
commandqueue[23346] = {{"move", "S"}}
commandqueue[23352] = {{"move", "STOP"}}
--Presently at: (-10.07028125,42.94141875)
commandqueue[23354] = {{"recipe", {-9.5,45.5}, "electronic-circuit"}}
commandqueue[23355] = {{"put", {-9.5, 45.5}, "copper-cable", 30, defines.inventory.assembling_machine_input}}
commandqueue[23356] = {{"put", {-9.5, 45.5}, "iron-plate", 10, defines.inventory.assembling_machine_input}}
commandqueue[23363] = {{"take", {-11.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[23367] = {{"put", {-11, 42}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[23381] = {{"put", {-13, 42}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[23384] = {{"take", {-14.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[23395] = {{"put", {-15, 42}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[23405] = {{"take", {-17.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[23409] = {{"put", {-17, 42}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[23422] = {{"put", {-19, 42}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[23426] = {{"take", {-20.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[23433] = {{"put", {-21, 42}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[23434] = {{"put", {-23, 42}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[23447] = {{"take", {-23.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[23448] = {{"put", {-25, 42}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[23453] = {{"take", {-26.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[23454] = {{"put", {-27, 42}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[23455] = {{"put", {-29, 42}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[23456] = {{"put", {-31, 42}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[23457] = {{"take", {-29, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[23458] = {{"take", {-27, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[23459] = {{"take", {-25, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[23353] = {{"move", "W"}}
commandqueue[23460] = {{"move", "STOP"}}
--Presently at: (-25.95309375,42.94141875)
commandqueue[23462] = {{"take", {-23, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[23476] = {{"take", {-21, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[23490] = {{"take", {-19, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[23504] = {{"take", {-17, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[23518] = {{"take", {-15, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[23532] = {{"take", {-13, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[23533] = {{"take", {-11, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[23461] = {{"move", "E"}}
commandqueue[23555] = {{"move", "SE"}}
commandqueue[23575] = {{"move", "STOP"}}
--Presently at: (-9.89059375,45.05079375)
--commandqueue[23577] = {{"speed", 0.01}}
-- ----------------------------------------- --
-- Various controls and end of run messages. --
-- ----------------------------------------- --
commandqueue[23586] = {{"print", "End of programmed route at tick 23576."}}
commandqueue[23587] = {{"print", "Carried out 1314 actions in 0h:6m:32sec."}}
commandqueue[23588] = {{"print", "This corresponds to an average APM of 200.6447."}}

return commandqueue
