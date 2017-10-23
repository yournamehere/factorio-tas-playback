-- The map exchange string is: >>>AAAPACIAAAABAwcAAAAEAAAAY29hbAUEBQoAAABjb3BwZXItb3JlAQUFCQAAAGNydWRlLW9pbAUFBQoAAABlbmVteS1iYXNlAwAFCAAAAGlyb24tb3JlAQUFBQAAAHN0b25lAwMFCwAAAHVyYW5pdW0tb3JlBQAF6AuuBoCEHgCAhB4ABQEBAAF7FK5H4XqUPwEAAAAAAAAuQAEAAAAAAADwPwEAAAAAAFi7QAEAAAAAAOCFQAEAAAAAAFirQAEAAAAAAIjDQAEAAAAAAECfQAEAAAAAAEB/QAEAAAAAAECPQAEzMzMzMzPzPwEzMzMzMzPzPwF7FK5H4Xp0PwEAAQAAAAAAAAhAAQAAAAAAAAhAAXsUrkfheoQ/AQABAAGN7bWg98bQPgH8qfHSTWJgPwFpHVVNEHXvPgEAAQcAAAABAgAAAAECAAAAAZqZmZmZmbk/AQAAAAAAAABAAQAAAAAAAOA/AZqZmZmZmdk/Ac3MzMzMzOw/AQUAAAABFAAAAAFAOAAAAcBLAwABEA4AAAGgjAAAASAcAAABAAAAAAAAPkABAAAAAAAAFEABZmZmZmZm9j8BMzMzMzMz4z8BMzMzMzMz0z8BAAAAAAAACEABAAAAAAAAJEABPAAAAAEeAAAAAcgAAAABBQAAAAEAAAAAAAAAQAEBAQAAAAAAAFlAAQUAAAABGQAAAAEAAAAAAAAkQAEyAAAAAQAAAAAAAD5AAWQAAAABmpmZmZmZyT8BMzMzMzMzwz8BMzMzMzMz0z8BMzMzMzMz0z8BAAAAAAAAJEABAAAAAAAANEABAAAAAAAAPkABAAAAAAAAFEABAAAAAAAAPkABAAAAAAAAJEABAAAAAAAACEABCgAAAAFkAAAAAWQAAAAB6AMAAAEAAAAAAADgPwHQBwAAAQAAAAAAQH9AAwAAAAAAAAAAAAAA8D+UdPbJ<<<
local commandqueue = {}

commandqueue["settings"] = {
    debugmode = true,
    allowspeed = false,
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
commandqueue[430] = {{"mine", {-6.6, 58.3}}}
commandqueue[681] = {{"mine", nil}}
commandqueue[683] = {{"craft", "stone-furnace", 9}}
commandqueue[682] = {{"move", "N"}}
commandqueue[797] = {{"move", "STOP"}}
--Presently at: (-6.01171875,40.00390625)
commandqueue[771] = {{"put", {-5, 38}, "coal", 5, defines.inventory.fuel}}
commandqueue[783] = {{"put", {-3, 38}, "coal", 3, defines.inventory.fuel}}
commandqueue[784] = {{"build", "stone-furnace", {-9, 38}, defines.direction.north}}
commandqueue[785] = {{"put", {-9, 38}, "coal", 3, defines.inventory.fuel}}
commandqueue[793] = {{"build", "stone-furnace", {-3, 36}, defines.direction.north}}
commandqueue[794] = {{"put", {-3, 36}, "coal", 3, defines.inventory.fuel}}
commandqueue[795] = {{"build", "stone-furnace", {-9, 36}, defines.direction.north}}
commandqueue[796] = {{"put", {-9, 36}, "coal", 3, defines.inventory.fuel}}
commandqueue[798] = {{"mine", {-6.5, 38.5}}}
commandqueue[923] = {{"mine", nil}}
commandqueue[924] = {{"put", {-9, 38}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[925] = {{"mine", {-6.5, 38.5}}}
commandqueue[1050] = {{"mine", nil}}
commandqueue[1051] = {{"put", {-9, 36}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[1052] = {{"mine", {-6.5, 38.5}}}
commandqueue[1177] = {{"mine", nil}}
commandqueue[1178] = {{"put", {-9, 38}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[1179] = {{"mine", {-6.5, 38.5}}}
commandqueue[1304] = {{"mine", nil}}
commandqueue[1305] = {{"put", {-9, 36}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[1306] = {{"mine", {-6.5, 38.5}}}
commandqueue[1431] = {{"mine", nil}}
commandqueue[1432] = {{"put", {-9, 38}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[1433] = {{"take", {-9, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[1434] = {{"craft", "iron-gear-wheel", 1}}
commandqueue[1435] = {{"mine", {-6.5, 38.5}}}
commandqueue[1560] = {{"mine", nil}}
commandqueue[1562] = {{"put", {-9, 36}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[1563] = {{"take", {-9, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[1564] = {{"take", {-3, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[1565] = {{"craft", "burner-mining-drill", 1}}
commandqueue[1561] = {{"move", "N"}}
commandqueue[1566] = {{"move", "STOP"}}
--Presently at: (-6.01171875,39.26171875)
commandqueue[1567] = {{"mine", {-6.5, 38.5}}}
commandqueue[1692] = {{"mine", nil}}
commandqueue[1694] = {{"build", "burner-mining-drill", {-5, 36}, defines.direction.east}}
commandqueue[1695] = {{"put", {-5, 36}, "coal", 5, defines.inventory.fuel}}
commandqueue[1696] = {{"put", {-9, 38}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[1693] = {{"move", "N"}}
commandqueue[1697] = {{"move", "STOP"}}
--Presently at: (-6.01171875,38.66796875)
commandqueue[1698] = {{"mine", {-6.5, 38.5}}}
commandqueue[1823] = {{"mine", nil}}
commandqueue[1825] = {{"take", {-9, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[1826] = {{"take", {-9, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[1827] = {{"take", {-3, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[1828] = {{"craft", "iron-gear-wheel", 2}}
commandqueue[1829] = {{"put", {-9, 36}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[1824] = {{"move", "N"}}
commandqueue[1830] = {{"move", "STOP"}}
--Presently at: (-6.01171875,37.77734375)
commandqueue[1831] = {{"mine", {-6.5, 38.5}}}
commandqueue[1956] = {{"mine", nil}}
commandqueue[1958] = {{"take", {-9, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[1959] = {{"take", {-3, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[1960] = {{"craft", "iron-gear-wheel", 1}}
commandqueue[1961] = {{"put", {-9, 38}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[1957] = {{"move", "N"}}
commandqueue[1962] = {{"move", "STOP"}}
--Presently at: (-6.01171875,37.03515625)
commandqueue[1963] = {{"mine", {-6.5, 38.5}}}
commandqueue[2088] = {{"mine", nil}}
commandqueue[2089] = {{"put", {-9, 36}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[2090] = {{"mine", {-6.5, 36.5}}}
commandqueue[2215] = {{"mine", nil}}
commandqueue[2217] = {{"take", {-9, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[2218] = {{"take", {-9, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[2219] = {{"take", {-3, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[2220] = {{"craft", "burner-mining-drill", 1}}
commandqueue[2221] = {{"put", {-9, 38}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[2216] = {{"move", "N"}}
commandqueue[2222] = {{"move", "STOP"}}
--Presently at: (-6.01171875,36.14453125)
commandqueue[2223] = {{"mine", {-6.5, 35.5}}}
commandqueue[2348] = {{"mine", nil}}
commandqueue[2350] = {{"build", "burner-mining-drill", {-7, 38}, defines.direction.west}}
commandqueue[2351] = {{"put", {-7, 38}, "coal", 5, defines.inventory.fuel}}
commandqueue[2352] = {{"build", "stone-furnace", {-9, 34}, defines.direction.north}}
commandqueue[2353] = {{"put", {-9, 34}, "coal", 3, defines.inventory.fuel}}
commandqueue[2354] = {{"put", {-9, 36}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[2349] = {{"move", "N"}}
commandqueue[2355] = {{"move", "STOP"}}
--Presently at: (-6.01171875,35.25390625)
commandqueue[2356] = {{"mine", {-6.5, 35.5}}}
commandqueue[2481] = {{"mine", nil}}
commandqueue[2482] = {{"take", {-3, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[2483] = {{"craft", "iron-gear-wheel", 1}}
commandqueue[2484] = {{"put", {-9, 34}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[2485] = {{"mine", {-6.5, 35.5}}}
commandqueue[2610] = {{"mine", nil}}
commandqueue[2612] = {{"take", {-3, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[2613] = {{"take", {-3, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[2614] = {{"take", {-9, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[2615] = {{"take", {-9, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[2616] = {{"put", {-9, 36}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[2617] = {{"craft", "iron-gear-wheel", 2}}
commandqueue[2611] = {{"move", "N"}}
commandqueue[2618] = {{"move", "STOP"}}
--Presently at: (-6.01171875,34.21484375)
commandqueue[2619] = {{"mine", {-6.5, 35.5}}}
commandqueue[2744] = {{"mine", nil}}
commandqueue[2746] = {{"take", {-3, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[2747] = {{"craft", "burner-mining-drill", 1}}
commandqueue[2748] = {{"put", {-9, 34}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[2745] = {{"mine", {-6.5, 34.5}}}
commandqueue[2870] = {{"mine", nil}}
commandqueue[2871] = {{"build", "burner-mining-drill", {-7, 36}, defines.direction.west}}
commandqueue[2872] = {{"put", {-7, 36}, "coal", 4, defines.inventory.fuel}}
commandqueue[2873] = {{"put", {-9, 36}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[2874] = {{"take", {-3, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[2875] = {{"take", {-9, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[2876] = {{"take", {-9, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[2877] = {{"take", {-9, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[2878] = {{"craft", "iron-gear-wheel", 2}}
commandqueue[2879] = {{"mine", {-6.5, 34.5}}}
commandqueue[3004] = {{"mine", nil}}
commandqueue[3005] = {{"build", "stone-furnace", {-3, 34}, defines.direction.north}}
commandqueue[3006] = {{"put", {-3, 34}, "coal", 3, defines.inventory.fuel}}
commandqueue[3007] = {{"put", {-3, 34}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[3008] = {{"mine", {-6.5, 34.5}}}
commandqueue[3133] = {{"mine", nil}}
commandqueue[3134] = {{"take", {-3, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[3135] = {{"take", {-3, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[3136] = {{"take", {-9, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[3137] = {{"take", {-9, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[3138] = {{"craft", "burner-mining-drill", 1}}
commandqueue[3139] = {{"take", {-9, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[3140] = {{"put", {-9, 34}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[3141] = {{"mine", {-6.5, 34.5}}}
commandqueue[3266] = {{"mine", nil}}
commandqueue[3268] = {{"put", {-9, 34}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[3290] = {{"build", "burner-mining-drill", {-5, 34}, defines.direction.east}}
commandqueue[3291] = {{"put", {-5, 34}, "coal", 4, defines.inventory.fuel}}
commandqueue[3267] = {{"move", "S"}}
commandqueue[3461] = {{"move", "SE"}}
commandqueue[3518] = {{"move", "STOP"}}
--Presently at: (0.00000000,69.02343750)
commandqueue[3531] = {{"mine", {1.5, 69}}}
commandqueue[3782] = {{"mine", nil}}
commandqueue[3783] = {{"move", "S"}}
commandqueue[4127] = {{"move", "SW"}}
commandqueue[4146] = {{"move", "STOP"}}
--Presently at: (-2.00390625,122.08984375)
commandqueue[4167] = {{"mine", {-1.9, 123.4}}}
commandqueue[4418] = {{"mine", nil}}
commandqueue[4419] = {{"move", "S"}}
commandqueue[4568] = {{"move", "SW"}}
commandqueue[4597] = {{"move", "STOP"}}
--Presently at: (-5.06250000,147.26562500)
commandqueue[4605] = {{"mine", {-5, 149.05}}}
commandqueue[4856] = {{"mine", nil}}
commandqueue[4858] = {{"craft", "stone-furnace", 29}}
commandqueue[4857] = {{"move", "W"}}
commandqueue[5010] = {{"move", "NW"}}
commandqueue[5241] = {{"move", "STOP"}}
--Presently at: (-52.13671875,122.90234375)
commandqueue[5242] = {{"move", "W"}}
commandqueue[5261] = {{"move", "STOP"}}
--Presently at: (-54.95703125,122.90234375)
commandqueue[5262] = {{"mine", {-56.7, 122.4}}}
commandqueue[5513] = {{"mine", nil}}
commandqueue[5515] = {{"craft", "stone-furnace", 9}}
commandqueue[5514] = {{"move", "N"}}
commandqueue[5743] = {{"move", "NE"}}
commandqueue[6208] = {{"move", "STOP"}}
--Presently at: (-5.91406250,39.86718750)
commandqueue[6180] = {{"take", {-9, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[6181] = {{"craft", "burner-mining-drill", 1}}
commandqueue[6209] = {{"move", "N"}}
commandqueue[6248] = {{"move", "STOP"}}
--Presently at: (-5.91406250,34.07812500)
commandqueue[6237] = {{"put", {-7, 36}, "coal", 1, defines.inventory.fuel}}
commandqueue[6238] = {{"put", {-5, 34}, "coal", 1, defines.inventory.fuel}}
commandqueue[6239] = {{"put", {-5, 36}, "coal", 3, defines.inventory.fuel}}
commandqueue[6240] = {{"put", {-5, 38}, "coal", 3, defines.inventory.fuel}}
commandqueue[6241] = {{"put", {-7, 38}, "coal", 3, defines.inventory.fuel}}
commandqueue[6242] = {{"put", {-7, 36}, "coal", 3, defines.inventory.fuel}}
commandqueue[6243] = {{"take", {-9, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[6244] = {{"take", {-3, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[6245] = {{"take", {-3, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[6246] = {{"take", {-3, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[6247] = {{"take", {-9, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[6249] = {{"mine", {-6.5, 34.5}}}
commandqueue[6374] = {{"mine", nil}}
commandqueue[6376] = {{"put", {-9, 34}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[6377] = {{"craft", "burner-mining-drill", 1}}
commandqueue[6378] = {{"craft", "burner-mining-drill", 1}}
commandqueue[6379] = {{"craft", "burner-mining-drill", 1}}
commandqueue[6380] = {{"craft", "burner-mining-drill", 1}}
commandqueue[6381] = {{"put", {-5, 34}, "coal", 2, defines.inventory.fuel}}
commandqueue[6382] = {{"put", {-3, 34}, "coal", 2, defines.inventory.fuel}}
commandqueue[6383] = {{"put", {-3, 36}, "coal", 2, defines.inventory.fuel}}
commandqueue[6384] = {{"put", {-3, 38}, "coal", 2, defines.inventory.fuel}}
commandqueue[6385] = {{"put", {-9, 38}, "coal", 2, defines.inventory.fuel}}
commandqueue[6386] = {{"put", {-9, 36}, "coal", 2, defines.inventory.fuel}}
commandqueue[6387] = {{"put", {-9, 34}, "coal", 2, defines.inventory.fuel}}
commandqueue[6388] = {{"build", "stone-furnace", {-9, 32}, defines.direction.north}}
commandqueue[6389] = {{"build", "stone-furnace", {-3, 32}, defines.direction.north}}
commandqueue[6390] = {{"put", {-9, 32}, "coal", 3, defines.inventory.fuel}}
commandqueue[6391] = {{"put", {-3, 32}, "coal", 3, defines.inventory.fuel}}
commandqueue[6392] = {{"build", "stone-furnace", {-9, 30}, defines.direction.north}}
commandqueue[6393] = {{"build", "stone-furnace", {-3, 30}, defines.direction.north}}
commandqueue[6395] = {{"build", "burner-mining-drill", {-7, 34}, defines.direction.west}}
commandqueue[6396] = {{"put", {-7, 34}, "coal", 5, defines.inventory.fuel}}
commandqueue[6397] = {{"mine", {-6.5, 32.5}}}
commandqueue[6522] = {{"mine", nil}}
commandqueue[6523] = {{"put", {-9, 32}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[6524] = {{"mine", {-6.5, 32.5}}}
commandqueue[6649] = {{"mine", nil}}
commandqueue[6650] = {{"build", "burner-mining-drill", {-5, 32}, defines.direction.east}}
commandqueue[6651] = {{"put", {-5, 32}, "coal", 5, defines.inventory.fuel}}
commandqueue[6652] = {{"put", {-3, 32}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[6653] = {{"mine", {-6.5, 32.5}}}
commandqueue[6778] = {{"mine", nil}}
commandqueue[6780] = {{"put", {-9, 32}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[6781] = {{"take", {-3, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[6782] = {{"take", {-9, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[6783] = {{"take", {-3, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[6784] = {{"take", {-9, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[6785] = {{"take", {-3, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[6786] = {{"take", {-9, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[6788] = {{"take", {-9, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[6789] = {{"craft", "burner-mining-drill", 1}}
commandqueue[6790] = {{"craft", "burner-mining-drill", 1}}
commandqueue[6823] = {{"build", "burner-mining-drill", {-7, 32}, defines.direction.west}}
commandqueue[6824] = {{"put", {-7, 32}, "coal", 5, defines.inventory.fuel}}
commandqueue[6779] = {{"move", "N"}}
commandqueue[6850] = {{"move", "NW"}}
commandqueue[6874] = {{"move", "STOP"}}
--Presently at: (-8.44531250,21.00781250)
commandqueue[6875] = {{"mine", {-8.8, 19.2}}}
commandqueue[6925] = {{"mine", nil}}
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-8.625,20.8594)
commandqueue[6926] = {{"move", "E"}}
commandqueue[6948] = {{"move", "NE"}}
commandqueue[6957] = {{"move", "STOP"}}
--Presently at: (-4.41015625,19.91015625)
commandqueue[6958] = {{"mine", {-2.6, 19.5}}}
commandqueue[7008] = {{"mine", nil}}
commandqueue[7009] = {{"move", "E"}}
commandqueue[7012] = {{"move", "NE"}}
commandqueue[7054] = {{"move", "STOP"}}
--Presently at: (0.46484375,15.48046875)
commandqueue[7055] = {{"mine", {1.7, 14.2}}}
commandqueue[7105] = {{"mine", nil}}
commandqueue[7106] = {{"move", "W"}}
commandqueue[7112] = {{"move", "NW"}}
commandqueue[7140] = {{"move", "STOP"}}
--Presently at: (-3.37890625,12.52734375)
commandqueue[7141] = {{"mine", {-4.8, 11.4}}}
commandqueue[7191] = {{"mine", nil}}
commandqueue[7192] = {{"move", "N"}}
commandqueue[7224] = {{"move", "NE"}}
commandqueue[7228] = {{"move", "STOP"}}
--Presently at: (-2.95703125,7.35546875)
commandqueue[7229] = {{"mine", {-2.8, 5.6}}}
commandqueue[7279] = {{"mine", nil}}
commandqueue[7280] = {{"move", "N"}}
commandqueue[7289] = {{"move", "NW"}}
commandqueue[7318] = {{"move", "STOP"}}
--Presently at: (-6.01562500,2.96093750)
commandqueue[7314] = {{"build", "stone-furnace", {-7, 0}, defines.direction.north}}
commandqueue[7315] = {{"put", {-7, 0}, "coal", 3, defines.inventory.fuel}}
commandqueue[7316] = {{"build", "stone-furnace", {-9, 0}, defines.direction.north}}
commandqueue[7317] = {{"put", {-9, 0}, "coal", 3, defines.inventory.fuel}}
commandqueue[7320] = {{"build", "burner-mining-drill", {-9, -2}, defines.direction.south}}
commandqueue[7321] = {{"put", {-8.5, -1.5}, "coal", 5, defines.inventory.fuel}}
commandqueue[7322] = {{"build", "burner-mining-drill", {-7, -2}, defines.direction.south}}
commandqueue[7323] = {{"put", {-7, -2}, "coal", 5, defines.inventory.fuel}}
commandqueue[7319] = {{"move", "S"}}
commandqueue[7488] = {{"move", "STOP"}}
--Presently at: (-6.01562500,28.04687500)
commandqueue[7467] = {{"build", "burner-mining-drill", {-5, 30}, defines.direction.east}}
commandqueue[7468] = {{"put", {-5, 30}, "coal", 5, defines.inventory.fuel}}
commandqueue[7469] = {{"put", {-3, 30}, "coal", 3, defines.inventory.fuel}}
commandqueue[7470] = {{"put", {-9, 30}, "coal", 3, defines.inventory.fuel}}
commandqueue[7471] = {{"craft", "burner-mining-drill", 1}}
commandqueue[7472] = {{"craft", "burner-mining-drill", 1}}
commandqueue[7489] = {{"mine", {-6.5, 28.5}}}
commandqueue[7614] = {{"mine", nil}}
commandqueue[7615] = {{"put", {-9, 30}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[7616] = {{"mine", {-6.5, 28.5}}}
commandqueue[7741] = {{"mine", nil}}
commandqueue[7743] = {{"build", "burner-mining-drill", {-7, 30}, defines.direction.west}}
commandqueue[7744] = {{"put", {-7, 30}, "coal", 5, defines.inventory.fuel}}
commandqueue[7745] = {{"put", {-9, 30}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[7742] = {{"move", "S"}}
commandqueue[7782] = {{"move", "STOP"}}
--Presently at: (-6.01562500,33.98437500)
commandqueue[7784] = {{"take", {-3, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[7785] = {{"take", {-9, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[7786] = {{"take", {-3, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[7787] = {{"take", {-9, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[7788] = {{"take", {-3, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[7789] = {{"take", {-9, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[7790] = {{"take", {-3, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[7791] = {{"take", {-9, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[8013] = {{"build", "burner-mining-drill", {-5, -2}, defines.direction.south}}
commandqueue[8014] = {{"put", {-5, -2}, "coal", 5, defines.inventory.fuel}}
commandqueue[8020] = {{"build", "stone-furnace", {-5, 0}, defines.direction.north}}
commandqueue[8021] = {{"put", {-5, 0}, "coal", 3, defines.inventory.fuel}}
commandqueue[7783] = {{"move", "N"}}
commandqueue[7996] = {{"move", "NE"}}
commandqueue[8033] = {{"move", "STOP"}}
--Presently at: (-2.11328125,-1.53515625)
commandqueue[8034] = {{"mine", {-2, -3.3}}}
commandqueue[8084] = {{"mine", nil}}
commandqueue[8087] = {{"craft", "iron-gear-wheel", 16}}
commandqueue[8085] = {{"move", "N"}}
commandqueue[8086] = {{"move", "NW"}}
commandqueue[8090] = {{"move", "STOP"}}
--Presently at: (-2.53515625,-2.10546875)
commandqueue[8091] = {{"mine", {-3.6, -3.6}}}
commandqueue[8141] = {{"mine", nil}}
commandqueue[8142] = {{"move", "N"}}
commandqueue[8145] = {{"move", "NW"}}
commandqueue[8159] = {{"move", "STOP"}}
--Presently at: (-4.01171875,-4.02734375)
commandqueue[8160] = {{"move", "W"}}
commandqueue[8201] = {{"move", "STOP"}}
--Presently at: (-10.09765625,-4.02734375)
commandqueue[8182] = {{"build", "burner-mining-drill", {-11, -2}, defines.direction.south}}
commandqueue[8183] = {{"put", {-11, -2}, "coal", 5, defines.inventory.fuel}}
commandqueue[8203] = {{"build", "stone-furnace", {-11, 0}, defines.direction.north}}
commandqueue[8204] = {{"put", {-11, 0}, "coal", 3, defines.inventory.fuel}}
commandqueue[8205] = {{"take", {-7, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[8206] = {{"take", {-9, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[8208] = {{"craft", "copper-cable", 3}}
commandqueue[8209] = {{"craft", "wood", 14}}
commandqueue[8210] = {{"craft", "iron-axe", 1}}
commandqueue[8211] = {{"craft", "science-pack-1", 3}}
commandqueue[8202] = {{"move", "N"}}
commandqueue[8654] = {{"move", "NW"}}
commandqueue[8966] = {{"move", "STOP"}}
--Presently at: (-43.00390625,-104.02734375)
commandqueue[8996] = {{"mine", {-44, -105.5}}}
commandqueue[9247] = {{"mine", nil}}
commandqueue[9249] = {{"craft", "stone-furnace", 9}}
commandqueue[9248] = {{"move", "W"}}
commandqueue[9323] = {{"move", "NW"}}
commandqueue[9598] = {{"move", "STOP"}}
--Presently at: (-83.14062500,-133.03125000)
commandqueue[9607] = {{"mine", {-84, -134.4}}}
commandqueue[9858] = {{"mine", nil}}
commandqueue[9860] = {{"craft", "stone-furnace", 9}}
commandqueue[9861] = {{"craft", "offshore-pump", 1}}
commandqueue[9859] = {{"move", "W"}}
commandqueue[9879] = {{"move", "SW"}}
commandqueue[9918] = {{"move", "STOP"}}
--Presently at: (-90.22265625,-128.91796875)
commandqueue[9923] = {{"mine", {-90.5, -128.5}}}
commandqueue[10174] = {{"mine", nil}}
commandqueue[10176] = {{"craft", "stone-furnace", 9}}
commandqueue[10175] = {{"move", "W"}}
commandqueue[10201] = {{"move", "SW"}}
commandqueue[10343] = {{"move", "STOP"}}
--Presently at: (-109.05859375,-113.94140625)
commandqueue[10350] = {{"mine", {-109.5, -113.5}}}
commandqueue[10601] = {{"mine", nil}}
commandqueue[10603] = {{"craft", "stone-furnace", 11}}
commandqueue[10605] = {{"craft", "pipe", 2}}
commandqueue[10606] = {{"craft", "wooden-chest", 4}}
commandqueue[10602] = {{"move", "S"}}
commandqueue[10669] = {{"move", "SE"}}
commandqueue[11315] = {{"move", "STOP"}}
--Presently at: (-40.92578125,-35.86328125)
commandqueue[11316] = {{"move", "S"}}
commandqueue[11404] = {{"move", "SE"}}
commandqueue[11641] = {{"move", "STOP"}}
--Presently at: (-15.92968750,2.19531250)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-15.8242,2.1953)
commandqueue[11643] = {{"take", {-11, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[11644] = {{"craft", "small-electric-pole", 3}}
commandqueue[11645] = {{"craft", "copper-cable", 1}}
commandqueue[11642] = {{"move", "E"}}
commandqueue[11690] = {{"move", "SE"}}
commandqueue[11698] = {{"move", "STOP"}}
--Presently at: (-7.85546875,3.03906250)
commandqueue[11701] = {{"take", {-9, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[11702] = {{"take", {-7, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[11703] = {{"take", {-5, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[11699] = {{"move", "S"}}
commandqueue[11862] = {{"move", "SE"}}
commandqueue[11880] = {{"move", "STOP"}}
--Presently at: (-5.95703125,29.13281250)
commandqueue[11881] = {{"move", "S"}}
commandqueue[11914] = {{"move", "STOP"}}
--Presently at: (-5.95703125,34.03125000)
commandqueue[11838] = {{"take", {-9, 29.4}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[11839] = {{"craft", "boiler", 1}}
commandqueue[11840] = {{"craft", "steam-engine", 1}}
commandqueue[11841] = {{"craft", "pipe", 1}}
commandqueue[11916] = {{"take", {-9, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[11917] = {{"take", {-3, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[11918] = {{"take", {-3, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[11919] = {{"take", {-9, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[11920] = {{"take", {-9, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[11921] = {{"take", {-3, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[11922] = {{"take", {-3, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[11923] = {{"take", {-9, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[11924] = {{"take", {-3, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[11926] = {{"craft", "lab", 1}}
commandqueue[11927] = {{"craft", "small-electric-pole", 1}}
commandqueue[11928] = {{"craft", "electric-mining-drill", 1}}
commandqueue[11929] = {{"craft", "electric-mining-drill", 1}}
commandqueue[11930] = {{"craft", "science-pack-1", 1}}
commandqueue[11931] = {{"craft", "small-electric-pole", 1}}
commandqueue[11932] = {{"craft", "electric-mining-drill", 1}}
commandqueue[11915] = {{"move", "S"}}
commandqueue[11949] = {{"move", "STOP"}}
--Presently at: (-5.95703125,39.07812500)
commandqueue[11950] = {{"move", "E"}}
commandqueue[12187] = {{"move", "SE"}}
commandqueue[12244] = {{"move", "STOP"}}
--Presently at: (35.23437500,45.08984375)
commandqueue[11945] = {{"build", "small-electric-pole", {-3.5, 40.5}, defines.direction.north}}
commandqueue[11995] = {{"build", "small-electric-pole", {3.5, 40.5}, defines.direction.north}}
commandqueue[12045] = {{"build", "small-electric-pole", {10.5, 41.5}, defines.direction.north}}
commandqueue[12095] = {{"build", "small-electric-pole", {17.5, 42.5}, defines.direction.north}}
commandqueue[12145] = {{"build", "small-electric-pole", {24.5, 43.5}, defines.direction.north}}
commandqueue[12246] = {{"build", "offshore-pump", {38.5, 47.5}, defines.direction.south}}
commandqueue[12247] = {{"build", "boiler", {37.5, 45.5}, defines.direction.west}}
commandqueue[12248] = {{"put", {37.5, 45.5}, "coal", 50, defines.inventory.fuel}}
commandqueue[12252] = {{"build", "small-electric-pole", {30.5, 47.5}, defines.direction.north}}
commandqueue[12255] = {{"build", "steam-engine", {34.5, 45.5}, defines.direction.east}}
commandqueue[12245] = {{"move", "N"}}
commandqueue[12396] = {{"move", "NE"}}
commandqueue[12423] = {{"move", "STOP"}}
--Presently at: (38.08203125,19.82812500)
commandqueue[12424] = {{"mine", {38.6, 18.7}}}
commandqueue[12524] = {{"mine", nil}}
commandqueue[12525] = {{"mine", {37.9, 18}}}
commandqueue[12625] = {{"mine", nil}}
commandqueue[12626] = {{"move", "N"}}
commandqueue[12628] = {{"move", "NW"}}
commandqueue[12630] = {{"move", "STOP"}}
--Presently at: (37.87109375,19.32031250)
commandqueue[12631] = {{"mine", {37.1, 17.8}}}
commandqueue[12731] = {{"mine", nil}}
commandqueue[12732] = {{"move", "N"}}
commandqueue[12747] = {{"move", "NW"}}
commandqueue[12758] = {{"move", "STOP"}}
--Presently at: (36.71093750,15.93359375)
commandqueue[12759] = {{"mine", {36.2, 14.3}}}
commandqueue[12859] = {{"mine", nil}}
commandqueue[12860] = {{"move", "N"}}
commandqueue[12867] = {{"move", "NW"}}
commandqueue[12874] = {{"move", "STOP"}}
--Presently at: (35.97265625,14.15625000)
commandqueue[12875] = {{"mine", {35.3, 12.5}}}
commandqueue[12925] = {{"mine", nil}}
commandqueue[12926] = {{"move", "W"}}
commandqueue[12934] = {{"move", "NW"}}
commandqueue[12938] = {{"move", "STOP"}}
--Presently at: (34.36328125,13.73437500)
commandqueue[12939] = {{"mine", {32.6, 13.3}}}
commandqueue[13039] = {{"mine", nil}}
commandqueue[13040] = {{"move", "W"}}
commandqueue[13069] = {{"move", "SW"}}
commandqueue[13071] = {{"move", "STOP"}}
--Presently at: (29.84765625,13.94531250)
commandqueue[13072] = {{"mine", {28.1, 13.9}}}
commandqueue[13122] = {{"mine", nil}}
commandqueue[13123] = {{"move", "W"}}
commandqueue[13142] = {{"move", "SW"}}
commandqueue[13181] = {{"move", "STOP"}}
--Presently at: (22.91406250,18.05859375)
commandqueue[13182] = {{"move", "W"}}
commandqueue[13221] = {{"move", "SW"}}
commandqueue[13329] = {{"move", "STOP"}}
--Presently at: (5.73437500,29.44921875)
commandqueue[13330] = {{"mine", {4.4, 30.4}}}
commandqueue[13380] = {{"mine", nil}}
commandqueue[13381] = {{"move", "W"}}
commandqueue[13396] = {{"move", "SW"}}
commandqueue[13449] = {{"move", "STOP"}}
--Presently at: (-2.08203125,35.03906250)
commandqueue[13448] = {{"tech", "automation"}}
commandqueue[13451] = {{"take", {-3, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[13452] = {{"take", {-3, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[13453] = {{"take", {-3, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[13454] = {{"take", {-3, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[13455] = {{"take", {-3, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[13456] = {{"put", {-3, 30}, "coal", 3, defines.inventory.fuel}}
commandqueue[13457] = {{"put", {-3, 32}, "coal", 3, defines.inventory.fuel}}
commandqueue[13458] = {{"put", {-7, 34}, "coal", 5, defines.inventory.fuel}}
commandqueue[13459] = {{"put", {-3, 36}, "coal", 3, defines.inventory.fuel}}
commandqueue[13460] = {{"put", {-3, 38}, "coal", 3, defines.inventory.fuel}}
commandqueue[13461] = {{"put", {-5, 38}, "coal", 6, defines.inventory.fuel}}
commandqueue[13462] = {{"put", {-5, 36}, "coal", 5, defines.inventory.fuel}}
commandqueue[13463] = {{"put", {-3, 34}, "coal", 5, defines.inventory.fuel}}
commandqueue[13464] = {{"put", {-5, 32}, "coal", 5, defines.inventory.fuel}}
commandqueue[13465] = {{"put", {-5, 30}, "coal", 5, defines.inventory.fuel}}
commandqueue[13466] = {{"put", {-5, 34}, "coal", 5, defines.inventory.fuel}}
commandqueue[13468] = {{"build", "lab", {-0.5, 37.5}, defines.direction.north}}
commandqueue[13469] = {{"put", {-0.5, 37.5}, "science-pack-1", 3, defines.inventory.lab_input}}
commandqueue[13470] = {{"put", {-7, 30}, "coal", 5, defines.inventory.fuel}}
commandqueue[13471] = {{"put", {-7, 32}, "coal", 5, defines.inventory.fuel}}
commandqueue[13473] = {{"put", {-7, 36}, "coal", 5, defines.inventory.fuel}}
commandqueue[13474] = {{"put", {-7, 38}, "coal", 5, defines.inventory.fuel}}
commandqueue[13475] = {{"put", {-9, 38}, "coal", 3, defines.inventory.fuel}}
commandqueue[13476] = {{"put", {-9, 36}, "coal", 3, defines.inventory.fuel}}
commandqueue[13477] = {{"put", {-9, 34}, "coal", 3, defines.inventory.fuel}}
commandqueue[13478] = {{"put", {-9, 32}, "coal", 3, defines.inventory.fuel}}
commandqueue[13479] = {{"put", {-9, 30}, "coal", 3, defines.inventory.fuel}}
commandqueue[13481] = {{"take", {-9, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[13482] = {{"take", {-9, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[13483] = {{"take", {-9, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[13484] = {{"take", {-9, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[13485] = {{"take", {-9, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[13450] = {{"move", "W"}}
commandqueue[13542] = {{"move", "STOP"}}
--Presently at: (-15.73828125,35.03906250)
commandqueue[13543] = {{"mine", {-17.6, 35}}}
commandqueue[13944] = {{"mine", nil}}
commandqueue[13946] = {{"build", "small-electric-pole", {-17.5, 40.5}, defines.direction.north}}
commandqueue[13945] = {{"move", "E"}}
commandqueue[13957] = {{"move", "SE"}}
commandqueue[13995] = {{"move", "STOP"}}
--Presently at: (-9.94921875,39.04687500)
commandqueue[13991] = {{"build", "wooden-chest", {-14.5, 39.5}, defines.direction.north}}
commandqueue[13992] = {{"build", "stone-furnace", {-15, 42}, defines.direction.north}}
commandqueue[13993] = {{"build", "stone-furnace", {-13, 42}, defines.direction.north}}
commandqueue[13994] = {{"build", "stone-furnace", {-11, 42}, defines.direction.north}}
commandqueue[13997] = {{"build", "small-electric-pole", {-10.5, 40.4}, defines.direction.north}}
commandqueue[13998] = {{"build", "wooden-chest", {-11.5, 39.5}, defines.direction.north}}
commandqueue[13996] = {{"move", "E"}}
commandqueue[14023] = {{"move", "STOP"}}
--Presently at: (-5.94140625,39.04687500)
commandqueue[14024] = {{"move", "N"}}
commandqueue[14051] = {{"move", "STOP"}}
--Presently at: (-5.94140625,35.03906250)
commandqueue[14052] = {{"move", "W"}}
commandqueue[14059] = {{"move", "STOP"}}
--Presently at: (-6.98046875,35.03906250)
commandqueue[14061] = {{"build", "electric-mining-drill", {-11.5, 37.5}, defines.direction.south}}
commandqueue[14060] = {{"move", "E"}}
commandqueue[14067] = {{"move", "STOP"}}
--Presently at: (-5.94140625,35.03906250)
commandqueue[14068] = {{"move", "N"}}
commandqueue[14277] = {{"move", "NW"}}
commandqueue[14297] = {{"move", "STOP"}}
--Presently at: (-8.05078125,1.90625000)
commandqueue[14288] = {{"put", {-5, 0}, "coal", 3, defines.inventory.fuel}}
commandqueue[14289] = {{"put", {-7, 0}, "coal", 3, defines.inventory.fuel}}
commandqueue[14290] = {{"put", {-9, 0}, "coal", 3, defines.inventory.fuel}}
commandqueue[14291] = {{"put", {-11, 0}, "coal", 3, defines.inventory.fuel}}
commandqueue[14292] = {{"put", {-5, -2}, "coal", 5, defines.inventory.fuel}}
commandqueue[14293] = {{"put", {-7, -2}, "coal", 5, defines.inventory.fuel}}
commandqueue[14294] = {{"put", {-9, -2}, "coal", 5, defines.inventory.fuel}}
commandqueue[14295] = {{"put", {-11, -2}, "coal", 5, defines.inventory.fuel}}
commandqueue[14299] = {{"take", {-5, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[14300] = {{"take", {-7, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[14301] = {{"take", {-9, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[14302] = {{"take", {-11, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[14298] = {{"move", "S"}}
commandqueue[14481] = {{"move", "STOP"}}
--Presently at: (-8.05078125,29.07031250)
commandqueue[14482] = {{"move", "S"}}
commandqueue[14549] = {{"move", "STOP"}}
--Presently at: (-8.05078125,39.01562500)
commandqueue[14550] = {{"move", "W"}}
commandqueue[14564] = {{"move", "SW"}}
commandqueue[14583] = {{"move", "STOP"}}
--Presently at: (-12.13281250,41.01953125)
commandqueue[14581] = {{"take", {-11.5, 39}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[14582] = {{"build", "electric-mining-drill", {-14.5, 37.5}, defines.direction.south}}
commandqueue[14585] = {{"put", {-11, 42}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[14586] = {{"put", {-15, 42}, "coal", 3, defines.inventory.fuel}}
commandqueue[14587] = {{"put", {-13, 42}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[14588] = {{"put", {-13, 42}, "coal", 3, defines.inventory.fuel}}
commandqueue[14589] = {{"put", {-15, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[14590] = {{"put", {-11, 42}, "coal", 3, defines.inventory.fuel}}
commandqueue[14584] = {{"move", "S"}}
commandqueue[14597] = {{"move", "SE"}}
commandqueue[14599] = {{"move", "STOP"}}
--Presently at: (-11.92187500,43.16015625)
commandqueue[14600] = {{"move", "W"}}
commandqueue[14601] = {{"move", "SW"}}
commandqueue[14615] = {{"move", "STOP"}}
--Presently at: (-13.54687500,44.63671875)
commandqueue[14616] = {{"mine", {-14.8, 45.9}}}
commandqueue[14666] = {{"mine", nil}}
commandqueue[14667] = {{"move", "E"}}
commandqueue[14672] = {{"move", "SE"}}
commandqueue[14692] = {{"move", "STOP"}}
--Presently at: (-10.69531250,46.74609375)
commandqueue[14693] = {{"mine", {-9.4, 47.8}}}
commandqueue[14743] = {{"mine", nil}}
commandqueue[14744] = {{"move", "E"}}
commandqueue[14798] = {{"move", "NE"}}
commandqueue[14881] = {{"move", "STOP"}}
--Presently at: (6.07421875,37.99218750)
commandqueue[14880] = {{"put", {0.5, 37.5}, "science-pack-1", 1, defines.inventory.lab_input}}
commandqueue[14882] = {{"mine", {6.5, 36.7}}}
commandqueue[15283] = {{"mine", nil}}
commandqueue[15286] = {{"craft", "science-pack-1", 1}}
commandqueue[15287] = {{"craft", "science-pack-1", 1}}
commandqueue[15288] = {{"craft", "science-pack-1", 1}}
commandqueue[15289] = {{"craft", "science-pack-1", 1}}
commandqueue[15284] = {{"move", "E"}}
commandqueue[15466] = {{"move", "SE"}}
commandqueue[15504] = {{"move", "STOP"}}
--Presently at: (37.09765625,42.00000000)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (37.2461,42.5117)
commandqueue[15503] = {{"build", "small-electric-pole", {37.3, 47.6}, defines.direction.north}}
commandqueue[15505] = {{"move", "E"}}
commandqueue[15534] = {{"move", "NE"}}
commandqueue[15539] = {{"move", "STOP"}}
--Presently at: (42.07812500,41.98437500)
commandqueue[15537] = {{"build", "wooden-chest", {43.5, 44.5}, defines.direction.north}}
commandqueue[15538] = {{"build", "small-electric-pole", {42.5, 43.5}, defines.direction.north}}
commandqueue[15541] = {{"build", "electric-mining-drill", {45.5, 44.5}, defines.direction.west}}
commandqueue[15540] = {{"move", "W"}}
commandqueue[15885] = {{"move", "NW"}}
commandqueue[15895] = {{"move", "STOP"}}
--Presently at: (-10.18750000,40.92968750)
commandqueue[15826] = {{"put", {-0.5, 37.5}, "science-pack-1", 1, defines.inventory.lab_input}}
commandqueue[15897] = {{"take", {-11.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[15903] = {{"put", {-11, 42}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[15904] = {{"take", {-11, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[15917] = {{"put", {-13, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[15918] = {{"take", {-14.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[15919] = {{"take", {-13, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[15931] = {{"put", {-15, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[15932] = {{"build", "stone-furnace", {-17, 42}, defines.direction.north}}
commandqueue[15933] = {{"put", {-17, 42}, "coal", 3, defines.inventory.fuel}}
commandqueue[15935] = {{"take", {-15, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[15945] = {{"put", {-17, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[15946] = {{"build", "stone-furnace", {-19, 42}, defines.direction.north}}
commandqueue[15947] = {{"put", {-19, 42}, "coal", 3, defines.inventory.fuel}}
commandqueue[15959] = {{"put", {-19, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[15960] = {{"build", "stone-furnace", {-21, 42}, defines.direction.north}}
commandqueue[15961] = {{"put", {-21, 42}, "coal", 3, defines.inventory.fuel}}
commandqueue[15973] = {{"put", {-21, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[15974] = {{"build", "stone-furnace", {-23, 42}, defines.direction.north}}
commandqueue[15975] = {{"put", {-23, 42}, "coal", 3, defines.inventory.fuel}}
commandqueue[15987] = {{"put", {-23, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[15988] = {{"build", "stone-furnace", {-25, 42}, defines.direction.north}}
commandqueue[15989] = {{"put", {-25, 42}, "coal", 3, defines.inventory.fuel}}
commandqueue[16001] = {{"put", {-25, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[16002] = {{"build", "stone-furnace", {-27, 42}, defines.direction.north}}
commandqueue[16003] = {{"put", {-27, 42}, "coal", 3, defines.inventory.fuel}}
commandqueue[16015] = {{"put", {-27, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[16016] = {{"build", "stone-furnace", {-29, 42}, defines.direction.north}}
commandqueue[16017] = {{"put", {-29, 42}, "coal", 3, defines.inventory.fuel}}
commandqueue[16029] = {{"put", {-29, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[16030] = {{"build", "stone-furnace", {-31, 42}, defines.direction.north}}
commandqueue[16031] = {{"put", {-31, 42}, "coal", 3, defines.inventory.fuel}}
commandqueue[16042] = {{"put", {-31, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[15896] = {{"move", "W"}}
commandqueue[16043] = {{"move", "STOP"}}
--Presently at: (-32.00781250,40.92968750)
commandqueue[16044] = {{"mine", {-32.4, 41.7}}}
commandqueue[16094] = {{"mine", nil}}
commandqueue[16095] = {{"move", "E"}}
commandqueue[16258] = {{"move", "NE"}}
commandqueue[16277] = {{"move", "STOP"}}
--Presently at: (-5.80859375,38.92578125)
commandqueue[16276] = {{"put", {-0.5, 37.5}, "science-pack-1", 1, defines.inventory.lab_input}}
commandqueue[16278] = {{"move", "N"}}
commandqueue[16506] = {{"move", "NW"}}
commandqueue[16527] = {{"move", "STOP"}}
--Presently at: (-8.02343750,2.86718750)
commandqueue[16530] = {{"take", {-11, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[16531] = {{"take", {-9, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[16532] = {{"take", {-7, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[16533] = {{"take", {-5, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[16534] = {{"craft", "science-pack-1", 1}}
commandqueue[16535] = {{"craft", "science-pack-1", 1}}
commandqueue[16528] = {{"move", "S"}}
commandqueue[16691] = {{"move", "SE"}}
commandqueue[16711] = {{"move", "STOP"}}
--Presently at: (-5.91406250,29.17187500)
commandqueue[16718] = {{"take", {-3, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16719] = {{"take", {-9, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16732] = {{"take", {-3, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16733] = {{"take", {-9, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16746] = {{"take", {-3, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16747] = {{"take", {-9, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16760] = {{"take", {-3, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16761] = {{"take", {-9, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16774] = {{"take", {-3, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16775] = {{"take", {-9, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16712] = {{"move", "S"}}
commandqueue[16778] = {{"move", "STOP"}}
--Presently at: (-5.91406250,38.96875000)
commandqueue[16793] = {{"put", {-1.8, 38.8}, "science-pack-1", 2, defines.inventory.lab_input}}
commandqueue[16783] = {{"move", "W"}}
commandqueue[16797] = {{"move", "SW"}}
commandqueue[16817] = {{"move", "STOP"}}
--Presently at: (-10.10156250,41.07812500)
commandqueue[16819] = {{"take", {-11.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[16825] = {{"put", {-11, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[16826] = {{"take", {-11, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16838] = {{"take", {-14.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[16839] = {{"put", {-13, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[16840] = {{"take", {-13, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16853] = {{"put", {-15, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[16854] = {{"take", {-15, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16867] = {{"put", {-17, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[16868] = {{"take", {-17, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16881] = {{"put", {-19, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[16882] = {{"take", {-19, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16895] = {{"put", {-21, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[16896] = {{"take", {-21, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16909] = {{"put", {-23, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[16910] = {{"take", {-23, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16923] = {{"put", {-25, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[16924] = {{"take", {-25, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16938] = {{"take", {-27, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16952] = {{"take", {-29, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16955] = {{"take", {-31, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[16818] = {{"move", "W"}}
commandqueue[16939] = {{"move", "STOP"}}
--Presently at: (-28.06250000,41.07812500)
commandqueue[16941] = {{"craft", "iron-gear-wheel", 5}}
commandqueue[16942] = {{"craft", "electronic-circuit", 3}}
commandqueue[16940] = {{"move", "S"}}
commandqueue[16953] = {{"move", "STOP"}}
--Presently at: (-28.06250000,43.00781250)
commandqueue[16954] = {{"move", "S"}}
commandqueue[16958] = {{"move", "SW"}}
commandqueue[16978] = {{"move", "STOP"}}
--Presently at: (-30.17187500,45.71093750)
commandqueue[16979] = {{"mine", {-31.3, 47}}}
commandqueue[17079] = {{"mine", nil}}
commandqueue[17080] = {{"move", "W"}}
commandqueue[17096] = {{"move", "SW"}}
commandqueue[17098] = {{"move", "STOP"}}
--Presently at: (-32.75781250,45.92187500)
commandqueue[17099] = {{"mine", {-34.6, 46}}}
commandqueue[17199] = {{"mine", nil}}
commandqueue[17200] = {{"move", "S"}}
commandqueue[17207] = {{"move", "SW"}}
commandqueue[17220] = {{"move", "STOP"}}
--Presently at: (-34.12890625,48.33203125)
commandqueue[17221] = {{"mine", {-35.1, 49.8}}}
commandqueue[17321] = {{"mine", nil}}
commandqueue[17323] = {{"craft", "science-pack-1", 1}}
commandqueue[17322] = {{"move", "W"}}
commandqueue[17327] = {{"move", "SW"}}
commandqueue[17336] = {{"move", "STOP"}}
--Presently at: (-35.82031250,49.28125000)
commandqueue[17337] = {{"mine", {-37.4, 50.1}}}
commandqueue[17437] = {{"mine", nil}}
commandqueue[17438] = {{"move", "S"}}
commandqueue[17442] = {{"move", "SW"}}
commandqueue[17447] = {{"move", "STOP"}}
--Presently at: (-36.34765625,50.40234375)
commandqueue[17448] = {{"mine", {-37.1, 52}}}
commandqueue[17548] = {{"mine", nil}}
commandqueue[17549] = {{"move", "S"}}
commandqueue[17553] = {{"move", "STOP"}}
--Presently at: (-36.34765625,50.99609375)
commandqueue[17554] = {{"mine", {-36.5, 52.8}}}
commandqueue[17654] = {{"mine", nil}}
commandqueue[17655] = {{"move", "S"}}
commandqueue[17667] = {{"move", "SE"}}
commandqueue[17680] = {{"move", "STOP"}}
--Presently at: (-34.97656250,54.14843750)
commandqueue[17681] = {{"mine", {-34.3, 55.7}}}
commandqueue[17781] = {{"mine", nil}}
commandqueue[17784] = {{"craft", "iron-gear-wheel", 5}}
commandqueue[17785] = {{"craft", "electronic-circuit", 3}}
commandqueue[17782] = {{"move", "E"}}
commandqueue[17786] = {{"move", "NE"}}
commandqueue[17789] = {{"move", "STOP"}}
--Presently at: (-34.06640625,53.83203125)
commandqueue[17790] = {{"mine", {-32.4, 53.4}}}
commandqueue[17890] = {{"mine", nil}}
commandqueue[17891] = {{"move", "E"}}
commandqueue[17945] = {{"move", "SE"}}
commandqueue[17947] = {{"move", "STOP"}}
--Presently at: (-25.83984375,54.04296875)
commandqueue[17948] = {{"mine", {-25.6, 54.6}}}
commandqueue[18048] = {{"mine", nil}}
commandqueue[18049] = {{"move", "E"}}
commandqueue[18056] = {{"move", "NE"}}
commandqueue[18076] = {{"move", "STOP"}}
--Presently at: (-22.69140625,51.93359375)
commandqueue[18077] = {{"mine", {-21.3, 50.9}}}
commandqueue[18127] = {{"mine", nil}}
commandqueue[18128] = {{"move", "E"}}
commandqueue[18174] = {{"move", "NE"}}
commandqueue[18278] = {{"move", "STOP"}}
--Presently at: (-4.89453125,40.96484375)
commandqueue[18264] = {{"put", {-1.7, 38.7}, "science-pack-1", 3, defines.inventory.lab_input}}
commandqueue[18280] = {{"craft", "iron-gear-wheel", 5}}
commandqueue[18281] = {{"craft", "electronic-circuit", 3}}
commandqueue[18279] = {{"move", "W"}}
commandqueue[18314] = {{"move", "STOP"}}
--Presently at: (-10.08984375,40.96484375)
commandqueue[18316] = {{"take", {-11.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[18322] = {{"put", {-11, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[18323] = {{"take", {-11, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[18335] = {{"take", {-14.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[18336] = {{"put", {-13, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[18337] = {{"take", {-13, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[18350] = {{"put", {-15, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[18351] = {{"take", {-15, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[18364] = {{"put", {-17, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[18365] = {{"take", {-17, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[18378] = {{"put", {-19, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[18379] = {{"take", {-19, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[18392] = {{"put", {-21, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[18393] = {{"take", {-21, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[18406] = {{"put", {-23, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[18407] = {{"take", {-23, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[18420] = {{"put", {-25, 42}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[18421] = {{"take", {-25, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[18434] = {{"put", {-27, 42}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[18450] = {{"put", {-29, 42}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[18451] = {{"put", {-31, 42}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[18315] = {{"move", "W"}}
commandqueue[18443] = {{"move", "STOP"}}
--Presently at: (-29.08984375,40.96484375)
commandqueue[18444] = {{"move", "N"}}
commandqueue[18449] = {{"move", "NW"}}
commandqueue[18466] = {{"move", "STOP"}}
--Presently at: (-30.88281250,38.42968750)
commandqueue[18467] = {{"mine", {-31.9, 37.1}}}
commandqueue[18517] = {{"mine", nil}}
commandqueue[18519] = {{"craft", "science-pack-1", 1}}
commandqueue[18518] = {{"move", "W"}}
commandqueue[18576] = {{"move", "SW"}}
commandqueue[18582] = {{"move", "STOP"}}
--Presently at: (-40.12500000,39.06250000)
commandqueue[18583] = {{"mine", {-41, 38.3}}}
commandqueue[18633] = {{"mine", nil}}
commandqueue[18635] = {{"craft", "iron-gear-wheel", 8}}
commandqueue[18636] = {{"craft", "burner-inserter", 1}}
commandqueue[18634] = {{"move", "W"}}
commandqueue[18667] = {{"move", "STOP"}}
--Presently at: (-45.02343750,39.06250000)
commandqueue[18668] = {{"mine", {-46, 38.8}}}
commandqueue[18718] = {{"mine", nil}}
commandqueue[18719] = {{"move", "S"}}
commandqueue[18753] = {{"move", "SW"}}
commandqueue[18772] = {{"move", "STOP"}}
--Presently at: (-47.02734375,46.11328125)
commandqueue[18773] = {{"mine", {-47.7, 46.5}}}
commandqueue[18823] = {{"mine", nil}}
commandqueue[18824] = {{"move", "S"}}
commandqueue[18840] = {{"move", "SE"}}
commandqueue[18845] = {{"move", "STOP"}}
--Presently at: (-46.50000000,49.01562500)
commandqueue[18846] = {{"mine", {-47.1, 50.3}}}
commandqueue[18946] = {{"mine", nil}}
commandqueue[18947] = {{"move", "E"}}
commandqueue[18957] = {{"move", "STOP"}}
--Presently at: (-45.01562500,49.01562500)
commandqueue[18958] = {{"mine", {-43.7, 49}}}
commandqueue[19008] = {{"mine", nil}}
commandqueue[19009] = {{"move", "E"}}
commandqueue[19016] = {{"move", "SE"}}
commandqueue[19041] = {{"move", "STOP"}}
--Presently at: (-41.33984375,51.65234375)
commandqueue[19042] = {{"mine", {-40.5, 52.6}}}
commandqueue[19092] = {{"mine", nil}}
commandqueue[19093] = {{"move", "E"}}
commandqueue[19112] = {{"move", "NE"}}
commandqueue[19185] = {{"move", "STOP"}}
--Presently at: (-30.82031250,43.95312500)
commandqueue[19187] = {{"take", {-31, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[19201] = {{"take", {-29, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[19215] = {{"take", {-27, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[19229] = {{"take", {-25, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[19243] = {{"take", {-23, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[19257] = {{"take", {-21, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[19271] = {{"take", {-19, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[19285] = {{"take", {-17, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[19299] = {{"take", {-15, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[19313] = {{"take", {-13, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[19327] = {{"take", {-11, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[19186] = {{"move", "E"}}
commandqueue[19341] = {{"move", "NE"}}
commandqueue[19369] = {{"move", "STOP"}}
--Presently at: (-4.85937500,41.00000000)
commandqueue[19360] = {{"put", {-1.7, 38.7}, "science-pack-1", 1, defines.inventory.lab_input}}
commandqueue[19370] = {{"move", "W"}}
commandqueue[19405] = {{"move", "STOP"}}
--Presently at: (-10.05468750,41.00000000)
commandqueue[19407] = {{"take", {-11.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[19413] = {{"put", {-11, 42}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[19426] = {{"take", {-14.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[19427] = {{"put", {-13, 42}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[19441] = {{"put", {-15, 42}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[19455] = {{"put", {-17, 42}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[19406] = {{"move", "W"}}
commandqueue[19463] = {{"move", "STOP"}}
--Presently at: (-18.51562500,41.00000000)
commandqueue[19465] = {{"put", {-23, 42}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[19466] = {{"put", {-21, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[19470] = {{"tech", "logistics"}}
commandqueue[19471] = {{"craft", "assembling-machine-1", 3}}
commandqueue[19467] = {{"put", {-19, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[19464] = {{"move", "E"}}
commandqueue[19522] = {{"move", "STOP"}}
--Presently at: (-9.90625000,41.00000000)
commandqueue[19521] = {{"build", "assembling-machine-1", {-5.9, 43.1}, defines.direction.north}}
commandqueue[19524] = {{"recipe", {-5.9,43.1}, "copper-cable"}}
commandqueue[19525] = {{"put", {-5.9, 43.1}, "copper-plate", 20, defines.inventory.assembling_machine_input}}
commandqueue[19551] = {{"build", "assembling-machine-1", {-1.9, 41.1}, defines.direction.north}}
commandqueue[19552] = {{"recipe", {-1.9,41.1}, "science-pack-1"}}
commandqueue[19553] = {{"put", {-1.9, 41.1}, "iron-gear-wheel", 2, defines.inventory.assembling_machine_input}}
commandqueue[19554] = {{"put", {-1.9, 41.1}, "copper-plate", 9, defines.inventory.assembling_machine_input}}
commandqueue[19523] = {{"move", "E"}}
commandqueue[19536] = {{"move", "NE"}}
commandqueue[19555] = {{"move", "STOP"}}
--Presently at: (-5.97265625,38.99609375)
commandqueue[19557] = {{"build", "burner-inserter", {-1.5, 39.5}, defines.direction.south}}
commandqueue[19558] = {{"put", {-1.5, 39.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[19559] = {{"craft", "iron-gear-wheel", 2}}
commandqueue[19556] = {{"move", "N"}}
commandqueue[19590] = {{"move", "STOP"}}
--Presently at: (-5.97265625,33.94921875)
commandqueue[19592] = {{"take", {-3, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[19593] = {{"take", {-9, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[19594] = {{"take", {-3, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[19595] = {{"take", {-9, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[19596] = {{"take", {-3, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[19597] = {{"take", {-9, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[19598] = {{"take", {-3, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[19599] = {{"take", {-9, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[19600] = {{"take", {-3, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[19601] = {{"take", {-9, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[19591] = {{"move", "S"}}
commandqueue[19625] = {{"move", "STOP"}}
--Presently at: (-5.97265625,38.99609375)
commandqueue[19622] = {{"build", "assembling-machine-1", {-8.5, 43.5}, defines.direction.north}}
commandqueue[19623] = {{"recipe", {-8.5,43.5}, "iron-gear-wheel"}}
commandqueue[19624] = {{"put", {-8.5, 43.5}, "iron-plate", 90, defines.inventory.assembling_machine_input}}
commandqueue[19647] = {{"take", {-5.5, 42.5}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[19648] = {{"craft", "electric-mining-drill", 1}}
commandqueue[19649] = {{"craft", "electronic-circuit", 3}}
commandqueue[19650] = {{"craft", "iron-gear-wheel", 3}}
commandqueue[19626] = {{"move", "E"}}
commandqueue[19936] = {{"move", "SE"}}
commandqueue[19955] = {{"move", "STOP"}}
--Presently at: (42.04687500,41.00000000)
commandqueue[19957] = {{"take", {43.5, 44.5}, "coal", "all", defines.inventory.chest}}
commandqueue[19958] = {{"build", "wooden-chest", {43.5, 41.5}, defines.direction.north}}
commandqueue[19963] = {{"build", "electric-mining-drill", {45.5, 41.5}, defines.direction.west}}
commandqueue[19956] = {{"move", "W"}}
commandqueue[20226] = {{"move", "SW"}}
commandqueue[20245] = {{"move", "STOP"}}
--Presently at: (-0.03515625,43.00390625)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (0.031,43.1484)
commandqueue[20249] = {{"take", {-4.5, 43}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[20257] = {{"take", {-7.3, 43}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[20258] = {{"craft", "assembling-machine-1", 1}}
commandqueue[20259] = {{"put", {-1.5, 41.5}, "iron-gear-wheel", 3, defines.inventory.assembling_machine_input}}
commandqueue[20248] = {{"move", "W"}}
commandqueue[20268] = {{"move", "NW"}}
commandqueue[20279] = {{"move", "STOP"}}
--Presently at: (-4.09790625,41.98824375)
commandqueue[20278] = {{"craft", "assembling-machine-1", 1}}
commandqueue[20281] = {{"craft", "electronic-circuit", 3}}
commandqueue[20282] = {{"craft", "small-electric-pole", 1}}
commandqueue[20296] = {{"build", "assembling-machine-1", {-5.5, 40.5}, defines.direction.north}}
commandqueue[20297] = {{"recipe", {-5.5,40.5}, "iron-gear-wheel"}}
commandqueue[20298] = {{"put", {-5.5, 40.5}, "iron-plate", 100, defines.inventory.assembling_machine_input}}
commandqueue[20280] = {{"move", "W"}}
commandqueue[20314] = {{"move", "NW"}}
commandqueue[20324] = {{"move", "STOP"}}
--Presently at: (-10.19946875,40.93355625)
commandqueue[20326] = {{"take", {-11.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[20332] = {{"put", {-11, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[20333] = {{"take", {-11, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[20345] = {{"take", {-14.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[20346] = {{"put", {-13, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[20347] = {{"take", {-13, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[20360] = {{"put", {-15, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[20361] = {{"take", {-15, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[20374] = {{"put", {-17, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[20375] = {{"take", {-17, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[20388] = {{"put", {-19, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[20389] = {{"take", {-19, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[20390] = {{"put", {-21, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[20391] = {{"take", {-21, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[20392] = {{"put", {-23, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[20393] = {{"take", {-23, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[20394] = {{"put", {-25, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[20325] = {{"move", "W"}}
commandqueue[20398] = {{"move", "STOP"}}
--Presently at: (-21.03540625,40.93355625)
commandqueue[20399] = {{"move", "E"}}
commandqueue[20461] = {{"move", "NE"}}
commandqueue[20480] = {{"move", "STOP"}}
--Presently at: (-9.82837500,38.92965000)
commandqueue[20453] = {{"build", "assembling-machine-1", {-8.8, 40.8}, defines.direction.north}}
commandqueue[20454] = {{"recipe", {-8.8,40.8}, "iron-gear-wheel"}}
commandqueue[20455] = {{"put", {-8.8, 40.8}, "iron-plate", 50, defines.inventory.assembling_machine_input}}
commandqueue[20481] = {{"move", "E"}}
commandqueue[20507] = {{"move", "STOP"}}
--Presently at: (-5.96900000,38.92965000)
commandqueue[20509] = {{"take", {-7.5, 42.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[20510] = {{"take", {-6, 42.5}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[20511] = {{"put", {-6, 42.5}, "copper-plate", 50, defines.inventory.assembling_machine_input}}
commandqueue[20529] = {{"take", {-6, 39.6}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[20530] = {{"craft", "assembling-machine-1", 1}}
commandqueue[20531] = {{"craft", "wood", 10}}
commandqueue[20532] = {{"craft", "copper-cable", 3}}
commandqueue[20508] = {{"move", "N"}}
commandqueue[20737] = {{"move", "NW"}}
commandqueue[20757] = {{"move", "STOP"}}
--Presently at: (-8.07837500,2.82808750)
commandqueue[20760] = {{"take", {-11, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[20761] = {{"take", {-9, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[20762] = {{"take", {-7, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[20763] = {{"take", {-5, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[20758] = {{"move", "S"}}
commandqueue[20921] = {{"move", "SE"}}
commandqueue[20941] = {{"move", "STOP"}}
--Presently at: (-5.96900000,29.13277500)
commandqueue[20943] = {{"craft", "wooden-chest", 2}}
commandqueue[20948] = {{"take", {-3, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[20949] = {{"take", {-9, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[20962] = {{"take", {-3, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[20963] = {{"take", {-9, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[20976] = {{"take", {-3, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[20977] = {{"take", {-9, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[20990] = {{"take", {-3, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[20991] = {{"take", {-9, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[21004] = {{"take", {-3, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[21005] = {{"take", {-9, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[20942] = {{"move", "S"}}
commandqueue[21009] = {{"move", "STOP"}}
--Presently at: (-5.96900000,39.07808750)
commandqueue[21011] = {{"take", {-6, 42.5}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[21012] = {{"take", {-5.5, 40.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[21013] = {{"take", {-8.5, 40.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[21014] = {{"take", {-8.5, 43.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[21015] = {{"craft", "steam-engine", 1}}
commandqueue[21016] = {{"craft", "assembling-machine-1", 1}}
commandqueue[21017] = {{"craft", "assembling-machine-1", 1}}
commandqueue[21018] = {{"craft", "electric-mining-drill", 1}}
commandqueue[21038] = {{"build", "assembling-machine-1", {1.5, 41.5}, defines.direction.north}}
commandqueue[21039] = {{"recipe", {1.5,41.5}, "copper-cable"}}
commandqueue[21040] = {{"put", {1.5, 41.5}, "copper-plate", 50, defines.inventory.assembling_machine_input}}
commandqueue[21010] = {{"move", "E"}}
commandqueue[21193] = {{"move", "SE"}}
commandqueue[21231] = {{"move", "STOP"}}
--Presently at: (25.20287500,43.08590000)
commandqueue[21233] = {{"build", "steam-engine", {29.5, 45.5}, defines.direction.east}}
commandqueue[21232] = {{"move", "E"}}
commandqueue[21325] = {{"move", "STOP"}}
--Presently at: (39.00756250,43.08590000)
commandqueue[21327] = {{"take", {43.5, 41.5}, "coal", "all", defines.inventory.chest}}
commandqueue[21328] = {{"take", {43.5, 44.5}, "coal", "all", defines.inventory.chest}}
commandqueue[21326] = {{"move", "W"}}
commandqueue[21609] = {{"move", "NW"}}
commandqueue[21620] = {{"move", "STOP"}}
--Presently at: (-4.16040625,41.92574375)
commandqueue[21601] = {{"build", "small-electric-pole", {-3.5, 46.5}, defines.direction.north}}
commandqueue[21602] = {{"build", "assembling-machine-1", {-5.5, 46.5}, defines.direction.north}}
commandqueue[21603] = {{"recipe", {-5.5,46.5}, "electronic-circuit"}}
commandqueue[21604] = {{"put", {-5.5, 46.5}, "copper-cable", 3, defines.inventory.assembling_machine_input}}
commandqueue[21605] = {{"put", {-5.5, 46.5}, "iron-plate", 10, defines.inventory.assembling_machine_input}}
commandqueue[21622] = {{"take", {1, 42}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[21623] = {{"take", {-5, 43}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[21624] = {{"take", {-6, 40}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[21625] = {{"craft", "lab", 1}}
commandqueue[21626] = {{"take", {-8, 41}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[21627] = {{"take", {-8, 43}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[21628] = {{"put", {-2, 42}, "iron-gear-wheel", 3, defines.inventory.assembling_machine_input}}
commandqueue[21629] = {{"put", {-5.5, 46.5}, "copper-cable", 6, defines.inventory.assembling_machine_input}}
commandqueue[21630] = {{"build", "assembling-machine-1", {-8.5, 46.5}, defines.direction.north}}
commandqueue[21631] = {{"recipe", {-8.5,46.5}, "copper-cable"}}
commandqueue[21632] = {{"put", {-8.5, 46.5}, "copper-plate", 34, defines.inventory.assembling_machine_input}}
commandqueue[21633] = {{"put", {-8.5, 40.5}, "iron-plate", 36, defines.inventory.assembling_machine_input}}
commandqueue[21641] = {{"build", "small-electric-pole", {-10.5, 46.5}, defines.direction.north}}
commandqueue[21621] = {{"move", "W"}}
commandqueue[21660] = {{"move", "STOP"}}
--Presently at: (-9.94946875,41.92574375)
commandqueue[21661] = {{"move", "S"}}
commandqueue[21668] = {{"move", "STOP"}}
--Presently at: (-9.94946875,42.96480625)
commandqueue[21670] = {{"take", {-11.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[21671] = {{"put", {-11, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[21672] = {{"take", {-11, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[21689] = {{"take", {-14.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[21685] = {{"put", {-13, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[21686] = {{"take", {-13, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[21699] = {{"put", {-15, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[21700] = {{"take", {-15, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[21706] = {{"build", "electric-mining-drill", {-17.5, 37.5}, defines.direction.south}}
commandqueue[21707] = {{"build", "wooden-chest", {-17.5, 39.5}, defines.direction.north}}
commandqueue[21708] = {{"build", "wooden-chest", {-20.5, 39.5}, defines.direction.north}}
commandqueue[21709] = {{"put", {-17, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[21710] = {{"take", {-17, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[21727] = {{"put", {-19, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[21733] = {{"take", {-19, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[21728] = {{"put", {-21, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[21729] = {{"take", {-21, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[21730] = {{"put", {-23, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[21731] = {{"take", {-23, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[21732] = {{"put", {-25, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[21734] = {{"take", {-25, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[21771] = {{"put", {-27, 42}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[21772] = {{"put", {-29, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[21773] = {{"put", {-31, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[21669] = {{"move", "W"}}
commandqueue[21784] = {{"move", "STOP"}}
--Presently at: (-27.01978125,42.96480625)
commandqueue[21785] = {{"move", "E"}}
commandqueue[21900] = {{"move", "STOP"}}
--Presently at: (-9.94946875,42.96480625)
commandqueue[21899] = {{"take", {-9, 46}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[21902] = {{"put", {-6.5, 45.5}, "copper-cable", 10, defines.inventory.assembling_machine_input}}
commandqueue[21903] = {{"take", {-6.5, 45.5}, "electronic-circuit", "all", defines.inventory.assembling_machine_output}}
commandqueue[21901] = {{"move", "N"}}
commandqueue[21908] = {{"move", "STOP"}}
--Presently at: (-9.94946875,41.92574375)
commandqueue[21909] = {{"move", "E"}}
commandqueue[21929] = {{"move", "STOP"}}
--Presently at: (-6.98071875,41.92574375)
commandqueue[21932] = {{"take", {-6, 44}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[21933] = {{"put", {-6, 45.5}, "copper-cable", 10, defines.inventory.assembling_machine_input}}
commandqueue[21934] = {{"take", {-8.5, 43.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[21935] = {{"take", {-8.5, 40.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[21936] = {{"take", {-5.5, 40.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[21930] = {{"move", "N"}}
commandqueue[21950] = {{"move", "STOP"}}
--Presently at: (-6.98071875,38.95699375)
commandqueue[21951] = {{"move", "E"}}
commandqueue[21958] = {{"move", "STOP"}}
--Presently at: (-5.94165625,38.95699375)
commandqueue[21960] = {{"take", {-3, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[21961] = {{"put", {-3, 38}, "coal", 2, defines.inventory.fuel}}
commandqueue[21962] = {{"take", {-9, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[21963] = {{"put", {-9, 38}, "coal", 2, defines.inventory.fuel}}
commandqueue[21966] = {{"take", {-3, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[21967] = {{"put", {-3, 36}, "coal", 2, defines.inventory.fuel}}
commandqueue[21969] = {{"take", {-9, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[21970] = {{"put", {-9, 36}, "coal", 2, defines.inventory.fuel}}
commandqueue[21973] = {{"take", {-3, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[21974] = {{"put", {-3, 34}, "coal", 2, defines.inventory.fuel}}
commandqueue[21976] = {{"take", {-9, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[21977] = {{"put", {-9, 34}, "coal", 2, defines.inventory.fuel}}
commandqueue[21980] = {{"take", {-3, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[21981] = {{"put", {-3, 32}, "coal", 2, defines.inventory.fuel}}
commandqueue[21983] = {{"take", {-9, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[21984] = {{"put", {-9, 32}, "coal", 2, defines.inventory.fuel}}
commandqueue[21987] = {{"take", {-3, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[21988] = {{"put", {-3, 30}, "coal", 2, defines.inventory.fuel}}
commandqueue[21990] = {{"take", {-9, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[21991] = {{"put", {-9, 30}, "coal", 2, defines.inventory.fuel}}
commandqueue[21959] = {{"move", "N"}}
commandqueue[21993] = {{"move", "STOP"}}
--Presently at: (-5.94165625,33.91011875)
commandqueue[21995] = {{"put", {-5, 30}, "coal", 3, defines.inventory.fuel}}
commandqueue[21996] = {{"put", {-7, 30}, "coal", 3, defines.inventory.fuel}}
commandqueue[21997] = {{"put", {-5, 32}, "coal", 3, defines.inventory.fuel}}
commandqueue[21998] = {{"put", {-7, 32}, "coal", 3, defines.inventory.fuel}}
commandqueue[21999] = {{"put", {-5, 34}, "coal", 3, defines.inventory.fuel}}
commandqueue[22000] = {{"put", {-7, 34}, "coal", 3, defines.inventory.fuel}}
commandqueue[22001] = {{"put", {-5, 36}, "coal", 3, defines.inventory.fuel}}
commandqueue[22002] = {{"put", {-7, 36}, "coal", 3, defines.inventory.fuel}}
commandqueue[22003] = {{"put", {-5, 38}, "coal", 3, defines.inventory.fuel}}
commandqueue[22004] = {{"put", {-7, 38}, "coal", 3, defines.inventory.fuel}}
commandqueue[22005] = {{"craft", "burner-inserter", 1}}
commandqueue[22006] = {{"craft", "electric-mining-drill", 1}}
commandqueue[21994] = {{"move", "S"}}
commandqueue[22028] = {{"move", "STOP"}}
--Presently at: (-5.94165625,38.95699375)
commandqueue[22030] = {{"take", {-2.5, 40.5}, "science-pack-1", "all", defines.inventory.assembling_machine_output}}
commandqueue[22029] = {{"move", "W"}}
commandqueue[22057] = {{"move", "SW"}}
commandqueue[22077] = {{"move", "STOP"}}
--Presently at: (-12.20728125,41.06636875)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-12.0586,41.215)
commandqueue[22084] = {{"take", {-11.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[22085] = {{"put", {-11, 42}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[22086] = {{"take", {-11, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22098] = {{"take", {-14.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[22099] = {{"put", {-13, 42}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[22100] = {{"take", {-13, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22101] = {{"take", {-17.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[22113] = {{"put", {-15, 42}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[22114] = {{"take", {-15, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22127] = {{"put", {-17, 42}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[22128] = {{"take", {-17, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22141] = {{"put", {-19, 42}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[22142] = {{"take", {-19, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22143] = {{"put", {-21, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[22144] = {{"take", {-21, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22145] = {{"put", {-23, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[22146] = {{"take", {-23, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22147] = {{"put", {-25, 42}, "iron-ore", 2, defines.inventory.furnace_source}}
commandqueue[22078] = {{"move", "W"}}
commandqueue[22131] = {{"move", "NW"}}
commandqueue[22134] = {{"move", "STOP"}}
--Presently at: (-20.24219375,40.89859375)
commandqueue[22135] = {{"move", "S"}}
commandqueue[22148] = {{"move", "SE"}}
commandqueue[22151] = {{"move", "STOP"}}
--Presently at: (-19.92578750,43.14468750)
commandqueue[22152] = {{"move", "E"}}
commandqueue[22207] = {{"move", "SE"}}
commandqueue[22225] = {{"move", "STOP"}}
--Presently at: (-9.86328750,45.04312500)
commandqueue[22226] = {{"move", "E"}}
commandqueue[22266] = {{"move", "NE"}}
commandqueue[22276] = {{"move", "STOP"}}
--Presently at: (-2.87110000,43.98843750)
commandqueue[22241] = {{"build", "lab", {-1.9, 45.9}, defines.direction.north}}
commandqueue[22242] = {{"put", {-1.9, 45.9}, "science-pack-1", 2, defines.inventory.lab_input}}
commandqueue[22249] = {{"recipe", {-6.5,41.5}, "wood"}}
commandqueue[22250] = {{"put", {-6.5, 41.5}, "raw-wood", 24, defines.inventory.assembling_machine_input}}
commandqueue[22273] = {{"take", {-7.5, 45.5}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[22274] = {{"take", {-5.5, 43.5}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[22275] = {{"take", {0.5, 42.5}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[22279] = {{"put", {-5.5, 46.5}, "copper-cable", 19, defines.inventory.assembling_machine_input}}
commandqueue[22280] = {{"take", {-5.5, 46.5}, "electronic-circuit", "all", defines.inventory.assembling_machine_output}}
commandqueue[22281] = {{"build", "burner-inserter", {-1.5, 43.5}, defines.direction.north}}
commandqueue[22282] = {{"put", {-1.5, 43.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[22283] = {{"put", {-5.5, 46.5}, "iron-plate", 12, defines.inventory.assembling_machine_input}}
commandqueue[22284] = {{"craft", "electric-mining-drill", 2}}
commandqueue[22277] = {{"move", "W"}}
commandqueue[22278] = {{"move", "SW"}}
commandqueue[22288] = {{"move", "STOP"}}
--Presently at: (-4.07422500,45.04312500)
commandqueue[22311] = {{"take", {-8.5, 41.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[22313] = {{"put", {-8.5, 41.5}, "iron-plate", 30, defines.inventory.assembling_machine_input}}
commandqueue[22336] = {{"recipe", {-8.5,42.5}, "electronic-circuit"}}
commandqueue[22337] = {{"put", {-8.5, 42.5}, "copper-cable", 15, defines.inventory.assembling_machine_input}}
commandqueue[22338] = {{"put", {-8.5, 42.5}, "iron-plate", 5, defines.inventory.assembling_machine_input}}
commandqueue[22289] = {{"move", "W"}}
commandqueue[22329] = {{"move", "NW"}}
commandqueue[22349] = {{"move", "STOP"}}
--Presently at: (-12.12110000,42.93375000)
commandqueue[22356] = {{"take", {-11.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[22357] = {{"put", {-11, 42}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[22358] = {{"take", {-11, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22370] = {{"take", {-14.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[22371] = {{"put", {-13, 42}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[22372] = {{"take", {-13, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22373] = {{"take", {-17.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[22385] = {{"put", {-15, 42}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[22386] = {{"take", {-15, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22399] = {{"put", {-17, 42}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[22400] = {{"take", {-17, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22401] = {{"build", "electric-mining-drill", {-20.5, 37.5}, defines.direction.south}}
commandqueue[22413] = {{"put", {-19, 42}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[22414] = {{"take", {-19, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22415] = {{"put", {-21, 42}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[22416] = {{"take", {-21, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22418] = {{"take", {-23, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22350] = {{"move", "W"}}
commandqueue[22444] = {{"move", "STOP"}}
--Presently at: (-26.07422500,42.93375000)
commandqueue[22446] = {{"take", {-25, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22447] = {{"take", {-27, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22448] = {{"take", {-29, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22449] = {{"take", {-31, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22445] = {{"move", "E"}}
commandqueue[22553] = {{"move", "STOP"}}
--Presently at: (-10.04297500,42.93375000)
commandqueue[22555] = {{"craft", "small-electric-pole", 1}}
commandqueue[22556] = {{"craft", "wooden-chest", 2}}
commandqueue[22554] = {{"move", "N"}}
commandqueue[22561] = {{"move", "STOP"}}
--Presently at: (-10.04297500,41.89468750)
commandqueue[22562] = {{"move", "E"}}
commandqueue[22596] = {{"move", "STOP"}}
--Presently at: (-4.99610000,41.89468750)
commandqueue[22598] = {{"take", {0.5, 42}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[22599] = {{"take", {-5, 43}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[22600] = {{"take", {-8, 46}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[22601] = {{"take", {-6, 40}, "wood", "all", defines.inventory.assembling_machine_output}}
commandqueue[22602] = {{"take", {-8, 40}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[22603] = {{"take", {-6, 46}, "electronic-circuit", "all", defines.inventory.assembling_machine_output}}
commandqueue[22604] = {{"put", {-6, 46}, "copper-cable", 30, defines.inventory.assembling_machine_input}}
commandqueue[22605] = {{"put", {-6, 46}, "iron-plate", 4, defines.inventory.assembling_machine_input}}
commandqueue[22606] = {{"craft", "small-electric-pole", 5}}
commandqueue[22607] = {{"put", {-8, 40}, "iron-plate", 20, defines.inventory.assembling_machine_input}}
commandqueue[22658] = {{"recipe", {-9.5,42.5}, "iron-gear-wheel"}}
commandqueue[22659] = {{"put", {-9.5, 42.5}, "iron-plate", 50, defines.inventory.assembling_machine_input}}
commandqueue[22597] = {{"move", "W"}}
commandqueue[22631] = {{"move", "STOP"}}
--Presently at: (-10.04297500,41.89468750)
commandqueue[22632] = {{"move", "N"}}
commandqueue[22638] = {{"move", "STOP"}}
--Presently at: (-10.04297500,41.00406250)
commandqueue[22640] = {{"take", {-11.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[22646] = {{"put", {-11, 42}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[22647] = {{"take", {-11, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22656] = {{"take", {-14.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[22660] = {{"put", {-13, 42}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[22661] = {{"take", {-13, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22674] = {{"put", {-15, 42}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[22675] = {{"take", {-15, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22676] = {{"take", {-17.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[22677] = {{"take", {-20.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[22688] = {{"put", {-17, 42}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[22689] = {{"take", {-17, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22699] = {{"build", "wooden-chest", {-23.5, 39.5}, defines.direction.north}}
commandqueue[22700] = {{"build", "small-electric-pole", {-24.5, 40.5}, defines.direction.north}}
commandqueue[22701] = {{"build", "electric-mining-drill", {-23.5, 37.5}, defines.direction.south}}
commandqueue[22702] = {{"put", {-19, 42}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[22703] = {{"take", {-19, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22704] = {{"put", {-21, 42}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[22705] = {{"take", {-21, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22706] = {{"put", {-23, 42}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[22707] = {{"take", {-23, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22708] = {{"put", {-25, 42}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[22639] = {{"move", "W"}}
commandqueue[22727] = {{"move", "NW"}}
commandqueue[22747] = {{"move", "STOP"}}
--Presently at: (-25.21485000,38.89468750)
commandqueue[22743] = {{"put", {-27, 42}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[22744] = {{"put", {-29, 42}, "iron-ore", 1, defines.inventory.furnace_source}}
commandqueue[22745] = {{"build", "wooden-chest", {-26.5, 39.5}, defines.direction.north}}
commandqueue[22748] = {{"move", "N"}}
commandqueue[22768] = {{"move", "NE"}}
commandqueue[22778] = {{"move", "STOP"}}
--Presently at: (-24.16016250,34.87125000)
commandqueue[22780] = {{"craft", "electric-mining-drill", 2}}
commandqueue[22769] = {{"build", "electric-mining-drill", {-26.5, 37.5}, defines.direction.south}}
commandqueue[22779] = {{"move", "E"}}
commandqueue[22901] = {{"move", "SE"}}
commandqueue[22903] = {{"move", "STOP"}}
--Presently at: (-5.83985000,35.08218750)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-6.0195,35.1172)
commandqueue[22899] = {{"take", {-6, 39.5}, "wood", "all", defines.inventory.assembling_machine_output}}
commandqueue[22900] = {{"craft", "wooden-chest", 3}}
commandqueue[22902] = {{"craft", "electric-mining-drill", 1}}
commandqueue[22905] = {{"build", "small-electric-pole", {-1.5, 33.5}, defines.direction.north}}
commandqueue[22906] = {{"take", {-9, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22907] = {{"take", {-3, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22908] = {{"take", {-9, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22909] = {{"take", {-3, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22910] = {{"take", {-9, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22911] = {{"take", {-3, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22912] = {{"take", {-9, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22913] = {{"take", {-3, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22914] = {{"take", {-9, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22915] = {{"take", {-3, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[22954] = {{"build", "small-electric-pole", {-1.5, 26.5}, defines.direction.north}}
commandqueue[23004] = {{"build", "small-electric-pole", {-1.5, 19.5}, defines.direction.north}}
commandqueue[23054] = {{"build", "small-electric-pole", {-1.5, 12.5}, defines.direction.north}}
commandqueue[23104] = {{"build", "small-electric-pole", {-1.5, 5.5}, defines.direction.north}}
commandqueue[22904] = {{"move", "N"}}
commandqueue[23134] = {{"move", "STOP"}}
--Presently at: (-6.01950000,0.97657500)
commandqueue[23136] = {{"take", {-11, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[23137] = {{"take", {-9, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[23138] = {{"take", {-7, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[23139] = {{"take", {-5, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[23140] = {{"put", {-5, 0}, "coal", 2, defines.inventory.fuel}}
commandqueue[23141] = {{"put", {-7, 0}, "coal", 2, defines.inventory.fuel}}
commandqueue[23142] = {{"put", {-9, 0}, "coal", 2, defines.inventory.fuel}}
commandqueue[23143] = {{"put", {-11, 0}, "coal", 2, defines.inventory.fuel}}
commandqueue[23144] = {{"put", {-5, -2}, "coal", 3, defines.inventory.fuel}}
commandqueue[23145] = {{"put", {-7, -2}, "coal", 3, defines.inventory.fuel}}
commandqueue[23146] = {{"put", {-9, -2}, "coal", 3, defines.inventory.fuel}}
commandqueue[23147] = {{"put", {-11, -2}, "coal", 3, defines.inventory.fuel}}
commandqueue[23148] = {{"build", "small-electric-pole", {-3.5, -1.5}, defines.direction.north}}
commandqueue[23149] = {{"build", "electric-mining-drill", {-3.5, -4.5}, defines.direction.north}}
commandqueue[23175] = {{"build", "electric-mining-drill", {-0.9, -4.5}, defines.direction.north}}
commandqueue[23185] = {{"build", "wooden-chest", {-0.9, -6.5}, defines.direction.north}}
commandqueue[23135] = {{"move", "N"}}
commandqueue[23189] = {{"move", "NW"}}
commandqueue[23208] = {{"move", "STOP"}}
--Presently at: (-8.02340625,-9.04295625)
commandqueue[23207] = {{"build", "wooden-chest", {-3.5, -6.5}, defines.direction.north}}
commandqueue[23209] = {{"mine", {-9, -9.5}}}
commandqueue[23259] = {{"mine", nil}}
commandqueue[23260] = {{"mine", {-7.3, -10.2}}}
commandqueue[23310] = {{"mine", nil}}
commandqueue[23312] = {{"craft", "boiler", 1}}
commandqueue[23313] = {{"craft", "steam-engine", 2}}
commandqueue[23314] = {{"craft", "pipe", 1}}
commandqueue[23315] = {{"craft", "transport-belt", 6}}
commandqueue[23351] = {{"build", "wooden-chest", {-6.5, -6.5}, defines.direction.north}}
commandqueue[23354] = {{"build", "electric-mining-drill", {-6.5, -4.5}, defines.direction.north}}
commandqueue[23311] = {{"move", "S"}}
commandqueue[23554] = {{"move", "SE"}}
commandqueue[23574] = {{"move", "STOP"}}
--Presently at: (-5.91403125,29.13673125)
commandqueue[23581] = {{"take", {-3, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[23582] = {{"take", {-9, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[23595] = {{"take", {-3, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[23596] = {{"take", {-9, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[23609] = {{"take", {-3, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[23610] = {{"take", {-9, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[23623] = {{"take", {-3, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[23624] = {{"take", {-9, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[23637] = {{"take", {-3, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[23638] = {{"take", {-9, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[23575] = {{"move", "S"}}
commandqueue[23641] = {{"move", "STOP"}}
--Presently at: (-5.91403125,38.93360625)
commandqueue[23642] = {{"move", "W"}}
commandqueue[23649] = {{"move", "STOP"}}
--Presently at: (-6.95309375,38.93360625)
commandqueue[23650] = {{"move", "S"}}
commandqueue[23671] = {{"move", "STOP"}}
--Presently at: (-6.95309375,42.05079375)
commandqueue[23657] = {{"take", {-5.5, 43.5}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[23658] = {{"put", {-6.5, 45.5}, "copper-cable", 30, defines.inventory.assembling_machine_input}}
commandqueue[23659] = {{"put", {-6.5, 45.5}, "iron-plate", 10, defines.inventory.assembling_machine_input}}
commandqueue[23669] = {{"take", {-8.5, 40.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[23670] = {{"take", {-8.5, 43.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[23690] = {{"put", {-5.5, 43.5}, "copper-plate", 25, defines.inventory.assembling_machine_input}}
commandqueue[23692] = {{"recipe", {-6.5,41.5}, "burner-inserter"}}
commandqueue[23697] = {{"put", {-6.5, 41.5}, "iron-plate", 13, defines.inventory.assembling_machine_input}}
commandqueue[23698] = {{"put", {-6.5, 41.5}, "iron-gear-wheel", 13, defines.inventory.assembling_machine_input}}
commandqueue[23672] = {{"move", "W"}}
commandqueue[23693] = {{"move", "STOP"}}
--Presently at: (-10.07028125,42.05079375)
commandqueue[23694] = {{"move", "S"}}
commandqueue[23700] = {{"move", "STOP"}}
--Presently at: (-10.07028125,42.94141875)
commandqueue[23702] = {{"recipe", {-9.5,45.5}, "electronic-circuit"}}
commandqueue[23703] = {{"put", {-9.5, 45.5}, "copper-cable", 30, defines.inventory.assembling_machine_input}}
commandqueue[23704] = {{"put", {-9.5, 45.5}, "iron-plate", 10, defines.inventory.assembling_machine_input}}
commandqueue[23711] = {{"take", {-11.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[23715] = {{"put", {-11, 42}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[23729] = {{"put", {-13, 42}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[23732] = {{"take", {-14.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[23743] = {{"put", {-15, 42}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[23753] = {{"take", {-17.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[23757] = {{"put", {-17, 42}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[23770] = {{"put", {-19, 42}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[23774] = {{"take", {-20.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[23781] = {{"put", {-21, 42}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[23782] = {{"put", {-23, 42}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[23795] = {{"take", {-23.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[23796] = {{"put", {-25, 42}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[23801] = {{"take", {-26.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[23802] = {{"put", {-27, 42}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[23803] = {{"put", {-29, 42}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[23804] = {{"put", {-31, 42}, "iron-ore", 4, defines.inventory.furnace_source}}
commandqueue[23805] = {{"take", {-29, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[23806] = {{"take", {-27, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[23807] = {{"take", {-25, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[23701] = {{"move", "W"}}
commandqueue[23808] = {{"move", "STOP"}}
--Presently at: (-25.95309375,42.94141875)
commandqueue[23810] = {{"take", {-23, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[23824] = {{"take", {-21, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[23838] = {{"take", {-19, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[23852] = {{"take", {-17, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[23866] = {{"take", {-15, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[23880] = {{"take", {-13, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[23881] = {{"take", {-11, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[23809] = {{"move", "E"}}
commandqueue[23903] = {{"move", "SE"}}
commandqueue[23923] = {{"move", "STOP"}}
--Presently at: (-9.89059375,45.05079375)
commandqueue[23934] = {{"take", {-8.5, 40.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[23935] = {{"recipe", {-8.5,43.5}, "wood"}}
commandqueue[23936] = {{"put", {-8.5, 43.5}, "raw-wood", 56, defines.inventory.assembling_machine_input}}
commandqueue[23937] = {{"put", {-8.5, 40.5}, "iron-plate", 10, defines.inventory.assembling_machine_input}}
commandqueue[23938] = {{"take", {-5.5, 43.5}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[23939] = {{"put", {-8.5, 46.5}, "copper-cable", 12, defines.inventory.assembling_machine_input}}
commandqueue[23940] = {{"put", {-8.5, 46.5}, "iron-plate", 4, defines.inventory.assembling_machine_input}}
commandqueue[23941] = {{"put", {-5.5, 46.5}, "copper-cable", 12, defines.inventory.assembling_machine_input}}
commandqueue[23942] = {{"put", {-5.5, 46.5}, "iron-plate", 4, defines.inventory.assembling_machine_input}}
commandqueue[23954] = {{"take", {-8.5, 46.5}, "electronic-circuit", "all", defines.inventory.assembling_machine_output}}
commandqueue[23955] = {{"take", {-5.5, 46.5}, "electronic-circuit", "all", defines.inventory.assembling_machine_output}}
commandqueue[23924] = {{"move", "E"}}
commandqueue[23964] = {{"move", "NE"}}
commandqueue[23974] = {{"move", "STOP"}}
--Presently at: (-2.89840625,43.99610625)
commandqueue[23976] = {{"take", {-5.5, 40.5}, "burner-inserter", "all", defines.inventory.assembling_machine_output}}
commandqueue[23977] = {{"put", {-1.5, 41.5}, "copper-plate", 3, defines.inventory.assembling_machine_input}}
commandqueue[23978] = {{"put", {-1.5, 41.5}, "iron-gear-wheel", 3, defines.inventory.assembling_machine_input}}
commandqueue[23979] = {{"put", {1.5, 41.5}, "copper-plate", 9, defines.inventory.assembling_machine_input}}
commandqueue[23980] = {{"craft", "electric-mining-drill", 1}}
commandqueue[23981] = {{"take", {1.5, 41.5}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[23982] = {{"craft", "inserter", 1}}
commandqueue[23983] = {{"craft", "transport-belt", 2}}
commandqueue[23984] = {{"craft", "inserter", 1}}
commandqueue[23985] = {{"craft", "science-pack-1", 1}}
commandqueue[23986] = {{"craft", "transport-belt", 10}}
commandqueue[23975] = {{"move", "E"}}
commandqueue[24163] = {{"move", "NE"}}
commandqueue[24173] = {{"move", "STOP"}}
--Presently at: (26.06253125,42.94141875)
commandqueue[24210] = {{"build", "steam-engine", {28.5, 42.5}, defines.direction.east}}
commandqueue[24224] = {{"build", "pipe", {31.5, 42.5}, defines.direction.north}}
commandqueue[24225] = {{"build", "small-electric-pole", {31.5, 41.5}, defines.direction.north}}
commandqueue[24254] = {{"build", "steam-engine", {34.5, 42.5}, defines.direction.east}}
commandqueue[24264] = {{"build", "boiler", {37.5, 42.5}, defines.direction.west}}
commandqueue[24265] = {{"take", {43.5, 41.5}, "coal", 3, defines.inventory.chest}}
commandqueue[24266] = {{"put", {38.5, 42.5}, "coal", 3, defines.inventory.fuel}}
commandqueue[24174] = {{"move", "E"}}
commandqueue[24288] = {{"move", "STOP"}}
--Presently at: (42.98440625,42.94141875)
commandqueue[24289] = {{"mine", {43.5, 41.5}}}
commandqueue[24339] = {{"mine", nil}}
commandqueue[24340] = {{"mine", {43.5, 44.5}}}
commandqueue[24390] = {{"mine", nil}}
commandqueue[24392] = {{"build", "electric-mining-drill", {45.5, 38.5}, defines.direction.west}}
commandqueue[24393] = {{"build", "transport-belt", {43.5, 38.5}, defines.direction.south}}
commandqueue[24394] = {{"build", "transport-belt", {43.5, 39.5}, defines.direction.south}}
commandqueue[24395] = {{"build", "transport-belt", {43.5, 40.5}, defines.direction.south}}
commandqueue[24396] = {{"build", "transport-belt", {43.5, 41.5}, defines.direction.south}}
commandqueue[24397] = {{"build", "transport-belt", {43.5, 42.5}, defines.direction.south}}
commandqueue[24398] = {{"build", "transport-belt", {43.5, 43.5}, defines.direction.south}}
commandqueue[24399] = {{"build", "transport-belt", {43.5, 44.5}, defines.direction.south}}
commandqueue[24400] = {{"build", "transport-belt", {43.5, 45.5}, defines.direction.west}}
commandqueue[24401] = {{"build", "transport-belt", {42.5, 45.5}, defines.direction.west}}
commandqueue[24402] = {{"build", "transport-belt", {41.5, 45.5}, defines.direction.west}}
commandqueue[24403] = {{"build", "transport-belt", {40.5, 45.5}, defines.direction.north}}
commandqueue[24404] = {{"build", "transport-belt", {40.5, 44.5}, defines.direction.north}}
commandqueue[24406] = {{"build", "transport-belt", {40.5, 43.5}, defines.direction.north}}
commandqueue[24407] = {{"build", "transport-belt", {40.5, 42.5}, defines.direction.north}}
commandqueue[24408] = {{"build", "burner-inserter", {39.5, 44.5}, defines.direction.east}}
commandqueue[24409] = {{"build", "burner-inserter", {39.5, 43.5}, defines.direction.east}}
commandqueue[24410] = {{"build", "inserter", {41.5, 42.5}, defines.direction.west}}
commandqueue[24411] = {{"build", "wooden-chest", {42.5, 42.5}, defines.direction.north}}
commandqueue[24412] = {{"put", {38, 42}, "coal", 5, defines.inventory.fuel}}
commandqueue[24391] = {{"move", "W"}}
commandqueue[24405] = {{"move", "NW"}}
commandqueue[24424] = {{"move", "STOP"}}
--Presently at: (38.90237500,40.93751250)
commandqueue[24423] = {{"build", "small-electric-pole", {42.5, 36.5}, defines.direction.north}}
commandqueue[24425] = {{"move", "W"}}
commandqueue[24653] = {{"move", "SW"}}
commandqueue[24673] = {{"move", "STOP"}}
--Presently at: (2.94925000,43.04688750)
commandqueue[24639] = {{"recipe", {2.5,41}, "science-pack-1"}}
commandqueue[24640] = {{"put", {2.5, 41}, "copper-plate", 4, defines.inventory.assembling_machine_input}}
commandqueue[24641] = {{"put", {2.5, 41}, "iron-gear-wheel", 4, defines.inventory.assembling_machine_input}}
commandqueue[24671] = {{"build", "inserter", {3.5, 41.5}, defines.direction.west}}
commandqueue[24672] = {{"build", "wooden-chest", {4.5, 41.5}, defines.direction.north}}
commandqueue[24695] = {{"put", {0.5, 38.5}, "science-pack-1", 1, defines.inventory.lab_input}}
commandqueue[24674] = {{"move", "W"}}
commandqueue[24714] = {{"move", "NW"}}
commandqueue[24724] = {{"move", "STOP"}}
--Presently at: (-4.04293750,41.99220000)
commandqueue[24726] = {{"recipe", {-5.5,40.5}, "stone-furnace"}}
commandqueue[24727] = {{"put", {-5.5, 40.5}, "stone", 40, defines.inventory.assembling_machine_input}}
commandqueue[24728] = {{"take", {-5.5, 43.5}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[24729] = {{"take", {-5.5, 45.5}, "electronic-circuit", "all", defines.inventory.assembling_machine_output}}
commandqueue[24730] = {{"take", {-3, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[24731] = {{"take", {-8.5, 40.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[24732] = {{"put", {-5.5, 46.5}, "copper-cable", 30, defines.inventory.assembling_machine_input}}
commandqueue[24733] = {{"put", {-5.5, 46.5}, "iron-plate", 10, defines.inventory.assembling_machine_input}}
commandqueue[24734] = {{"craft", "small-electric-pole", 2}}
commandqueue[24756] = {{"take", {-9, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[24757] = {{"take", {-9, 36.8}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[24758] = {{"put", {-8.5, 46.5}, "copper-cable", 30, defines.inventory.assembling_machine_input}}
commandqueue[24759] = {{"put", {-8.5, 46.5}, "iron-plate", 10, defines.inventory.assembling_machine_input}}
commandqueue[24760] = {{"take", {-8.5, 45.5}, "electronic-circuit", "all", defines.inventory.assembling_machine_output}}
commandqueue[24725] = {{"move", "W"}}
commandqueue[24766] = {{"move", "STOP"}}
--Presently at: (-10.12887500,41.99220000)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-9.832,41.9062)
commandqueue[24765] = {{"take", {-11.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[24768] = {{"put", {-11, 42}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[24769] = {{"put", {-13, 42}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[24770] = {{"put", {-15, 42}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[24767] = {{"move", "N"}}
commandqueue[24772] = {{"move", "NW"}}
commandqueue[24774] = {{"move", "STOP"}}
--Presently at: (-10.04293750,40.95312500)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-10.2227,40.8828)
commandqueue[24775] = {{"mine", {-11.5, 39.5}}}
commandqueue[24825] = {{"mine", nil}}
commandqueue[24827] = {{"build", "transport-belt", {-11.5, 39.5}, defines.direction.west}}
commandqueue[24828] = {{"build", "transport-belt", {-12.5, 39.5}, defines.direction.west}}
commandqueue[24829] = {{"build", "transport-belt", {-13.5, 39.5}, defines.direction.west}}
commandqueue[24830] = {{"take", {-11, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[24831] = {{"take", {-13, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[24832] = {{"take", {-15, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[24833] = {{"put", {-8.5, 40.5}, "iron-plate", 14, defines.inventory.assembling_machine_input}}
commandqueue[24834] = {{"take", {-14.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[24835] = {{"build", "burner-inserter", {-11.5, 40.5}, defines.direction.north}}
commandqueue[24841] = {{"put", {-11.5, 40.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[24842] = {{"build", "burner-inserter", {-12.5, 40.5}, defines.direction.north}}
commandqueue[24843] = {{"build", "burner-inserter", {-14.5, 40.5}, defines.direction.north}}
commandqueue[24844] = {{"put", {-14.5, 40.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[24845] = {{"build", "burner-inserter", {-16.5, 40.5}, defines.direction.north}}
commandqueue[24846] = {{"put", {-16.5, 40.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[24847] = {{"build", "transport-belt", {-15.5, 39.5}, defines.direction.west}}
commandqueue[24848] = {{"build", "transport-belt", {-16.5, 39.5}, defines.direction.west}}
commandqueue[24851] = {{"put", {-12.5, 40.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[24826] = {{"move", "W"}}
commandqueue[24865] = {{"move", "STOP"}}
--Presently at: (-16.01171875,40.88281250)
commandqueue[24862] = {{"put", {-17, 42}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[24863] = {{"put", {-19, 42}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[24864] = {{"put", {-21, 42}, "iron-ore", 4, defines.inventory.furnace_source}}
commandqueue[24866] = {{"move", "E"}}
commandqueue[24867] = {{"move", "STOP"}}
--Presently at: (-15.86328125,40.88281250)
commandqueue[24868] = {{"mine", {-14.5, 39.5}}}
commandqueue[24918] = {{"mine", nil}}
commandqueue[24921] = {{"build", "transport-belt", {-14.5, 39.5}, defines.direction.west}}
commandqueue[24919] = {{"move", "W"}}
commandqueue[24920] = {{"move", "NW"}}
commandqueue[24922] = {{"move", "STOP"}}
--Presently at: (-16.22265625,40.67187500)
commandqueue[24923] = {{"mine", {-17.5, 39.5}}}
commandqueue[24973] = {{"mine", nil}}
commandqueue[24975] = {{"put", {-11, 42}, "iron-ore", 4, defines.inventory.furnace_source}}
commandqueue[24976] = {{"put", {-13, 42}, "iron-ore", 4, defines.inventory.furnace_source}}
commandqueue[24977] = {{"put", {-15, 42}, "iron-ore", 4, defines.inventory.furnace_source}}
commandqueue[24978] = {{"take", {-20.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[24979] = {{"put", {-17, 42}, "iron-ore", 4, defines.inventory.furnace_source}}
commandqueue[24980] = {{"put", {-19, 42}, "iron-ore", 4, defines.inventory.furnace_source}}
commandqueue[24981] = {{"put", {-21, 42}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[24982] = {{"build", "transport-belt", {-17.5, 39.5}, defines.direction.west}}
commandqueue[24983] = {{"build", "transport-belt", {-18.5, 39.5}, defines.direction.west}}
commandqueue[24984] = {{"build", "transport-belt", {-19.5, 39.5}, defines.direction.west}}
commandqueue[24985] = {{"build", "burner-inserter", {-18.5, 40.5}, defines.direction.north}}
commandqueue[24986] = {{"put", {-18.5, 40.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[24987] = {{"build", "burner-inserter", {-20.5, 40.5}, defines.direction.north}}
commandqueue[24988] = {{"put", {-20.5, 40.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[24989] = {{"take", {-17, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[24990] = {{"take", {-19, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[24991] = {{"take", {-21, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[24992] = {{"craft", "electric-mining-drill", 1}}
commandqueue[24993] = {{"craft", "burner-inserter", 1}}
commandqueue[24974] = {{"move", "W"}}
commandqueue[25011] = {{"move", "SW"}}
commandqueue[25015] = {{"move", "STOP"}}
--Presently at: (-22.13671875,41.09375000)
commandqueue[25006] = {{"take", {-23.5, 39.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[25007] = {{"build", "transport-belt", {-21.5, 39.5}, defines.direction.west}}
commandqueue[25008] = {{"build", "transport-belt", {-22.5, 39.5}, defines.direction.west}}
commandqueue[25009] = {{"build", "burner-inserter", {-22.5, 40.5}, defines.direction.north}}
commandqueue[25010] = {{"put", {-22.5, 40.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[25012] = {{"put", {-23, 42}, "iron-ore", 4, defines.inventory.furnace_source}}
commandqueue[25013] = {{"put", {-25, 42}, "iron-ore", 4, defines.inventory.furnace_source}}
commandqueue[25014] = {{"put", {-27, 42}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[25016] = {{"move", "E"}}
commandqueue[25017] = {{"move", "NE"}}
commandqueue[25020] = {{"move", "STOP"}}
--Presently at: (-21.67187500,40.77734375)
commandqueue[25021] = {{"mine", {-20.5, 39.5}}}
commandqueue[25071] = {{"mine", nil}}
commandqueue[25072] = {{"move", "W"}}
commandqueue[25073] = {{"move", "NW"}}
commandqueue[25075] = {{"move", "STOP"}}
--Presently at: (-22.03125000,40.56640625)
commandqueue[25076] = {{"mine", {-23.5, 39.5}}}
commandqueue[25126] = {{"mine", nil}}
commandqueue[25128] = {{"build", "transport-belt", {-20.5, 39.5}, defines.direction.west}}
commandqueue[25129] = {{"build", "transport-belt", {-23.5, 39.5}, defines.direction.west}}
commandqueue[25130] = {{"build", "transport-belt", {-24.5, 39.5}, defines.direction.west}}
commandqueue[25131] = {{"build", "transport-belt", {-25.5, 39.5}, defines.direction.west}}
commandqueue[25132] = {{"build", "burner-inserter", {-25.5, 40.5}, defines.direction.north}}
commandqueue[25133] = {{"put", {-25.5, 40.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[25134] = {{"take", {-23, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[25135] = {{"take", {-25, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[25136] = {{"take", {-27, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[25137] = {{"craft", "electric-mining-drill", 2}}
commandqueue[25127] = {{"move", "W"}}
commandqueue[25151] = {{"move", "SW"}}
commandqueue[25156] = {{"move", "STOP"}}
--Presently at: (-26.12109375,41.09375000)
commandqueue[25157] = {{"mine", {-26.5, 39.5}}}
commandqueue[25207] = {{"mine", nil}}
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-25.4648,41.0664)
commandqueue[25209] = {{"build", "transport-belt", {-26.5, 39.5}, defines.direction.west}}
commandqueue[25210] = {{"build", "transport-belt", {-27.5, 39.5}, defines.direction.west}}
commandqueue[25211] = {{"build", "transport-belt", {-28.5, 39.5}, defines.direction.west}}
commandqueue[25212] = {{"build", "transport-belt", {-29.5, 39.5}, defines.direction.west}}
commandqueue[25213] = {{"build", "burner-inserter", {-27.5, 40.5}, defines.direction.north}}
commandqueue[25214] = {{"build", "burner-inserter", {-29.5, 40.5}, defines.direction.north}}
commandqueue[25215] = {{"build", "burner-inserter", {-31.5, 40.5}, defines.direction.north}}
commandqueue[25216] = {{"put", {-27.5, 40.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[25217] = {{"put", {-29.5, 40.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[25218] = {{"put", {-31.5, 40.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[25219] = {{"build", "stone-furnace", {-33, 42}, defines.direction.north}}
commandqueue[25220] = {{"put", {-29, 42}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[25221] = {{"put", {-31, 42}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[25222] = {{"put", {-33, 42}, "iron-ore", 5, defines.inventory.furnace_source}}
commandqueue[25223] = {{"put", {-33, 42}, "coal", 5, defines.inventory.fuel}}
commandqueue[25224] = {{"build", "small-electric-pole", {-30.5, 40.5}, defines.direction.north}}
commandqueue[25225] = {{"build", "electric-mining-drill", {-29.5, 37.5}, defines.direction.south}}
commandqueue[25226] = {{"build", "transport-belt", {-30.9, 39.5}, defines.direction.west}}
commandqueue[25227] = {{"build", "transport-belt", {-31.9, 39.5}, defines.direction.west}}
commandqueue[25228] = {{"build", "transport-belt", {-32.9, 39.5}, defines.direction.west}}
commandqueue[25229] = {{"build", "burner-inserter", {-32.5, 40.5}, defines.direction.north}}
commandqueue[25230] = {{"put", {-32.5, 40.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[25208] = {{"move", "W"}}
commandqueue[25232] = {{"move", "STOP"}}
--Presently at: (-29.02730000,41.06640000)
commandqueue[25234] = {{"put", {-31, 42}, "coal", 3, defines.inventory.fuel}}
commandqueue[25247] = {{"put", {-29, 42}, "coal", 3, defines.inventory.fuel}}
commandqueue[25246] = {{"take", {-29, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[25261] = {{"put", {-27, 42}, "coal", 3, defines.inventory.fuel}}
commandqueue[25260] = {{"take", {-27, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[25275] = {{"put", {-25, 42}, "coal", 3, defines.inventory.fuel}}
commandqueue[25274] = {{"take", {-25, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[25289] = {{"put", {-23, 42}, "coal", 3, defines.inventory.fuel}}
commandqueue[25288] = {{"take", {-23, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[25303] = {{"put", {-21, 42}, "coal", 3, defines.inventory.fuel}}
commandqueue[25302] = {{"take", {-21, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[25317] = {{"put", {-19, 42}, "coal", 3, defines.inventory.fuel}}
commandqueue[25316] = {{"take", {-19, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[25331] = {{"put", {-17, 42}, "coal", 3, defines.inventory.fuel}}
commandqueue[25330] = {{"take", {-17, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[25345] = {{"put", {-15, 42}, "coal", 3, defines.inventory.fuel}}
commandqueue[25344] = {{"take", {-15, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[25359] = {{"put", {-13, 42}, "coal", 3, defines.inventory.fuel}}
commandqueue[25358] = {{"take", {-13, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[25233] = {{"move", "E"}}
commandqueue[25361] = {{"move", "STOP"}}
--Presently at: (-10.02730000,41.06640000)
commandqueue[25356] = {{"take", {-8.5, 40.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[25357] = {{"put", {-11, 42}, "coal", 5, defines.inventory.fuel}}
commandqueue[25360] = {{"take", {-9, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[25363] = {{"take", {-11, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[25364] = {{"craft", "transport-belt", 12}}
commandqueue[25365] = {{"take", {-9, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[25366] = {{"recipe", {-6,41}, "science-pack-1"}}
commandqueue[25367] = {{"put", {-6, 41}, "copper-plate", 2, defines.inventory.assembling_machine_input}}
commandqueue[25368] = {{"put", {-6, 41}, "iron-gear-wheel", 2, defines.inventory.assembling_machine_input}}
commandqueue[25362] = {{"move", "S"}}
commandqueue[25369] = {{"move", "STOP"}}
--Presently at: (-10.02730000,42.10546250)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-10.027,42.105)
commandqueue[25371] = {{"recipe", {-6,43}, "science-pack-1"}}
commandqueue[25372] = {{"put", {-8, 40}, "iron-plate", 2, defines.inventory.assembling_machine_input}}
commandqueue[25373] = {{"put", {-6, 43}, "copper-plate", 2, defines.inventory.assembling_machine_input}}
commandqueue[25374] = {{"put", {-6, 43}, "iron-gear-wheel", 2, defines.inventory.assembling_machine_input}}
commandqueue[25384] = {{"take", {-8.5, 46.5}, "electronic-circuit", "all", defines.inventory.assembling_machine_output}}
commandqueue[25385] = {{"put", {-8.5, 46.5}, "copper-cable", 24, defines.inventory.assembling_machine_input}}
commandqueue[25386] = {{"put", {-8.5, 46.5}, "iron-plate", 8, defines.inventory.assembling_machine_input}}
commandqueue[25398] = {{"take", {-5.5, 46.5}, "electronic-circuit", "all", defines.inventory.assembling_machine_output}}
commandqueue[25399] = {{"put", {-5.5, 46.5}, "copper-cable", 24, defines.inventory.assembling_machine_input}}
commandqueue[25400] = {{"put", {-5.5, 46.5}, "iron-plate", 8, defines.inventory.assembling_machine_input}}
commandqueue[25370] = {{"move", "E"}}
commandqueue[25390] = {{"move", "STOP"}}
--Presently at: (-7.05825000,42.10500000)
commandqueue[25392] = {{"take", {-8.5, 43.5}, "wood", "all", defines.inventory.assembling_machine_output}}
commandqueue[25391] = {{"move", "N"}}
commandqueue[25412] = {{"move", "STOP"}}
--Presently at: (-7.05825000,38.98781250)
commandqueue[25413] = {{"move", "E"}}
commandqueue[25421] = {{"move", "STOP"}}
--Presently at: (-5.87075000,38.98781250)
commandqueue[25423] = {{"take", {-3, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[25425] = {{"take", {-3, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[25426] = {{"take", {-9, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[25427] = {{"take", {-3, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[25428] = {{"put", {-7.5, 39.5}, "iron-plate", 22, defines.inventory.assembling_machine_input}}
commandqueue[25452] = {{"put", {-5, 38}, "coal", 1, defines.inventory.fuel}}
commandqueue[25453] = {{"put", {-7, 38}, "coal", 1, defines.inventory.fuel}}
commandqueue[25454] = {{"put", {-5, 36}, "coal", 1, defines.inventory.fuel}}
commandqueue[25455] = {{"put", {-7, 36}, "coal", 1, defines.inventory.fuel}}
commandqueue[25456] = {{"put", {-5, 34}, "coal", 1, defines.inventory.fuel}}
commandqueue[25457] = {{"put", {-7, 34}, "coal", 1, defines.inventory.fuel}}
commandqueue[25458] = {{"put", {-5, 32}, "coal", 1, defines.inventory.fuel}}
commandqueue[25459] = {{"put", {-7, 32}, "coal", 1, defines.inventory.fuel}}
commandqueue[25460] = {{"put", {-5, 30}, "coal", 1, defines.inventory.fuel}}
commandqueue[25461] = {{"put", {-7, 30}, "coal", 1, defines.inventory.fuel}}
commandqueue[25464] = {{"take", {-9, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[25465] = {{"take", {-3, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[25467] = {{"take", {-9, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[25468] = {{"take", {-3, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[25473] = {{"take", {-9, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[25422] = {{"move", "N"}}
commandqueue[25664] = {{"move", "NW"}}
commandqueue[25685] = {{"move", "STOP"}}
--Presently at: (-8.08559375,0.85109375)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-8.2695,0.95703)
commandqueue[25684] = {{"build", "small-electric-pole", {-9.5, 1.5}, defines.direction.north}}
commandqueue[25687] = {{"build", "small-electric-pole", {-12.5, -2.5}, defines.direction.north}}
commandqueue[25688] = {{"take", {-5, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[25689] = {{"take", {-7, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[25690] = {{"take", {-9, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[25691] = {{"take", {-11, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[25692] = {{"craft", "transport-belt", 4}}
commandqueue[25693] = {{"craft", "transport-belt", 1}}
commandqueue[25694] = {{"craft", "iron-gear-wheel", 2}}
commandqueue[25695] = {{"craft", "burner-inserter", 10}}
commandqueue[25701] = {{"build", "electric-mining-drill", {-12.5, -4.5}, defines.direction.north}}
commandqueue[25703] = {{"build", "transport-belt", {-7.5, -6.5}, defines.direction.east}}
commandqueue[25704] = {{"build", "transport-belt", {-8.5, -6.5}, defines.direction.east}}
commandqueue[25705] = {{"build", "transport-belt", {-9.5, -6.5}, defines.direction.east}}
commandqueue[25706] = {{"build", "transport-belt", {-10.5, -6.5}, defines.direction.east}}
commandqueue[25707] = {{"build", "transport-belt", {-11.5, -6.5}, defines.direction.east}}
commandqueue[25686] = {{"move", "N"}}
commandqueue[25734] = {{"move", "NE"}}
commandqueue[25739] = {{"move", "STOP"}}
--Presently at: (-7.74215625,-6.69531375)
commandqueue[25738] = {{"build", "electric-mining-drill", {-9.5, -4.5}, defines.direction.north}}
commandqueue[25737] = {{"build", "transport-belt", {-12.5, -6.5}, defines.direction.east}}
commandqueue[25740] = {{"mine", {-6.5, -6.5}}}
commandqueue[25790] = {{"mine", nil}}
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-6.988,-6.2812)
commandqueue[25792] = {{"build", "transport-belt", {-6.5, -6.5}, defines.direction.east}}
commandqueue[25793] = {{"build", "transport-belt", {-5.5, -6.5}, defines.direction.east}}
commandqueue[25794] = {{"build", "transport-belt", {-4.5, -6.5}, defines.direction.east}}
commandqueue[25791] = {{"move", "E"}}
commandqueue[25808] = {{"move", "STOP"}}
--Presently at: (-3.93331250,-6.28125000)
commandqueue[25809] = {{"mine", {-3.5, -6.5}}}
commandqueue[25859] = {{"mine", nil}}
commandqueue[25861] = {{"build", "transport-belt", {-3.5, -6.5}, defines.direction.east}}
commandqueue[25862] = {{"build", "transport-belt", {-2.5, -6.5}, defines.direction.east}}
commandqueue[25863] = {{"build", "transport-belt", {-1.5, -6.5}, defines.direction.east}}
commandqueue[25860] = {{"move", "E"}}
commandqueue[25877] = {{"move", "STOP"}}
--Presently at: (-0.87862500,-6.28125000)
commandqueue[25878] = {{"mine", {-0.5, -6.5}}}
commandqueue[25928] = {{"mine", nil}}
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-0.9961,-6.2812)
commandqueue[25930] = {{"build", "transport-belt", {-0.5, -6.5}, defines.direction.east}}
commandqueue[25931] = {{"build", "transport-belt", {0.5, -6.5}, defines.direction.east}}
commandqueue[25932] = {{"build", "stone-furnace", {2, -4}, defines.direction.north}}
commandqueue[25933] = {{"put", {2, -4}, "coal", 3, defines.inventory.fuel}}
commandqueue[25934] = {{"put", {2, -4}, "copper-ore", 7, defines.inventory.furnace_source}}
commandqueue[25941] = {{"build", "transport-belt", {1.5, -6.5}, defines.direction.east}}
commandqueue[25942] = {{"build", "transport-belt", {2.5, -6.5}, defines.direction.east}}
commandqueue[25943] = {{"build", "stone-furnace", {4, -4}, defines.direction.north}}
commandqueue[25944] = {{"put", {4, -4}, "coal", 3, defines.inventory.fuel}}
commandqueue[25945] = {{"put", {4, -4}, "copper-ore", 7, defines.inventory.furnace_source}}
commandqueue[25952] = {{"build", "transport-belt", {3.5, -6.5}, defines.direction.east}}
commandqueue[25953] = {{"build", "transport-belt", {4.5, -6.5}, defines.direction.east}}
commandqueue[25954] = {{"build", "stone-furnace", {6, -4}, defines.direction.north}}
commandqueue[25955] = {{"put", {6, -4}, "coal", 3, defines.inventory.fuel}}
commandqueue[25956] = {{"put", {6, -4}, "copper-ore", 7, defines.inventory.furnace_source}}
commandqueue[25963] = {{"build", "transport-belt", {5.5, -6.5}, defines.direction.east}}
commandqueue[25964] = {{"build", "transport-belt", {6.5, -6.5}, defines.direction.east}}
commandqueue[25965] = {{"build", "stone-furnace", {8, -4}, defines.direction.north}}
commandqueue[25966] = {{"put", {8, -4}, "coal", 3, defines.inventory.fuel}}
commandqueue[25967] = {{"put", {8, -4}, "copper-ore", 7, defines.inventory.furnace_source}}
commandqueue[25974] = {{"build", "transport-belt", {7.5, -6.5}, defines.direction.east}}
commandqueue[25975] = {{"build", "transport-belt", {8.5, -6.5}, defines.direction.east}}
commandqueue[25976] = {{"build", "stone-furnace", {10, -4}, defines.direction.north}}
commandqueue[25977] = {{"put", {10, -4}, "coal", 3, defines.inventory.fuel}}
commandqueue[25978] = {{"put", {10, -4}, "copper-ore", 7, defines.inventory.furnace_source}}
commandqueue[25985] = {{"build", "transport-belt", {9.5, -6.5}, defines.direction.east}}
commandqueue[25986] = {{"build", "transport-belt", {10.5, -6.5}, defines.direction.east}}
commandqueue[25987] = {{"build", "stone-furnace", {12, -4}, defines.direction.north}}
commandqueue[25988] = {{"put", {12, -4}, "coal", 3, defines.inventory.fuel}}
commandqueue[25989] = {{"put", {12, -4}, "copper-ore", 7, defines.inventory.furnace_source}}
commandqueue[25996] = {{"build", "transport-belt", {11.5, -6.5}, defines.direction.east}}
commandqueue[25997] = {{"build", "transport-belt", {12.5, -6.5}, defines.direction.east}}
commandqueue[25998] = {{"build", "stone-furnace", {14, -4}, defines.direction.north}}
commandqueue[25999] = {{"put", {14, -4}, "coal", 3, defines.inventory.fuel}}
commandqueue[26000] = {{"put", {14, -4}, "copper-ore", 7, defines.inventory.furnace_source}}
commandqueue[26007] = {{"build", "transport-belt", {13.5, -6.5}, defines.direction.east}}
commandqueue[26008] = {{"build", "transport-belt", {14.5, -6.5}, defines.direction.east}}
commandqueue[26009] = {{"build", "stone-furnace", {16, -4}, defines.direction.north}}
commandqueue[26010] = {{"put", {16, -4}, "coal", 3, defines.inventory.fuel}}
commandqueue[26011] = {{"put", {16, -4}, "copper-ore", 7, defines.inventory.furnace_source}}
commandqueue[26018] = {{"build", "transport-belt", {15.5, -6.5}, defines.direction.east}}
commandqueue[26019] = {{"build", "transport-belt", {16.5, -6.5}, defines.direction.east}}
commandqueue[26020] = {{"build", "stone-furnace", {18, -4}, defines.direction.north}}
commandqueue[26021] = {{"put", {18, -4}, "coal", 3, defines.inventory.fuel}}
commandqueue[26022] = {{"put", {18, -4}, "copper-ore", 6, defines.inventory.furnace_source}}
commandqueue[26029] = {{"build", "transport-belt", {17.5, -6.5}, defines.direction.east}}
commandqueue[26030] = {{"build", "transport-belt", {18.5, -6.5}, defines.direction.east}}
commandqueue[26031] = {{"build", "stone-furnace", {20, -4}, defines.direction.north}}
commandqueue[26032] = {{"put", {20, -4}, "coal", 3, defines.inventory.fuel}}
commandqueue[26033] = {{"put", {20, -4}, "copper-ore", 5, defines.inventory.furnace_source}}
commandqueue[25929] = {{"move", "E"}}
commandqueue[26041] = {{"move", "STOP"}}
--Presently at: (19.12890000,-6.28125000)
commandqueue[26042] = {{"move", "E"}}
commandqueue[26046] = {{"move", "SE"}}
commandqueue[26059] = {{"move", "STOP"}}
--Presently at: (21.09374375,-4.91015625)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (20.9688,-4.9102)
commandqueue[26060] = {{"move", "E"}}
commandqueue[26061] = {{"move", "SE"}}
commandqueue[26070] = {{"move", "STOP"}}
--Presently at: (22.06640625,-3.96098125)
commandqueue[26071] = {{"mine", {23.4, -2.7}}}
commandqueue[26121] = {{"mine", nil}}
commandqueue[26123] = {{"build", "transport-belt", {19.5, -6.5}, defines.direction.east}}
commandqueue[26124] = {{"craft", "small-electric-pole", 7}}
commandqueue[26122] = {{"move", "S"}}
commandqueue[26129] = {{"move", "SE"}}
commandqueue[26143] = {{"move", "STOP"}}
--Presently at: (23.54296875,-1.44535625)
commandqueue[26144] = {{"mine", {24.5, 0.1}}}
commandqueue[26194] = {{"mine", nil}}
commandqueue[26195] = {{"move", "E"}}
commandqueue[26198] = {{"move", "SE"}}
commandqueue[26204] = {{"move", "STOP"}}
--Presently at: (24.62109375,-0.81254375)
commandqueue[26205] = {{"mine", {26.2, 0.1}}}
commandqueue[26255] = {{"mine", nil}}
commandqueue[26256] = {{"move", "E"}}
commandqueue[26288] = {{"move", "SE"}}
commandqueue[26303] = {{"move", "STOP"}}
--Presently at: (30.95312500,0.76948750)
commandqueue[26304] = {{"mine", {32.7, 1.2}}}
commandqueue[26404] = {{"mine", nil}}
commandqueue[26405] = {{"move", "S"}}
commandqueue[26409] = {{"move", "SE"}}
commandqueue[26422] = {{"move", "STOP"}}
--Presently at: (32.32421875,2.73433125)
commandqueue[26423] = {{"mine", {33.3, 4.2}}}
commandqueue[26523] = {{"mine", nil}}
commandqueue[26524] = {{"move", "S"}}
commandqueue[26532] = {{"move", "SW"}}
commandqueue[26542] = {{"move", "STOP"}}
--Presently at: (31.26953125,4.97651875)
commandqueue[26543] = {{"mine", {30.5, 6.6}}}
commandqueue[26643] = {{"mine", nil}}
commandqueue[26644] = {{"move", "W"}}
commandqueue[26665] = {{"move", "SW"}}
commandqueue[26672] = {{"move", "STOP"}}
--Presently at: (27.41406250,5.71480000)
commandqueue[26673] = {{"mine", {25.6, 6}}}
commandqueue[26723] = {{"mine", nil}}
commandqueue[26724] = {{"move", "W"}}
commandqueue[26736] = {{"move", "NW"}}
commandqueue[26791] = {{"move", "STOP"}}
--Presently at: (19.83203125,-0.08598125)
commandqueue[26793] = {{"build", "burner-inserter", {19.5, -5.5}, defines.direction.north}}
commandqueue[26794] = {{"put", {19.5, -5.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[26795] = {{"take", {20, -4}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[26807] = {{"build", "burner-inserter", {17.5, -5.5}, defines.direction.north}}
commandqueue[26808] = {{"put", {17.5, -5.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[26809] = {{"take", {18, -4}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[26821] = {{"build", "burner-inserter", {15.5, -5.5}, defines.direction.north}}
commandqueue[26822] = {{"put", {15.5, -5.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[26823] = {{"take", {16, -4}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[26835] = {{"build", "burner-inserter", {13.5, -5.5}, defines.direction.north}}
commandqueue[26836] = {{"put", {13.5, -5.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[26837] = {{"take", {14, -4}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[26849] = {{"build", "burner-inserter", {11.5, -5.5}, defines.direction.north}}
commandqueue[26850] = {{"put", {11.5, -5.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[26851] = {{"take", {12, -4}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[26863] = {{"build", "burner-inserter", {9.5, -5.5}, defines.direction.north}}
commandqueue[26864] = {{"put", {9.5, -5.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[26865] = {{"take", {10, -4}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[26877] = {{"build", "burner-inserter", {7.5, -5.5}, defines.direction.north}}
commandqueue[26878] = {{"put", {7.5, -5.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[26879] = {{"take", {8, -4}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[26891] = {{"build", "burner-inserter", {5.5, -5.5}, defines.direction.north}}
commandqueue[26892] = {{"put", {5.5, -5.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[26893] = {{"take", {6, -4}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[26792] = {{"move", "W"}}
commandqueue[26905] = {{"move", "STOP"}}
--Presently at: (3.05859375,-0.08598125)
commandqueue[26899] = {{"take", {4, -4}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[26900] = {{"take", {2, -4}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[26901] = {{"build", "burner-inserter", {3.5, -5.5}, defines.direction.north}}
commandqueue[26902] = {{"put", {3.5, -5.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[26903] = {{"build", "burner-inserter", {2.5, -5.5}, defines.direction.north}}
commandqueue[26904] = {{"put", {2.5, -5.5}, "raw-wood", 2, defines.inventory.fuel}}
commandqueue[26906] = {{"move", "W"}}
commandqueue[26933] = {{"move", "SW"}}
commandqueue[26972] = {{"move", "STOP"}}
--Presently at: (-5.06250000,4.02730000)
commandqueue[26973] = {{"move", "W"}}
commandqueue[26993] = {{"move", "STOP"}}
--Presently at: (-8.03125000,4.02730000)
commandqueue[26991] = {{"take", {-5, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[26992] = {{"take", {-7, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[26995] = {{"take", {-9, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[26996] = {{"take", {-11, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[26994] = {{"move", "S"}}
commandqueue[27149] = {{"move", "SE"}}
commandqueue[27169] = {{"move", "STOP"}}
--Presently at: (-5.92187500,29.14448750)
commandqueue[27171] = {{"take", {-3, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[27172] = {{"take", {-9, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[27185] = {{"take", {-3, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[27186] = {{"take", {-9, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[27199] = {{"take", {-3, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[27200] = {{"take", {-9, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[27213] = {{"take", {-3, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[27214] = {{"take", {-9, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[27227] = {{"take", {-3, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[27228] = {{"take", {-9, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[27173] = {{"craft", "iron-gear-wheel", 1}}
commandqueue[27215] = {{"take", {-7.5, 39.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[27217] = {{"put", {-7.5, 39.5}, "iron-plate", 20, defines.inventory.assembling_machine_input}}
commandqueue[27218] = {{"recipe", {-6,40}, "iron-gear-wheel"}}
commandqueue[27219] = {{"put", {-6, 40}, "iron-plate", 20, defines.inventory.assembling_machine_input}}
commandqueue[27225] = {{"craft", "electric-mining-drill", 2}}
commandqueue[27170] = {{"move", "S"}}
commandqueue[27236] = {{"move", "STOP"}}
--Presently at: (-5.92187500,38.94136250)
commandqueue[27222] = {{"put", {-2.4, 40.5}, "science-pack-1", 2, defines.inventory.assembling_machine_output}}
commandqueue[27234] = {{"recipe", {-6,42.5}, "iron-gear-wheel"}}
commandqueue[27235] = {{"put", {-6, 42.5}, "iron-plate", 10, defines.inventory.assembling_machine_input}}
commandqueue[27238] = {{"put", {-2.4, 40.5}, "science-pack-1", 2, defines.inventory.assembling_machine_output}}
commandqueue[27237] = {{"move", "W"}}
commandqueue[27244] = {{"move", "STOP"}}
--Presently at: (-6.96093750,38.94136250)
commandqueue[27246] = {{"put", {-2, 41}, "copper-plate", 4, defines.inventory.assembling_machine_input}}
commandqueue[27247] = {{"put", {-2, 41}, "iron-gear-wheel", 2, defines.inventory.assembling_machine_input}}
commandqueue[27245] = {{"move", "S"}}
commandqueue[27266] = {{"move", "STOP"}}
--Presently at: (-6.96093750,42.05855000)
commandqueue[27268] = {{"recipe", {-6,46}, "copper-cable"}}
commandqueue[27269] = {{"put", {-6, 46}, "copper-plate", 30, defines.inventory.assembling_machine_input}}
commandqueue[27270] = {{"recipe", {-8,46}, "copper-cable"}}
commandqueue[27271] = {{"put", {-8, 46}, "copper-plate", 30, defines.inventory.assembling_machine_input}}
commandqueue[27272] = {{"recipe", {-8,43}, "copper-cable"}}
commandqueue[27273] = {{"put", {-8, 43}, "copper-plate", 30, defines.inventory.assembling_machine_input}}
commandqueue[27267] = {{"move", "W"}}
commandqueue[27288] = {{"move", "STOP"}}
--Presently at: (-10.07812500,42.05855000)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-10.0781,42.0586)
commandqueue[27289] = {{"move", "N"}}
commandqueue[27303] = {{"move", "STOP"}}
--Presently at: (-10.07812500,39.98046875)
commandqueue[27304] = {{"move", "W"}}
commandqueue[27311] = {{"move", "STOP"}}
--Presently at: (-11.11718750,39.98046875)
commandqueue[27314] = {{"take", {-6.5, 42.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[27315] = {{"take", {-6.5, 40}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[27316] = {{"take", {-8.5, 40}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[27317] = {{"craft", "electric-mining-drill", 1}}
commandqueue[27313] = {{"take", {-11, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[27323] = {{"take", {-13, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[27333] = {{"take", {-15, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[27343] = {{"take", {-17, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[27353] = {{"take", {-19, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[27363] = {{"take", {-21, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[27373] = {{"take", {-23, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[27383] = {{"take", {-25, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[27393] = {{"take", {-27, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[27312] = {{"move", "W"}}
commandqueue[27407] = {{"move", "STOP"}}
--Presently at: (-28.18750000,39.98046875)
commandqueue[27408] = {{"move", "S"}}
commandqueue[27414] = {{"move", "SE"}}
commandqueue[27416] = {{"move", "STOP"}}
--Presently at: (-27.97656250,41.08203125)
commandqueue[27418] = {{"take", {-29, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[27419] = {{"take", {-31, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[27420] = {{"take", {-33, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[27417] = {{"move", "S"}}
commandqueue[27430] = {{"move", "STOP"}}
--Presently at: (-27.97656250,43.01171875)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-28.0703,43.0117)
commandqueue[27431] = {{"move", "E"}}
commandqueue[27540] = {{"move", "SE"}}
commandqueue[27559] = {{"move", "STOP"}}
--Presently at: (-9.88670625,45.01562625)
commandqueue[27561] = {{"take", {-9, 41}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[27562] = {{"put", {-9, 41}, "iron-plate", 20, defines.inventory.assembling_machine_input}}
commandqueue[27564] = {{"take", {-9, 43}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[27565] = {{"recipe", {-6,44}, "electronic-circuit"}}
commandqueue[27566] = {{"put", {-6, 44}, "copper-cable", 8, defines.inventory.assembling_machine_input}}
commandqueue[27567] = {{"put", {-6, 44}, "iron-plate", 8, defines.inventory.assembling_machine_input}}
commandqueue[27568] = {{"take", {-9, 46}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[27569] = {{"take", {-6, 46}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[27570] = {{"take", {-6, 41}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[27571] = {{"put", {-6, 41}, "iron-plate", 20, defines.inventory.assembling_machine_input}}
commandqueue[27572] = {{"put", {-6, 44}, "copper-cable", 16, defines.inventory.assembling_machine_input}}
commandqueue[27573] = {{"craft", "inserter", 1}}
commandqueue[27574] = {{"craft", "transport-belt", 3}}
commandqueue[27560] = {{"move", "E"}}
commandqueue[27600] = {{"move", "NE"}}
commandqueue[27610] = {{"move", "STOP"}}
--Presently at: (-2.89451875,43.96093875)
commandqueue[27612] = {{"put", {-1.5, 41.5}, "iron-gear-wheel", 2, defines.inventory.assembling_machine_input}}
commandqueue[27611] = {{"move", "E"}}
commandqueue[27651] = {{"move", "NE"}}
commandqueue[27661] = {{"move", "STOP"}}
--Presently at: (4.09766875,42.90625125)
commandqueue[27627] = {{"take", {4.5, 41.5}, "science-pack-1", "all", defines.inventory.chest}}
commandqueue[27628] = {{"put", {0.5, 38.5}, "science-pack-1", 2, defines.inventory.lab_input}}
commandqueue[27629] = {{"put", {-0.5, 44.5}, "science-pack-1", 2, defines.inventory.lab_input}}
commandqueue[27663] = {{"craft", "electric-mining-drill", 1}}
commandqueue[27664] = {{"craft", "inserter", 1}}
commandqueue[27665] = {{"craft", "electric-mining-drill", 1}}
commandqueue[27662] = {{"mine", {3.5, 41.5}}}
commandqueue[27684] = {{"mine", nil}}
commandqueue[27685] = {{"mine", {2.5, 42.5}}}
commandqueue[27707] = {{"mine", nil}}
commandqueue[27708] = {{"move", "E"}}
commandqueue[27843] = {{"move", "NE"}}
commandqueue[27862] = {{"move", "STOP"}}
--Presently at: (26.14063750,40.90234500)
commandqueue[27863] = {{"move", "E"}}
commandqueue[27951] = {{"move", "NE"}}
commandqueue[27979] = {{"move", "STOP"}}
--Presently at: (42.15626250,37.94922000)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (42.0508,37.9492)
commandqueue[27953] = {{"build", "small-electric-pole", {39.5, 41.5}, defines.direction.north}}
commandqueue[27954] = {{"build", "wooden-chest", {42.5, 41.5}, defines.direction.north}}
commandqueue[27955] = {{"build", "wooden-chest", {42.5, 40.5}, defines.direction.north}}
commandqueue[27956] = {{"build", "inserter", {41.5, 41.5}, defines.direction.west}}
commandqueue[27957] = {{"build", "inserter", {41.5, 40.5}, defines.direction.west}}
commandqueue[27958] = {{"build", "transport-belt", {40.5, 41.5}, defines.direction.north}}
commandqueue[27959] = {{"build", "transport-belt", {40.5, 40.5}, defines.direction.west}}
commandqueue[27960] = {{"build", "transport-belt", {43.5, 37.5}, defines.direction.south}}
commandqueue[27961] = {{"build", "transport-belt", {43.5, 36.5}, defines.direction.south}}
commandqueue[27962] = {{"build", "transport-belt", {43.5, 35.5}, defines.direction.south}}
commandqueue[27963] = {{"build", "electric-mining-drill", {41.5, 34.5}, defines.direction.east}}
commandqueue[27977] = {{"build", "transport-belt", {43.5, 34}, defines.direction.south}}
commandqueue[27978] = {{"build", "electric-mining-drill", {45.5, 35.5}, defines.direction.west}}
commandqueue[27980] = {{"move", "S"}}
commandqueue[27981] = {{"move", "SE"}}
commandqueue[27991] = {{"move", "STOP"}}
--Presently at: (43.10546750,39.15232500)
commandqueue[27993] = {{"build", "electric-mining-drill", {41.5, 38.5}, defines.direction.east}}
commandqueue[27994] = {{"build", "small-electric-pole", {47.5, 41.5}, defines.direction.north}}
commandqueue[27992] = {{"move", "S"}}
commandqueue[28026] = {{"move", "STOP"}}
--Presently at: (43.10546750,45.26170000)
commandqueue[28027] = {{"move", "S"}}
commandqueue[28028] = {{"move", "SE"}}
commandqueue[28036] = {{"move", "STOP"}}
--Presently at: (43.94921750,46.25388750)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (43.582,46.3438)
commandqueue[28035] = {{"take", {42.5, 42.5}, "coal", "all", defines.inventory.chest}}
commandqueue[28037] = {{"move", "E"}}
commandqueue[28065] = {{"move", "NE"}}
commandqueue[28097] = {{"move", "STOP"}}
--Presently at: (51.11325000,42.96875000)
commandqueue[28095] = {{"build", "small-electric-pole", {52.5, 41.5}, defines.direction.north}}
commandqueue[28096] = {{"build", "electric-mining-drill", {54.5, 38.5}, defines.direction.south}}
commandqueue[28099] = {{"build", "assembling-machine-1", {54.5, 41.5}, defines.direction.north}}
commandqueue[28100] = {{"recipe", {54.5,41.5}, "stone-furnace"}}
commandqueue[28101] = {{"put", {54.5, 41.5}, "stone", 2, defines.inventory.assembling_machine_input}}
commandqueue[28102] = {{"build", "inserter", {52.5, 42.5}, defines.direction.east}}
commandqueue[28103] = {{"build", "wooden-chest", {51.5, 42.5}, defines.direction.north}}
commandqueue[28105] = {{"craft", "electric-mining-drill", 2}}
commandqueue[28110] = {{"build", "electric-mining-drill", {54.5, 44.5}, defines.direction.north}}
commandqueue[28098] = {{"move", "W"}}
commandqueue[28104] = {{"move", "SW"}}
commandqueue[28134] = {{"move", "STOP"}}
--Presently at: (47.05856250,46.13281250)
commandqueue[28135] = {{"move", "W"}}
commandqueue[28155] = {{"move", "NW"}}
commandqueue[28185] = {{"move", "STOP"}}
--Presently at: (40.92575000,42.96875000)
commandqueue[28186] = {{"move", "N"}}
commandqueue[28198] = {{"move", "STOP"}}
--Presently at: (40.92575000,40.81250000)
commandqueue[28200] = {{"take", {42.5, 42.5}, "coal", "all", defines.inventory.chest}}
commandqueue[28201] = {{"take", {42.5, 41.5}, "coal", "all", defines.inventory.chest}}
commandqueue[28202] = {{"take", {42.5, 40.5}, "coal", "all", defines.inventory.chest}}
commandqueue[28199] = {{"move", "W"}}
commandqueue[28429] = {{"move", "NW"}}
commandqueue[28504] = {{"move", "STOP"}}
--Presently at: (-1.12503125,32.90234375)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-1.4688,32.8281)
commandqueue[28505] = {{"move", "W"}}
commandqueue[28535] = {{"move", "SW"}}
commandqueue[28537] = {{"move", "STOP"}}
--Presently at: (-6.13281250,33.03906250)
commandqueue[28539] = {{"put", {-3, 30}, "coal", 1, defines.inventory.fuel}}
commandqueue[28540] = {{"put", {-5, 30}, "coal", 2, defines.inventory.fuel}}
commandqueue[28541] = {{"put", {-7, 30}, "coal", 2, defines.inventory.fuel}}
commandqueue[28542] = {{"put", {-9, 30}, "coal", 1, defines.inventory.fuel}}
commandqueue[28543] = {{"take", {-3, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[28544] = {{"take", {-9, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[28545] = {{"put", {-3, 32}, "coal", 1, defines.inventory.fuel}}
commandqueue[28546] = {{"put", {-5, 32}, "coal", 2, defines.inventory.fuel}}
commandqueue[28547] = {{"put", {-7, 32}, "coal", 2, defines.inventory.fuel}}
commandqueue[28548] = {{"put", {-9, 32}, "coal", 1, defines.inventory.fuel}}
commandqueue[28549] = {{"take", {-3, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[28550] = {{"take", {-9, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[28551] = {{"put", {-3, 34}, "coal", 1, defines.inventory.fuel}}
commandqueue[28552] = {{"put", {-5, 34}, "coal", 2, defines.inventory.fuel}}
commandqueue[28553] = {{"put", {-7, 34}, "coal", 2, defines.inventory.fuel}}
commandqueue[28554] = {{"put", {-9, 34}, "coal", 1, defines.inventory.fuel}}
commandqueue[28555] = {{"take", {-3, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[28556] = {{"take", {-9, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[28557] = {{"put", {-3, 36}, "coal", 1, defines.inventory.fuel}}
commandqueue[28558] = {{"put", {-5, 36}, "coal", 2, defines.inventory.fuel}}
commandqueue[28559] = {{"put", {-7, 36}, "coal", 2, defines.inventory.fuel}}
commandqueue[28560] = {{"put", {-9, 36}, "coal", 1, defines.inventory.fuel}}
commandqueue[28561] = {{"take", {-3, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[28562] = {{"take", {-9, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[28563] = {{"put", {-3, 38}, "coal", 1, defines.inventory.fuel}}
commandqueue[28564] = {{"put", {-5, 38}, "coal", 2, defines.inventory.fuel}}
commandqueue[28565] = {{"put", {-7, 38}, "coal", 2, defines.inventory.fuel}}
commandqueue[28566] = {{"put", {-9, 38}, "coal", 1, defines.inventory.fuel}}
commandqueue[28567] = {{"take", {-3, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[28568] = {{"take", {-9, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[28538] = {{"move", "S"}}
commandqueue[28578] = {{"move", "SE"}}
commandqueue[28580] = {{"move", "STOP"}}
--Presently at: (-5.92187500,39.18750000)
commandqueue[28570] = {{"take", {-6, 40}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[28571] = {{"take", {-8, 40}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[28572] = {{"put", {-8, 40}, "iron-plate", 20, defines.inventory.assembling_machine_input}}
commandqueue[28573] = {{"put", {-6, 40}, "iron-plate", 20, defines.inventory.assembling_machine_input}}
commandqueue[28579] = {{"take", {-6, 43}, "electronic-circuit", "all", defines.inventory.assembling_machine_output}}
commandqueue[28582] = {{"recipe", {-8,43}, "electronic-circuit"}}
commandqueue[28583] = {{"put", {-6, 43}, "copper-cable", 15, defines.inventory.assembling_machine_input}}
commandqueue[28584] = {{"put", {-6, 43}, "iron-plate", 10, defines.inventory.assembling_machine_input}}
commandqueue[28585] = {{"put", {-8, 43}, "copper-cable", 15, defines.inventory.assembling_machine_input}}
commandqueue[28586] = {{"put", {-8, 43}, "iron-plate", 10, defines.inventory.assembling_machine_input}}
commandqueue[28581] = {{"move", "W"}}
commandqueue[28587] = {{"move", "NW"}}
commandqueue[28589] = {{"move", "STOP"}}
--Presently at: (-7.02343750,38.97656250)
commandqueue[28590] = {{"move", "S"}}
commandqueue[28601] = {{"move", "STOP"}}
--Presently at: (-7.02343750,40.60937500)
commandqueue[28599] = {{"take", {-7.5, 45.5}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[28600] = {{"take", {-6.5, 45.5}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[28603] = {{"put", {-7.5, 45.5}, "copper-plate", 7, defines.inventory.assembling_machine_input}}
commandqueue[28604] = {{"put", {-6.5, 45.5}, "copper-plate", 7, defines.inventory.assembling_machine_input}}
commandqueue[28605] = {{"put", {-6, 43}, "copper-cable", 15, defines.inventory.assembling_machine_input}}
commandqueue[28606] = {{"put", {-8, 43}, "copper-cable", 15, defines.inventory.assembling_machine_input}}
commandqueue[28607] = {{"put", {-2.5, 40.5}, "iron-gear-wheel", 2, defines.inventory.assembling_machine_input}}
commandqueue[28608] = {{"put", {-2.5, 40.5}, "copper-plate", 1, defines.inventory.assembling_machine_input}}
commandqueue[28602] = {{"move", "N"}}
commandqueue[28613] = {{"move", "STOP"}}
--Presently at: (-7.02343750,38.97656250)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-6.9062,38.9492)
commandqueue[28614] = {{"move", "W"}}
commandqueue[28642] = {{"move", "STOP"}}
--Presently at: (-11.06250000,38.94921875)
commandqueue[28644] = {{"take", {-11, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[28654] = {{"take", {-13, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[28664] = {{"take", {-15, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[28674] = {{"take", {-17, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[28684] = {{"take", {-19, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[28694] = {{"take", {-21, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[28704] = {{"take", {-23, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[28714] = {{"take", {-25, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[28724] = {{"take", {-27, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[28734] = {{"take", {-29, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[28744] = {{"take", {-31, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[28754] = {{"take", {-33, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[28645] = {{"craft", "transport-belt", 2}}
commandqueue[28646] = {{"craft", "burner-inserter", 2}}
commandqueue[28743] = {{"craft", "electric-mining-drill", 4}}
commandqueue[28643] = {{"move", "W"}}
commandqueue[28773] = {{"move", "STOP"}}
--Presently at: (-34.42187500,38.94921875)
commandqueue[28764] = {{"build", "stone-furnace", {-35, 42}, defines.direction.north}}
commandqueue[28765] = {{"build", "transport-belt", {-33.5, 39.5}, defines.direction.west}}
commandqueue[28766] = {{"build", "transport-belt", {-34.5, 39.5}, defines.direction.west}}
commandqueue[28767] = {{"build", "transport-belt", {-35.5, 39.5}, defines.direction.west}}
commandqueue[28768] = {{"build", "transport-belt", {-36.5, 39.5}, defines.direction.west}}
commandqueue[28769] = {{"build", "burner-inserter", {-36.5, 40.5}, defines.direction.north}}
commandqueue[28770] = {{"build", "stone-furnace", {-37, 42}, defines.direction.north}}
commandqueue[28771] = {{"put", {-37, 42}, "coal", 3, defines.inventory.fuel}}
commandqueue[28772] = {{"put", {-35, 42}, "coal", 3, defines.inventory.fuel}}
commandqueue[28775] = {{"put", {-36.5, 40.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[28792] = {{"build", "burner-inserter", {-35.5, 40.5}, defines.direction.north}}
commandqueue[28793] = {{"put", {-35.5, 40.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[28774] = {{"move", "N"}}
commandqueue[28805] = {{"move", "NE"}}
commandqueue[28847] = {{"move", "STOP"}}
--Presently at: (-29.99218750,29.91796875)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-29.6953,30.0742)
commandqueue[28842] = {{"build", "small-electric-pole", {-31.5, 33.5}, defines.direction.north}}
commandqueue[28843] = {{"build", "electric-mining-drill", {-29.5, 34.5}, defines.direction.north}}
commandqueue[28844] = {{"build", "electric-mining-drill", {-26.5, 34.5}, defines.direction.north}}
commandqueue[28845] = {{"build", "wooden-chest", {-29.5, 32.5}, defines.direction.north}}
commandqueue[28846] = {{"build", "small-electric-pole", {-24.9, 33.1}, defines.direction.north}}
commandqueue[28849] = {{"build", "wooden-chest", {-26.5, 32.5}, defines.direction.north}}
commandqueue[28848] = {{"move", "N"}}
commandqueue[28885] = {{"move", "NE"}}
commandqueue[29091] = {{"move", "STOP"}}
--Presently at: (-7.96873750,2.85545000)
commandqueue[29093] = {{"put", {-11, -2}, "coal", 2, defines.inventory.fuel}}
commandqueue[29094] = {{"put", {-11, 0}, "coal", 1, defines.inventory.fuel}}
commandqueue[29095] = {{"take", {-11, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[29096] = {{"put", {-9, -2}, "coal", 2, defines.inventory.fuel}}
commandqueue[29097] = {{"put", {-9, 0}, "coal", 1, defines.inventory.fuel}}
commandqueue[29098] = {{"take", {-9, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[29099] = {{"put", {-7, -2}, "coal", 2, defines.inventory.fuel}}
commandqueue[29100] = {{"put", {-7, 0}, "coal", 1, defines.inventory.fuel}}
commandqueue[29101] = {{"take", {-7, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[29102] = {{"put", {-5, -2}, "coal", 2, defines.inventory.fuel}}
commandqueue[29103] = {{"put", {-5, 0}, "coal", 1, defines.inventory.fuel}}
commandqueue[29104] = {{"take", {-5, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[29092] = {{"move", "E"}}
commandqueue[29147] = {{"move", "NE"}}
commandqueue[29165] = {{"move", "STOP"}}
--Presently at: (2.09376250,0.95701250)
commandqueue[29167] = {{"take", {2, -4}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[29180] = {{"take", {4, -4}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[29193] = {{"take", {6, -4}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[29206] = {{"take", {8, -4}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[29219] = {{"take", {10, -4}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[29232] = {{"take", {12, -4}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[29245] = {{"take", {14, -4}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[29258] = {{"take", {16, -4}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[29271] = {{"take", {18, -4}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[29284] = {{"take", {20, -4}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[29168] = {{"craft", "electric-mining-drill", 1}}
commandqueue[29169] = {{"craft", "pipe", 10}}
commandqueue[29166] = {{"move", "E"}}
commandqueue[29287] = {{"move", "STOP"}}
--Presently at: (20.05470000,0.95701250)
commandqueue[29288] = {{"move", "S"}}
commandqueue[29302] = {{"move", "SW"}}
commandqueue[29550] = {{"move", "STOP"}}
--Presently at: (-6.10155000,29.19138750)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-6.1016,28.9805)
commandqueue[29552] = {{"take", {-3, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[29553] = {{"take", {-9, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[29559] = {{"take", {-3, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[29560] = {{"take", {-9, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[29566] = {{"take", {-3, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[29567] = {{"take", {-9, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[29573] = {{"take", {-3, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[29574] = {{"take", {-9, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[29580] = {{"take", {-3, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[29581] = {{"take", {-9, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[29551] = {{"move", "S"}}
commandqueue[29618] = {{"move", "STOP"}}
--Presently at: (-6.10156250,38.92578125)
commandqueue[29584] = {{"take", {-6, 39.5}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[29585] = {{"craft", "electric-mining-drill", 1}}
commandqueue[29586] = {{"put", {-6, 39.5}, "iron-plate", 14, defines.inventory.assembling_machine_input}}
commandqueue[29587] = {{"put", {-8, 39.5}, "iron-plate", 14, defines.inventory.assembling_machine_input}}
commandqueue[29609] = {{"take", {-8, 40}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[29611] = {{"craft", "wooden-chest", 1}}
commandqueue[29612] = {{"craft", "boiler", 1}}
commandqueue[29613] = {{"craft", "burner-inserter", 1}}
commandqueue[29620] = {{"put", {-6, 43}, "copper-cable", 21, defines.inventory.assembling_machine_input}}
commandqueue[29621] = {{"put", {-6, 43}, "iron-plate", 7, defines.inventory.assembling_machine_input}}
commandqueue[29622] = {{"put", {-8, 43}, "copper-cable", 21, defines.inventory.assembling_machine_input}}
commandqueue[29623] = {{"put", {-8, 43}, "iron-plate", 7, defines.inventory.assembling_machine_input}}
commandqueue[29619] = {{"move", "W"}}
commandqueue[29625] = {{"move", "STOP"}}
--Presently at: (-6.99218750,38.92578125)
commandqueue[29626] = {{"move", "S"}}
commandqueue[29637] = {{"move", "STOP"}}
--Presently at: (-6.99218750,40.55859375)
commandqueue[29635] = {{"put", {-6, 46}, "copper-plate", 50, defines.inventory.assembling_machine_input}}
commandqueue[29636] = {{"put", {-8, 46}, "copper-plate", 50, defines.inventory.assembling_machine_input}}
commandqueue[29639] = {{"take", {-8, 46}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[29640] = {{"take", {-6, 46}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[29638] = {{"move", "N"}}
commandqueue[29649] = {{"move", "STOP"}}
--Presently at: (-6.99218750,38.92578125)
commandqueue[29650] = {{"move", "W"}}
commandqueue[29657] = {{"move", "STOP"}}
--Presently at: (-8.03125000,38.92578125)
commandqueue[29658] = {{"move", "N"}}
commandqueue[29685] = {{"move", "STOP"}}
--Presently at: (-8.03125000,34.91796875)
commandqueue[29686] = {{"move", "W"}}
commandqueue[29700] = {{"move", "NW"}}
commandqueue[29729] = {{"move", "STOP"}}
--Presently at: (-13.16796875,31.85937500)
commandqueue[29728] = {{"build", "small-electric-pole", {-10.5, 33.5}, defines.direction.north}}
commandqueue[29731] = {{"build", "electric-mining-drill", {-15.5, 34.5}, defines.direction.north}}
commandqueue[29732] = {{"build", "electric-mining-drill", {-12.5, 34.5}, defines.direction.north}}
commandqueue[29733] = {{"build", "small-electric-pole", {-17.5, 33.5}, defines.direction.north}}
commandqueue[29734] = {{"build", "wooden-chest", {-12.5, 32.5}, defines.direction.north}}
commandqueue[29735] = {{"build", "wooden-chest", {-15.5, 32.5}, defines.direction.north}}
commandqueue[29751] = {{"build", "electric-mining-drill", {-19.5, 34.5}, defines.direction.north}}
commandqueue[29752] = {{"build", "wooden-chest", {-19.5, 32.5}, defines.direction.north}}
commandqueue[29772] = {{"build", "electric-mining-drill", {-22.5, 34.5}, defines.direction.north}}
commandqueue[29773] = {{"build", "wooden-chest", {-22.5, 32.5}, defines.direction.north}}
commandqueue[29730] = {{"move", "W"}}
commandqueue[29846] = {{"move", "SW"}}
commandqueue[29862] = {{"move", "STOP"}}
--Presently at: (-32.07421875,33.54687500)
commandqueue[29878] = {{"take", {-26.5, 32.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[29896] = {{"take", {-29.5, 32.5}, "iron-ore", "all", defines.inventory.chest}}
commandqueue[29897] = {{"build", "wooden-chest", {-33.5, 32.5}, defines.direction.north}}
commandqueue[29898] = {{"build", "electric-mining-drill", {-33.5, 34.5}, defines.direction.north}}
commandqueue[29863] = {{"move", "S"}}
commandqueue[29913] = {{"move", "STOP"}}
--Presently at: (-32.07421875,40.96875000)
commandqueue[29915] = {{"take", {-36.5, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[29925] = {{"take", {-34.5, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[29935] = {{"take", {-32.5, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[29945] = {{"take", {-30.5, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[29955] = {{"take", {-28.5, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[29965] = {{"take", {-26.5, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[29975] = {{"take", {-24.5, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[29985] = {{"take", {-22.5, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[29995] = {{"take", {-20.5, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[30005] = {{"take", {-18.5, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[30015] = {{"take", {-16.5, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[30025] = {{"take", {-14.5, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[30035] = {{"take", {-12.5, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[30045] = {{"take", {-10.5, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[29938] = {{"craft", "steam-engine", 1}}
commandqueue[29997] = {{"put", {-21, 42}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[30007] = {{"put", {-19, 42}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[30017] = {{"put", {-17, 42}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[30027] = {{"put", {-15, 42}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[30037] = {{"put", {-13, 42}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[30047] = {{"put", {-11, 42}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[29914] = {{"move", "E"}}
commandqueue[30063] = {{"move", "STOP"}}
--Presently at: (-9.95703125,40.96875000)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-10.2695,40.8555)
commandqueue[30029] = {{"put", {-9.5, 40}, "iron-plate", 20, defines.inventory.assembling_machine_input}}
commandqueue[30030] = {{"take", {-9.5, 40}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[30032] = {{"put", {-9.5, 42.5}, "copper-cable", 30, defines.inventory.assembling_machine_input}}
commandqueue[30033] = {{"put", {-9.5, 42.5}, "iron-plate", 10, defines.inventory.assembling_machine_input}}
commandqueue[30034] = {{"take", {-9.5, 42.5}, "electronic-circuit", "all", defines.inventory.assembling_machine_output}}
commandqueue[30038] = {{"craft", "steam-engine", 1}}
commandqueue[30039] = {{"craft", "pipe", 3}}
commandqueue[30061] = {{"put", {-6.5, 40}, "iron-plate", 20, defines.inventory.assembling_machine_input}}
commandqueue[30062] = {{"take", {-6.5, 40}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[30065] = {{"put", {-6.5, 42.5}, "copper-cable", 30, defines.inventory.assembling_machine_input}}
commandqueue[30066] = {{"put", {-6.5, 42.5}, "iron-plate", 4, defines.inventory.assembling_machine_input}}
commandqueue[30067] = {{"take", {-6.5, 42.5}, "electronic-circuit", "all", defines.inventory.assembling_machine_output}}
commandqueue[30144] = {{"tech", "electronics"}}
commandqueue[30064] = {{"move", "N"}}
commandqueue[30075] = {{"move", "NE"}}
commandqueue[30078] = {{"move", "STOP"}}
--Presently at: (-9.95309375,38.90624125)
commandqueue[30079] = {{"move", "E"}}
commandqueue[30105] = {{"move", "STOP"}}
--Presently at: (-6.09371875,38.90624125)
commandqueue[30103] = {{"put", {-2.5, 40.5}, "copper-plate", 2, defines.inventory.assembling_machine_input}}
commandqueue[30104] = {{"put", {-2.5, 40.5}, "iron-gear-wheel", 2, defines.inventory.assembling_machine_input}}
commandqueue[30107] = {{"take", {-3, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[30108] = {{"take", {-9, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[30114] = {{"take", {-3, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[30115] = {{"take", {-9, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[30121] = {{"take", {-3, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[30122] = {{"take", {-9, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[30128] = {{"take", {-3, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[30129] = {{"take", {-9, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[30135] = {{"take", {-3, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[30136] = {{"take", {-9, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[30106] = {{"move", "N"}}
commandqueue[30139] = {{"move", "STOP"}}
--Presently at: (-6.09371875,34.00780375)
commandqueue[30140] = {{"move", "S"}}
commandqueue[30174] = {{"move", "STOP"}}
--Presently at: (-6.09371875,39.05467875)
commandqueue[30176] = {{"put", {-6, 43}, "iron-plate", 6, defines.inventory.assembling_machine_input}}
commandqueue[30197] = {{"take", {-8, 40}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[30198] = {{"take", {-6, 40}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[30199] = {{"craft", "transport-belt", 2}}
commandqueue[30200] = {{"craft", "electric-mining-drill", 1}}
commandqueue[30201] = {{"craft", "inserter", 1}}
commandqueue[30202] = {{"craft", "science-pack-1", 2}}
commandqueue[30175] = {{"move", "E"}}
commandqueue[30444] = {{"move", "NE"}}
commandqueue[30504] = {{"move", "STOP"}}
--Presently at: (40.16409375,32.72655375)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (40.035,32.7031)
commandqueue[30424] = {{"build", "steam-engine", {28.5, 38.5}, defines.direction.east}}
commandqueue[30446] = {{"build", "transport-belt", {39.5, 40.5}, defines.direction.north}}
commandqueue[30447] = {{"build", "transport-belt", {39.5, 39.5}, defines.direction.north}}
commandqueue[30448] = {{"build", "transport-belt", {39.5, 38.5}, defines.direction.north}}
commandqueue[30449] = {{"build", "pipe", {38.5, 40.5}, defines.direction.north}}
commandqueue[30450] = {{"build", "pipe", {37.5, 40.5}, defines.direction.north}}
commandqueue[30451] = {{"build", "boiler", {36.5, 38.5}, defines.direction.west}}
commandqueue[30452] = {{"build", "burner-inserter", {38.5, 38.5}, defines.direction.east}}
commandqueue[30453] = {{"put", {38.5, 38.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[30484] = {{"build", "steam-engine", {33.5, 38.5}, defines.direction.east}}
commandqueue[30505] = {{"move", "E"}}
commandqueue[30544] = {{"move", "SE"}}
commandqueue[30614] = {{"move", "STOP"}}
--Presently at: (53.20687500,40.08593750)
commandqueue[30616] = {{"build", "electric-mining-drill", {57.5, 40.5}, defines.direction.west}}
commandqueue[30630] = {{"build", "small-electric-pole", {58.1, 42.1}, defines.direction.north}}
commandqueue[30636] = {{"build", "inserter", {56.5, 42.5}, defines.direction.east}}
commandqueue[30650] = {{"build", "electric-mining-drill", {57.5, 44.5}, defines.direction.north}}
commandqueue[30615] = {{"move", "S"}}
commandqueue[30642] = {{"move", "SW"}}
commandqueue[30662] = {{"move", "STOP"}}
--Presently at: (51.09750000,46.20312500)
commandqueue[30664] = {{"take", {51.5, 42.5}, "stone-furnace", "all", defines.inventory.chest}}
commandqueue[30663] = {{"move", "W"}}
commandqueue[30710] = {{"move", "NW"}}
commandqueue[30736] = {{"move", "STOP"}}
--Presently at: (41.37875000,43.46093750)
commandqueue[30737] = {{"move", "N"}}
commandqueue[30754] = {{"move", "STOP"}}
--Presently at: (41.37875000,40.40625000)
commandqueue[30755] = {{"move", "W"}}
commandqueue[30761] = {{"move", "STOP"}}
--Presently at: (40.30062500,40.40625000)
commandqueue[30770] = {{"take", {42.5, 42.5}, "coal", "all", defines.inventory.chest}}
commandqueue[30771] = {{"take", {42.5, 41.5}, "coal", "all", defines.inventory.chest}}
commandqueue[30772] = {{"take", {42.5, 40.5}, "coal", "all", defines.inventory.chest}}
commandqueue[30762] = {{"move", "N"}}
commandqueue[30776] = {{"move", "STOP"}}
--Presently at: (40.30062500,37.89062500)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (39.512,37.5586)
commandqueue[30777] = {{"move", "W"}}
commandqueue[30782] = {{"move", "NW"}}
commandqueue[30791] = {{"move", "STOP"}}
--Presently at: (37.82059375,36.60938125)
commandqueue[30792] = {{"move", "W"}}
commandqueue[31023] = {{"move", "NW"}}
commandqueue[31058] = {{"move", "STOP"}}
--Presently at: (-0.15987500,32.91797500)
commandqueue[31060] = {{"craft", "transport-belt", 4}}
commandqueue[31059] = {{"move", "W"}}
commandqueue[31098] = {{"move", "STOP"}}
--Presently at: (-5.94893750,32.91797500)
commandqueue[31100] = {{"take", {-3, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[31101] = {{"take", {-9, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[31102] = {{"put", {-3, 30}, "coal", 2, defines.inventory.fuel}}
commandqueue[31103] = {{"put", {-5, 30}, "coal", 3, defines.inventory.fuel}}
commandqueue[31104] = {{"put", {-7, 30}, "coal", 3, defines.inventory.fuel}}
commandqueue[31105] = {{"put", {-9, 30}, "coal", 2, defines.inventory.fuel}}
commandqueue[31106] = {{"take", {-3, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[31107] = {{"take", {-9, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[31108] = {{"put", {-3, 32}, "coal", 2, defines.inventory.fuel}}
commandqueue[31109] = {{"put", {-5, 32}, "coal", 3, defines.inventory.fuel}}
commandqueue[31110] = {{"put", {-7, 32}, "coal", 3, defines.inventory.fuel}}
commandqueue[31111] = {{"put", {-9, 32}, "coal", 2, defines.inventory.fuel}}
commandqueue[31112] = {{"take", {-3, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[31113] = {{"take", {-9, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[31114] = {{"put", {-3, 34}, "coal", 2, defines.inventory.fuel}}
commandqueue[31115] = {{"put", {-5, 34}, "coal", 3, defines.inventory.fuel}}
commandqueue[31116] = {{"put", {-7, 34}, "coal", 3, defines.inventory.fuel}}
commandqueue[31117] = {{"put", {-9, 34}, "coal", 2, defines.inventory.fuel}}
commandqueue[31118] = {{"take", {-3, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[31119] = {{"take", {-9, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[31120] = {{"put", {-3, 36}, "coal", 2, defines.inventory.fuel}}
commandqueue[31121] = {{"put", {-5, 36}, "coal", 3, defines.inventory.fuel}}
commandqueue[31122] = {{"put", {-7, 36}, "coal", 3, defines.inventory.fuel}}
commandqueue[31123] = {{"put", {-9, 36}, "coal", 2, defines.inventory.fuel}}
commandqueue[31124] = {{"take", {-3, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[31125] = {{"take", {-9, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[31126] = {{"put", {-3, 38}, "coal", 2, defines.inventory.fuel}}
commandqueue[31127] = {{"put", {-5, 38}, "coal", 3, defines.inventory.fuel}}
commandqueue[31128] = {{"put", {-7, 38}, "coal", 3, defines.inventory.fuel}}
commandqueue[31129] = {{"put", {-9, 38}, "coal", 2, defines.inventory.fuel}}
commandqueue[31099] = {{"move", "S"}}
commandqueue[31140] = {{"move", "STOP"}}
--Presently at: (-5.94893750,39.00391250)
commandqueue[31130] = {{"take", {-6, 40}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[31131] = {{"take", {-8, 40}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[31132] = {{"recipe", {-6.5,42.5}, "burner-inserter"}}
commandqueue[31133] = {{"recipe", {-7.5,42.5}, "transport-belt"}}
commandqueue[31134] = {{"put", {-6.5, 42.5}, "iron-gear-wheel", 6, defines.inventory.assembling_machine_input}}
commandqueue[31135] = {{"put", {-6.5, 42.5}, "iron-plate", 6, defines.inventory.assembling_machine_input}}
commandqueue[31136] = {{"put", {-7.5, 42.5}, "iron-gear-wheel", 6, defines.inventory.assembling_machine_input}}
commandqueue[31137] = {{"put", {-7.5, 42.5}, "iron-plate", 6, defines.inventory.assembling_machine_input}}
commandqueue[31138] = {{"put", {-2.5, 40.5}, "copper-plate", 4, defines.inventory.assembling_machine_input}}
commandqueue[31139] = {{"put", {-2.5, 40.5}, "iron-gear-wheel", 4, defines.inventory.assembling_machine_input}}
commandqueue[31143] = {{"put", {-6, 40}, "iron-plate", 18, defines.inventory.assembling_machine_input}}
commandqueue[31144] = {{"put", {-8, 40}, "iron-plate", 18, defines.inventory.assembling_machine_input}}
commandqueue[31145] = {{"put", {-2.5, 40.5}, "science-pack-1", 2, defines.inventory.assembling_machine_output}}
commandqueue[31141] = {{"move", "W"}}
commandqueue[31176] = {{"move", "STOP"}}
--Presently at: (-11.14425000,39.00391250)
commandqueue[31178] = {{"take", {-11, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[31187] = {{"take", {-13, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[31196] = {{"take", {-15, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[31205] = {{"take", {-17, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[31214] = {{"take", {-19, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[31223] = {{"take", {-21, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[31232] = {{"take", {-23, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[31241] = {{"take", {-25, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[31250] = {{"take", {-27, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[31259] = {{"take", {-29, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[31268] = {{"take", {-31, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[31179] = {{"craft", "iron-gear-wheel", 3}}
commandqueue[31189] = {{"craft", "iron-gear-wheel", 3}}
commandqueue[31201] = {{"craft", "iron-gear-wheel", 4}}
commandqueue[31177] = {{"move", "W"}}
commandqueue[31294] = {{"move", "STOP"}}
--Presently at: (-32.16768750,39.00391250)
commandqueue[31296] = {{"take", {-33, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[31297] = {{"take", {-35, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[31298] = {{"take", {-36.5, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[31295] = {{"move", "S"}}
commandqueue[31308] = {{"move", "SE"}}
commandqueue[31310] = {{"move", "STOP"}}
--Presently at: (-31.95675000,41.14453750)
commandqueue[31311] = {{"move", "E"}}
commandqueue[31458] = {{"move", "NE"}}
commandqueue[31460] = {{"move", "STOP"}}
--Presently at: (-9.92550000,40.93360000)
commandqueue[31431] = {{"take", {-9.5, 41}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[31432] = {{"put", {-9.5, 42.5}, "iron-gear-wheel", 1, defines.inventory.assembling_machine_input}}
commandqueue[31433] = {{"put", {-9.5, 42.5}, "iron-plate", 1, defines.inventory.assembling_machine_input}}
commandqueue[31451] = {{"take", {-6.5, 41}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[31452] = {{"recipe", {-6.5,42.5}, "science-pack-1"}}
commandqueue[31453] = {{"put", {-6.5, 42.5}, "iron-gear-wheel", 3, defines.inventory.assembling_machine_input}}
commandqueue[31454] = {{"put", {-6.5, 42.5}, "copper-plate", 3, defines.inventory.assembling_machine_input}}
commandqueue[31459] = {{"craft", "transport-belt", 10}}
commandqueue[31461] = {{"move", "S"}}
commandqueue[31468] = {{"move", "STOP"}}
--Presently at: (-9.92550000,41.97266250)
commandqueue[31470] = {{"take", {-9.5, 45.5}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[31471] = {{"take", {-6.5, 45.5}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[31472] = {{"put", {-9.5, 45.5}, "copper-plate", 15, defines.inventory.assembling_machine_input}}
commandqueue[31473] = {{"put", {-6.5, 45.5}, "copper-plate", 15, defines.inventory.assembling_machine_input}}
commandqueue[31469] = {{"move", "E"}}
commandqueue[31489] = {{"move", "STOP"}}
--Presently at: (-6.95675000,41.97266250)
commandqueue[31498] = {{"recipe", {-8,43}, "electronic-circuit"}}
commandqueue[31499] = {{"put", {-8, 43}, "copper-cable", 60, defines.inventory.assembling_machine_input}}
commandqueue[31500] = {{"put", {-8, 43}, "iron-plate", 20, defines.inventory.assembling_machine_input}}
commandqueue[31490] = {{"move", "N"}}
commandqueue[31510] = {{"move", "STOP"}}
--Presently at: (-6.95675000,39.00391250)
commandqueue[31511] = {{"move", "E"}}
commandqueue[31518] = {{"move", "STOP"}}
--Presently at: (-5.91768750,39.00391250)
commandqueue[31520] = {{"take", {-7.5, 41}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[31521] = {{"take", {-6.5, 41}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[31522] = {{"put", {-7.5, 41}, "iron-plate", 16, defines.inventory.assembling_machine_input}}
commandqueue[31523] = {{"put", {-6.5, 41}, "iron-plate", 16, defines.inventory.assembling_machine_input}}
commandqueue[31524] = {{"take", {-3, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[31525] = {{"take", {-9, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[31531] = {{"take", {-3, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[31532] = {{"take", {-9, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[31538] = {{"take", {-3, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[31539] = {{"take", {-9, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[31545] = {{"take", {-3, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[31546] = {{"take", {-9, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[31552] = {{"take", {-3, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[31553] = {{"take", {-9, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[31519] = {{"move", "N"}}
commandqueue[31559] = {{"move", "STOP"}}
--Presently at: (-5.91768750,33.06641250)
commandqueue[31561] = {{"craft", "transport-belt", 8}}
commandqueue[31562] = {{"craft", "iron-gear-wheel", 8}}
commandqueue[31560] = {{"move", "W"}}
commandqueue[31600] = {{"move", "STOP"}}
--Presently at: (-11.85518750,33.06641250)
commandqueue[31601] = {{"mine", {-12.5, 32.5}}}
commandqueue[31651] = {{"mine", nil}}
commandqueue[31652] = {{"build", "transport-belt", {-12.5, 32.5}, defines.direction.west}}
commandqueue[31654] = {{"build", "transport-belt", {-13.5, 32.5}, defines.direction.west}}
commandqueue[31655] = {{"build", "transport-belt", {-14.5, 32.5}, defines.direction.west}}
commandqueue[31653] = {{"move", "W"}}
commandqueue[31670] = {{"move", "STOP"}}
--Presently at: (-14.90987500,33.06641250)
commandqueue[31671] = {{"mine", {-15.5, 32.5}}}
commandqueue[31721] = {{"mine", nil}}
commandqueue[31722] = {{"build", "transport-belt", {-15.5, 32.5}, defines.direction.west}}
commandqueue[31724] = {{"build", "transport-belt", {-16.5, 32.5}, defines.direction.west}}
commandqueue[31725] = {{"build", "transport-belt", {-17.5, 32.5}, defines.direction.west}}
commandqueue[31726] = {{"build", "transport-belt", {-18.5, 32.5}, defines.direction.west}}
commandqueue[31723] = {{"move", "W"}}
commandqueue[31746] = {{"move", "STOP"}}
--Presently at: (-19.04268750,33.06641250)
commandqueue[31747] = {{"mine", {-19.5, 32.5}}}
commandqueue[31797] = {{"mine", nil}}
commandqueue[31798] = {{"build", "transport-belt", {-19.5, 32.5}, defines.direction.west}}
commandqueue[31800] = {{"build", "transport-belt", {-20.5, 32.5}, defines.direction.west}}
commandqueue[31801] = {{"build", "transport-belt", {-21.5, 32.5}, defines.direction.west}}
commandqueue[31799] = {{"move", "W"}}
commandqueue[31816] = {{"move", "STOP"}}
--Presently at: (-22.09737500,33.06641250)
commandqueue[31817] = {{"mine", {-22.5, 32.5}}}
commandqueue[31867] = {{"mine", nil}}
commandqueue[31868] = {{"build", "transport-belt", {-22.5, 32.5}, defines.direction.west}}
commandqueue[31870] = {{"build", "transport-belt", {-23.5, 32.5}, defines.direction.west}}
commandqueue[31871] = {{"build", "transport-belt", {-24.5, 32.5}, defines.direction.west}}
commandqueue[31872] = {{"build", "transport-belt", {-25.5, 32.5}, defines.direction.west}}
commandqueue[31869] = {{"move", "W"}}
commandqueue[31892] = {{"move", "STOP"}}
--Presently at: (-26.23018750,33.06641250)
commandqueue[31893] = {{"mine", {-26.5, 32.5}}}
commandqueue[31943] = {{"mine", nil}}
commandqueue[31944] = {{"build", "transport-belt", {-26.5, 32.5}, defines.direction.west}}
commandqueue[31946] = {{"build", "transport-belt", {-27.5, 32.5}, defines.direction.west}}
commandqueue[31947] = {{"build", "transport-belt", {-28.5, 32.5}, defines.direction.west}}
commandqueue[31945] = {{"move", "W"}}
commandqueue[31962] = {{"move", "STOP"}}
--Presently at: (-29.28487500,33.06641250)
commandqueue[31963] = {{"mine", {-29.5, 32.5}}}
commandqueue[32013] = {{"mine", nil}}
commandqueue[32014] = {{"build", "transport-belt", {-29.5, 32.5}, defines.direction.west}}
commandqueue[32016] = {{"build", "transport-belt", {-30.5, 32.5}, defines.direction.west}}
commandqueue[32017] = {{"build", "transport-belt", {-31.5, 32.5}, defines.direction.west}}
commandqueue[32018] = {{"build", "transport-belt", {-32.5, 32.5}, defines.direction.west}}
commandqueue[32015] = {{"move", "W"}}
commandqueue[32038] = {{"move", "STOP"}}
--Presently at: (-33.41768750,33.06641250)
commandqueue[32039] = {{"mine", {-33.5, 32.5}}}
commandqueue[32089] = {{"mine", nil}}
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-33.0078,32.8945)
commandqueue[32091] = {{"build", "transport-belt", {-33.5, 32.5}, defines.direction.west}}
commandqueue[32092] = {{"build", "transport-belt", {-34.5, 32.5}, defines.direction.west}}
commandqueue[32093] = {{"build", "transport-belt", {-35.5, 32.5}, defines.direction.west}}
commandqueue[32094] = {{"build", "transport-belt", {-36.5, 32.5}, defines.direction.south}}
commandqueue[32095] = {{"build", "transport-belt", {-35.5, 33.5}, defines.direction.west}}
commandqueue[32096] = {{"build", "transport-belt", {-36.5, 33.5}, defines.direction.west}}
commandqueue[32097] = {{"build", "transport-belt", {-37.5, 33.5}, defines.direction.west}}
commandqueue[32090] = {{"move", "N"}}
commandqueue[32098] = {{"move", "STOP"}}
--Presently at: (-33.00780000,31.70700000)
commandqueue[32099] = {{"move", "E"}}
commandqueue[32246] = {{"move", "SE"}}
commandqueue[32259] = {{"move", "STOP"}}
--Presently at: (-9.81639375,33.07809375)
commandqueue[32260] = {{"move", "E"}}
commandqueue[32272] = {{"move", "STOP"}}
--Presently at: (-8.03514375,33.07809375)
commandqueue[32274] = {{"take", {-3.5, 30.5}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[32275] = {{"take", {-9, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[32281] = {{"take", {-3.5, 32.5}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[32282] = {{"take", {-9, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[32288] = {{"take", {-3.5, 34.5}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[32289] = {{"take", {-9, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[32295] = {{"take", {-3.5, 36.5}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[32296] = {{"take", {-9, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[32302] = {{"take", {-3.5, 38.5}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[32303] = {{"take", {-9, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[32273] = {{"move", "S"}}
commandqueue[32313] = {{"move", "STOP"}}
--Presently at: (-8.03514375,39.01559375)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-8.0938,38.8672)
commandqueue[32304] = {{"take", {-8, 40}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[32305] = {{"take", {-6, 40}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[32306] = {{"put", {-8, 40}, "iron-plate", 16, defines.inventory.assembling_machine_input}}
commandqueue[32307] = {{"put", {-6, 40}, "iron-plate", 16, defines.inventory.assembling_machine_input}}
commandqueue[32308] = {{"craft", "transport-belt", 4}}
commandqueue[32314] = {{"move", "W"}}
commandqueue[32333] = {{"move", "SW"}}
commandqueue[32335] = {{"move", "STOP"}}
--Presently at: (-11.12500000,39.07813750)
commandqueue[32337] = {{"take", {-11, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[32346] = {{"take", {-13, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[32355] = {{"take", {-15, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[32364] = {{"take", {-17, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[32373] = {{"take", {-19, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[32382] = {{"take", {-21, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[32391] = {{"take", {-23, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[32400] = {{"take", {-25, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[32409] = {{"take", {-27, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[32418] = {{"take", {-29, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[32427] = {{"take", {-31, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[32436] = {{"take", {-33, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[32445] = {{"take", {-35, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[32454] = {{"take", {-37, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[32338] = {{"craft", "transport-belt", 5}}
commandqueue[32336] = {{"move", "W"}}
commandqueue[32481] = {{"move", "STOP"}}
--Presently at: (-37.17968750,39.07813750)
commandqueue[32483] = {{"craft", "burner-inserter", 13}}
commandqueue[32485] = {{"craft", "electric-mining-drill", 2}}
commandqueue[32482] = {{"move", "N"}}
commandqueue[32484] = {{"move", "NW"}}
commandqueue[32535] = {{"move", "STOP"}}
--Presently at: (-42.55859375,33.40235625)
commandqueue[32529] = {{"build", "transport-belt", {-38.5, 33.5}, defines.direction.west}}
commandqueue[32530] = {{"build", "transport-belt", {-39.5, 33.5}, defines.direction.west}}
commandqueue[32531] = {{"build", "transport-belt", {-40.5, 33.5}, defines.direction.west}}
commandqueue[32532] = {{"build", "transport-belt", {-41.5, 33.5}, defines.direction.west}}
commandqueue[32533] = {{"build", "transport-belt", {-42.5, 33.5}, defines.direction.west}}
commandqueue[32534] = {{"build", "transport-belt", {-43.5, 33.5}, defines.direction.west}}
commandqueue[32537] = {{"build", "transport-belt", {-44.5, 33.5}, defines.direction.west}}
commandqueue[32539] = {{"build", "burner-inserter", {-39.5, 32.5}, defines.direction.south}}
commandqueue[32542] = {{"build", "transport-belt", {-45.5, 33.5}, defines.direction.west}}
commandqueue[32549] = {{"build", "burner-inserter", {-41.5, 32.5}, defines.direction.south}}
commandqueue[32547] = {{"build", "transport-belt", {-46.5, 33.5}, defines.direction.west}}
commandqueue[32559] = {{"build", "burner-inserter", {-43.5, 32.5}, defines.direction.south}}
commandqueue[32552] = {{"build", "transport-belt", {-47.5, 33.5}, defines.direction.west}}
commandqueue[32569] = {{"build", "burner-inserter", {-45.5, 32.5}, defines.direction.south}}
commandqueue[32557] = {{"build", "transport-belt", {-48.5, 33.5}, defines.direction.west}}
commandqueue[32579] = {{"build", "burner-inserter", {-47.5, 32.5}, defines.direction.south}}
commandqueue[32562] = {{"build", "transport-belt", {-49.5, 33.5}, defines.direction.west}}
commandqueue[32567] = {{"build", "transport-belt", {-50.5, 33.5}, defines.direction.west}}
commandqueue[32572] = {{"build", "transport-belt", {-51.5, 33.5}, defines.direction.west}}
commandqueue[32577] = {{"build", "transport-belt", {-52.5, 33.5}, defines.direction.west}}
commandqueue[32582] = {{"build", "transport-belt", {-53.5, 33.5}, defines.direction.west}}
commandqueue[32587] = {{"build", "transport-belt", {-54.5, 33.5}, defines.direction.west}}
commandqueue[32592] = {{"build", "transport-belt", {-55.5, 33.5}, defines.direction.west}}
commandqueue[32597] = {{"build", "transport-belt", {-56.5, 33.5}, defines.direction.west}}
commandqueue[32602] = {{"build", "transport-belt", {-57.5, 33.5}, defines.direction.west}}
commandqueue[32607] = {{"build", "transport-belt", {-58.5, 33.5}, defines.direction.west}}
commandqueue[32612] = {{"build", "transport-belt", {-59.5, 33.5}, defines.direction.west}}
commandqueue[32617] = {{"build", "transport-belt", {-60.5, 33.5}, defines.direction.west}}
commandqueue[32622] = {{"build", "transport-belt", {-61.5, 33.5}, defines.direction.west}}
commandqueue[32627] = {{"build", "transport-belt", {-62.5, 33.5}, defines.direction.west}}
commandqueue[32632] = {{"build", "transport-belt", {-63.5, 33.5}, defines.direction.west}}
commandqueue[32637] = {{"build", "transport-belt", {-64.5, 33.5}, defines.direction.west}}
commandqueue[32642] = {{"build", "transport-belt", {-65.5, 33.5}, defines.direction.west}}
commandqueue[32647] = {{"build", "transport-belt", {-66.5, 33.5}, defines.direction.west}}
commandqueue[32652] = {{"build", "transport-belt", {-67.5, 33.5}, defines.direction.west}}
commandqueue[32657] = {{"build", "transport-belt", {-68.5, 33.5}, defines.direction.west}}
commandqueue[32662] = {{"build", "transport-belt", {-69.5, 33.5}, defines.direction.west}}
commandqueue[32667] = {{"build", "transport-belt", {-70.5, 33.5}, defines.direction.west}}
commandqueue[32672] = {{"build", "transport-belt", {-71.5, 33.5}, defines.direction.west}}
commandqueue[32677] = {{"build", "transport-belt", {-72.5, 33.5}, defines.direction.west}}
commandqueue[32682] = {{"build", "transport-belt", {-73.5, 33.5}, defines.direction.west}}
commandqueue[32687] = {{"build", "transport-belt", {-74.5, 33.5}, defines.direction.west}}
commandqueue[32692] = {{"build", "transport-belt", {-75.5, 33.5}, defines.direction.west}}
commandqueue[32697] = {{"build", "transport-belt", {-76.5, 33.5}, defines.direction.west}}
commandqueue[32702] = {{"build", "transport-belt", {-77.5, 33.5}, defines.direction.west}}
commandqueue[32707] = {{"build", "transport-belt", {-78.5, 33.5}, defines.direction.west}}
commandqueue[32712] = {{"build", "transport-belt", {-79.5, 33.5}, defines.direction.west}}
commandqueue[32717] = {{"build", "transport-belt", {-80.5, 33.5}, defines.direction.west}}
commandqueue[32722] = {{"build", "transport-belt", {-81.5, 33.5}, defines.direction.west}}
commandqueue[32727] = {{"build", "transport-belt", {-82.5, 33.5}, defines.direction.west}}
commandqueue[32538] = {{"build", "stone-furnace", {-40, 31}, defines.direction.north}}
commandqueue[32540] = {{"put", {-40, 31}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[32541] = {{"put", {-40, 31}, "coal", 1, defines.inventory.fuel}}
commandqueue[32548] = {{"build", "stone-furnace", {-42, 31}, defines.direction.north}}
commandqueue[32550] = {{"put", {-42, 31}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[32551] = {{"put", {-42, 31}, "coal", 1, defines.inventory.fuel}}
commandqueue[32558] = {{"build", "stone-furnace", {-44, 31}, defines.direction.north}}
commandqueue[32560] = {{"put", {-44, 31}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[32561] = {{"put", {-44, 31}, "coal", 1, defines.inventory.fuel}}
commandqueue[32568] = {{"build", "stone-furnace", {-46, 31}, defines.direction.north}}
commandqueue[32570] = {{"put", {-46, 31}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[32571] = {{"put", {-46, 31}, "coal", 1, defines.inventory.fuel}}
commandqueue[32578] = {{"build", "stone-furnace", {-48, 31}, defines.direction.north}}
commandqueue[32580] = {{"put", {-48, 31}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[32581] = {{"put", {-48, 31}, "coal", 1, defines.inventory.fuel}}
commandqueue[32588] = {{"build", "stone-furnace", {-50, 31}, defines.direction.north}}
commandqueue[32590] = {{"put", {-50, 31}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[32591] = {{"put", {-50, 31}, "coal", 1, defines.inventory.fuel}}
commandqueue[32598] = {{"build", "stone-furnace", {-52, 31}, defines.direction.north}}
commandqueue[32600] = {{"put", {-52, 31}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[32601] = {{"put", {-52, 31}, "coal", 1, defines.inventory.fuel}}
commandqueue[32608] = {{"build", "stone-furnace", {-54, 31}, defines.direction.north}}
commandqueue[32610] = {{"put", {-54, 31}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[32611] = {{"put", {-54, 31}, "coal", 1, defines.inventory.fuel}}
commandqueue[32618] = {{"build", "stone-furnace", {-56, 31}, defines.direction.north}}
commandqueue[32620] = {{"put", {-56, 31}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[32621] = {{"put", {-56, 31}, "coal", 1, defines.inventory.fuel}}
commandqueue[32628] = {{"build", "stone-furnace", {-58, 31}, defines.direction.north}}
commandqueue[32630] = {{"put", {-58, 31}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[32631] = {{"put", {-58, 31}, "coal", 1, defines.inventory.fuel}}
commandqueue[32638] = {{"build", "stone-furnace", {-60, 31}, defines.direction.north}}
commandqueue[32640] = {{"put", {-60, 31}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[32641] = {{"put", {-60, 31}, "coal", 1, defines.inventory.fuel}}
commandqueue[32648] = {{"build", "stone-furnace", {-62, 31}, defines.direction.north}}
commandqueue[32650] = {{"put", {-62, 31}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[32651] = {{"put", {-62, 31}, "coal", 1, defines.inventory.fuel}}
commandqueue[32658] = {{"build", "stone-furnace", {-64, 31}, defines.direction.north}}
commandqueue[32660] = {{"put", {-64, 31}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[32661] = {{"put", {-64, 31}, "coal", 1, defines.inventory.fuel}}
commandqueue[32668] = {{"build", "stone-furnace", {-66, 31}, defines.direction.north}}
commandqueue[32670] = {{"put", {-66, 31}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[32671] = {{"put", {-66, 31}, "coal", 1, defines.inventory.fuel}}
commandqueue[32678] = {{"build", "stone-furnace", {-68, 31}, defines.direction.north}}
commandqueue[32680] = {{"put", {-68, 31}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[32681] = {{"put", {-68, 31}, "coal", 1, defines.inventory.fuel}}
commandqueue[32688] = {{"build", "stone-furnace", {-70, 31}, defines.direction.north}}
commandqueue[32690] = {{"put", {-70, 31}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[32691] = {{"put", {-70, 31}, "coal", 1, defines.inventory.fuel}}
commandqueue[32698] = {{"build", "stone-furnace", {-72, 31}, defines.direction.north}}
commandqueue[32700] = {{"put", {-72, 31}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[32701] = {{"put", {-72, 31}, "coal", 1, defines.inventory.fuel}}
commandqueue[32708] = {{"build", "stone-furnace", {-74, 31}, defines.direction.north}}
commandqueue[32710] = {{"put", {-74, 31}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[32711] = {{"put", {-74, 31}, "coal", 1, defines.inventory.fuel}}
commandqueue[32718] = {{"build", "stone-furnace", {-76, 31}, defines.direction.north}}
commandqueue[32720] = {{"put", {-76, 31}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[32721] = {{"put", {-76, 31}, "coal", 1, defines.inventory.fuel}}
commandqueue[32728] = {{"build", "stone-furnace", {-78, 31}, defines.direction.north}}
commandqueue[32730] = {{"put", {-78, 31}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[32731] = {{"put", {-78, 31}, "coal", 1, defines.inventory.fuel}}
commandqueue[32738] = {{"build", "stone-furnace", {-80, 31}, defines.direction.north}}
commandqueue[32740] = {{"put", {-80, 31}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[32741] = {{"put", {-80, 31}, "coal", 1, defines.inventory.fuel}}
commandqueue[32748] = {{"build", "stone-furnace", {-82, 31}, defines.direction.north}}
commandqueue[32750] = {{"put", {-82, 31}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[32751] = {{"put", {-82, 31}, "coal", 1, defines.inventory.fuel}}
commandqueue[32758] = {{"build", "stone-furnace", {-84, 31}, defines.direction.north}}
commandqueue[32760] = {{"put", {-84, 31}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[32761] = {{"put", {-84, 31}, "coal", 1, defines.inventory.fuel}}
commandqueue[32536] = {{"move", "W"}}
commandqueue[32765] = {{"move", "STOP"}}
--Presently at: (-83.70703125,33.40235625)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-83.3242,33.6406)
commandqueue[32773] = {{"build", "transport-belt", {-83.5, 33.5}, defines.direction.west}}
commandqueue[32766] = {{"move", "N"}}
commandqueue[32789] = {{"move", "NE"}}
commandqueue[32793] = {{"move", "STOP"}}
--Presently at: (-82.90232500,29.80468750)
commandqueue[32795] = {{"build", "stone-furnace", {-84, 26}, defines.direction.north}}
commandqueue[32796] = {{"put", {-84, 26}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[32797] = {{"put", {-84, 26}, "coal", 1, defines.inventory.fuel}}
commandqueue[32808] = {{"build", "stone-furnace", {-82, 26}, defines.direction.north}}
commandqueue[32809] = {{"put", {-82, 26}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[32810] = {{"put", {-82, 26}, "coal", 1, defines.inventory.fuel}}
commandqueue[32821] = {{"build", "stone-furnace", {-80, 26}, defines.direction.north}}
commandqueue[32822] = {{"put", {-80, 26}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[32823] = {{"put", {-80, 26}, "coal", 1, defines.inventory.fuel}}
commandqueue[32834] = {{"build", "stone-furnace", {-78, 26}, defines.direction.north}}
commandqueue[32835] = {{"put", {-78, 26}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[32836] = {{"put", {-78, 26}, "coal", 1, defines.inventory.fuel}}
commandqueue[32873] = {{"build", "stone-furnace", {-72, 26}, defines.direction.north}}
commandqueue[32874] = {{"put", {-72, 26}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[32875] = {{"put", {-72, 26}, "coal", 1, defines.inventory.fuel}}
commandqueue[32886] = {{"build", "stone-furnace", {-70, 26}, defines.direction.north}}
commandqueue[32887] = {{"put", {-70, 26}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[32888] = {{"put", {-70, 26}, "coal", 1, defines.inventory.fuel}}
commandqueue[32904] = {{"take", {-68, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[32899] = {{"build", "stone-furnace", {-68, 26}, defines.direction.north}}
commandqueue[32900] = {{"put", {-68, 26}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[32901] = {{"put", {-68, 26}, "coal", 1, defines.inventory.fuel}}
commandqueue[32917] = {{"take", {-66, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[32912] = {{"build", "stone-furnace", {-66, 26}, defines.direction.north}}
commandqueue[32913] = {{"put", {-66, 26}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[32914] = {{"put", {-66, 26}, "coal", 1, defines.inventory.fuel}}
commandqueue[32930] = {{"take", {-64, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[32925] = {{"build", "stone-furnace", {-64, 26}, defines.direction.north}}
commandqueue[32926] = {{"put", {-64, 26}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[32927] = {{"put", {-64, 26}, "coal", 1, defines.inventory.fuel}}
commandqueue[32943] = {{"take", {-62, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[32938] = {{"build", "stone-furnace", {-62, 26}, defines.direction.north}}
commandqueue[32939] = {{"put", {-62, 26}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[32940] = {{"put", {-62, 26}, "coal", 1, defines.inventory.fuel}}
commandqueue[32956] = {{"take", {-60, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[32951] = {{"build", "stone-furnace", {-60, 26}, defines.direction.north}}
commandqueue[32952] = {{"put", {-60, 26}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[32953] = {{"put", {-60, 26}, "coal", 1, defines.inventory.fuel}}
commandqueue[32969] = {{"take", {-58, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[32964] = {{"build", "stone-furnace", {-58, 26}, defines.direction.north}}
commandqueue[32965] = {{"put", {-58, 26}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[32966] = {{"put", {-58, 26}, "coal", 1, defines.inventory.fuel}}
commandqueue[32982] = {{"take", {-56, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[32993] = {{"build", "burner-inserter", {-55.5, 32.5}, defines.direction.south}}
commandqueue[32994] = {{"put", {-55.5, 32.5}, "wood", 1, defines.inventory.fuel}}
commandqueue[32995] = {{"take", {-54, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[32990] = {{"build", "stone-furnace", {-54, 26}, defines.direction.north}}
commandqueue[32991] = {{"put", {-54, 26}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[32992] = {{"put", {-54, 26}, "coal", 1, defines.inventory.fuel}}
commandqueue[33006] = {{"build", "burner-inserter", {-53.5, 32.5}, defines.direction.south}}
commandqueue[33007] = {{"put", {-53.5, 32.5}, "wood", 1, defines.inventory.fuel}}
commandqueue[33008] = {{"take", {-52, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[33003] = {{"build", "stone-furnace", {-52, 26}, defines.direction.north}}
commandqueue[33004] = {{"put", {-52, 26}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[33005] = {{"put", {-52, 26}, "coal", 1, defines.inventory.fuel}}
commandqueue[33019] = {{"build", "burner-inserter", {-51.5, 32.5}, defines.direction.south}}
commandqueue[33020] = {{"put", {-51.5, 32.5}, "wood", 1, defines.inventory.fuel}}
commandqueue[33021] = {{"take", {-50, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[33016] = {{"build", "stone-furnace", {-50, 26}, defines.direction.north}}
commandqueue[33017] = {{"put", {-50, 26}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[33018] = {{"put", {-50, 26}, "coal", 1, defines.inventory.fuel}}
commandqueue[33032] = {{"build", "burner-inserter", {-49.5, 32.5}, defines.direction.south}}
commandqueue[33033] = {{"put", {-49.5, 32.5}, "wood", 1, defines.inventory.fuel}}
commandqueue[33034] = {{"take", {-48, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[33029] = {{"build", "stone-furnace", {-48, 26}, defines.direction.north}}
commandqueue[33030] = {{"put", {-48, 26}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[33031] = {{"put", {-48, 26}, "coal", 1, defines.inventory.fuel}}
commandqueue[33047] = {{"take", {-46, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[33042] = {{"build", "stone-furnace", {-46, 26}, defines.direction.north}}
commandqueue[33043] = {{"put", {-46, 26}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[33044] = {{"put", {-46, 26}, "coal", 1, defines.inventory.fuel}}
commandqueue[33060] = {{"take", {-44, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[33055] = {{"build", "stone-furnace", {-44, 26}, defines.direction.north}}
commandqueue[33056] = {{"put", {-44, 26}, "iron-ore", 3, defines.inventory.furnace_source}}
commandqueue[33057] = {{"put", {-44, 26}, "coal", 1, defines.inventory.fuel}}
commandqueue[33073] = {{"take", {-42, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[33068] = {{"build", "stone-furnace", {-42, 26}, defines.direction.north}}
commandqueue[33086] = {{"take", {-40, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[33081] = {{"build", "stone-furnace", {-40, 26}, defines.direction.north}}
commandqueue[32798] = {{"build", "burner-inserter", {-83.5, 32.5}, defines.direction.south}}
commandqueue[32799] = {{"put", {-83.5, 32.5}, "wood", 1, defines.inventory.fuel}}
commandqueue[32811] = {{"build", "burner-inserter", {-81.5, 32.5}, defines.direction.south}}
commandqueue[32812] = {{"put", {-81.5, 32.5}, "wood", 1, defines.inventory.fuel}}
commandqueue[32824] = {{"build", "burner-inserter", {-79.5, 32.5}, defines.direction.south}}
commandqueue[32825] = {{"put", {-79.5, 32.5}, "wood", 1, defines.inventory.fuel}}
commandqueue[32837] = {{"build", "burner-inserter", {-77.5, 32.5}, defines.direction.south}}
commandqueue[32838] = {{"put", {-77.5, 32.5}, "wood", 1, defines.inventory.fuel}}
commandqueue[32850] = {{"build", "burner-inserter", {-75.5, 32.5}, defines.direction.south}}
commandqueue[32851] = {{"put", {-75.5, 32.5}, "wood", 1, defines.inventory.fuel}}
commandqueue[32863] = {{"build", "burner-inserter", {-73.5, 32.5}, defines.direction.south}}
commandqueue[32864] = {{"put", {-73.5, 32.5}, "wood", 1, defines.inventory.fuel}}
commandqueue[32876] = {{"build", "burner-inserter", {-71.5, 32.5}, defines.direction.south}}
commandqueue[32877] = {{"put", {-71.5, 32.5}, "wood", 1, defines.inventory.fuel}}
commandqueue[32889] = {{"build", "burner-inserter", {-69.5, 32.5}, defines.direction.south}}
commandqueue[32890] = {{"put", {-69.5, 32.5}, "wood", 1, defines.inventory.fuel}}
commandqueue[32902] = {{"build", "burner-inserter", {-67.5, 32.5}, defines.direction.south}}
commandqueue[32903] = {{"put", {-67.5, 32.5}, "wood", 1, defines.inventory.fuel}}
commandqueue[32794] = {{"move", "E"}}
commandqueue[33089] = {{"move", "SE"}}
commandqueue[33091] = {{"move", "STOP"}}
--Presently at: (-38.90232500,30.01562500)
commandqueue[33027] = {{"put", {-47.5, 32.5}, "wood", 1, defines.inventory.fuel}}
commandqueue[33040] = {{"put", {-45.5, 32.5}, "wood", 1, defines.inventory.fuel}}
commandqueue[33053] = {{"put", {-43.5, 32.5}, "wood", 1, defines.inventory.fuel}}
commandqueue[33066] = {{"put", {-41.5, 32.5}, "wood", 1, defines.inventory.fuel}}
commandqueue[33079] = {{"put", {-39.5, 32.5}, "wood", 1, defines.inventory.fuel}}
commandqueue[33092] = {{"move", "S"}}
commandqueue[33154] = {{"move", "SE"}}
commandqueue[33173] = {{"move", "STOP"}}
--Presently at: (-36.89841875,41.22265625)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-37.3086,41.0469)
commandqueue[33175] = {{"take", {-37, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[33188] = {{"take", {-35, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[33201] = {{"take", {-33, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[33214] = {{"take", {-31, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[33227] = {{"take", {-29, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[33240] = {{"take", {-27, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[33253] = {{"take", {-25, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[33266] = {{"take", {-23, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[33279] = {{"take", {-21, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[33292] = {{"take", {-19, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[33305] = {{"take", {-17, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[33318] = {{"take", {-15, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[33331] = {{"take", {-13, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[33344] = {{"take", {-11, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[33176] = {{"craft", "transport-belt", 1}}
commandqueue[33174] = {{"move", "E"}}
commandqueue[33345] = {{"move", "NE"}}
commandqueue[33366] = {{"move", "STOP"}}
--Presently at: (-9.71093375,38.83203125)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-10.1328,39.4648)
commandqueue[33347] = {{"put", {-9, 43}, "copper-cable", 60, defines.inventory.assembling_machine_input}}
commandqueue[33348] = {{"put", {-9, 43}, "iron-plate", 20, defines.inventory.assembling_machine_input}}
commandqueue[33368] = {{"put", {-8, 40}, "iron-plate", 30, defines.inventory.assembling_machine_input}}
commandqueue[33369] = {{"put", {-6, 40}, "iron-plate", 30, defines.inventory.assembling_machine_input}}
commandqueue[33370] = {{"take", {-8, 43}, "electronic-circuit", "all", defines.inventory.assembling_machine_output}}
commandqueue[33371] = {{"take", {-8, 40}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[33372] = {{"take", {-6, 40}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[33373] = {{"craft", "electric-mining-drill", 2}}
commandqueue[33367] = {{"move", "E"}}
commandqueue[33392] = {{"move", "NE"}}
commandqueue[33397] = {{"move", "STOP"}}
--Presently at: (-5.89451875,38.93745625)
commandqueue[33399] = {{"take", {-3, 38.5}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[33400] = {{"take", {-9, 38.5}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[33406] = {{"take", {-3, 36.5}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[33407] = {{"take", {-9, 36.5}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[33413] = {{"take", {-3, 34.5}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[33414] = {{"take", {-9, 34.5}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[33420] = {{"take", {-3, 32.5}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[33421] = {{"take", {-9, 32.5}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[33427] = {{"take", {-3, 30.5}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[33428] = {{"take", {-9, 30.5}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[33398] = {{"move", "N"}}
commandqueue[33431] = {{"move", "NW"}}
commandqueue[33433] = {{"move", "STOP"}}
--Presently at: (-6.10545625,33.82808125)
commandqueue[33434] = {{"move", "S"}}
commandqueue[33469] = {{"move", "STOP"}}
--Presently at: (-6.10545625,39.02339375)
commandqueue[33470] = {{"move", "E"}}
commandqueue[33485] = {{"move", "STOP"}}
--Presently at: (-3.87889375,39.02339375)
commandqueue[33486] = {{"move", "S"}}
commandqueue[33507] = {{"move", "SE"}}
commandqueue[33516] = {{"move", "STOP"}}
--Presently at: (-2.92967500,43.08980000)
commandqueue[33513] = {{"take", {-8, 40}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[33514] = {{"take", {-6, 40}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[33515] = {{"recipe", {-7.5,45.5}, "science-pack-1"}}
commandqueue[33518] = {{"put", {-7.5, 45.5}, "iron-gear-wheel", 3, defines.inventory.assembling_machine_input}}
commandqueue[33519] = {{"put", {-7.5, 45.5}, "copper-plate", 3, defines.inventory.assembling_machine_input}}
commandqueue[33520] = {{"recipe", {-5.5,45.5}, "science-pack-1"}}
commandqueue[33521] = {{"put", {-5.5, 45.5}, "iron-gear-wheel", 3, defines.inventory.assembling_machine_input}}
commandqueue[33522] = {{"put", {-5.5, 45.5}, "copper-plate", 3, defines.inventory.assembling_machine_input}}
commandqueue[33523] = {{"put", {-2, 41}, "iron-gear-wheel", 1, defines.inventory.assembling_machine_input}}
commandqueue[33524] = {{"put", {-2, 41}, "copper-plate", 1, defines.inventory.assembling_machine_input}}
commandqueue[33525] = {{"craft", "electric-mining-drill", 2}}
commandqueue[33526] = {{"craft", "burner-inserter", 5}}
commandqueue[33527] = {{"craft", "wood", 10}}
commandqueue[33517] = {{"move", "E"}}
commandqueue[33665] = {{"move", "NE"}}
commandqueue[33723] = {{"move", "STOP"}}
--Presently at: (25.15626250,36.97261250)
commandqueue[33724] = {{"move", "E"}}
commandqueue[33845] = {{"move", "STOP"}}
--Presently at: (43.11720000,36.97261250)
commandqueue[33844] = {{"build", "electric-mining-drill", {45.5, 32.5}, defines.direction.west}}
commandqueue[33848] = {{"build", "transport-belt", {43.5, 33.5}, defines.direction.south}}
commandqueue[33849] = {{"build", "transport-belt", {43.5, 32.5}, defines.direction.south}}
commandqueue[33846] = {{"move", "S"}}
commandqueue[33891] = {{"move", "STOP"}}
--Presently at: (43.11720000,45.05855000)
commandqueue[33892] = {{"move", "S"}}
commandqueue[33893] = {{"move", "SE"}}
commandqueue[33904] = {{"move", "STOP"}}
--Presently at: (44.27735625,46.36714375)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (43.9492,46.105)
commandqueue[33905] = {{"move", "E"}}
commandqueue[33925] = {{"move", "STOP"}}
--Presently at: (46.91795000,46.10500000)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (46.918,46.1055)
commandqueue[33927] = {{"take", {51.2, 42.9}, "stone-furnace", "all", defines.inventory.chest}}
commandqueue[33926] = {{"move", "W"}}
commandqueue[33945] = {{"move", "NW"}}
commandqueue[33949] = {{"move", "STOP"}}
--Presently at: (43.67578125,45.68359375)
commandqueue[33950] = {{"move", "W"}}
commandqueue[33964] = {{"move", "STOP"}}
--Presently at: (41.16015625,45.68359375)
commandqueue[33965] = {{"move", "N"}}
commandqueue[33993] = {{"move", "STOP"}}
--Presently at: (41.16015625,40.65234375)
commandqueue[33994] = {{"move", "W"}}
commandqueue[33998] = {{"move", "STOP"}}
--Presently at: (40.44140625,40.65234375)
commandqueue[33999] = {{"move", "N"}}
commandqueue[34016] = {{"move", "STOP"}}
--Presently at: (40.44140625,37.59765625)
commandqueue[34013] = {{"take", {42.5, 42.5}, "coal", "all", defines.inventory.chest}}
commandqueue[34014] = {{"take", {42.5, 41.5}, "coal", "all", defines.inventory.chest}}
commandqueue[34015] = {{"take", {42.5, 40.5}, "coal", "all", defines.inventory.chest}}
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (39.8789,39.2617)
commandqueue[34037] = {{"build", "electric-mining-drill", {41.5, 31.5}, defines.direction.east}}
commandqueue[34047] = {{"build", "small-electric-pole", {42.5, 29.5}, defines.direction.north}}
commandqueue[34048] = {{"build", "transport-belt", {43.5, 31.5}, defines.direction.south}}
commandqueue[34017] = {{"move", "N"}}
commandqueue[34141] = {{"move", "NW"}}
commandqueue[34335] = {{"move", "STOP"}}
--Presently at: (19.41796850,0.39453125)
commandqueue[34334] = {{"craft", "transport-belt", 2}}
commandqueue[34337] = {{"put", {20, -3.5}, "coal", 3, defines.inventory.fuel}}
commandqueue[34338] = {{"take", {20, -3.5}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[34339] = {{"put", {19.5, -5.1}, "wood", 2, defines.inventory.fuel}}
commandqueue[34350] = {{"put", {18, -3.5}, "coal", 3, defines.inventory.fuel}}
commandqueue[34351] = {{"take", {18, -3.5}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[34352] = {{"put", {17.5, -5.1}, "wood", 2, defines.inventory.fuel}}
commandqueue[34363] = {{"put", {16, -3.5}, "coal", 3, defines.inventory.fuel}}
commandqueue[34364] = {{"take", {16, -3.5}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[34365] = {{"put", {15.5, -5.1}, "wood", 2, defines.inventory.fuel}}
commandqueue[34376] = {{"put", {14, -3.5}, "coal", 3, defines.inventory.fuel}}
commandqueue[34377] = {{"take", {14, -3.5}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[34378] = {{"put", {13.5, -5.1}, "wood", 2, defines.inventory.fuel}}
commandqueue[34389] = {{"put", {12, -3.5}, "coal", 3, defines.inventory.fuel}}
commandqueue[34390] = {{"take", {12, -3.5}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[34391] = {{"put", {11.5, -5.1}, "wood", 2, defines.inventory.fuel}}
commandqueue[34402] = {{"put", {10, -3.5}, "coal", 3, defines.inventory.fuel}}
commandqueue[34403] = {{"take", {10, -3.5}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[34404] = {{"put", {9.5, -5.1}, "wood", 2, defines.inventory.fuel}}
commandqueue[34415] = {{"put", {8, -3.5}, "coal", 3, defines.inventory.fuel}}
commandqueue[34416] = {{"take", {8, -3.5}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[34417] = {{"put", {7.5, -5.1}, "wood", 2, defines.inventory.fuel}}
commandqueue[34428] = {{"put", {6, -3.5}, "coal", 3, defines.inventory.fuel}}
commandqueue[34429] = {{"take", {6, -3.5}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[34430] = {{"put", {5.5, -5.1}, "wood", 2, defines.inventory.fuel}}
commandqueue[34441] = {{"put", {4, -3.5}, "coal", 3, defines.inventory.fuel}}
commandqueue[34442] = {{"take", {4, -3.5}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[34443] = {{"put", {3.5, -5.1}, "wood", 2, defines.inventory.fuel}}
commandqueue[34454] = {{"put", {2, -3.5}, "coal", 3, defines.inventory.fuel}}
commandqueue[34455] = {{"take", {2, -3.5}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[34456] = {{"put", {2.5, -5.1}, "wood", 2, defines.inventory.fuel}}
commandqueue[34336] = {{"move", "W"}}
commandqueue[34470] = {{"move", "SW"}}
commandqueue[34505] = {{"move", "STOP"}}
--Presently at: (-4.16406275,4.08593750)
commandqueue[34506] = {{"move", "W"}}
commandqueue[34525] = {{"move", "NW"}}
commandqueue[34536] = {{"move", "STOP"}}
--Presently at: (-8.14453150,2.92578125)
commandqueue[34532] = {{"put", {-5.5, -1.9}, "coal", 3, defines.inventory.fuel}}
commandqueue[34533] = {{"put", {-7.5, -1.9}, "coal", 3, defines.inventory.fuel}}
commandqueue[34534] = {{"put", {-9.5, -1.9}, "coal", 3, defines.inventory.fuel}}
commandqueue[34535] = {{"put", {-10.1, -1.9}, "coal", 3, defines.inventory.fuel}}
commandqueue[34538] = {{"put", {-5, 0}, "coal", 2, defines.inventory.fuel}}
commandqueue[34539] = {{"put", {-7, 0}, "coal", 2, defines.inventory.fuel}}
commandqueue[34540] = {{"put", {-9, 0}, "coal", 2, defines.inventory.fuel}}
commandqueue[34541] = {{"put", {-11, 0}, "coal", 2, defines.inventory.fuel}}
commandqueue[34542] = {{"take", {-5, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[34543] = {{"take", {-7, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[34544] = {{"take", {-9, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[34545] = {{"take", {-11, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[34537] = {{"move", "S"}}
commandqueue[34657] = {{"move", "SW"}}
commandqueue[34732] = {{"move", "STOP"}}
--Presently at: (-16.05468775,28.64843750)
commandqueue[34734] = {{"build", "electric-mining-drill", {-20.5, 30.5}, defines.direction.south}}
commandqueue[34735] = {{"build", "electric-mining-drill", {-17.5, 30.5}, defines.direction.south}}
commandqueue[34736] = {{"build", "electric-mining-drill", {-14.5, 30.5}, defines.direction.south}}
commandqueue[34737] = {{"build", "electric-mining-drill", {-11.5, 30.5}, defines.direction.south}}
commandqueue[34738] = {{"build", "transport-belt", {-11.5, 32.5}, defines.direction.west}}
commandqueue[34733] = {{"move", "E"}}
commandqueue[34799] = {{"move", "SE"}}
commandqueue[34803] = {{"move", "STOP"}}
--Presently at: (-5.83593775,29.07031250)
commandqueue[34805] = {{"take", {-3, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[34806] = {{"take", {-9, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[34819] = {{"take", {-3, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[34820] = {{"take", {-9, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[34833] = {{"take", {-3, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[34834] = {{"take", {-9, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[34847] = {{"take", {-3, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[34848] = {{"take", {-9, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[34861] = {{"take", {-3, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[34862] = {{"take", {-9, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[34804] = {{"move", "S"}}
commandqueue[34870] = {{"move", "SW"}}
commandqueue[34872] = {{"move", "STOP"}}
--Presently at: (-6.04687525,39.07812500)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-6.0117,38.6797)
commandqueue[34843] = {{"put", {-6, 40}, "iron-plate", 10, defines.inventory.assembling_machine_input}}
commandqueue[34844] = {{"put", {-8, 40}, "iron-plate", 10, defines.inventory.assembling_machine_input}}
commandqueue[34845] = {{"take", {-6, 40}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[34846] = {{"take", {-8, 40}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[34850] = {{"craft", "electric-mining-drill", 1}}
commandqueue[34874] = {{"put", {-2.5, 40.5}, "iron-gear-wheel", 3, defines.inventory.assembling_machine_input}}
commandqueue[34875] = {{"put", {-2.5, 40.5}, "copper-plate", 3, defines.inventory.assembling_machine_input}}
commandqueue[34873] = {{"move", "W"}}
commandqueue[34878] = {{"move", "SW"}}
commandqueue[34882] = {{"move", "STOP"}}
--Presently at: (-7.17578125,39.10156250)
commandqueue[34883] = {{"move", "S"}}
commandqueue[34902] = {{"move", "SE"}}
commandqueue[34904] = {{"move", "STOP"}}
--Presently at: (-6.96484375,42.13281250)
commandqueue[34895] = {{"take", {-6, 43}, "science-pack-1", "all", defines.inventory.assembling_machine_output}}
commandqueue[34896] = {{"take", {-6.5, 45.5}, "science-pack-1", "all", defines.inventory.assembling_machine_output}}
commandqueue[34897] = {{"take", {-7.5, 45.5}, "science-pack-1", "all", defines.inventory.assembling_machine_output}}
commandqueue[34898] = {{"put", {-2.5, 42.5}, "science-pack-1", 7, defines.inventory.assembling_machine_output}}
commandqueue[34906] = {{"put", {-6, 45.5}, "iron-gear-wheel", 1, defines.inventory.assembling_machine_input}}
commandqueue[34907] = {{"put", {-6, 45.5}, "copper-plate", 1, defines.inventory.assembling_machine_input}}
commandqueue[34908] = {{"put", {-7, 45.5}, "iron-gear-wheel", 1, defines.inventory.assembling_machine_input}}
commandqueue[34909] = {{"put", {-7, 45.5}, "copper-plate", 1, defines.inventory.assembling_machine_input}}
commandqueue[34910] = {{"put", {-6, 43}, "iron-gear-wheel", 2, defines.inventory.assembling_machine_input}}
commandqueue[34911] = {{"put", {-6, 43}, "copper-plate", 2, defines.inventory.assembling_machine_input}}
commandqueue[34912] = {{"recipe", {-8.5,43.5}, "copper-cable"}}
commandqueue[34913] = {{"put", {-8.5, 43.5}, "copper-plate", 100, defines.inventory.assembling_machine_input}}
commandqueue[34914] = {{"put", {-6, 40}, "iron-plate", 22, defines.inventory.assembling_machine_input}}
commandqueue[34915] = {{"put", {-8, 40}, "iron-plate", 22, defines.inventory.assembling_machine_input}}
commandqueue[34905] = {{"move", "W"}}
commandqueue[34918] = {{"move", "NW"}}
commandqueue[34929] = {{"move", "STOP"}}
--Presently at: (-10.05468750,40.97265625)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-9.8476,41.9062)
commandqueue[34930] = {{"move", "N"}}
commandqueue[34942] = {{"move", "NW"}}
commandqueue[34953] = {{"move", "STOP"}}
--Presently at: (-11.00780625,38.96484375)
commandqueue[34955] = {{"take", {-11, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[34956] = {{"put", {-11, 42}, "coal", 1, defines.inventory.fuel}}
commandqueue[34957] = {{"put", {-11.5, 40.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[34965] = {{"take", {-13, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[34966] = {{"put", {-13, 42}, "coal", 1, defines.inventory.fuel}}
commandqueue[34967] = {{"put", {-14.5, 40.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[34975] = {{"take", {-15, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[34976] = {{"put", {-15, 42}, "coal", 1, defines.inventory.fuel}}
commandqueue[34977] = {{"put", {-16.5, 40.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[34985] = {{"take", {-17, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[34986] = {{"put", {-17, 42}, "coal", 1, defines.inventory.fuel}}
commandqueue[34987] = {{"put", {-18.5, 40.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[34995] = {{"take", {-19, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[34996] = {{"put", {-19, 42}, "coal", 1, defines.inventory.fuel}}
commandqueue[34997] = {{"put", {-20.5, 40.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[35005] = {{"take", {-21, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35006] = {{"put", {-21, 42}, "coal", 1, defines.inventory.fuel}}
commandqueue[35007] = {{"put", {-22.5, 40.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[35015] = {{"take", {-23, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35016] = {{"put", {-23, 42}, "coal", 1, defines.inventory.fuel}}
commandqueue[35017] = {{"put", {-22.5, 40.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[35025] = {{"take", {-25, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35026] = {{"put", {-25, 42}, "coal", 1, defines.inventory.fuel}}
commandqueue[35027] = {{"put", {-25.5, 40.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[35035] = {{"take", {-27, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35036] = {{"put", {-27, 42}, "coal", 1, defines.inventory.fuel}}
commandqueue[35037] = {{"put", {-27.5, 40.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[35045] = {{"take", {-29, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35046] = {{"put", {-29, 42}, "coal", 1, defines.inventory.fuel}}
commandqueue[35047] = {{"put", {-29.5, 40.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[35055] = {{"take", {-31, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35056] = {{"put", {-31, 42}, "coal", 1, defines.inventory.fuel}}
commandqueue[35057] = {{"put", {-31.5, 40.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[35065] = {{"take", {-33, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35066] = {{"put", {-33, 42}, "coal", 1, defines.inventory.fuel}}
commandqueue[35067] = {{"put", {-32.5, 40.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[35075] = {{"take", {-35, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35076] = {{"put", {-35, 42}, "coal", 1, defines.inventory.fuel}}
commandqueue[35077] = {{"put", {-35.5, 40.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[35085] = {{"take", {-37, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35086] = {{"put", {-37, 42}, "coal", 1, defines.inventory.fuel}}
commandqueue[35087] = {{"put", {-36.5, 40.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[34958] = {{"craft", "electric-mining-drill", 1}}
commandqueue[34954] = {{"move", "W"}}
commandqueue[35099] = {{"move", "STOP"}}
--Presently at: (-37.06249375,38.96484375)
commandqueue[35101] = {{"craft", "electric-mining-drill", 1}}
commandqueue[35102] = {{"craft", "electric-mining-drill", 1}}
commandqueue[35103] = {{"craft", "electric-mining-drill", 1}}
commandqueue[35104] = {{"craft", "electric-mining-drill", 1}}
commandqueue[35105] = {{"craft", "electric-mining-drill", 1}}
commandqueue[35100] = {{"move", "N"}}
commandqueue[35120] = {{"move", "NE"}}
commandqueue[35140] = {{"move", "STOP"}}
--Presently at: (-34.95311875,33.88671875)
commandqueue[35141] = {{"move", "N"}}
commandqueue[35158] = {{"move", "NE"}}
commandqueue[35168] = {{"move", "STOP"}}
--Presently at: (-33.89843125,30.30859375)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-34.5,30.457)
commandqueue[35170] = {{"build", "electric-mining-drill", {-29.5, 30.5}, defines.direction.south}}
commandqueue[35171] = {{"build", "electric-mining-drill", {-32.5, 30.5}, defines.direction.south}}
commandqueue[35169] = {{"move", "W"}}
commandqueue[35197] = {{"move", "NW"}}
commandqueue[35202] = {{"move", "STOP"}}
--Presently at: (-39.18359375,29.92968750)
commandqueue[35201] = {{"build", "small-electric-pole", {-37.5, 31.5}, defines.direction.north}}
commandqueue[35204] = {{"take", {-40, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35205] = {{"put", {-40, 31}, "coal", 1, defines.inventory.fuel}}
commandqueue[35207] = {{"put", {-39.5, 32.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[35217] = {{"take", {-42, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35218] = {{"put", {-42, 31}, "coal", 1, defines.inventory.fuel}}
commandqueue[35220] = {{"put", {-41.5, 32.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[35230] = {{"take", {-44, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35231] = {{"put", {-44, 31}, "coal", 1, defines.inventory.fuel}}
commandqueue[35233] = {{"put", {-43.5, 32.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[35232] = {{"take", {-44, 26}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35243] = {{"take", {-46, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35244] = {{"put", {-46, 31}, "coal", 1, defines.inventory.fuel}}
commandqueue[35246] = {{"put", {-45.5, 32.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[35245] = {{"take", {-46, 26}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35256] = {{"take", {-48, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35257] = {{"put", {-48, 31}, "coal", 1, defines.inventory.fuel}}
commandqueue[35259] = {{"put", {-47.5, 32.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[35258] = {{"take", {-48, 26}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35269] = {{"take", {-50, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35270] = {{"put", {-50, 31}, "coal", 1, defines.inventory.fuel}}
commandqueue[35272] = {{"put", {-49.5, 32.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[35271] = {{"take", {-50, 26}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35282] = {{"take", {-52, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35283] = {{"put", {-52, 31}, "coal", 1, defines.inventory.fuel}}
commandqueue[35285] = {{"put", {-51.5, 32.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[35284] = {{"take", {-52, 26}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35295] = {{"take", {-54, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35296] = {{"put", {-54, 31}, "coal", 1, defines.inventory.fuel}}
commandqueue[35298] = {{"put", {-53.5, 32.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[35297] = {{"take", {-54, 26}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35308] = {{"take", {-56, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35309] = {{"put", {-56, 31}, "coal", 1, defines.inventory.fuel}}
commandqueue[35311] = {{"put", {-55.5, 32.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[35321] = {{"take", {-58, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35322] = {{"put", {-58, 31}, "coal", 1, defines.inventory.fuel}}
commandqueue[35324] = {{"build", "burner-inserter", {-57.5, 32.5}, defines.direction.south}}
commandqueue[35325] = {{"put", {-57.5, 32.5}, "raw-wood", 2, defines.inventory.fuel}}
commandqueue[35323] = {{"take", {-58, 26}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35334] = {{"take", {-60, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35335] = {{"put", {-60, 31}, "coal", 1, defines.inventory.fuel}}
commandqueue[35337] = {{"build", "burner-inserter", {-59.5, 32.5}, defines.direction.south}}
commandqueue[35338] = {{"put", {-59.5, 32.5}, "raw-wood", 2, defines.inventory.fuel}}
commandqueue[35336] = {{"take", {-60, 26}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35347] = {{"take", {-62, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35348] = {{"put", {-62, 31}, "coal", 1, defines.inventory.fuel}}
commandqueue[35350] = {{"build", "burner-inserter", {-61.5, 32.5}, defines.direction.south}}
commandqueue[35351] = {{"put", {-61.5, 32.5}, "raw-wood", 2, defines.inventory.fuel}}
commandqueue[35349] = {{"take", {-62, 26}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35360] = {{"take", {-64, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35361] = {{"put", {-64, 31}, "coal", 1, defines.inventory.fuel}}
commandqueue[35363] = {{"build", "burner-inserter", {-63.5, 32.5}, defines.direction.south}}
commandqueue[35364] = {{"put", {-63.5, 32.5}, "raw-wood", 2, defines.inventory.fuel}}
commandqueue[35362] = {{"take", {-64, 26}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35373] = {{"take", {-66, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35374] = {{"put", {-66, 31}, "coal", 1, defines.inventory.fuel}}
commandqueue[35376] = {{"build", "burner-inserter", {-65.5, 32.5}, defines.direction.south}}
commandqueue[35377] = {{"put", {-65.5, 32.5}, "raw-wood", 2, defines.inventory.fuel}}
commandqueue[35375] = {{"take", {-66, 26}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35386] = {{"take", {-68, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35387] = {{"put", {-68, 31}, "coal", 1, defines.inventory.fuel}}
commandqueue[35388] = {{"take", {-68, 26}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35399] = {{"take", {-70, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35400] = {{"put", {-70, 31}, "coal", 1, defines.inventory.fuel}}
commandqueue[35401] = {{"take", {-70, 26}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35412] = {{"take", {-72, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35413] = {{"put", {-72, 31}, "coal", 1, defines.inventory.fuel}}
commandqueue[35414] = {{"take", {-72, 26}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35425] = {{"take", {-74, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35426] = {{"put", {-74, 31}, "coal", 1, defines.inventory.fuel}}
commandqueue[35438] = {{"take", {-76, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35439] = {{"put", {-76, 31}, "coal", 1, defines.inventory.fuel}}
commandqueue[35451] = {{"take", {-78, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35452] = {{"put", {-78, 31}, "coal", 1, defines.inventory.fuel}}
commandqueue[35453] = {{"take", {-78, 26}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35464] = {{"take", {-80, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35465] = {{"put", {-80, 31}, "coal", 1, defines.inventory.fuel}}
commandqueue[35466] = {{"take", {-80, 26}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35477] = {{"take", {-82, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35478] = {{"put", {-82, 31}, "coal", 1, defines.inventory.fuel}}
commandqueue[35479] = {{"take", {-82, 26}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35490] = {{"take", {-84, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35491] = {{"put", {-84, 31}, "raw-wood", 2, defines.inventory.fuel}}
commandqueue[35492] = {{"take", {-84, 26}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35389] = {{"put", {-67.5, 32.5}, "wood", 2, defines.inventory.fuel}}
commandqueue[35253] = {{"build", "small-electric-pole", {-44.5, 29.5}, defines.direction.north}}
commandqueue[35288] = {{"build", "small-electric-pole", {-49.5, 29.5}, defines.direction.north}}
commandqueue[35330] = {{"build", "small-electric-pole", {-56.5, 29.5}, defines.direction.north}}
commandqueue[35365] = {{"build", "small-electric-pole", {-61.5, 29.5}, defines.direction.north}}
commandqueue[35407] = {{"build", "small-electric-pole", {-68.5, 29.5}, defines.direction.north}}
commandqueue[35442] = {{"build", "small-electric-pole", {-73.5, 29.5}, defines.direction.north}}
commandqueue[35484] = {{"build", "small-electric-pole", {-80.5, 29.5}, defines.direction.north}}
commandqueue[35203] = {{"move", "W"}}
commandqueue[35485] = {{"move", "STOP"}}
--Presently at: (-81.04296875,29.92968750)
commandqueue[35552] = {{"take", {-74, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35578] = {{"take", {-70, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35630] = {{"take", {-62, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35656] = {{"take", {-58, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35669] = {{"take", {-56, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35682] = {{"take", {-54, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35695] = {{"take", {-52, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35708] = {{"take", {-50, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35721] = {{"take", {-48, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35734] = {{"take", {-46, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35747] = {{"take", {-44, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35760] = {{"take", {-42, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35773] = {{"take", {-40, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35486] = {{"move", "E"}}
commandqueue[35769] = {{"move", "STOP"}}
--Presently at: (-39.03515625,29.92968750)
commandqueue[35771] = {{"craft", "small-electric-pole", 3}}
commandqueue[35770] = {{"move", "S"}}
commandqueue[35831] = {{"move", "SE"}}
commandqueue[35851] = {{"move", "STOP"}}
--Presently at: (-36.92578125,41.09375000)
commandqueue[35853] = {{"take", {-37, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35866] = {{"take", {-35, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35879] = {{"take", {-33, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35892] = {{"take", {-31, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35905] = {{"take", {-29, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35918] = {{"take", {-27, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35931] = {{"take", {-25, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35944] = {{"take", {-23, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35957] = {{"take", {-21, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35970] = {{"take", {-19, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35983] = {{"take", {-17, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35996] = {{"take", {-15, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[36009] = {{"take", {-13, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[36022] = {{"take", {-11, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[35852] = {{"move", "E"}}
commandqueue[36033] = {{"move", "STOP"}}
--Presently at: (-10.05859375,41.09375000)
commandqueue[35999] = {{"take", {-9.5, 41}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[36000] = {{"put", {-9.5, 41}, "iron-plate", 60, defines.inventory.assembling_machine_input}}
commandqueue[36004] = {{"take", {-9.5, 42.5}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[36019] = {{"take", {-6.5, 41}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[36021] = {{"put", {-6.5, 41}, "iron-plate", 60, defines.inventory.assembling_machine_input}}
commandqueue[36035] = {{"recipe", {-9.5,45.5}, "transport-belt"}}
commandqueue[36036] = {{"put", {-9.5, 45.5}, "iron-gear-wheel", 15, defines.inventory.assembling_machine_input}}
commandqueue[36037] = {{"put", {-9.5, 45.5}, "iron-plate", 15, defines.inventory.assembling_machine_input}}
commandqueue[36038] = {{"recipe", {-6.5,45.5}, "transport-belt"}}
commandqueue[36039] = {{"put", {-6.5, 45.5}, "iron-gear-wheel", 15, defines.inventory.assembling_machine_input}}
commandqueue[36034] = {{"move", "S"}}
commandqueue[36040] = {{"move", "STOP"}}
--Presently at: (-10.05859375,41.98437500)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-10.2773,41.0938)
commandqueue[36042] = {{"put", {-6.5, 45.5}, "iron-plate", 15, defines.inventory.assembling_machine_input}}
commandqueue[36041] = {{"move", "E"}}
commandqueue[36078] = {{"move", "SE"}}
commandqueue[36097] = {{"move", "STOP"}}
--Presently at: (-2.78124925,43.09765625)
commandqueue[36095] = {{"take", {-8, 41}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[36096] = {{"take", {-6, 41}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[36099] = {{"put", {-5, 43}, "iron-gear-wheel", 2, defines.inventory.assembling_machine_input}}
commandqueue[36100] = {{"put", {-5, 43}, "copper-plate", 2, defines.inventory.assembling_machine_input}}
commandqueue[36101] = {{"put", {-1, 41}, "iron-gear-wheel", 2, defines.inventory.assembling_machine_input}}
commandqueue[36102] = {{"put", {-1, 41}, "copper-plate", 2, defines.inventory.assembling_machine_input}}
commandqueue[36103] = {{"put", {-1, 41}, "science-pack-1", 4, defines.inventory.assembling_machine_output}}
commandqueue[36104] = {{"craft", "electric-mining-drill", 3}}
commandqueue[36098] = {{"move", "E"}}
commandqueue[36245] = {{"move", "NE"}}
commandqueue[36303] = {{"move", "STOP"}}
--Presently at: (25.15625075,36.98046875)
commandqueue[36304] = {{"move", "E"}}
commandqueue[36425] = {{"move", "STOP"}}
--Presently at: (43.11718825,36.98046875)
commandqueue[36426] = {{"move", "S"}}
commandqueue[36471] = {{"move", "STOP"}}
--Presently at: (43.11718825,45.06640625)
commandqueue[36472] = {{"move", "S"}}
commandqueue[36473] = {{"move", "SE"}}
commandqueue[36484] = {{"move", "STOP"}}
--Presently at: (44.27734450,46.37500000)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (43.9492,46.105)
commandqueue[36485] = {{"move", "E"}}
commandqueue[36505] = {{"move", "STOP"}}
--Presently at: (46.91795000,46.10500000)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (46.918,46.1055)
commandqueue[36507] = {{"take", {51.2, 42.9}, "stone-furnace", "all", defines.inventory.chest}}
commandqueue[36506] = {{"move", "W"}}
commandqueue[36525] = {{"move", "NW"}}
commandqueue[36529] = {{"move", "STOP"}}
--Presently at: (43.67578125,45.68359375)
commandqueue[36530] = {{"move", "W"}}
commandqueue[36544] = {{"move", "STOP"}}
--Presently at: (41.16015625,45.68359375)
commandqueue[36545] = {{"move", "N"}}
commandqueue[36573] = {{"move", "STOP"}}
--Presently at: (41.16015625,40.65234375)
commandqueue[36574] = {{"move", "W"}}
commandqueue[36578] = {{"move", "STOP"}}
--Presently at: (40.44140625,40.65234375)
commandqueue[36579] = {{"move", "N"}}
commandqueue[36596] = {{"move", "STOP"}}
--Presently at: (40.44140625,37.59765625)
commandqueue[36593] = {{"take", {42.5, 42.5}, "coal", "all", defines.inventory.chest}}
commandqueue[36594] = {{"take", {42.5, 41.5}, "coal", "all", defines.inventory.chest}}
commandqueue[36595] = {{"take", {42.5, 40.5}, "coal", "all", defines.inventory.chest}}
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (39.7227,37.7539)
commandqueue[36597] = {{"move", "W"}}
commandqueue[36603] = {{"move", "NW"}}
commandqueue[36612] = {{"move", "STOP"}}
--Presently at: (37.88281225,36.80468750)
commandqueue[36613] = {{"move", "W"}}
commandqueue[36850] = {{"move", "NW"}}
commandqueue[36887] = {{"move", "STOP"}}
--Presently at: (-1.19921900,32.90234375)
commandqueue[36888] = {{"move", "W"}}
commandqueue[36920] = {{"move", "STOP"}}
--Presently at: (-5.94921900,32.90234375)
commandqueue[36922] = {{"put", {-3, 30}, "coal", 2, defines.inventory.fuel}}
commandqueue[36923] = {{"put", {-5, 30}, "coal", 3, defines.inventory.fuel}}
commandqueue[36924] = {{"put", {-7, 30}, "coal", 3, defines.inventory.fuel}}
commandqueue[36925] = {{"put", {-9, 30}, "coal", 2, defines.inventory.fuel}}
commandqueue[36926] = {{"take", {-3, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[36927] = {{"take", {-9, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[36928] = {{"put", {-3, 32}, "coal", 2, defines.inventory.fuel}}
commandqueue[36929] = {{"put", {-5, 32}, "coal", 3, defines.inventory.fuel}}
commandqueue[36930] = {{"put", {-7, 32}, "coal", 3, defines.inventory.fuel}}
commandqueue[36931] = {{"put", {-9, 32}, "coal", 2, defines.inventory.fuel}}
commandqueue[36932] = {{"take", {-3, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[36933] = {{"take", {-9, 32}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[36934] = {{"put", {-3, 34}, "coal", 2, defines.inventory.fuel}}
commandqueue[36935] = {{"put", {-5, 34}, "coal", 3, defines.inventory.fuel}}
commandqueue[36936] = {{"put", {-7, 34}, "coal", 3, defines.inventory.fuel}}
commandqueue[36937] = {{"put", {-9, 34}, "coal", 2, defines.inventory.fuel}}
commandqueue[36938] = {{"take", {-3, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[36939] = {{"take", {-9, 34}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[36940] = {{"put", {-3, 36}, "coal", 2, defines.inventory.fuel}}
commandqueue[36941] = {{"put", {-5, 36}, "coal", 3, defines.inventory.fuel}}
commandqueue[36942] = {{"put", {-7, 36}, "coal", 3, defines.inventory.fuel}}
commandqueue[36943] = {{"put", {-9, 36}, "coal", 2, defines.inventory.fuel}}
commandqueue[36944] = {{"take", {-3, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[36945] = {{"take", {-9, 36}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[36946] = {{"put", {-3, 38}, "coal", 2, defines.inventory.fuel}}
commandqueue[36947] = {{"put", {-5, 38}, "coal", 3, defines.inventory.fuel}}
commandqueue[36948] = {{"put", {-7, 38}, "coal", 3, defines.inventory.fuel}}
commandqueue[36949] = {{"put", {-9, 38}, "coal", 2, defines.inventory.fuel}}
commandqueue[36950] = {{"take", {-3, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[36951] = {{"take", {-9, 38}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[36921] = {{"move", "S"}}
commandqueue[36962] = {{"move", "STOP"}}
--Presently at: (-5.94921900,38.98828125)
commandqueue[36964] = {{"take", {-6, 41}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[36965] = {{"take", {-8, 41}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[36966] = {{"put", {-6, 41}, "iron-plate", 44, defines.inventory.assembling_machine_input}}
commandqueue[36967] = {{"put", {-8, 41}, "iron-plate", 44, defines.inventory.assembling_machine_input}}
commandqueue[36968] = {{"take", {-6, 43}, "science-pack-1", "all", defines.inventory.assembling_machine_output}}
commandqueue[36963] = {{"move", "W"}}
commandqueue[36970] = {{"move", "STOP"}}
--Presently at: (-6.98828150,38.98828125)
commandqueue[36972] = {{"recipe", {-8,43}, "electronic-circuit"}}
commandqueue[36973] = {{"put", {-8, 43}, "copper-cable", 99, defines.inventory.assembling_machine_input}}
commandqueue[36974] = {{"put", {-8, 43}, "iron-plate", 33, defines.inventory.assembling_machine_input}}
commandqueue[36975] = {{"put", {-2, 41}, "iron-gear-wheel", 3, defines.inventory.assembling_machine_input}}
commandqueue[36976] = {{"put", {-2, 41}, "copper-plate", 3, defines.inventory.assembling_machine_input}}
commandqueue[36977] = {{"put", {-2, 41}, "science-pack-1", 3, defines.inventory.assembling_machine_output}}
commandqueue[36978] = {{"put", {-5, 43}, "iron-gear-wheel", 3, defines.inventory.assembling_machine_input}}
commandqueue[36979] = {{"put", {-5, 43}, "copper-plate", 3, defines.inventory.assembling_machine_input}}
commandqueue[36980] = {{"recipe", {-6,46}, "iron-gear-wheel"}}
commandqueue[36981] = {{"put", {-6, 46}, "iron-plate", 52, defines.inventory.assembling_machine_input}}
commandqueue[36982] = {{"put", {-8, 46}, "iron-plate", 23, defines.inventory.assembling_machine_input}}
commandqueue[36983] = {{"put", {-8, 46}, "iron-gear-wheel", 23, defines.inventory.assembling_machine_input}}
commandqueue[36984] = {{"take", {-8, 46}, "transport-belt", "all", defines.inventory.assembling_machine_output}}
commandqueue[36971] = {{"move", "S"}}
commandqueue[36992] = {{"move", "STOP"}}
--Presently at: (-6.98828150,42.10546875)
commandqueue[36993] = {{"move", "W"}}
commandqueue[37013] = {{"move", "STOP"}}
--Presently at: (-9.95703150,42.10546875)
commandqueue[37014] = {{"move", "N"}}
commandqueue[37028] = {{"move", "NW"}}
commandqueue[37038] = {{"move", "STOP"}}
--Presently at: (-11.01171900,38.97265625)
commandqueue[37040] = {{"take", {-11, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[37050] = {{"take", {-13, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[37060] = {{"take", {-15, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[37070] = {{"take", {-17, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[37080] = {{"take", {-19, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[37090] = {{"take", {-21, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[37100] = {{"take", {-23, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[37110] = {{"take", {-25, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[37120] = {{"take", {-27, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[37130] = {{"take", {-29, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[37140] = {{"take", {-31, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[37150] = {{"take", {-33, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[37160] = {{"take", {-35, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[37170] = {{"take", {-37, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[37079] = {{"craft", "transport-belt", 5}}
commandqueue[37039] = {{"move", "W"}}
commandqueue[37184] = {{"move", "STOP"}}
--Presently at: (-37.06640650,38.97265625)
commandqueue[37186] = {{"craft", "transport-belt", 5}}
commandqueue[37187] = {{"craft", "transport-belt", 5}}
commandqueue[37185] = {{"move", "N"}}
commandqueue[37207] = {{"move", "NW"}}
commandqueue[37226] = {{"move", "STOP"}}
--Presently at: (-39.07031275,33.70312500)
commandqueue[37228] = {{"take", {-40, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[37229] = {{"put", {-40, 31}, "coal", 2, defines.inventory.fuel}}
commandqueue[37238] = {{"take", {-42, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[37239] = {{"put", {-42, 31}, "coal", 2, defines.inventory.fuel}}
commandqueue[37248] = {{"take", {-44, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[37249] = {{"put", {-44, 31}, "coal", 2, defines.inventory.fuel}}
commandqueue[37258] = {{"take", {-46, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[37259] = {{"put", {-46, 31}, "coal", 2, defines.inventory.fuel}}
commandqueue[37268] = {{"take", {-48, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[37269] = {{"put", {-48, 31}, "coal", 2, defines.inventory.fuel}}
commandqueue[37278] = {{"take", {-50, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[37279] = {{"put", {-50, 31}, "coal", 2, defines.inventory.fuel}}
commandqueue[37288] = {{"take", {-52, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[37289] = {{"put", {-52, 31}, "coal", 2, defines.inventory.fuel}}
commandqueue[37298] = {{"take", {-54, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[37299] = {{"put", {-54, 31}, "coal", 2, defines.inventory.fuel}}
commandqueue[37308] = {{"take", {-56, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[37309] = {{"put", {-56, 31}, "coal", 2, defines.inventory.fuel}}
commandqueue[37318] = {{"take", {-58, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[37319] = {{"put", {-58, 31}, "coal", 2, defines.inventory.fuel}}
commandqueue[37328] = {{"take", {-60, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[37329] = {{"put", {-60, 31}, "coal", 2, defines.inventory.fuel}}
commandqueue[37338] = {{"take", {-62, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[37339] = {{"put", {-62, 31}, "coal", 2, defines.inventory.fuel}}
commandqueue[37348] = {{"take", {-64, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[37349] = {{"put", {-64, 31}, "coal", 2, defines.inventory.fuel}}
commandqueue[37358] = {{"take", {-66, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[37359] = {{"put", {-66, 31}, "coal", 2, defines.inventory.fuel}}
commandqueue[37368] = {{"take", {-68, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[37369] = {{"put", {-68, 31}, "coal", 2, defines.inventory.fuel}}
commandqueue[37378] = {{"take", {-70, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[37379] = {{"put", {-70, 31}, "coal", 2, defines.inventory.fuel}}
commandqueue[37380] = {{"put", {-69.5, 32.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[37388] = {{"take", {-72, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[37389] = {{"put", {-72, 31}, "coal", 2, defines.inventory.fuel}}
commandqueue[37390] = {{"put", {-71.5, 32.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[37398] = {{"take", {-74, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[37399] = {{"put", {-74, 31}, "coal", 2, defines.inventory.fuel}}
commandqueue[37400] = {{"put", {-73.5, 32.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[37408] = {{"take", {-76, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[37409] = {{"put", {-76, 31}, "coal", 2, defines.inventory.fuel}}
commandqueue[37418] = {{"take", {-78, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[37419] = {{"put", {-78, 31}, "coal", 2, defines.inventory.fuel}}
commandqueue[37429] = {{"put", {-80, 31}, "coal", 2, defines.inventory.fuel}}
commandqueue[37439] = {{"put", {-82, 31}, "coal", 2, defines.inventory.fuel}}
commandqueue[37227] = {{"move", "W"}}
commandqueue[37478] = {{"move", "STOP"}}
--Presently at: (-84.17187525,33.70312500)
commandqueue[37479] = {{"move", "N"}}
commandqueue[37485] = {{"move", "NW"}}
commandqueue[37493] = {{"move", "STOP"}}
--Presently at: (-85.01562525,31.96875000)
commandqueue[37504] = {{"build", "small-electric-pole", {-86.5, 26.5}, defines.direction.north}}
commandqueue[37554] = {{"build", "small-electric-pole", {-92.5, 22.5}, defines.direction.north}}
commandqueue[37594] = {{"build", "small-electric-pole", {-98.5, 18.5}, defines.direction.north}}
commandqueue[37644] = {{"build", "small-electric-pole", {-104.5, 14.5}, defines.direction.north}}
commandqueue[37494] = {{"move", "W"}}
commandqueue[37498] = {{"move", "NW"}}
commandqueue[37702] = {{"move", "STOP"}}
--Presently at: (-107.12500025,10.45312500)
commandqueue[37693] = {{"build", "electric-mining-drill", {-110.5, 12.5}, defines.direction.north}}
commandqueue[37694] = {{"build", "small-electric-pole", {-108.5, 9.5}, defines.direction.north}}
commandqueue[37695] = {{"build", "transport-belt", {-110.5, 10.5}, defines.direction.east}}
commandqueue[37696] = {{"build", "transport-belt", {-109.5, 10.5}, defines.direction.east}}
commandqueue[37697] = {{"build", "transport-belt", {-108.5, 10.5}, defines.direction.east}}
commandqueue[37698] = {{"build", "transport-belt", {-107.5, 10.5}, defines.direction.east}}
commandqueue[37699] = {{"build", "transport-belt", {-106.5, 10.5}, defines.direction.east}}
commandqueue[37700] = {{"build", "transport-belt", {-105.5, 10.5}, defines.direction.east}}
commandqueue[37701] = {{"build", "transport-belt", {-104.5, 10.5}, defines.direction.east}}
commandqueue[37704] = {{"build", "electric-mining-drill", {-107.5, 12.5}, defines.direction.north}}
commandqueue[37705] = {{"build", "electric-mining-drill", {-104.5, 12.5}, defines.direction.north}}
commandqueue[37706] = {{"build", "electric-mining-drill", {-105.5, 8.5}, defines.direction.south}}
commandqueue[37707] = {{"build", "electric-mining-drill", {-102.5, 8.5}, defines.direction.south}}
commandqueue[37708] = {{"build", "transport-belt", {-103.5, 10.5}, defines.direction.east}}
commandqueue[37713] = {{"build", "transport-belt", {-102.5, 10.5}, defines.direction.east}}
commandqueue[37718] = {{"build", "transport-belt", {-101.5, 10.5}, defines.direction.east}}
commandqueue[37723] = {{"build", "transport-belt", {-100.5, 10.5}, defines.direction.east}}
commandqueue[37728] = {{"build", "transport-belt", {-99.5, 10.5}, defines.direction.east}}
commandqueue[37733] = {{"build", "transport-belt", {-98.5, 10.5}, defines.direction.east}}
commandqueue[37738] = {{"build", "transport-belt", {-97.5, 10.5}, defines.direction.east}}
commandqueue[37743] = {{"build", "transport-belt", {-96.5, 10.5}, defines.direction.east}}
commandqueue[37748] = {{"build", "transport-belt", {-95.5, 10.5}, defines.direction.east}}
commandqueue[37753] = {{"build", "transport-belt", {-94.5, 10.5}, defines.direction.east}}
commandqueue[37758] = {{"build", "transport-belt", {-93.5, 10.5}, defines.direction.east}}
commandqueue[37763] = {{"build", "transport-belt", {-92.5, 10.5}, defines.direction.east}}
commandqueue[37768] = {{"build", "transport-belt", {-91.5, 10.5}, defines.direction.east}}
commandqueue[37773] = {{"build", "transport-belt", {-90.5, 10.5}, defines.direction.east}}
commandqueue[37778] = {{"build", "transport-belt", {-89.5, 10.5}, defines.direction.east}}
commandqueue[37783] = {{"build", "transport-belt", {-88.5, 10.5}, defines.direction.east}}
commandqueue[37788] = {{"build", "transport-belt", {-87.5, 10.5}, defines.direction.east}}
commandqueue[37793] = {{"build", "transport-belt", {-86.5, 10.5}, defines.direction.east}}
commandqueue[37798] = {{"build", "transport-belt", {-85.5, 10.5}, defines.direction.east}}
commandqueue[37803] = {{"build", "transport-belt", {-84.5, 10.5}, defines.direction.east}}
commandqueue[37808] = {{"build", "transport-belt", {-83.5, 10.5}, defines.direction.east}}
commandqueue[37813] = {{"build", "transport-belt", {-82.5, 10.5}, defines.direction.east}}
commandqueue[37818] = {{"build", "transport-belt", {-81.5, 10.5}, defines.direction.east}}
commandqueue[37823] = {{"build", "transport-belt", {-80.5, 10.5}, defines.direction.east}}
commandqueue[37828] = {{"build", "transport-belt", {-79.5, 10.5}, defines.direction.east}}
commandqueue[37833] = {{"build", "transport-belt", {-78.5, 10.5}, defines.direction.east}}
commandqueue[37838] = {{"build", "transport-belt", {-77.5, 10.5}, defines.direction.east}}
commandqueue[37843] = {{"build", "transport-belt", {-76.5, 10.5}, defines.direction.east}}
commandqueue[37848] = {{"build", "transport-belt", {-75.5, 10.5}, defines.direction.east}}
commandqueue[37853] = {{"build", "transport-belt", {-74.5, 10.5}, defines.direction.east}}
commandqueue[37729] = {{"build", "electric-mining-drill", {-99.5, 8.5}, defines.direction.south}}
commandqueue[37730] = {{"build", "electric-mining-drill", {-101.5, 12.5}, defines.direction.north}}
commandqueue[37731] = {{"build", "small-electric-pole", {-99.5, 11.5}, defines.direction.north}}
commandqueue[37732] = {{"build", "electric-mining-drill", {-96.5, 8.5}, defines.direction.south}}
commandqueue[37873] = {{"build", "transport-belt", {-73.5, 10.5}, defines.direction.east}}
commandqueue[37878] = {{"build", "transport-belt", {-72.5, 10.5}, defines.direction.east}}
commandqueue[37883] = {{"build", "transport-belt", {-71.5, 10.5}, defines.direction.east}}
commandqueue[37888] = {{"build", "transport-belt", {-70.5, 10.5}, defines.direction.east}}
commandqueue[37893] = {{"build", "transport-belt", {-69.5, 10.5}, defines.direction.east}}
commandqueue[37898] = {{"build", "transport-belt", {-68.5, 10.5}, defines.direction.east}}
commandqueue[37903] = {{"build", "transport-belt", {-67.5, 10.5}, defines.direction.east}}
commandqueue[37908] = {{"build", "transport-belt", {-66.5, 10.5}, defines.direction.east}}
commandqueue[37913] = {{"build", "transport-belt", {-65.5, 10.5}, defines.direction.east}}
commandqueue[37918] = {{"build", "transport-belt", {-64.5, 10.5}, defines.direction.east}}
commandqueue[37923] = {{"build", "transport-belt", {-63.5, 10.5}, defines.direction.east}}
commandqueue[37928] = {{"build", "transport-belt", {-62.5, 10.5}, defines.direction.east}}
commandqueue[37933] = {{"build", "transport-belt", {-61.5, 10.5}, defines.direction.east}}
commandqueue[37938] = {{"build", "transport-belt", {-60.5, 10.5}, defines.direction.east}}
commandqueue[37943] = {{"build", "transport-belt", {-59.5, 10.5}, defines.direction.east}}
commandqueue[37948] = {{"build", "transport-belt", {-58.5, 10.5}, defines.direction.east}}
commandqueue[37953] = {{"build", "transport-belt", {-57.5, 10.5}, defines.direction.east}}
commandqueue[37958] = {{"build", "transport-belt", {-56.5, 10.5}, defines.direction.east}}
commandqueue[37963] = {{"build", "transport-belt", {-55.5, 10.5}, defines.direction.east}}
commandqueue[37968] = {{"build", "transport-belt", {-54.5, 10.5}, defines.direction.east}}
commandqueue[37973] = {{"build", "transport-belt", {-53.5, 10.5}, defines.direction.east}}
commandqueue[37978] = {{"build", "transport-belt", {-52.5, 10.5}, defines.direction.east}}
commandqueue[37983] = {{"build", "transport-belt", {-51.5, 10.5}, defines.direction.east}}
commandqueue[37988] = {{"build", "transport-belt", {-50.5, 10.5}, defines.direction.east}}
commandqueue[37993] = {{"build", "transport-belt", {-49.5, 10.5}, defines.direction.east}}
commandqueue[38003] = {{"build", "transport-belt", {-48.5, 10.5}, defines.direction.east}}
commandqueue[38008] = {{"build", "transport-belt", {-47.5, 10.5}, defines.direction.east}}
commandqueue[38013] = {{"build", "transport-belt", {-46.5, 10.5}, defines.direction.east}}
commandqueue[38018] = {{"build", "transport-belt", {-45.5, 10.5}, defines.direction.east}}
commandqueue[38023] = {{"build", "transport-belt", {-44.5, 10.5}, defines.direction.east}}
commandqueue[38028] = {{"build", "transport-belt", {-43.5, 10.5}, defines.direction.east}}
commandqueue[38033] = {{"build", "transport-belt", {-42.5, 10.5}, defines.direction.east}}
commandqueue[38038] = {{"build", "transport-belt", {-41.5, 10.5}, defines.direction.east}}
commandqueue[38043] = {{"build", "transport-belt", {-40.5, 10.5}, defines.direction.east}}
commandqueue[38048] = {{"build", "transport-belt", {-39.5, 10.5}, defines.direction.east}}
commandqueue[37734] = {{"craft", "underground-belt", 1}}
commandqueue[37735] = {{"craft", "inserter", 1}}
commandqueue[37703] = {{"move", "E"}}
commandqueue[38082] = {{"move", "STOP"}}
--Presently at: (-39.02343775,10.45312500)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-38.8672,10.6016)
commandqueue[38078] = {{"build", "transport-belt", {-38.5, 10.5}, defines.direction.south}}
commandqueue[38079] = {{"build", "transport-belt", {-38.5, 11.5}, defines.direction.south}}
commandqueue[38080] = {{"build", "transport-belt", {-38.5, 12.5}, defines.direction.south}}
commandqueue[38083] = {{"move", "E"}}
commandqueue[38087] = {{"move", "STOP"}}
--Presently at: (-38.27343750,10.60156250)
commandqueue[38089] = {{"build", "transport-belt", {-38.5, 13.5}, defines.direction.south}}
commandqueue[38095] = {{"build", "transport-belt", {-38.5, 14.5}, defines.direction.south}}
commandqueue[38101] = {{"build", "transport-belt", {-38.5, 15.5}, defines.direction.south}}
commandqueue[38107] = {{"build", "transport-belt", {-38.5, 16.5}, defines.direction.south}}
commandqueue[38113] = {{"build", "transport-belt", {-38.5, 17.5}, defines.direction.south}}
commandqueue[38119] = {{"build", "transport-belt", {-38.5, 18.5}, defines.direction.south}}
commandqueue[38125] = {{"build", "transport-belt", {-38.5, 19.5}, defines.direction.south}}
commandqueue[38108] = {{"craft", "electric-mining-drill", 1}}
commandqueue[38167] = {{"build", "underground-belt", {-38.5, 20.5}, defines.direction.south}}
commandqueue[38168] = {{"build", "underground-belt", {-38.5, 25.5}, defines.direction.north}}
commandqueue[38088] = {{"move", "S"}}
commandqueue[38139] = {{"move", "STOP"}}
--Presently at: (-38.27343750,19.76562500)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-38.125,20.0156)
commandqueue[38140] = {{"move", "S"}}
commandqueue[38180] = {{"move", "STOP"}}
--Presently at: (-38.12500000,25.95312500)
commandqueue[38171] = {{"build", "transport-belt", {-38.5, 26.5}, defines.direction.south}}
commandqueue[38177] = {{"build", "transport-belt", {-38.5, 27.5}, defines.direction.south}}
commandqueue[38183] = {{"build", "transport-belt", {-38.5, 28.5}, defines.direction.south}}
commandqueue[38189] = {{"build", "transport-belt", {-38.5, 29.5}, defines.direction.south}}
commandqueue[38195] = {{"build", "transport-belt", {-38.5, 30.5}, defines.direction.south}}
commandqueue[38201] = {{"build", "transport-belt", {-38.5, 31.5}, defines.direction.south}}
commandqueue[38181] = {{"move", "S"}}
commandqueue[38215] = {{"move", "STOP"}}
--Presently at: (-38.12500000,32.06250000)
commandqueue[38216] = {{"move", "S"}}
commandqueue[38239] = {{"move", "SE"}}
commandqueue[38288] = {{"move", "STOP"}}
--Presently at: (-32.95703125,40.64453125)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-33.4883,40.6133)
commandqueue[38290] = {{"take", {-37, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[38303] = {{"put", {-35, 42}, "coal", 1, defines.inventory.fuel}}
commandqueue[38302] = {{"take", {-35, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[38314] = {{"take", {-33, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[38326] = {{"take", {-31, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[38338] = {{"take", {-29, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[38350] = {{"take", {-27, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[38363] = {{"put", {-25, 42}, "coal", 1, defines.inventory.fuel}}
commandqueue[38362] = {{"take", {-25, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[38375] = {{"put", {-23, 42}, "coal", 1, defines.inventory.fuel}}
commandqueue[38374] = {{"take", {-23, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[38387] = {{"put", {-21, 42}, "coal", 1, defines.inventory.fuel}}
commandqueue[38386] = {{"take", {-21, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[38399] = {{"put", {-19, 42}, "coal", 1, defines.inventory.fuel}}
commandqueue[38398] = {{"take", {-19, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[38411] = {{"put", {-17, 42}, "coal", 1, defines.inventory.fuel}}
commandqueue[38410] = {{"take", {-17, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[38423] = {{"put", {-15, 42}, "coal", 1, defines.inventory.fuel}}
commandqueue[38422] = {{"take", {-15, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[38434] = {{"take", {-13, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[38446] = {{"take", {-11, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[38289] = {{"move", "E"}}
commandqueue[38445] = {{"move", "SE"}}
commandqueue[38449] = {{"move", "STOP"}}
--Presently at: (-9.91015625,41.03515625)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-10.207,41.066)
commandqueue[38420] = {{"take", {-9, 41}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[38421] = {{"craft", "electric-mining-drill", 4}}
commandqueue[38451] = {{"take", {-6, 41}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[38452] = {{"recipe", {-6.5,45.5}, "copper-cable"}}
commandqueue[38453] = {{"take", {-9, 45}, "transport-belt", "all", defines.inventory.assembling_machine_output}}
commandqueue[38454] = {{"put", {-9, 46}, "iron-gear-wheel", 18, defines.inventory.assembling_machine_input}}
commandqueue[38456] = {{"put", {-9, 46}, "iron-plate", 18, defines.inventory.assembling_machine_input}}
commandqueue[38459] = {{"put", {-8, 43}, "copper-cable", 93, defines.inventory.assembling_machine_input}}
commandqueue[38450] = {{"move", "S"}}
commandqueue[38455] = {{"move", "SE"}}
commandqueue[38457] = {{"move", "STOP"}}
--Presently at: (-9.99606250,42.01912500)
commandqueue[38460] = {{"put", {-6.5, 45.5}, "copper-plate", 100, defines.inventory.assembling_machine_input}}
commandqueue[38461] = {{"put", {-8, 41}, "iron-plate", 20, defines.inventory.assembling_machine_input}}
commandqueue[38462] = {{"put", {-6, 41}, "iron-plate", 20, defines.inventory.assembling_machine_input}}
commandqueue[38463] = {{"recipe", {-6,43}, "burner-inserter"}}
commandqueue[38464] = {{"put", {-6, 43}, "iron-gear-wheel", 15, defines.inventory.assembling_machine_input}}
commandqueue[38465] = {{"put", {-6, 43}, "iron-plate", 15, defines.inventory.assembling_machine_input}}
commandqueue[38466] = {{"put", {-8, 43}, "iron-plate", 31, defines.inventory.assembling_machine_input}}
commandqueue[38467] = {{"take", {-8, 43}, "electronic-circuit", "all", defines.inventory.assembling_machine_output}}
commandqueue[38468] = {{"craft", "electric-mining-drill", 4}}
commandqueue[38518] = {{"put", {-1, 41}, "science-pack-1", 2, defines.inventory.assembling_machine_output}}
commandqueue[38458] = {{"move", "E"}}
commandqueue[38499] = {{"move", "SE"}}
commandqueue[38509] = {{"move", "STOP"}}
--Presently at: (-2.85543750,43.07381250)
commandqueue[38510] = {{"move", "E"}}
commandqueue[38657] = {{"move", "NE"}}
commandqueue[38715] = {{"move", "STOP"}}
--Presently at: (25.08206250,36.95662500)
commandqueue[38716] = {{"move", "E"}}
commandqueue[38838] = {{"move", "STOP"}}
--Presently at: (43.19143750,36.95662500)
commandqueue[38839] = {{"move", "S"}}
commandqueue[38884] = {{"move", "STOP"}}
--Presently at: (43.19143750,45.04256250)
commandqueue[38885] = {{"move", "S"}}
commandqueue[38887] = {{"move", "SE"}}
commandqueue[38897] = {{"move", "STOP"}}
--Presently at: (44.24612500,46.39412500)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (43.8672,46.2969)
commandqueue[38898] = {{"move", "E"}}
commandqueue[38918] = {{"move", "NE"}}
commandqueue[38921] = {{"move", "STOP"}}
--Presently at: (47.15234375,45.98046875)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (47.1523,46.0859)
commandqueue[38923] = {{"take", {51.2, 42.9}, "stone-furnace", "all", defines.inventory.chest}}
commandqueue[38922] = {{"move", "W"}}
commandqueue[38945] = {{"move", "NW"}}
commandqueue[38949] = {{"move", "STOP"}}
--Presently at: (43.31640625,45.66406250)
commandqueue[38950] = {{"move", "W"}}
commandqueue[38964] = {{"move", "STOP"}}
--Presently at: (40.80078125,45.66406250)
commandqueue[38965] = {{"move", "N"}}
commandqueue[38993] = {{"move", "STOP"}}
--Presently at: (40.80078125,40.63281250)
commandqueue[38994] = {{"move", "W"}}
commandqueue[38998] = {{"move", "STOP"}}
--Presently at: (40.08203125,40.63281250)
commandqueue[38999] = {{"move", "N"}}
commandqueue[39016] = {{"move", "STOP"}}
--Presently at: (40.08203125,37.57812500)
commandqueue[39013] = {{"take", {42.5, 42.5}, "coal", "all", defines.inventory.chest}}
commandqueue[39014] = {{"take", {42.5, 41.5}, "coal", "all", defines.inventory.chest}}
commandqueue[39015] = {{"take", {42.5, 40.5}, "coal", "all", defines.inventory.chest}}
commandqueue[39017] = {{"move", "W"}}
commandqueue[39021] = {{"move", "NW"}}
commandqueue[39036] = {{"move", "STOP"}}
--Presently at: (37.90625000,35.99609375)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (37.3438,35.9609)
commandqueue[39037] = {{"move", "W"}}
commandqueue[39296] = {{"move", "NW"}}
commandqueue[39306] = {{"move", "STOP"}}
--Presently at: (-2.15625000,34.90625000)
commandqueue[39309] = {{"take", {-3, 37.3}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39310] = {{"take", {-3, 35.3}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39311] = {{"take", {-3, 33.3}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39312] = {{"take", {-3, 31.3}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39313] = {{"take", {-3, 29.3}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39307] = {{"move", "W"}}
commandqueue[39333] = {{"move", "STOP"}}
--Presently at: (-6.01562500,34.90625000)
commandqueue[39336] = {{"take", {-8.5, 30.7}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39337] = {{"take", {-8.5, 32.7}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39338] = {{"take", {-8.5, 34.7}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39339] = {{"take", {-8.5, 36.7}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39340] = {{"take", {-8.5, 38.7}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39341] = {{"take", {-6, 40}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[39342] = {{"take", {-8, 40}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[39343] = {{"put", {-6, 40}, "iron-plate", 30, defines.inventory.assembling_machine_input}}
commandqueue[39344] = {{"put", {-8, 40}, "iron-plate", 30, defines.inventory.assembling_machine_input}}
commandqueue[39334] = {{"move", "S"}}
commandqueue[39362] = {{"move", "STOP"}}
--Presently at: (-6.01562500,39.06250000)
commandqueue[39363] = {{"move", "W"}}
commandqueue[39370] = {{"move", "STOP"}}
--Presently at: (-7.05468750,39.06250000)
commandqueue[39371] = {{"move", "S"}}
commandqueue[39384] = {{"move", "STOP"}}
--Presently at: (-7.05468750,40.99218750)
commandqueue[39382] = {{"put", {-7.5, 45.5}, "iron-gear-wheel", 20, defines.inventory.assembling_machine_input}}
commandqueue[39383] = {{"put", {-7.5, 45.5}, "iron-plate", 20, defines.inventory.assembling_machine_input}}
commandqueue[39386] = {{"take", {-7.5, 45.5}, "transport-belt", "all", defines.inventory.assembling_machine_output}}
commandqueue[39387] = {{"recipe", {-6,43}, "copper-cable"}}
commandqueue[39388] = {{"put", {-6, 43}, "copper-plate", 100, defines.inventory.assembling_machine_input}}
commandqueue[39385] = {{"move", "N"}}
commandqueue[39399] = {{"move", "STOP"}}
--Presently at: (-7.05468750,38.91406250)
commandqueue[39401] = {{"craft", "small-electric-pole", 3}}
commandqueue[39402] = {{"craft", "electric-mining-drill", 1}}
commandqueue[39403] = {{"craft", "fast-inserter", 1}}
commandqueue[39404] = {{"craft", "burner-inserter", 2}}
commandqueue[39405] = {{"craft", "transport-belt", 4}}
commandqueue[39408] = {{"craft", "burner-inserter", 6}}
commandqueue[39409] = {{"craft", "transport-belt", 1}}
commandqueue[39400] = {{"move", "W"}}
commandqueue[39406] = {{"move", "STOP"}}
--Presently at: (-7.94531250,38.91406250)
commandqueue[39407] = {{"move", "N"}}
commandqueue[39475] = {{"move", "STOP"}}
--Presently at: (-7.94531250,28.82031250)
commandqueue[39467] = {{"build", "transport-belt", {-10.5, 28.5}, defines.direction.west}}
commandqueue[39468] = {{"build", "transport-belt", {-9.5, 28.5}, defines.direction.west}}
commandqueue[39469] = {{"build", "transport-belt", {-8.5, 28.5}, defines.direction.west}}
commandqueue[39470] = {{"build", "transport-belt", {-7.5, 28.5}, defines.direction.west}}
commandqueue[39471] = {{"build", "transport-belt", {-6.5, 28.5}, defines.direction.west}}
commandqueue[39472] = {{"build", "transport-belt", {-5.5, 28.5}, defines.direction.west}}
commandqueue[39473] = {{"build", "transport-belt", {-4.5, 28.5}, defines.direction.west}}
commandqueue[39474] = {{"build", "transport-belt", {-3.5, 28.5}, defines.direction.west}}
commandqueue[39477] = {{"build", "electric-mining-drill", {-3.5, 26.5}, defines.direction.south}}
commandqueue[39478] = {{"build", "electric-mining-drill", {-6.5, 26.5}, defines.direction.south}}
commandqueue[39479] = {{"build", "electric-mining-drill", {-9.5, 26.5}, defines.direction.south}}
commandqueue[39480] = {{"build", "small-electric-pole", {-8.5, 24.5}, defines.direction.north}}
commandqueue[39481] = {{"build", "transport-belt", {-11.5, 28.5}, defines.direction.west}}
commandqueue[39486] = {{"build", "transport-belt", {-12.5, 28.5}, defines.direction.west}}
commandqueue[39491] = {{"build", "transport-belt", {-13.5, 28.5}, defines.direction.west}}
commandqueue[39492] = {{"build", "electric-mining-drill", {-12.5, 26.5}, defines.direction.south}}
commandqueue[39496] = {{"build", "transport-belt", {-14.5, 28.5}, defines.direction.west}}
commandqueue[39501] = {{"build", "transport-belt", {-15.5, 28.5}, defines.direction.west}}
commandqueue[39506] = {{"build", "transport-belt", {-16.5, 28.5}, defines.direction.west}}
commandqueue[39507] = {{"build", "electric-mining-drill", {-15.5, 26.5}, defines.direction.south}}
commandqueue[39511] = {{"build", "transport-belt", {-17.5, 28.5}, defines.direction.west}}
commandqueue[39516] = {{"build", "transport-belt", {-18.5, 28.5}, defines.direction.west}}
commandqueue[39521] = {{"build", "transport-belt", {-19.5, 28.5}, defines.direction.west}}
commandqueue[39522] = {{"build", "electric-mining-drill", {-18.5, 26.5}, defines.direction.south}}
commandqueue[39526] = {{"build", "transport-belt", {-20.5, 28.5}, defines.direction.west}}
commandqueue[39531] = {{"build", "transport-belt", {-21.5, 28.5}, defines.direction.west}}
commandqueue[39536] = {{"build", "transport-belt", {-22.5, 28.5}, defines.direction.west}}
commandqueue[39537] = {{"build", "electric-mining-drill", {-21.5, 26.5}, defines.direction.south}}
commandqueue[39541] = {{"build", "transport-belt", {-23.5, 28.5}, defines.direction.west}}
commandqueue[39546] = {{"build", "transport-belt", {-24.5, 28.5}, defines.direction.west}}
commandqueue[39551] = {{"build", "transport-belt", {-25.5, 28.5}, defines.direction.west}}
commandqueue[39552] = {{"build", "electric-mining-drill", {-24.5, 26.5}, defines.direction.south}}
commandqueue[39556] = {{"build", "transport-belt", {-26.5, 28.5}, defines.direction.west}}
commandqueue[39561] = {{"build", "transport-belt", {-27.5, 28.5}, defines.direction.west}}
commandqueue[39566] = {{"build", "transport-belt", {-28.5, 28.5}, defines.direction.west}}
commandqueue[39567] = {{"build", "electric-mining-drill", {-27.5, 26.5}, defines.direction.south}}
commandqueue[39571] = {{"build", "transport-belt", {-29.5, 28.5}, defines.direction.west}}
commandqueue[39576] = {{"build", "transport-belt", {-30.5, 28.5}, defines.direction.west}}
commandqueue[39581] = {{"build", "transport-belt", {-31.5, 28.5}, defines.direction.west}}
commandqueue[39586] = {{"build", "transport-belt", {-32.5, 28.5}, defines.direction.west}}
commandqueue[39591] = {{"build", "transport-belt", {-33.5, 28.5}, defines.direction.west}}
commandqueue[39596] = {{"build", "transport-belt", {-34.5, 28.5}, defines.direction.west}}
commandqueue[39601] = {{"build", "transport-belt", {-35.5, 28.5}, defines.direction.west}}
commandqueue[39606] = {{"build", "transport-belt", {-36.5, 28.5}, defines.direction.west}}
commandqueue[39523] = {{"build", "small-electric-pole", {-15.5, 24.5}, defines.direction.north}}
commandqueue[39553] = {{"build", "small-electric-pole", {-22.5, 24.5}, defines.direction.north}}
commandqueue[39593] = {{"build", "small-electric-pole", {-29.5, 24.5}, defines.direction.north}}
commandqueue[39476] = {{"move", "W"}}
commandqueue[39641] = {{"move", "STOP"}}
--Presently at: (-37.59375000,28.82031250)
commandqueue[39636] = {{"build", "transport-belt", {-36.5, 23.5}, defines.direction.west}}
commandqueue[39637] = {{"build", "transport-belt", {-37.5, 23.5}, defines.direction.west}}
commandqueue[39638] = {{"build", "transport-belt", {-38.5, 23.5}, defines.direction.west}}
commandqueue[39643] = {{"build", "transport-belt", {-37.5, 28.5}, defines.direction.north}}
commandqueue[39644] = {{"build", "transport-belt", {-37.5, 27.5}, defines.direction.north}}
commandqueue[39645] = {{"build", "transport-belt", {-37.5, 26.5}, defines.direction.north}}
commandqueue[39646] = {{"build", "transport-belt", {-37.5, 25.5}, defines.direction.north}}
commandqueue[39647] = {{"build", "transport-belt", {-37.5, 24.5}, defines.direction.north}}
commandqueue[39648] = {{"build", "electric-mining-drill", {-35.5, 30.5}, defines.direction.north}}
commandqueue[39649] = {{"build", "transport-belt", {-39.5, 23.5}, defines.direction.west}}
commandqueue[39656] = {{"build", "transport-belt", {-40.5, 23.5}, defines.direction.west}}
commandqueue[39663] = {{"build", "transport-belt", {-41.5, 23.5}, defines.direction.west}}
commandqueue[39670] = {{"build", "transport-belt", {-42.5, 23.5}, defines.direction.west}}
commandqueue[39677] = {{"build", "transport-belt", {-43.5, 23.5}, defines.direction.west}}
commandqueue[39684] = {{"build", "transport-belt", {-44.5, 23.5}, defines.direction.west}}
commandqueue[39691] = {{"build", "transport-belt", {-45.5, 23.5}, defines.direction.west}}
commandqueue[39698] = {{"build", "transport-belt", {-46.5, 23.5}, defines.direction.west}}
commandqueue[39705] = {{"build", "transport-belt", {-47.5, 23.5}, defines.direction.west}}
commandqueue[39726] = {{"build", "transport-belt", {-50.5, 23.5}, defines.direction.west}}
commandqueue[39733] = {{"build", "transport-belt", {-51.5, 23.5}, defines.direction.west}}
commandqueue[39740] = {{"build", "transport-belt", {-52.5, 23.5}, defines.direction.west}}
commandqueue[39747] = {{"build", "transport-belt", {-53.5, 23.5}, defines.direction.west}}
commandqueue[39753] = {{"build", "transport-belt", {-54.5, 23.5}, defines.direction.west}}
commandqueue[39761] = {{"build", "transport-belt", {-55.5, 23.5}, defines.direction.west}}
commandqueue[39650] = {{"build", "burner-inserter", {-40.5, 24.5}, defines.direction.north}}
commandqueue[39651] = {{"put", {-40.5, 24.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[39652] = {{"put", {-40, 26}, "coal", 3, defines.inventory.fuel}}
commandqueue[39653] = {{"take", {-40, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39654] = {{"put", {-39.5, 32.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[39664] = {{"build", "burner-inserter", {-42.5, 24.5}, defines.direction.north}}
commandqueue[39665] = {{"put", {-42.5, 24.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[39666] = {{"put", {-42, 26}, "coal", 3, defines.inventory.fuel}}
commandqueue[39667] = {{"take", {-42, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39668] = {{"put", {-41.5, 32.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[39678] = {{"build", "burner-inserter", {-44.5, 24.5}, defines.direction.north}}
commandqueue[39679] = {{"put", {-44.5, 24.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[39681] = {{"take", {-44, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39682] = {{"put", {-43.5, 32.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[39692] = {{"build", "burner-inserter", {-46.5, 24.5}, defines.direction.north}}
commandqueue[39693] = {{"put", {-46.5, 24.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[39695] = {{"take", {-46, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39696] = {{"put", {-45.5, 32.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[39706] = {{"build", "burner-inserter", {-48.5, 24.5}, defines.direction.north}}
commandqueue[39707] = {{"put", {-48.5, 24.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[39709] = {{"take", {-48, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39710] = {{"put", {-47.5, 32.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[39720] = {{"build", "burner-inserter", {-50.5, 24.5}, defines.direction.north}}
commandqueue[39721] = {{"put", {-50.5, 24.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[39723] = {{"take", {-50, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39724] = {{"put", {-49.5, 32.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[39734] = {{"build", "burner-inserter", {-52.5, 24.5}, defines.direction.north}}
commandqueue[39735] = {{"put", {-52.5, 24.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[39737] = {{"take", {-52, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39738] = {{"put", {-51.5, 32.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[39748] = {{"build", "burner-inserter", {-54.5, 24.5}, defines.direction.north}}
commandqueue[39749] = {{"put", {-54.5, 24.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[39751] = {{"take", {-54, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39752] = {{"put", {-53.5, 32.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[39655] = {{"build", "small-electric-pole", {-39.5, 24.5}, defines.direction.north}}
commandqueue[39669] = {{"build", "fast-inserter", {-38.5, 24.5}, defines.direction.south}}
commandqueue[39642] = {{"move", "W"}}
commandqueue[39754] = {{"move", "NW"}}
commandqueue[39762] = {{"move", "STOP"}}
--Presently at: (-55.06250000,27.97656250)
commandqueue[39763] = {{"mine", {-56.5, 27.3}}}
commandqueue[39813] = {{"mine", nil}}
commandqueue[39815] = {{"build", "transport-belt", {-56.5, 23.5}, defines.direction.west}}
commandqueue[39822] = {{"build", "transport-belt", {-57.5, 23.5}, defines.direction.west}}
commandqueue[39829] = {{"build", "transport-belt", {-58.5, 23.5}, defines.direction.west}}
commandqueue[39836] = {{"build", "transport-belt", {-59.5, 23.5}, defines.direction.west}}
commandqueue[39843] = {{"build", "transport-belt", {-60.5, 23.5}, defines.direction.west}}
commandqueue[39850] = {{"build", "transport-belt", {-61.5, 23.5}, defines.direction.west}}
commandqueue[39857] = {{"build", "transport-belt", {-62.5, 23.5}, defines.direction.west}}
commandqueue[39864] = {{"build", "transport-belt", {-63.5, 23.5}, defines.direction.west}}
commandqueue[39871] = {{"build", "transport-belt", {-64.5, 23.5}, defines.direction.west}}
commandqueue[39878] = {{"build", "transport-belt", {-65.5, 23.5}, defines.direction.west}}
commandqueue[39885] = {{"build", "transport-belt", {-66.5, 23.5}, defines.direction.west}}
commandqueue[39892] = {{"build", "transport-belt", {-67.5, 23.5}, defines.direction.west}}
commandqueue[39899] = {{"build", "transport-belt", {-68.5, 23.5}, defines.direction.west}}
commandqueue[39906] = {{"build", "transport-belt", {-69.5, 23.5}, defines.direction.west}}
commandqueue[39913] = {{"build", "transport-belt", {-70.5, 23.5}, defines.direction.west}}
commandqueue[39920] = {{"build", "transport-belt", {-71.5, 23.5}, defines.direction.west}}
commandqueue[39927] = {{"build", "transport-belt", {-72.5, 23.5}, defines.direction.west}}
commandqueue[39934] = {{"build", "transport-belt", {-73.5, 23.5}, defines.direction.west}}
commandqueue[39818] = {{"take", {-56, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39819] = {{"put", {-55.5, 32.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[39816] = {{"build", "burner-inserter", {-56.5, 24.5}, defines.direction.north}}
commandqueue[39817] = {{"put", {-56.5, 24.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[39832] = {{"take", {-58, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39833] = {{"put", {-57.5, 32.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[39830] = {{"build", "burner-inserter", {-58.5, 24.5}, defines.direction.north}}
commandqueue[39831] = {{"put", {-58.5, 24.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[39846] = {{"take", {-60, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39847] = {{"put", {-59.5, 32.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[39844] = {{"build", "burner-inserter", {-60.5, 24.5}, defines.direction.north}}
commandqueue[39845] = {{"put", {-60.5, 24.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[39860] = {{"take", {-62, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39861] = {{"put", {-61.5, 32.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[39858] = {{"build", "burner-inserter", {-62.5, 24.5}, defines.direction.north}}
commandqueue[39859] = {{"put", {-62.5, 24.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[39874] = {{"take", {-64, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39875] = {{"put", {-63.5, 32.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[39872] = {{"build", "burner-inserter", {-64.5, 24.5}, defines.direction.north}}
commandqueue[39873] = {{"put", {-64.5, 24.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[39888] = {{"take", {-66, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39889] = {{"take", {-65.5, 32.5}, "raw-wood", "all", defines.inventory.fuel}}
commandqueue[39890] = {{"put", {-65.5, 32.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[39886] = {{"build", "burner-inserter", {-66.5, 24.5}, defines.direction.north}}
commandqueue[39887] = {{"put", {-66.5, 24.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[39902] = {{"take", {-68, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39903] = {{"put", {-67.5, 32.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[39900] = {{"build", "burner-inserter", {-68.5, 24.5}, defines.direction.north}}
commandqueue[39901] = {{"put", {-68.5, 24.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[39916] = {{"take", {-70, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39917] = {{"put", {-69.5, 32.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[39914] = {{"build", "burner-inserter", {-70.5, 24.5}, defines.direction.north}}
commandqueue[39915] = {{"put", {-70.5, 24.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[39930] = {{"take", {-72, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39931] = {{"put", {-71.5, 32.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[39820] = {{"build", "stone-furnace", {-56, 26}, defines.direction.north}}
commandqueue[39821] = {{"put", {-56, 26}, "coal", 3, defines.inventory.fuel}}
commandqueue[39814] = {{"move", "W"}}
commandqueue[39969] = {{"move", "SW"}}
commandqueue[39979] = {{"move", "STOP"}}
--Presently at: (-79.12500000,29.03125000)
commandqueue[39950] = {{"put", {-73.5, 32.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[39977] = {{"put", {-75.5, 32.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[39978] = {{"put", {-77.5, 32.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[39981] = {{"put", {-79.5, 32.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[39982] = {{"put", {-81.5, 32.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[39983] = {{"put", {-83.5, 32.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[39984] = {{"take", {-84, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39985] = {{"take", {-82, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39986] = {{"take", {-80, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39987] = {{"take", {-78, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[39980] = {{"move", "E"}}
commandqueue[39988] = {{"move", "NE"}}
commandqueue[40017] = {{"move", "STOP"}}
--Presently at: (-74.87890625,25.97265625)
commandqueue[40018] = {{"mine", {-75.5, 24.5}}}
commandqueue[40068] = {{"mine", nil}}
commandqueue[40070] = {{"build", "transport-belt", {-74.5, 23.5}, defines.direction.west}}
commandqueue[40071] = {{"build", "transport-belt", {-75.5, 23.5}, defines.direction.west}}
commandqueue[40072] = {{"build", "transport-belt", {-76.5, 23.5}, defines.direction.west}}
commandqueue[40073] = {{"take", {-74, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[40074] = {{"take", {-76, 31}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[40069] = {{"move", "W"}}
commandqueue[40077] = {{"move", "NW"}}
commandqueue[40087] = {{"move", "STOP"}}
--Presently at: (-77.12109375,24.91796875)
commandqueue[40088] = {{"mine", {-78, 23.7}}}
commandqueue[40138] = {{"mine", nil}}
commandqueue[40140] = {{"build", "stone-furnace", {-74, 26}, defines.direction.north}}
commandqueue[40141] = {{"put", {-74, 26}, "coal", 3, defines.inventory.fuel}}
commandqueue[40142] = {{"build", "stone-furnace", {-76, 26}, defines.direction.north}}
commandqueue[40143] = {{"put", {-76, 26}, "coal", 3, defines.inventory.fuel}}
commandqueue[40144] = {{"build", "burner-inserter", {-74.5, 24.5}, defines.direction.north}}
commandqueue[40145] = {{"put", {-74.5, 24.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[40146] = {{"craft", "electric-mining-drill", 2}}
commandqueue[40147] = {{"craft", "fast-inserter", 1}}
commandqueue[40148] = {{"craft", "boiler", 3}}
commandqueue[40139] = {{"move", "N"}}
commandqueue[40153] = {{"move", "NW"}}
commandqueue[40162] = {{"move", "STOP"}}
--Presently at: (-78.07031250,21.89062500)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-78.082,22.0625)
commandqueue[40160] = {{"build", "transport-belt", {-77.5, 23.5}, defines.direction.west}}
commandqueue[40161] = {{"build", "transport-belt", {-78.5, 23.5}, defines.direction.west}}
commandqueue[40163] = {{"mine", {-79.1, 21.8}}}
commandqueue[40213] = {{"mine", nil}}
commandqueue[40215] = {{"build", "transport-belt", {-79.5, 23.5}, defines.direction.west}}
commandqueue[40216] = {{"build", "transport-belt", {-80.5, 23.5}, defines.direction.west}}
commandqueue[40217] = {{"build", "transport-belt", {-81.5, 23.5}, defines.direction.west}}
commandqueue[40218] = {{"build", "transport-belt", {-82.5, 23.5}, defines.direction.west}}
commandqueue[40219] = {{"build", "transport-belt", {-83.5, 23.5}, defines.direction.west}}
commandqueue[40214] = {{"move", "W"}}
commandqueue[40220] = {{"move", "STOP"}}
--Presently at: (-78.97265625,22.06250000)
commandqueue[40222] = {{"build", "burner-inserter", {-83.5, 24.5}, defines.direction.north}}
commandqueue[40223] = {{"put", {-83.5, 24.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[40224] = {{"build", "burner-inserter", {-82.5, 24.5}, defines.direction.north}}
commandqueue[40225] = {{"put", {-82.5, 24.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[40226] = {{"build", "burner-inserter", {-80.5, 24.5}, defines.direction.north}}
commandqueue[40227] = {{"put", {-80.5, 24.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[40249] = {{"build", "burner-inserter", {-78.5, 24.5}, defines.direction.north}}
commandqueue[40250] = {{"put", {-78.5, 24.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[40251] = {{"build", "burner-inserter", {-76.5, 24.5}, defines.direction.north}}
commandqueue[40252] = {{"put", {-76.5, 24.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[40281] = {{"build", "burner-inserter", {-72.5, 24.5}, defines.direction.north}}
commandqueue[40282] = {{"put", {-72.5, 24.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[40221] = {{"move", "E"}}
commandqueue[40416] = {{"move", "STOP"}}
--Presently at: (-50.02734375,22.06250000)
commandqueue[40417] = {{"mine", {-49.3, 22.1}}}
commandqueue[40818] = {{"mine", nil}}
commandqueue[40820] = {{"build", "transport-belt", {-48.5, 23.5}, defines.direction.west}}
commandqueue[40821] = {{"build", "transport-belt", {-49.5, 23.5}, defines.direction.west}}
commandqueue[40819] = {{"move", "E"}}
commandqueue[40918] = {{"move", "SE"}}
commandqueue[40980] = {{"move", "STOP"}}
--Presently at: (-28.79296875,28.60156250)
commandqueue[40982] = {{"build", "electric-mining-drill", {-23.9, 30.1}, defines.direction.north}}
commandqueue[40983] = {{"build", "electric-mining-drill", {-26.9, 30.1}, defines.direction.north}}
commandqueue[40981] = {{"move", "W"}}
commandqueue[41026] = {{"move", "STOP"}}
--Presently at: (-36.87890625,28.60156250)
commandqueue[41028] = {{"build", "fast-inserter", {-38.5, 32.5}, defines.direction.north}}
commandqueue[41027] = {{"move", "S"}}
commandqueue[41085] = {{"move", "SE"}}
commandqueue[41122] = {{"move", "STOP"}}
--Presently at: (-32.97656250,41.11328125)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (-34.4844,40.5234)
commandqueue[41123] = {{"move", "E"}}
commandqueue[41130] = {{"move", "SE"}}
commandqueue[41135] = {{"move", "STOP"}}
--Presently at: (-32.91796875,41.05078125)
commandqueue[41137] = {{"take", {-37, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[41138] = {{"put", {-37, 42}, "coal", 2, defines.inventory.fuel}}
commandqueue[41139] = {{"put", {-36.5, 40.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[41150] = {{"take", {-35, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[41151] = {{"put", {-35, 42}, "coal", 2, defines.inventory.fuel}}
commandqueue[41152] = {{"put", {-35.5, 40.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[41163] = {{"take", {-33, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[41164] = {{"put", {-33, 42}, "coal", 2, defines.inventory.fuel}}
commandqueue[41165] = {{"put", {-32.5, 40.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[41176] = {{"take", {-31, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[41177] = {{"put", {-31, 42}, "coal", 2, defines.inventory.fuel}}
commandqueue[41178] = {{"put", {-31.5, 40.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[41189] = {{"take", {-29, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[41190] = {{"put", {-29, 42}, "coal", 2, defines.inventory.fuel}}
commandqueue[41191] = {{"put", {-29.5, 40.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[41202] = {{"take", {-27, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[41203] = {{"put", {-27, 42}, "coal", 2, defines.inventory.fuel}}
commandqueue[41204] = {{"put", {-27.5, 40.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[41215] = {{"take", {-25, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[41216] = {{"put", {-25, 42}, "coal", 2, defines.inventory.fuel}}
commandqueue[41217] = {{"put", {-25.5, 40.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[41228] = {{"take", {-23, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[41229] = {{"put", {-23, 42}, "coal", 2, defines.inventory.fuel}}
commandqueue[41230] = {{"put", {-22.5, 40.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[41241] = {{"take", {-21, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[41242] = {{"put", {-21, 42}, "coal", 2, defines.inventory.fuel}}
commandqueue[41243] = {{"put", {-20.5, 40.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[41254] = {{"take", {-19, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[41255] = {{"put", {-19, 42}, "coal", 2, defines.inventory.fuel}}
commandqueue[41256] = {{"put", {-18.5, 40.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[41267] = {{"take", {-17, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[41268] = {{"put", {-17, 42}, "coal", 2, defines.inventory.fuel}}
commandqueue[41269] = {{"put", {-16.5, 40.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[41280] = {{"take", {-15, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[41281] = {{"put", {-15, 42}, "coal", 2, defines.inventory.fuel}}
commandqueue[41282] = {{"put", {-14.5, 40.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[41293] = {{"take", {-13, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[41294] = {{"put", {-13, 42}, "coal", 2, defines.inventory.fuel}}
commandqueue[41295] = {{"put", {-12.5, 40.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[41306] = {{"take", {-11, 42}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[41307] = {{"put", {-11, 42}, "coal", 2, defines.inventory.fuel}}
commandqueue[41308] = {{"put", {-11.5, 40.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[41136] = {{"move", "E"}}
commandqueue[41291] = {{"move", "STOP"}}
--Presently at: (-9.91015625,41.05078125)
commandqueue[41258] = {{"put", {-9.5, 41}, "iron-plate", 70, defines.inventory.assembling_machine_input}}
commandqueue[41259] = {{"take", {-9.5, 41}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[41289] = {{"put", {-6.5, 41}, "iron-plate", 70, defines.inventory.assembling_machine_input}}
commandqueue[41290] = {{"take", {-6.5, 41}, "iron-gear-wheel", "all", defines.inventory.assembling_machine_output}}
commandqueue[41292] = {{"move", "S"}}
commandqueue[41298] = {{"move", "STOP"}}
--Presently at: (-9.91015625,41.94140625)
commandqueue[41300] = {{"take", {-6.5, 42.5}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[41301] = {{"take", {-6.5, 45.5}, "copper-cable", "all", defines.inventory.assembling_machine_output}}
commandqueue[41302] = {{"put", {-8, 43}, "copper-cable", 120, defines.inventory.assembling_machine_input}}
commandqueue[41303] = {{"put", {-8, 43}, "iron-plate", 40, defines.inventory.assembling_machine_input}}
commandqueue[41304] = {{"recipe", {-9,46}, "iron-gear-wheel"}}
commandqueue[41305] = {{"put", {-9, 46}, "iron-plate", 70, defines.inventory.assembling_machine_input}}
commandqueue[41309] = {{"take", {-8, 43}, "electronic-circuit", "all", defines.inventory.assembling_machine_output}}
commandqueue[41299] = {{"move", "E"}}
commandqueue[41339] = {{"move", "SE"}}
commandqueue[41350] = {{"move", "STOP"}}
--Presently at: (-2.81250000,43.10156250)
commandqueue[41348] = {{"put", {-1, 41}, "iron-gear-wheel", 4, defines.inventory.assembling_machine_input}}
commandqueue[41349] = {{"put", {-1, 41}, "copper-plate", 4, defines.inventory.assembling_machine_input}}
commandqueue[41352] = {{"craft", "steam-engine", 1}}
commandqueue[41353] = {{"craft", "burner-inserter", 1}}
commandqueue[41354] = {{"craft", "steam-engine", 1}}
commandqueue[41355] = {{"craft", "steam-engine", 1}}
commandqueue[41356] = {{"craft", "burner-inserter", 2}}
commandqueue[41357] = {{"craft", "steam-engine", 1}}
commandqueue[41358] = {{"craft", "steam-engine", 1}}
commandqueue[41359] = {{"craft", "pipe", 1}}
commandqueue[41360] = {{"craft", "steam-engine", 1}}
commandqueue[41351] = {{"move", "E"}}
commandqueue[41498] = {{"move", "NE"}}
commandqueue[41556] = {{"move", "STOP"}}
--Presently at: (25.12500000,36.98437500)
commandqueue[41557] = {{"move", "E"}}
commandqueue[41678] = {{"move", "STOP"}}
--Presently at: (43.08593750,36.98437500)
commandqueue[41619] = {{"build", "small-electric-pole", {30.5, 34.5}, defines.direction.north}}
commandqueue[41637] = {{"build", "steam-engine", {33.5, 35.5}, defines.direction.east}}
commandqueue[41649] = {{"build", "boiler", {36.5, 35.5}, defines.direction.west}}
commandqueue[41650] = {{"put", {36.5, 35.5}, "coal", 8, defines.inventory.fuel}}
commandqueue[41665] = {{"build", "transport-belt", {39.5, 37.5}, defines.direction.north}}
commandqueue[41666] = {{"build", "transport-belt", {39.5, 36.5}, defines.direction.north}}
commandqueue[41667] = {{"build", "transport-belt", {39.5, 35.5}, defines.direction.north}}
commandqueue[41668] = {{"build", "transport-belt", {39.5, 34.5}, defines.direction.north}}
commandqueue[41669] = {{"build", "transport-belt", {39.5, 33.5}, defines.direction.north}}
commandqueue[41670] = {{"build", "transport-belt", {39.5, 32.5}, defines.direction.north}}
commandqueue[41671] = {{"build", "burner-inserter", {38.5, 35.5}, defines.direction.east}}
commandqueue[41679] = {{"move", "S"}}
commandqueue[41724] = {{"move", "STOP"}}
--Presently at: (43.08593750,45.07031250)
commandqueue[41725] = {{"move", "S"}}
commandqueue[41726] = {{"move", "SE"}}
commandqueue[41737] = {{"move", "STOP"}}
--Presently at: (44.24609375,46.37890625)
commandqueue[41738] = {{"move", "E"}}
commandqueue[41754] = {{"move", "NE"}}
commandqueue[41758] = {{"move", "STOP"}}
--Presently at: (47.04296875,45.95703125)
commandqueue[41760] = {{"take", {51.2, 42.9}, "stone-furnace", "all", defines.inventory.chest}}
commandqueue[41759] = {{"move", "W"}}
commandqueue[41780] = {{"move", "NW"}}
commandqueue[41783] = {{"move", "STOP"}}
--Presently at: (43.60937500,45.64062500)
commandqueue[41784] = {{"move", "N"}}
commandqueue[41785] = {{"move", "NW"}}
commandqueue[41801] = {{"move", "STOP"}}
--Presently at: (41.92187500,43.80468750)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (41.2109,44.1133)
commandqueue[41802] = {{"mine", {41.5, 42.5}}}
commandqueue[41824] = {{"mine", nil}}
commandqueue[41825] = {{"move", "N"}}
commandqueue[41826] = {{"move", "STOP"}}
--Presently at: (41.21093750,43.96484375)
commandqueue[41827] = {{"mine", {42.5, 42.5}}}
commandqueue[41877] = {{"mine", nil}}
commandqueue[41878] = {{"move", "N"}}
commandqueue[41882] = {{"move", "STOP"}}
--Presently at: (41.21093750,43.37109375)
commandqueue[41883] = {{"mine", {41.5, 41.5}}}
commandqueue[41905] = {{"mine", nil}}
commandqueue[41906] = {{"move", "N"}}
commandqueue[41907] = {{"move", "NE"}}
commandqueue[41910] = {{"move", "STOP"}}
--Presently at: (41.52734375,42.90625000)
commandqueue[41911] = {{"mine", {42.5, 41.5}}}
commandqueue[41961] = {{"mine", nil}}
commandqueue[41962] = {{"move", "N"}}
commandqueue[41966] = {{"move", "STOP"}}
--Presently at: (41.52734375,42.31250000)
commandqueue[41967] = {{"mine", {41.5, 40.5}}}
commandqueue[41989] = {{"mine", nil}}
commandqueue[41990] = {{"move", "N"}}
commandqueue[41991] = {{"move", "STOP"}}
--Presently at: (41.52734375,42.16406250)
commandqueue[41992] = {{"mine", {42.5, 40.5}}}
commandqueue[42042] = {{"mine", nil}}
commandqueue[42043] = {{"move", "W"}}
commandqueue[42048] = {{"move", "STOP"}}
--Presently at: (40.78515625,42.16406250)
commandqueue[42049] = {{"move", "N"}}
commandqueue[42058] = {{"move", "STOP"}}
--Presently at: (40.78515625,40.54687500)
commandqueue[42059] = {{"move", "W"}}
commandqueue[42065] = {{"move", "STOP"}}
--Presently at: (39.70703125,40.54687500)
commandqueue[42066] = {{"move", "N"}}
commandqueue[42128] = {{"move", "STOP"}}
--Presently at: (39.70703125,29.40625000)
commandqueue[42094] = {{"build", "transport-belt", {39.5, 31.5}, defines.direction.north}}
commandqueue[42095] = {{"build", "transport-belt", {39.5, 30.5}, defines.direction.north}}
commandqueue[42096] = {{"build", "transport-belt", {39.5, 29.5}, defines.direction.north}}
commandqueue[42097] = {{"build", "boiler", {36.5, 32.5}, defines.direction.west}}
commandqueue[42098] = {{"build", "steam-engine", {33.9, 32.9}, defines.direction.west}}
commandqueue[42099] = {{"build", "burner-inserter", {38.5, 32.5}, defines.direction.east}}
commandqueue[42125] = {{"build", "burner-inserter", {38.5, 29.5}, defines.direction.east}}
commandqueue[42126] = {{"build", "boiler", {36.5, 29.5}, defines.direction.west}}
commandqueue[42127] = {{"build", "steam-engine", {33.9, 29.9}, defines.direction.west}}
commandqueue[42129] = {{"move", "N"}}
commandqueue[42195] = {{"move", "NW"}}
commandqueue[42382] = {{"move", "STOP"}}
--Presently at: (19.98437500,-0.11328125)
commandqueue[42384] = {{"put", {19.5, -5.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[42385] = {{"put", {20, -4}, "coal", 3, defines.inventory.fuel}}
commandqueue[42386] = {{"take", {20, -4}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[42398] = {{"put", {17.5, -5.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[42399] = {{"put", {18, -4}, "coal", 3, defines.inventory.fuel}}
commandqueue[42400] = {{"take", {18, -4}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[42412] = {{"put", {15.5, -5.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[42413] = {{"put", {16, -4}, "coal", 3, defines.inventory.fuel}}
commandqueue[42414] = {{"take", {16, -4}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[42426] = {{"put", {13.5, -5.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[42427] = {{"put", {14, -4}, "coal", 3, defines.inventory.fuel}}
commandqueue[42428] = {{"take", {14, -4}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[42440] = {{"put", {11.5, -5.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[42441] = {{"put", {12, -4}, "coal", 3, defines.inventory.fuel}}
commandqueue[42442] = {{"take", {12, -4}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[42454] = {{"put", {9.5, -5.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[42455] = {{"put", {10, -4}, "coal", 3, defines.inventory.fuel}}
commandqueue[42456] = {{"take", {10, -4}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[42468] = {{"put", {7.5, -5.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[42469] = {{"put", {8, -4}, "coal", 3, defines.inventory.fuel}}
commandqueue[42470] = {{"take", {8, -4}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[42482] = {{"put", {5.5, -5.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[42483] = {{"put", {6, -4}, "coal", 3, defines.inventory.fuel}}
commandqueue[42484] = {{"take", {6, -4}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[42496] = {{"put", {3.5, -5.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[42497] = {{"put", {4, -4}, "coal", 3, defines.inventory.fuel}}
commandqueue[42498] = {{"take", {4, -4}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[42510] = {{"put", {2.5, -5.5}, "coal", 1, defines.inventory.fuel}}
commandqueue[42511] = {{"put", {2, -4}, "coal", 3, defines.inventory.fuel}}
commandqueue[42512] = {{"take", {2, -4}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[42383] = {{"move", "W"}}
commandqueue[42524] = {{"move", "SW"}}
commandqueue[42554] = {{"move", "STOP"}}
--Presently at: (-4.10937500,3.05078125)
commandqueue[42555] = {{"move", "W"}}
commandqueue[42581] = {{"move", "STOP"}}
--Presently at: (-7.96875000,3.05078125)
commandqueue[42552] = {{"put", {-4.7, -1.3}, "coal", 5, defines.inventory.fuel}}
commandqueue[42553] = {{"put", {-5, 0}, "coal", 2, defines.inventory.fuel}}
commandqueue[42556] = {{"take", {-5, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[42559] = {{"put", {-6.7, -1.3}, "coal", 5, defines.inventory.fuel}}
commandqueue[42560] = {{"put", {-7, 0}, "coal", 2, defines.inventory.fuel}}
commandqueue[42563] = {{"take", {-7, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[42566] = {{"put", {-8.7, -1.3}, "coal", 5, defines.inventory.fuel}}
commandqueue[42567] = {{"put", {-9, 0}, "coal", 2, defines.inventory.fuel}}
commandqueue[42570] = {{"take", {-9, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[42573] = {{"put", {-10.7, -1.3}, "coal", 5, defines.inventory.fuel}}
commandqueue[42574] = {{"put", {-11, 0}, "coal", 2, defines.inventory.fuel}}
commandqueue[42577] = {{"take", {-11, 0}, "copper-plate", "all", defines.inventory.furnace_result}}
commandqueue[42582] = {{"move", "E"}}
commandqueue[42643] = {{"move", "SE"}}
commandqueue[42880] = {{"move", "STOP"}}
--Presently at: (26.08203125,28.04687500)
commandqueue[42882] = {{"build", "small-electric-pole", {30.5, 27.5}, defines.direction.north}}
commandqueue[42883] = {{"build", "steam-engine", {28.5, 29.5}, defines.direction.east}}
commandqueue[42884] = {{"build", "steam-engine", {28.5, 32.5}, defines.direction.east}}
commandqueue[42881] = {{"move", "S"}}
commandqueue[42921] = {{"move", "STOP"}}
--Presently at: (26.08203125,33.98437500)
-- Position tracking update here, required because of entity collisions or belt-running.
-- You are presently at: (25.8789,33.5703)
commandqueue[42920] = {{"build", "pipe", {30.5, 35.5}, defines.direction.north}}
commandqueue[42923] = {{"craft", "small-electric-pole", 10}}
commandqueue[42944] = {{"build", "steam-engine", {27.5, 35.5}, defines.direction.east}}
commandqueue[42922] = {{"move", "W"}}
commandqueue[43101] = {{"move", "SW"}}
commandqueue[43115] = {{"move", "STOP"}}
--Presently at: (-2.16796875,35.04687500)
commandqueue[43117] = {{"put", {-3, 38}, "coal", 2, defines.inventory.fuel}}
commandqueue[43118] = {{"put", {-3, 36}, "coal", 2, defines.inventory.fuel}}
commandqueue[43119] = {{"put", {-3, 34}, "coal", 2, defines.inventory.fuel}}
commandqueue[43120] = {{"put", {-3, 32}, "coal", 2, defines.inventory.fuel}}
commandqueue[43121] = {{"put", {-3, 30.5}, "coal", 2, defines.inventory.fuel}}
commandqueue[43127] = {{"put", {-5, 38}, "coal", 3, defines.inventory.fuel}}
commandqueue[43128] = {{"put", {-5, 36}, "coal", 3, defines.inventory.fuel}}
commandqueue[43129] = {{"put", {-5, 34}, "coal", 3, defines.inventory.fuel}}
commandqueue[43130] = {{"put", {-5, 32}, "coal", 3, defines.inventory.fuel}}
commandqueue[43131] = {{"put", {-5, 30.5}, "coal", 3, defines.inventory.fuel}}
commandqueue[43137] = {{"put", {-7, 38}, "coal", 3, defines.inventory.fuel}}
commandqueue[43138] = {{"put", {-7, 36}, "coal", 3, defines.inventory.fuel}}
commandqueue[43139] = {{"put", {-7, 34}, "coal", 3, defines.inventory.fuel}}
commandqueue[43140] = {{"put", {-7, 32}, "coal", 3, defines.inventory.fuel}}
commandqueue[43141] = {{"put", {-7, 30.5}, "coal", 3, defines.inventory.fuel}}
commandqueue[43147] = {{"put", {-9, 38}, "coal", 2, defines.inventory.fuel}}
commandqueue[43148] = {{"put", {-9, 36}, "coal", 2, defines.inventory.fuel}}
commandqueue[43149] = {{"put", {-9, 34}, "coal", 2, defines.inventory.fuel}}
commandqueue[43150] = {{"put", {-9, 32}, "coal", 2, defines.inventory.fuel}}
commandqueue[43151] = {{"put", {-9, 30.5}, "coal", 2, defines.inventory.fuel}}
commandqueue[43122] = {{"take", {-3, 30}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[43116] = {{"move", "W"}}
commandqueue[43155] = {{"move", "STOP"}}
--Presently at: (-7.95703125,35.04687500)
commandqueue[43158] = {{"take", {-9, 30.6}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[43159] = {{"take", {-3.8, 32.8}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[43160] = {{"take", {-9, 32.6}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[43161] = {{"take", {-3.8, 34.8}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[43162] = {{"take", {-9, 34.6}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[43163] = {{"take", {-3.8, 36.8}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[43164] = {{"take", {-9, 36.6}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[43165] = {{"take", {-3.8, 38.8}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[43166] = {{"take", {-9, 38.6}, "iron-plate", "all", defines.inventory.furnace_result}}
commandqueue[43156] = {{"move", "S"}}
commandqueue[43183] = {{"move", "STOP"}}
--Presently at: (-7.95703125,39.05468750)
-- ----------------------------------------- --
-- Various controls and end of run messages. --
-- ----------------------------------------- --
commandqueue[43186] = {{"print", "End of programmed route at tick 43184."}}
commandqueue[43187] = {{"print", "Carried out 4005 actions in 0h:11m:59sec."}}
commandqueue[43188] = {{"print", "This corresponds to an average APM of 333.8737."}}
commandqueue[6] = {{"print", "=============================================="}}
commandqueue[7] = {{"print", "Welcome to this tool-assisted speedrun of factorio!"}}
commandqueue[8] = {{"print", "Please lean back, praise the steel-axe and enjoy what it"}}
commandqueue[9] = {{"print", "looks like when a game about automation is automated :)"}}
commandqueue[10] = {{"print", "- Starbrow"}}
commandqueue[11] = {{"print", "============================================== "}}
commandqueue[260] = {{"print", "=============================================================="}}
commandqueue[261] = {{"print", "Whenever a research finishes it will be announced here."}}
commandqueue[262] = {{"print", "The number in [brackets] has the format [minutes:seconds:ticks] where"}}
commandqueue[263] = {{"print", "there are 60 ticks (game updates) per second. "}}
commandqueue[264] = {{"print", "============================================================== "}}
commandqueue[926] = {{"print", "=============================================================="}}
commandqueue[927] = {{"print", "I hope you noticed that the red rock I just mined gave me"}}
commandqueue[928] = {{"print", "both coal and stone, and quite a substantial amount too."}}
commandqueue[929] = {{"print", "============================================================== "}}
commandqueue[1699] = {{"print", "==============================================================  "}}
commandqueue[1700] = {{"print", "Do not worry if you missed it - we will mine many more."}}
commandqueue[1701] = {{"print", "These rocks only exist in red deserts and give a pseudo-random"}}
commandqueue[1702] = {{"print", "amount of coal and stone, between 25 and 50 for each."}}
commandqueue[1703] = {{"print", "==============================================================   "}}
commandqueue[3142] = {{"print", "=============================================================="}}
commandqueue[3143] = {{"print", "The actual amount mined is determined by the tick you mine the rock."}}
commandqueue[3144] = {{"print", "Luckily, I have total control of that, which is why you will see"}}
commandqueue[3145] = {{"print", "a very small pause before I start mining. This optimises the yield."}}
commandqueue[3146] = {{"print", "============================================================== "}}
commandqueue[8700] = {{"print", "=============================================================="}}
commandqueue[8701] = {{"print", "Very long pause required to get the best yield from the next rock."}}
commandqueue[8702] = {{"print", "============================================================== "}}
commandqueue[43309] = {{"print", "====================================================="}}
commandqueue[43310] = {{"print", " I hope you have enjoyed watching this TAS speedrun of factorio,"}}
commandqueue[43311] = {{"print", " even though this project is still a work in progress!"}}
commandqueue[43312] = {{"print", "===================================================== "}}
commandqueue[43906] = {{"print", "======================================================"}}
commandqueue[43907] = {{"print", " This run was programmed by Starbrow, and compiled on:"}}
commandqueue[43908] = {{"print", " 21-Oct-2017 16:36:47 CET"}}
commandqueue[43909] = {{"print", "====================================================== "}}
commandqueue[44506] = {{"print", "====================================================== "}}
commandqueue[44507] = {{"print", " Shoutout to AntiElitz for inspiring me to do factorio related"}}
commandqueue[44508] = {{"print", " speed-running, to the TeamSteelaxe discord channel, to"}}
commandqueue[44509] = {{"print", " szerspliexiust and Hexicube for coding the first scripts,"}}
commandqueue[44510] = {{"print", " your name here, Alastor and Bilka for a total rewrite of these,"}}
commandqueue[44511] = {{"print", " and for further inputs and suggestions by unique and Darkas "}}
commandqueue[44512] = {{"print", "======================================================"}}

return commandqueue
