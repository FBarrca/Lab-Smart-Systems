INSERT INTO address (LON, LAT, description)
VALUES (
        55.366258634519916,
        157.53885533006786,
        "address1"
    );

INSERT INTO weather (LON, LAT, timestamp, rain, temperature)
VALUES (
        55.366258634519916,
        157.53885533006786,
        FROM_UNIXTIME(1662012000),
        20.8624254330701,
        24
    );
INSERT INTO weather (LON, LAT, timestamp, rain, temperature)
VALUES (
        55.366258634519916,
        157.53885533006786,
        FROM_UNIXTIME(1662098400),
        91.5554136088383,
        32
    );
INSERT INTO weather (LON, LAT, timestamp, rain, temperature)
VALUES (
        55.366258634519916,
        157.53885533006786,
        FROM_UNIXTIME(1662184800),
        14.2539251736757,
        30
    );
INSERT INTO weather (LON, LAT, timestamp, rain, temperature)
VALUES (
        55.366258634519916,
        157.53885533006786,
        FROM_UNIXTIME(1662271200),
        93.55565328383,
        33
    );
INSERT INTO weather (LON, LAT, timestamp, rain, temperature)
VALUES (
        55.366258634519916,
        157.53885533006786,
        FROM_UNIXTIME(1662357600),
        28.2539349276757,
        29
    );
INSERT INTO weather (LON, LAT, timestamp, rain, temperature)
VALUES (
        55.366258634519916,
        157.53885533006786,
        FROM_UNIXTIME(1662444000),
        96.5554123608383,
        32
    );
INSERT INTO weather (LON, LAT, timestamp, rain, temperature)
VALUES (
        55.366258634519916,
        157.53885533006786,
        FROM_UNIXTIME(1662530400),
        13.2500251706757,
        31
    );
INSERT INTO weather (LON, LAT, timestamp, rain, temperature)
VALUES (
        55.366258634519916,
        157.53885533006786,
        FROM_UNIXTIME(1662616800),
        94.554553609383,
        33
    );
INSERT INTO weather (LON, LAT, timestamp, rain, temperature)
VALUES (
        55.366258634519916,
        157.53885533006786,
        FROM_UNIXTIME(1662703200),
        16.3239251706757,
        28
    );
INSERT INTO weather (LON, LAT, timestamp, rain, temperature)
VALUES (
        55.366258634519916,
        157.53885533006786,
        FROM_UNIXTIME(1662789600),
        98.556413889383,
        30
    );
INSERT INTO estate (LON, LAT)
VALUES (55.366258634519916, 157.53885533006786);

INSERT INTO sector (id_sector, LON, LAT, WATER_DEMAND)
VALUES (
        1,
        55.366258634519916,
        157.53885533006786,
        954.2602312695426
    );
INSERT INTO sector (id_sector, LON, LAT, WATER_DEMAND)
VALUES (
        2,
        55.366258634519916,
        157.53885533006786,
        342.2602312695426
    );
INSERT INTO sector (id_sector, LON, LAT, WATER_DEMAND)
VALUES (
        3,
        55.366258634519916,
        157.53885533006786,
        486.2602312695426
    );
INSERT INTO sector (id_sector, LON, LAT, WATER_DEMAND)
VALUES (
        4,
        55.366258634519916,
        157.53885533006786,
        103.2602312695426
    );
INSERT INTO sector (id_sector, LON, LAT, WATER_DEMAND)
VALUES (
        5,
        55.366258634519916,
        157.53885533006786,
        805.2602312695426
    );
INSERT INTO sector (id_sector, LON, LAT, WATER_DEMAND)
VALUES (
        6,
        55.366258634519916,
        157.53885533006786,
        911.2602312695426
    );
INSERT INTO sector (id_sector, LON, LAT, WATER_DEMAND)
VALUES (
        7,
        55.366258634519916,
        157.53885533006786,
        638.2602312695426
    );
INSERT INTO sector (id_sector, LON, LAT, WATER_DEMAND)
VALUES (
        8,
        55.366258634519916,
        157.53885533006786,
        345.2602312695426
    );
INSERT INTO sector (id_sector, LON, LAT, WATER_DEMAND)
VALUES (
        9,
        55.366258634519916,
        157.53885533006786,
        123.2602312695426
    );

INSERT INTO sensor_type (
        ID_SENSOR_TYPE,
        ID_MEASUREMENT_TYPE,
        SENSOR_DESCRIPTION,
        MEASUREMENT_DESCRIPTION,
        UNIT,
        LOCATION
    )
VALUES (1, 1, "HUMIDITY", "HUMIDITY", "g/m3", "SECTOR");
INSERT INTO sensor_type (
        ID_SENSOR_TYPE,
        ID_MEASUREMENT_TYPE,
        SENSOR_DESCRIPTION,
        MEASUREMENT_DESCRIPTION,
        UNIT,
        LOCATION
    )
VALUES (
        2,
        2,
        "TEMPERATURE",
        "TEMPERATURE",
        "ºc",
        "SECTOR"
    );
INSERT INTO sensor_type (
        ID_SENSOR_TYPE,
        ID_MEASUREMENT_TYPE,
        SENSOR_DESCRIPTION,
        MEASUREMENT_DESCRIPTION,
        UNIT,
        LOCATION
    )
VALUES (3, 3, "MINERAL", "MINERAL", "ppm", "SECTOR");
INSERT INTO sensor_type (
        ID_SENSOR_TYPE,
        ID_MEASUREMENT_TYPE,
        SENSOR_DESCRIPTION,
        MEASUREMENT_DESCRIPTION,
        UNIT,
        LOCATION
    )
VALUES (4, 4, "FLOW", "FLOW", "m3/s", "PIPE");
INSERT INTO sensor_type (
        ID_SENSOR_TYPE,
        ID_MEASUREMENT_TYPE,
        SENSOR_DESCRIPTION,
        MEASUREMENT_DESCRIPTION,
        UNIT,
        LOCATION
    )
VALUES (5, 5, "PRESSURE", "PRESSURE", "bar", "SECTOR");

INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type)
VALUES (1, 1, 1);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type)
VALUES (2, 2, 2);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type)
VALUES (3, 3, 3);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type)
VALUES (4, 5, 5);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type)
VALUES (5, 1, 1);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type)
VALUES (6, 2, 2);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type)
VALUES (7, 3, 3);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type)
VALUES (8, 5, 5);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type)
VALUES (9, 1, 1);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type)
VALUES (10, 2, 2);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type)
VALUES (11, 3, 3);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type)
VALUES (12, 5, 5);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type)
VALUES (13, 1, 1);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type)
VALUES (14, 2, 2);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type)
VALUES (15, 3, 3);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type)
VALUES (16, 5, 5);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type)
VALUES (17, 1, 1);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type)
VALUES (18, 2, 2);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type)
VALUES (19, 3, 3);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type)
VALUES (20, 5, 5);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type)
VALUES (21, 1, 1);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type)
VALUES (22, 2, 2);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type)
VALUES (23, 3, 3);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type)
VALUES (24, 5, 5);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type)
VALUES (25, 1, 1);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type)
VALUES (26, 2, 2);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type)
VALUES (27, 3, 3);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type)
VALUES (28, 5, 5);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type)
VALUES (29, 1, 1);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type)
VALUES (30, 2, 2);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type)
VALUES (31, 3, 3);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type)
VALUES (32, 5, 5);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type)
VALUES (33, 1, 1);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type)
VALUES (34, 2, 2);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type)
VALUES (35, 3, 3);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type)
VALUES (36, 5, 5);

INSERT INTO sect_sens_loc (id_sensor, id_sector)
VALUES (1, 1);
INSERT INTO sect_sens_loc (id_sensor, id_sector)
VALUES (2, 1);
INSERT INTO sect_sens_loc (id_sensor, id_sector)
VALUES (3, 1);
INSERT INTO sect_sens_loc (id_sensor, id_sector)
VALUES (4, 1);
INSERT INTO sect_sens_loc (id_sensor, id_sector)
VALUES (5, 2);
INSERT INTO sect_sens_loc (id_sensor, id_sector)
VALUES (6, 2);
INSERT INTO sect_sens_loc (id_sensor, id_sector)
VALUES (7, 2);
INSERT INTO sect_sens_loc (id_sensor, id_sector)
VALUES (8, 2);
INSERT INTO sect_sens_loc (id_sensor, id_sector)
VALUES (9, 3);
INSERT INTO sect_sens_loc (id_sensor, id_sector)
VALUES (10, 3);
INSERT INTO sect_sens_loc (id_sensor, id_sector)
VALUES (11, 3);
INSERT INTO sect_sens_loc (id_sensor, id_sector)
VALUES (12, 3);
INSERT INTO sect_sens_loc (id_sensor, id_sector)
VALUES (13, 4);
INSERT INTO sect_sens_loc (id_sensor, id_sector)
VALUES (14, 4);
INSERT INTO sect_sens_loc (id_sensor, id_sector)
VALUES (15, 4);
INSERT INTO sect_sens_loc (id_sensor, id_sector)
VALUES (16, 4);
INSERT INTO sect_sens_loc (id_sensor, id_sector)
VALUES (17, 5);
INSERT INTO sect_sens_loc (id_sensor, id_sector)
VALUES (18, 5);
INSERT INTO sect_sens_loc (id_sensor, id_sector)
VALUES (19, 5);
INSERT INTO sect_sens_loc (id_sensor, id_sector)
VALUES (20, 5);
INSERT INTO sect_sens_loc (id_sensor, id_sector)
VALUES (21, 6);
INSERT INTO sect_sens_loc (id_sensor, id_sector)
VALUES (22, 6);
INSERT INTO sect_sens_loc (id_sensor, id_sector)
VALUES (23, 6);
INSERT INTO sect_sens_loc (id_sensor, id_sector)
VALUES (24, 6);
INSERT INTO sect_sens_loc (id_sensor, id_sector)
VALUES (25, 7);
INSERT INTO sect_sens_loc (id_sensor, id_sector)
VALUES (26, 7);
INSERT INTO sect_sens_loc (id_sensor, id_sector)
VALUES (27, 7);
INSERT INTO sect_sens_loc (id_sensor, id_sector)
VALUES (28, 7);
INSERT INTO sect_sens_loc (id_sensor, id_sector)
VALUES (29, 8);
INSERT INTO sect_sens_loc (id_sensor, id_sector)
VALUES (30, 8);
INSERT INTO sect_sens_loc (id_sensor, id_sector)
VALUES (31, 8);
INSERT INTO sect_sens_loc (id_sensor, id_sector)
VALUES (32, 8);
INSERT INTO sect_sens_loc (id_sensor, id_sector)
VALUES (33, 9);
INSERT INTO sect_sens_loc (id_sensor, id_sector)
VALUES (34, 9);
INSERT INTO sect_sens_loc (id_sensor, id_sector)
VALUES (35, 9);
INSERT INTO sect_sens_loc (id_sensor, id_sector)
VALUES (36, 9);

INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        1,
        FROM_UNIXTIME(1664949600),
        1,
        4.2
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        1,
        FROM_UNIXTIME(1665036000),
        1,
        4.35
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        1,
        FROM_UNIXTIME(1665122400),
        1,
        4.8
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        1,
        FROM_UNIXTIME(1665208800),
        1,
        4.6
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        1,
        FROM_UNIXTIME(1665295200),
        1,
        4.24
    );

INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        2,
        FROM_UNIXTIME(1664949600),
        2,
        17.1
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        2,
        FROM_UNIXTIME(1665036000),
        2,
        18.1
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        2,
        FROM_UNIXTIME(1665122400),
        2,
        19.1
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        2,
        FROM_UNIXTIME(1665208800),
        2,
        20.1
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        2,
        FROM_UNIXTIME(1665295200),
        2,
        21.1
    );

INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        3,
        FROM_UNIXTIME(1664949600),
        3,
        40.85
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        3,
        FROM_UNIXTIME(1665036000),
        3,
        51.48
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        3,
        FROM_UNIXTIME(1665122400),
        3,
        44.65
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        3,
        FROM_UNIXTIME(1665208800),
        3,
        35.48
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        3,
        FROM_UNIXTIME(1665295200),
        3,
        42.56
    );

INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        4,
        FROM_UNIXTIME(1664949600),
        5,
        2.7
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        4,
        FROM_UNIXTIME(1665036000),
        5,
        2.75
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        4,
        FROM_UNIXTIME(1665122400),
        5,
        2.68
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        4,
        FROM_UNIXTIME(1665208800),
        5,
        2.48
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        4,
        FROM_UNIXTIME(1665295200),
        5,
        2.78
    );

INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        5,
        FROM_UNIXTIME(1664949600),
        1,
        5.64
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        5,
        FROM_UNIXTIME(1665036000),
        1,
        5.28
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        5,
        FROM_UNIXTIME(1665122400),
        1,
        5.89
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        5,
        FROM_UNIXTIME(1665208800),
        1,
        5.14
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        5,
        FROM_UNIXTIME(1665295200),
        1,
        5.77
    );

INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        6,
        FROM_UNIXTIME(1664949600),
        2,
       17.2
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        6,
        FROM_UNIXTIME(1665036000),
        2,
        18.2
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        6,
        FROM_UNIXTIME(1665122400),
        2,
        19.2
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        6,
        FROM_UNIXTIME(1665208800),
        2,
        20.2
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        6,
        FROM_UNIXTIME(1665295200),
        2,
        21.2
    );

INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        7,
        FROM_UNIXTIME(1664949600),
        3,
        41.35
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        7,
        FROM_UNIXTIME(1665036000),
        3,
        39.56
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        7,
        FROM_UNIXTIME(1665122400),
        3,
        31.65
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        7,
        FROM_UNIXTIME(1665208800),
        3,
        30.03
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        7,
        FROM_UNIXTIME(1665295200),
        3,
        29.64
    );

INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        8,
        FROM_UNIXTIME(1664949600),
        5,
        3.1
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        8,
        FROM_UNIXTIME(1665036000),
        5,
        3.23
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        8,
        FROM_UNIXTIME(1665122400),
        5,
        3.42
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        8,
        FROM_UNIXTIME(1665208800),
        5,
        3.51
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        8,
        FROM_UNIXTIME(1665295200),
        5,
        3.46
    );

INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        9,
        FROM_UNIXTIME(1664949600),
        1,
        7.12
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        9,
        FROM_UNIXTIME(1665036000),
        1,
        7.89
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        9,
        FROM_UNIXTIME(1665122400),
        1,
        7.45
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        9,
        FROM_UNIXTIME(1665208800),
        1,
        7.64
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        9,
        FROM_UNIXTIME(1665295200),
        1,
        7.99
    );

INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        10,
        FROM_UNIXTIME(1664949600),
        2,
        17.3
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        10,
        FROM_UNIXTIME(1665036000),
        2,
        18.3
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        10,
        FROM_UNIXTIME(1665122400),
        2,
        19.3
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        10,
        FROM_UNIXTIME(1665208800),
        2,
        20.3
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        10,
        FROM_UNIXTIME(1665295200),
        2,
        21.3
    );

INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        11,
        FROM_UNIXTIME(1664949600),
        3,
        52.65
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        11,
        FROM_UNIXTIME(1665036000),
        3,
        43.65
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        11,
        FROM_UNIXTIME(1665122400),
        3,
        48.65
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        11,
        FROM_UNIXTIME(1665208800),
        3,
        38.56
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        11,
        FROM_UNIXTIME(1665295200),
        3,
        40.2
    );

INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        12,
        FROM_UNIXTIME(1664949600),
        5,
        2.88
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        12,
        FROM_UNIXTIME(1665036000),
        5,
        2.93
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        12,
        FROM_UNIXTIME(1665122400),
        5,
        2.84
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        12,
        FROM_UNIXTIME(1665208800),
        5,
       2.69
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        12,
        FROM_UNIXTIME(1665295200),
        5,
        2.51
    );

INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        13,
        FROM_UNIXTIME(1664949600),
        1,
        8.66
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        13,
        FROM_UNIXTIME(1665036000),
        1,
        8.47
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        13,
        FROM_UNIXTIME(1665122400),
        1,
        8.92
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        13,
        FROM_UNIXTIME(1665208800),
        1,
        8.12
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        13,
        FROM_UNIXTIME(1665295200),
        1,
        8.33
    );

INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        14,
        FROM_UNIXTIME(1664949600),
        2,
        17.4
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        14,
        FROM_UNIXTIME(1665036000),
        2,
        18.4
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        14,
        FROM_UNIXTIME(1665122400),
        2,
        19.4
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        14,
        FROM_UNIXTIME(1665208800),
        2,
        20.4
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        14,
        FROM_UNIXTIME(1665295200),
        2,
        21.4
    );

INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        15,
        FROM_UNIXTIME(1664949600),
        3,
        40.00
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        15,
        FROM_UNIXTIME(1665036000),
        3,
        41.12
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        15,
        FROM_UNIXTIME(1665122400),
        3,
        36.98
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        15,
        FROM_UNIXTIME(1665208800),
        3,
        34.58
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        15,
        FROM_UNIXTIME(1665295200),
        3,
        37.45
    );

INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        16,
        FROM_UNIXTIME(1664949600),
        5,
        2.56
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        16,
        FROM_UNIXTIME(1665036000),
        5,
        2.35
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        16,
        FROM_UNIXTIME(1665122400),
        5,
        2.23
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        16,
        FROM_UNIXTIME(1665208800),
        5,
        2.01
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        16,
        FROM_UNIXTIME(1665295200),
        5,
        1.87
    );

INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        17,
        FROM_UNIXTIME(1662789600),
        1,
        9.89
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        17,
        FROM_UNIXTIME(1665036000),
        1,
        9.17
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        17,
        FROM_UNIXTIME(1665122400),
        1,
        9.63
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        17,
        FROM_UNIXTIME(1665208800),
        1,
        9.11
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        17,
        FROM_UNIXTIME(1665295200),
        1,
        9.47
    );

INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        18,
        FROM_UNIXTIME(1662789600),
        2,
        17.5
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        18,
        FROM_UNIXTIME(1665036000),
        2,
        18.5
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        18,
        FROM_UNIXTIME(1665122400),
        2,
        19.5
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        18,
        FROM_UNIXTIME(1665208800),
        2,
        20.5
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        18,
        FROM_UNIXTIME(1665295200),
        2,
        21.5
    );

INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        19,
        FROM_UNIXTIME(1662789600),
        3,
        44.55
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        19,
        FROM_UNIXTIME(1665036000),
        3,
        43.65
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        19,
        FROM_UNIXTIME(1665122400),
        3,
        57.89
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        19,
        FROM_UNIXTIME(1665208800),
        3,
        39.77
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        19,
        FROM_UNIXTIME(1665295200),
        3,
        41.12
    );

INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        20,
        FROM_UNIXTIME(1662789600),
        5,
        2.22
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        20,
        FROM_UNIXTIME(1665036000),
        5,
        2.35
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        20,
        FROM_UNIXTIME(1665122400),
        5,
        2.47
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        20,
        FROM_UNIXTIME(1665208800),
        5,
        2.11
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        20,
        FROM_UNIXTIME(1665295200),
        5,
        2.00
    );

INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        21,
        FROM_UNIXTIME(1662789600),
        1,
        10.22
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        21,
        FROM_UNIXTIME(1665036000),
        1,
       10.43
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        21,
        FROM_UNIXTIME(1665122400),
        1,
        10.79
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        21,
        FROM_UNIXTIME(1665208800),
        1,
        10.29
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        21,
        FROM_UNIXTIME(1665295200),
        1,
        10.63
    );

INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        22,
        FROM_UNIXTIME(1662789600),
        2,
        17.6
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        22,
        FROM_UNIXTIME(1665036000),
        2,
        18.6
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        22,
        FROM_UNIXTIME(1665122400),
        2,
        19.6
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        22,
        FROM_UNIXTIME(1665208800),
        2,
        20.6
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        22,
        FROM_UNIXTIME(1665295200),
        2,
        21.6
    );

INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        23,
        FROM_UNIXTIME(1662789600),
        3,
        44.69
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        23,
        FROM_UNIXTIME(1665036000),
        3,
        42.36
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        23,
        FROM_UNIXTIME(1665122400),
        3,
        38.98
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        23,
        FROM_UNIXTIME(1665208800),
        3,
        39.13
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        23,
        FROM_UNIXTIME(1665295200),
        3,
        38.88
    );

INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        24,
        FROM_UNIXTIME(1662789600),
        5,
        1.78
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        24,
        FROM_UNIXTIME(1665036000),
        5,
        1.95
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        24,
        FROM_UNIXTIME(1665122400),
        5,
        2.04
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        24,
        FROM_UNIXTIME(1665208800),
        5,
        2.23
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        24,
        FROM_UNIXTIME(1665295200),
        5,
        2.17
    );

INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        25,
        FROM_UNIXTIME(1662789600),
        1,
        12.98
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        25,
        FROM_UNIXTIME(1665036000),
        1,
        12.64
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        25,
        FROM_UNIXTIME(1665122400),
        1,
        12.37
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        25,
        FROM_UNIXTIME(1665208800),
        1,
        12.11
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        25,
        FROM_UNIXTIME(1665295200),
        1,
        12.13
    );

INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        26,
        FROM_UNIXTIME(1662789600),
        2,
        17.7
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        26,
        FROM_UNIXTIME(1665036000),
        2,
        18.7
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        26,
        FROM_UNIXTIME(1665122400),
        2,
        19.7
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        26,
        FROM_UNIXTIME(1665208800),
        2,
        20.7
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        26,
        FROM_UNIXTIME(1665295200),
        2,
        21.7
    );

INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        27,
        FROM_UNIXTIME(1662789600),
        3,
        32.56
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        27,
        FROM_UNIXTIME(1665036000),
        3,
        36.45
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        27,
        FROM_UNIXTIME(1665122400),
        3,
        37.89
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        27,
        FROM_UNIXTIME(1665208800),
        3,
       41.23
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        27,
        FROM_UNIXTIME(1665295200),
        3,
        40.14
    );

INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        28,
        FROM_UNIXTIME(1662789600),
        5,
        2.89
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        28,
        FROM_UNIXTIME(1665036000),
        5,
        2.99
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        28,
        FROM_UNIXTIME(1665122400),
        5,
        3.21
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        28,
        FROM_UNIXTIME(1665208800),
        5,
        2.78
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        28,
        FROM_UNIXTIME(1665295200),
        5,
        2.84
    );

INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        29,
        FROM_UNIXTIME(1662789600),
        1,
        16.12
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        29,
        FROM_UNIXTIME(1665036000),
        1,
        16.38
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        29,
        FROM_UNIXTIME(1665122400),
        1,
        16.76
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        29,
        FROM_UNIXTIME(1665208800),
        1,
        16.93
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        29,
        FROM_UNIXTIME(1665295200),
        1,
        16.45
    );

INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        30,
        FROM_UNIXTIME(1662789600),
        2,
        17.8
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        30,
        FROM_UNIXTIME(1665036000),
        2,
        18.8
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        30,
        FROM_UNIXTIME(1665122400),
        2,
        19.8
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        30,
        FROM_UNIXTIME(1665208800),
        2,
        20.8
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        30,
        FROM_UNIXTIME(1665295200),
        2,
        21.8
    );

INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        31,
        FROM_UNIXTIME(1662789600),
        3,
        42.55
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        31,
        FROM_UNIXTIME(1665036000),
        3,
        41.13
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        31,
        FROM_UNIXTIME(1665122400),
        3,
        47.86
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        31,
        FROM_UNIXTIME(1665208800),
        3,
        38.99
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        31,
        FROM_UNIXTIME(1665295200),
        3,
        37.65
    );

INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        32,
        FROM_UNIXTIME(1662789600),
        5,
        3.22
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        32,
        FROM_UNIXTIME(1665036000),
        5,
        3.45
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        32,
        FROM_UNIXTIME(1665122400),
        5,
        3.5
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        32,
        FROM_UNIXTIME(1665208800),
        5,
        3.44
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        32,
        FROM_UNIXTIME(1665295200),
        5,
        3.32
    );

INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        33,
        FROM_UNIXTIME(1662789600),
        1,
        17.87
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        33,
        FROM_UNIXTIME(1665036000),
        1,
        17.94
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        33,
        FROM_UNIXTIME(1665122400),
        1,
        17.55
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        33,
        FROM_UNIXTIME(1665208800),
        1,
        17.46
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        33,
        FROM_UNIXTIME(1665295200),
        1,
        17.21
    );

INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        34,
        FROM_UNIXTIME(1662789600),
        2,
        17.9
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        34,
        FROM_UNIXTIME(1665036000),
        2,
        18.9
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        34,
        FROM_UNIXTIME(1665122400),
        2,
        19.9
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        34,
        FROM_UNIXTIME(1665208800),
        2,
        20.9
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        34,
        FROM_UNIXTIME(1665295200),
        2,
        21.9
    );

INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        35,
        FROM_UNIXTIME(1662789600),
        3,
        49.59
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        35,
        FROM_UNIXTIME(1665036000),
        3,
        46.86
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        35,
        FROM_UNIXTIME(1665122400),
        3,
        47.55
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        35,
        FROM_UNIXTIME(1665208800),
        3,
       49.56
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        35,
        FROM_UNIXTIME(1665295200),
        3,
        47.87
    );

INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        36,
        FROM_UNIXTIME(1662789600),
        5,
        2.54
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        36,
        FROM_UNIXTIME(1665036000),
        5,
        2.36
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        36,
        FROM_UNIXTIME(1665122400),
        5,
        2.25
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        36,
        FROM_UNIXTIME(1665208800),
        5,
        2.12
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        36,
        FROM_UNIXTIME(1665295200),
        5,
        2.15
    );

INSERT INTO actuator_type (ID_TYPE, DESCRIPTION, IS_SWITCH, LOCATION)
VALUES (1, "MINERAL VALVE", 1, "SECTOR");
INSERT INTO actuator_type (ID_TYPE, DESCRIPTION, IS_SWITCH, LOCATION)
VALUES (2, "WATER VALVE", 1, "PIPE");
INSERT INTO actuator_type (ID_TYPE, DESCRIPTION, IS_SWITCH, LOCATION)
VALUES (3, "PUMP", 1, "PIPE");

INSERT INTO actuator_sector (ID_ACTUATOR, ID_TYPE)
VALUES (1, 1);
INSERT INTO actuator_sector (ID_ACTUATOR, ID_TYPE)
VALUES (2, 1);
INSERT INTO actuator_sector (ID_ACTUATOR, ID_TYPE)
VALUES (3, 1);
INSERT INTO actuator_sector (ID_ACTUATOR, ID_TYPE)
VALUES (4, 1);
INSERT INTO actuator_sector (ID_ACTUATOR, ID_TYPE)
VALUES (5, 1);
INSERT INTO actuator_sector (ID_ACTUATOR, ID_TYPE)
VALUES (6, 1);
INSERT INTO actuator_sector (ID_ACTUATOR, ID_TYPE)
VALUES (7, 1);
INSERT INTO actuator_sector (ID_ACTUATOR, ID_TYPE)
VALUES (8, 1);
INSERT INTO actuator_sector (ID_ACTUATOR, ID_TYPE)
VALUES (9, 1);

INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (1, FROM_UNIXTIME(1662789600), 12);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (1, FROM_UNIXTIME(1665036000), 24);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (1, FROM_UNIXTIME(1665122400), 36);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (1, FROM_UNIXTIME(1665208800), 45);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (1, FROM_UNIXTIME(1665295200), 65);

INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (2, FROM_UNIXTIME(1662789600), 25);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (2, FROM_UNIXTIME(1665036000), 34);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (2, FROM_UNIXTIME(1665122400), 52);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (2, FROM_UNIXTIME(1665208800), 47);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (2, FROM_UNIXTIME(1665295200), 38);

INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (3, FROM_UNIXTIME(1662789600), 89);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (3, FROM_UNIXTIME(1665036000), 100);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (3, FROM_UNIXTIME(1665122400), 100);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (3, FROM_UNIXTIME(1665208800), 89);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (3, FROM_UNIXTIME(1665295200), 74);

INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (4, FROM_UNIXTIME(1662789600), 65);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (4, FROM_UNIXTIME(1665036000), 78);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (4, FROM_UNIXTIME(1665122400), 71);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (4, FROM_UNIXTIME(1665208800), 66);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (4, FROM_UNIXTIME(1665295200), 42);

INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (5, FROM_UNIXTIME(1662789600), 12);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (5, FROM_UNIXTIME(1665036000), 7);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (5, FROM_UNIXTIME(1665122400), 13);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (5, FROM_UNIXTIME(1665208800), 21);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (5, FROM_UNIXTIME(1665295200), 18);

INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (6, FROM_UNIXTIME(1662789600), 67);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (6, FROM_UNIXTIME(1665036000), 70);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (6, FROM_UNIXTIME(1665122400), 72);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (6, FROM_UNIXTIME(1665208800), 78);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (6, FROM_UNIXTIME(1665295200), 82);

INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (7, FROM_UNIXTIME(1662789600), 56);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (7, FROM_UNIXTIME(1665036000), 51);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (7, FROM_UNIXTIME(1665122400), 49);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (7, FROM_UNIXTIME(1665208800), 45);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (7, FROM_UNIXTIME(1665295200), 48);

INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (8, FROM_UNIXTIME(1662789600), 34);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (8, FROM_UNIXTIME(1665036000), 38);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (8, FROM_UNIXTIME(1665122400), 31);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (8, FROM_UNIXTIME(1665208800), 33);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (8, FROM_UNIXTIME(1665295200), 29);

INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (9, FROM_UNIXTIME(1662789600), 6);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (9, FROM_UNIXTIME(1665036000), 14);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (9, FROM_UNIXTIME(1665122400), 20);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (9, FROM_UNIXTIME(1665208800), 16);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (9, FROM_UNIXTIME(1665295200), 33);

INSERT INTO pipe (ID_PIPE)
VALUES (1);
INSERT INTO pipe (ID_PIPE)
VALUES (2);
INSERT INTO pipe (ID_PIPE)
VALUES (3);
INSERT INTO pipe (ID_PIPE)
VALUES (4);
INSERT INTO pipe (ID_PIPE)
VALUES (5);
INSERT INTO pipe (ID_PIPE)
VALUES (6);
INSERT INTO pipe (ID_PIPE)
VALUES (7);
INSERT INTO pipe (ID_PIPE)
VALUES (8);
INSERT INTO pipe (ID_PIPE)
VALUES (9);
INSERT INTO pipe (ID_PIPE)
VALUES (10);
INSERT INTO pipe (ID_PIPE)
VALUES (11);
INSERT INTO pipe (ID_PIPE)
VALUES (12);
INSERT INTO pipe (ID_PIPE)
VALUES (13);
INSERT INTO pipe (ID_PIPE)
VALUES (14);
INSERT INTO pipe (ID_PIPE)
VALUES (15);
INSERT INTO pipe (ID_PIPE)
VALUES (16);
INSERT INTO pipe (ID_PIPE)
VALUES (17);
INSERT INTO pipe (ID_PIPE)
VALUES (18);
INSERT INTO pipe (ID_PIPE)
VALUES (19);
INSERT INTO pipe (ID_PIPE)
VALUES (20);
INSERT INTO pipe (ID_PIPE)
VALUES (21);
INSERT INTO pipe (ID_PIPE)
VALUES (22);
INSERT INTO pipe (ID_PIPE)
VALUES (23);
INSERT INTO pipe (ID_PIPE)
VALUES (24);
INSERT INTO pipe (ID_PIPE)
VALUES (25);
INSERT INTO pipe (ID_PIPE)
VALUES (26);
INSERT INTO pipe (ID_PIPE)
VALUES (27);
INSERT INTO pipe (ID_PIPE)
VALUES (28);
INSERT INTO pipe (ID_PIPE)
VALUES (29);
INSERT INTO pipe (ID_PIPE)
VALUES (30);
INSERT INTO pipe (ID_PIPE)
VALUES (31);
INSERT INTO pipe (ID_PIPE)
VALUES (32);
INSERT INTO pipe (ID_PIPE)
VALUES (33);
INSERT INTO pipe (ID_PIPE)
VALUES (34);
INSERT INTO pipe (ID_PIPE)
VALUES (35);
INSERT INTO pipe (ID_PIPE)
VALUES (36);

INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (10, 2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (11, 3);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (12, 2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (13, 3);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (14, 2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (15, 3);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (16, 2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (17, 3);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (18, 2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (19, 3);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (20, 2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (21, 3);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (22, 2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (23, 3);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (24, 2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (25, 3);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (26, 2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (27, 3);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (28, 2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (29, 3);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (30, 2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (31, 3);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (32, 2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (33, 3);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (34, 2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (35, 3);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (36, 2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (37, 3);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (38, 2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (39, 3);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (40, 2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (41, 3);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (42, 2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (43, 3);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (44, 2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (45, 3);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (46, 2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (47, 3);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (48, 2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (49, 3);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (50, 2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (51, 3);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (52, 2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (53, 3);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (54, 2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (55, 3);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (56, 2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (57, 3);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (58, 2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (59, 3);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (60, 2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (61, 3);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (62, 2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (63, 3);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (64, 2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (65, 3);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (66, 2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (67, 3);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (68, 2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (69, 3);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (70, 2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (71, 3);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (72, 2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (73, 3);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (74, 2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (75, 3);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (76, 2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (77, 3);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (78, 2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (79, 3);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (80, 2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (81, 3);

INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (10, 1);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (11, 1);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (12, 2);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (13, 2);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (14, 3);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (15, 3);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (16, 4);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (17, 4);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (18, 5);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (19, 5);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (20, 6);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (21, 6);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (22, 7);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (23, 7);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (24, 8);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (25, 8);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (26, 9);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (27, 9);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (28, 10);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (29, 10);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (30, 11);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (31, 11);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (32, 12);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (33, 12);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (34, 13);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (35, 13);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (36, 14);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (37, 14);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (38, 15);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (39, 15);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (40, 16);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (41, 16);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (42, 17);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (43, 17);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (44, 18);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (45, 18);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (46, 19);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (47, 19);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (48, 20);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (49, 20);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (50, 21);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (51, 21);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (52, 22);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (53, 22);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (54, 23);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (55, 23);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (56, 24);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (57, 24);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (58, 25);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (59, 25);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (60, 26);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (61, 26);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (62, 27);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (63, 27);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (64, 28);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (65, 28);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (66, 29);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (67, 29);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (68, 30);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (69, 30);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (70, 31);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (71, 31);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (72, 32);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (73, 32);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (74, 33);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (75, 33);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (76, 34);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (77, 34);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (78, 35);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (79, 35);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (80, 36);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (81, 36);

INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (10, FROM_UNIXTIME(1662789600), 12);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (11, FROM_UNIXTIME(1662789600), 42);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (12, FROM_UNIXTIME(1662789600), 65);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (13, FROM_UNIXTIME(1662789600), 87);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (14, FROM_UNIXTIME(1662789600), 47);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (15, FROM_UNIXTIME(1662789600), 36);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (16, FROM_UNIXTIME(1662789600), 87);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (17, FROM_UNIXTIME(1662789600), 92);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (18, FROM_UNIXTIME(1662789600), 94);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (19, FROM_UNIXTIME(1662789600), 87);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (20, FROM_UNIXTIME(1662789600), 12);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (21, FROM_UNIXTIME(1662789600), 1);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (22, FROM_UNIXTIME(1662789600), 24);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (23, FROM_UNIXTIME(1662789600), 30);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (24, FROM_UNIXTIME(1662789600), 54);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (25, FROM_UNIXTIME(1662789600), 35);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (26, FROM_UNIXTIME(1662789600), 64);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (27, FROM_UNIXTIME(1662789600), 24);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (28, FROM_UNIXTIME(1662789600), 76);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (29, FROM_UNIXTIME(1662789600), 94);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (30, FROM_UNIXTIME(1662789600), 86);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (31, FROM_UNIXTIME(1662789600), 55);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (32, FROM_UNIXTIME(1662789600), 44);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (33, FROM_UNIXTIME(1662789600), 31);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (34, FROM_UNIXTIME(1662789600), 33);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (35, FROM_UNIXTIME(1662789600), 42);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (36, FROM_UNIXTIME(1662789600), 54);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (37, FROM_UNIXTIME(1662789600), 76);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (38, FROM_UNIXTIME(1662789600), 35);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (39, FROM_UNIXTIME(1662789600), 86);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (40, FROM_UNIXTIME(1662789600), 46);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (41, FROM_UNIXTIME(1662789600), 86);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (42, FROM_UNIXTIME(1662789600), 43);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (43, FROM_UNIXTIME(1662789600), 67);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (44, FROM_UNIXTIME(1662789600), 57);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (45, FROM_UNIXTIME(1662789600), 58);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (46, FROM_UNIXTIME(1662789600), 99);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (47, FROM_UNIXTIME(1662789600), 79);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (48, FROM_UNIXTIME(1662789600), 87);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (49, FROM_UNIXTIME(1662789600), 43);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (50, FROM_UNIXTIME(1662789600), 64);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (51, FROM_UNIXTIME(1662789600), 98);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (52, FROM_UNIXTIME(1662789600), 53);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (53, FROM_UNIXTIME(1662789600), 23);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (54, FROM_UNIXTIME(1662789600), 45);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (55, FROM_UNIXTIME(1662789600), 47);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (56, FROM_UNIXTIME(1662789600), 66);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (57, FROM_UNIXTIME(1662789600), 54);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (58, FROM_UNIXTIME(1662789600), 76);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (59, FROM_UNIXTIME(1662789600), 45);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (60, FROM_UNIXTIME(1662789600), 76);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (61, FROM_UNIXTIME(1662789600), 98);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (62, FROM_UNIXTIME(1662789600), 45);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (63, FROM_UNIXTIME(1662789600), 34);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (64, FROM_UNIXTIME(1662789600), 3);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (65, FROM_UNIXTIME(1662789600), 22);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (66, FROM_UNIXTIME(1662789600), 43);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (67, FROM_UNIXTIME(1662789600), 45);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (68, FROM_UNIXTIME(1662789600), 43);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (69, FROM_UNIXTIME(1662789600), 64);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (70, FROM_UNIXTIME(1662789600), 22);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (71, FROM_UNIXTIME(1662789600), 21);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (72, FROM_UNIXTIME(1662789600), 12);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (73, FROM_UNIXTIME(1662789600), 10);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (74, FROM_UNIXTIME(1662789600), 19);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (75, FROM_UNIXTIME(1662789600), 18);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (76, FROM_UNIXTIME(1662789600), 13);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (77, FROM_UNIXTIME(1662789600), 43);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (78, FROM_UNIXTIME(1662789600), 35);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (79, FROM_UNIXTIME(1662789600), 45);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (80, FROM_UNIXTIME(1662789600), 22);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (81, FROM_UNIXTIME(1662789600), 54);

INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (10, FROM_UNIXTIME(1665036000), 12);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (11, FROM_UNIXTIME(1665036000), 42);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (12, FROM_UNIXTIME(1665036000), 65);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (13, FROM_UNIXTIME(1665036000), 87);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (14, FROM_UNIXTIME(1665036000), 47);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (15, FROM_UNIXTIME(1665036000), 36);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (16, FROM_UNIXTIME(1665036000), 87);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (17, FROM_UNIXTIME(1665036000), 92);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (18, FROM_UNIXTIME(1665036000), 94);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (19, FROM_UNIXTIME(1665036000), 87);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (20, FROM_UNIXTIME(1665036000), 12);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (21, FROM_UNIXTIME(1665036000), 1);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (22, FROM_UNIXTIME(1665036000), 24);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (23, FROM_UNIXTIME(1665036000), 30);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (24, FROM_UNIXTIME(1665036000), 54);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (25, FROM_UNIXTIME(1665036000), 35);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (26, FROM_UNIXTIME(1665036000), 64);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (27, FROM_UNIXTIME(1665036000), 24);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (28, FROM_UNIXTIME(1665036000), 76);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (29, FROM_UNIXTIME(1665036000), 94);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (30, FROM_UNIXTIME(1665036000), 86);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (31, FROM_UNIXTIME(1665036000), 55);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (32, FROM_UNIXTIME(1665036000), 44);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (33, FROM_UNIXTIME(1665036000), 31);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (34, FROM_UNIXTIME(1665036000), 33);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (35, FROM_UNIXTIME(1665036000), 42);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (36, FROM_UNIXTIME(1665036000), 54);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (37, FROM_UNIXTIME(1665036000), 76);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (38, FROM_UNIXTIME(1665036000), 35);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (39, FROM_UNIXTIME(1665036000), 86);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (40, FROM_UNIXTIME(1665036000), 46);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (41, FROM_UNIXTIME(1665036000), 86);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (42, FROM_UNIXTIME(1665036000), 43);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (43, FROM_UNIXTIME(1665036000), 67);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (44, FROM_UNIXTIME(1665036000), 57);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (45, FROM_UNIXTIME(1665036000), 58);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (46, FROM_UNIXTIME(1665036000), 99);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (47, FROM_UNIXTIME(1665036000), 79);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (48, FROM_UNIXTIME(1665036000), 87);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (49, FROM_UNIXTIME(1665036000), 43);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (50, FROM_UNIXTIME(1665036000), 64);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (51, FROM_UNIXTIME(1665036000), 98);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (52, FROM_UNIXTIME(1665036000), 53);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (53, FROM_UNIXTIME(1665036000), 23);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (54, FROM_UNIXTIME(1665036000), 45);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (55, FROM_UNIXTIME(1665036000), 47);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (56, FROM_UNIXTIME(1665036000), 66);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (57, FROM_UNIXTIME(1665036000), 54);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (58, FROM_UNIXTIME(1665036000), 76);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (59, FROM_UNIXTIME(1665036000), 45);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (60, FROM_UNIXTIME(1665036000), 76);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (61, FROM_UNIXTIME(1665036000), 98);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (62, FROM_UNIXTIME(1665036000), 45);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (63, FROM_UNIXTIME(1665036000), 34);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (64, FROM_UNIXTIME(1665036000), 3);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (65, FROM_UNIXTIME(1665036000), 22);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (66, FROM_UNIXTIME(1665036000), 43);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (67, FROM_UNIXTIME(1665036000), 45);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (68, FROM_UNIXTIME(1665036000), 43);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (69, FROM_UNIXTIME(1665036000), 64);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (70, FROM_UNIXTIME(1665036000), 22);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (71, FROM_UNIXTIME(1665036000), 21);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (72, FROM_UNIXTIME(1665036000), 12);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (73, FROM_UNIXTIME(1665036000), 10);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (74, FROM_UNIXTIME(1665036000), 19);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (75, FROM_UNIXTIME(1665036000), 18);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (76, FROM_UNIXTIME(1665036000), 13);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (77, FROM_UNIXTIME(1665036000), 43);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (78, FROM_UNIXTIME(1665036000), 35);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (79, FROM_UNIXTIME(1665036000), 45);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (80, FROM_UNIXTIME(1665036000), 22);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (81, FROM_UNIXTIME(1665036000), 54);

INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (10, FROM_UNIXTIME(1665122400), 12);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (11, FROM_UNIXTIME(1665122400), 42);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (12, FROM_UNIXTIME(1665122400), 65);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (13, FROM_UNIXTIME(1665122400), 87);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (14, FROM_UNIXTIME(1665122400), 47);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (15, FROM_UNIXTIME(1665122400), 36);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (16, FROM_UNIXTIME(1665122400), 87);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (17, FROM_UNIXTIME(1665122400), 92);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (18, FROM_UNIXTIME(1665122400), 94);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (19, FROM_UNIXTIME(1665122400), 87);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (20, FROM_UNIXTIME(1665122400), 12);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (21, FROM_UNIXTIME(1665122400), 1);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (22, FROM_UNIXTIME(1665122400), 24);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (23, FROM_UNIXTIME(1665122400), 30);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (24, FROM_UNIXTIME(1665122400), 54);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (25, FROM_UNIXTIME(1665122400), 35);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (26, FROM_UNIXTIME(1665122400), 64);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (27, FROM_UNIXTIME(1665122400), 24);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (28, FROM_UNIXTIME(1665122400), 76);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (29, FROM_UNIXTIME(1665122400), 94);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (30, FROM_UNIXTIME(1665122400), 86);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (31, FROM_UNIXTIME(1665122400), 55);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (32, FROM_UNIXTIME(1665122400), 44);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (33, FROM_UNIXTIME(1665122400), 31);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (34, FROM_UNIXTIME(1665122400), 33);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (35, FROM_UNIXTIME(1665122400), 42);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (36, FROM_UNIXTIME(1665122400), 54);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (37, FROM_UNIXTIME(1665122400), 76);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (38, FROM_UNIXTIME(1665122400), 35);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (39, FROM_UNIXTIME(1665122400), 86);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (40, FROM_UNIXTIME(1665122400), 46);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (41, FROM_UNIXTIME(1665122400), 86);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (42, FROM_UNIXTIME(1665122400), 43);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (43, FROM_UNIXTIME(1665122400), 67);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (44, FROM_UNIXTIME(1665122400), 57);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (45, FROM_UNIXTIME(1665122400), 58);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (46, FROM_UNIXTIME(1665122400), 99);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (47, FROM_UNIXTIME(1665122400), 79);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (48, FROM_UNIXTIME(1665122400), 87);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (49, FROM_UNIXTIME(1665122400), 43);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (50, FROM_UNIXTIME(1665122400), 64);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (51, FROM_UNIXTIME(1665122400), 98);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (52, FROM_UNIXTIME(1665122400), 53);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (53, FROM_UNIXTIME(1665122400), 23);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (54, FROM_UNIXTIME(1665122400), 45);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (55, FROM_UNIXTIME(1665122400), 47);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (56, FROM_UNIXTIME(1665122400), 66);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (57, FROM_UNIXTIME(1665122400), 54);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (58, FROM_UNIXTIME(1665122400), 76);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (59, FROM_UNIXTIME(1665122400), 45);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (60, FROM_UNIXTIME(1665122400), 76);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (61, FROM_UNIXTIME(1665122400), 98);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (62, FROM_UNIXTIME(1665122400), 45);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (63, FROM_UNIXTIME(1665122400), 34);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (64, FROM_UNIXTIME(1665122400), 3);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (65, FROM_UNIXTIME(1665122400), 22);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (66, FROM_UNIXTIME(1665122400), 43);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (67, FROM_UNIXTIME(1665122400), 45);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (68, FROM_UNIXTIME(1665122400), 43);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (69, FROM_UNIXTIME(1665122400), 64);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (70, FROM_UNIXTIME(1665122400), 22);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (71, FROM_UNIXTIME(1665122400), 21);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (72, FROM_UNIXTIME(1665122400), 12);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (73, FROM_UNIXTIME(1665122400), 10);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (74, FROM_UNIXTIME(1665122400), 19);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (75, FROM_UNIXTIME(1665122400), 18);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (76, FROM_UNIXTIME(1665122400), 13);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (77, FROM_UNIXTIME(1665122400), 43);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (78, FROM_UNIXTIME(1665122400), 35);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (79, FROM_UNIXTIME(1665122400), 45);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (80, FROM_UNIXTIME(1665122400), 22);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (81, FROM_UNIXTIME(1665122400), 54);

INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (10, FROM_UNIXTIME(1665208800), 12);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (11, FROM_UNIXTIME(1665208800), 42);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (12, FROM_UNIXTIME(1665208800), 65);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (13, FROM_UNIXTIME(1665208800), 87);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (14, FROM_UNIXTIME(1665208800), 47);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (15, FROM_UNIXTIME(1665208800), 36);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (16, FROM_UNIXTIME(1665208800), 87);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (17, FROM_UNIXTIME(1665208800), 92);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (18, FROM_UNIXTIME(1665208800), 94);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (19, FROM_UNIXTIME(1665208800), 87);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (20, FROM_UNIXTIME(1665208800), 12);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (21, FROM_UNIXTIME(1665208800), 1);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (22, FROM_UNIXTIME(1665208800), 24);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (23, FROM_UNIXTIME(1665208800), 30);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (24, FROM_UNIXTIME(1665208800), 54);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (25, FROM_UNIXTIME(1665208800), 35);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (26, FROM_UNIXTIME(1665208800), 64);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (27, FROM_UNIXTIME(1665208800), 24);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (28, FROM_UNIXTIME(1665208800), 76);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (29, FROM_UNIXTIME(1665208800), 94);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (30, FROM_UNIXTIME(1665208800), 86);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (31, FROM_UNIXTIME(1665208800), 55);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (32, FROM_UNIXTIME(1665208800), 44);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (33, FROM_UNIXTIME(1665208800), 31);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (34, FROM_UNIXTIME(1665208800), 33);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (35, FROM_UNIXTIME(1665208800), 42);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (36, FROM_UNIXTIME(1665208800), 54);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (37, FROM_UNIXTIME(1665208800), 76);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (38, FROM_UNIXTIME(1665208800), 35);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (39, FROM_UNIXTIME(1665208800), 86);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (40, FROM_UNIXTIME(1665208800), 46);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (41, FROM_UNIXTIME(1665208800), 86);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (42, FROM_UNIXTIME(1665208800), 43);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (43, FROM_UNIXTIME(1665208800), 67);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (44, FROM_UNIXTIME(1665208800), 57);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (45, FROM_UNIXTIME(1665208800), 58);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (46, FROM_UNIXTIME(1665208800), 99);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (47, FROM_UNIXTIME(1665208800), 79);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (48, FROM_UNIXTIME(1665208800), 87);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (49, FROM_UNIXTIME(1665208800), 43);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (50, FROM_UNIXTIME(1665208800), 64);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (51, FROM_UNIXTIME(1665208800), 98);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (52, FROM_UNIXTIME(1665208800), 53);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (53, FROM_UNIXTIME(1665208800), 23);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (54, FROM_UNIXTIME(1665208800), 45);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (55, FROM_UNIXTIME(1665208800), 47);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (56, FROM_UNIXTIME(1665208800), 66);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (57, FROM_UNIXTIME(1665208800), 54);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (58, FROM_UNIXTIME(1665208800), 76);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (59, FROM_UNIXTIME(1665208800), 45);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (60, FROM_UNIXTIME(1665208800), 76);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (61, FROM_UNIXTIME(1665208800), 98);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (62, FROM_UNIXTIME(1665208800), 45);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (63, FROM_UNIXTIME(1665208800), 34);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (64, FROM_UNIXTIME(1665208800), 3);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (65, FROM_UNIXTIME(1665208800), 22);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (66, FROM_UNIXTIME(1665208800), 43);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (67, FROM_UNIXTIME(1665208800), 45);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (68, FROM_UNIXTIME(1665208800), 43);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (69, FROM_UNIXTIME(1665208800), 64);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (70, FROM_UNIXTIME(1665208800), 22);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (71, FROM_UNIXTIME(1665208800), 21);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (72, FROM_UNIXTIME(1665208800), 12);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (73, FROM_UNIXTIME(1665208800), 10);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (74, FROM_UNIXTIME(1665208800), 19);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (75, FROM_UNIXTIME(1665208800), 18);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (76, FROM_UNIXTIME(1665208800), 13);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (77, FROM_UNIXTIME(1665208800), 43);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (78, FROM_UNIXTIME(1665208800), 35);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (79, FROM_UNIXTIME(1665208800), 45);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (80, FROM_UNIXTIME(1665208800), 22);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (81, FROM_UNIXTIME(1665208800), 54);

INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (10, FROM_UNIXTIME(1665295200), 12);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (11, FROM_UNIXTIME(1665295200), 42);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (12, FROM_UNIXTIME(1665295200), 65);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (13, FROM_UNIXTIME(1665295200), 87);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (14, FROM_UNIXTIME(1665295200), 47);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (15, FROM_UNIXTIME(1665295200), 36);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (16, FROM_UNIXTIME(1665295200), 87);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (17, FROM_UNIXTIME(1665295200), 92);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (18, FROM_UNIXTIME(1665295200), 94);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (19, FROM_UNIXTIME(1665295200), 87);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (20, FROM_UNIXTIME(1665295200), 12);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (21, FROM_UNIXTIME(1665295200), 1);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (22, FROM_UNIXTIME(1665295200), 24);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (23, FROM_UNIXTIME(1665295200), 30);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (24, FROM_UNIXTIME(1665295200), 54);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (25, FROM_UNIXTIME(1665295200), 35);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (26, FROM_UNIXTIME(1665295200), 64);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (27, FROM_UNIXTIME(1665295200), 24);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (28, FROM_UNIXTIME(1665295200), 76);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (29, FROM_UNIXTIME(1665295200), 94);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (30, FROM_UNIXTIME(1665295200), 86);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (31, FROM_UNIXTIME(1665295200), 55);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (32, FROM_UNIXTIME(1665295200), 44);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (33, FROM_UNIXTIME(1665295200), 31);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (34, FROM_UNIXTIME(1665295200), 33);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (35, FROM_UNIXTIME(1665295200), 42);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (36, FROM_UNIXTIME(1665295200), 54);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (37, FROM_UNIXTIME(1665295200), 76);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (38, FROM_UNIXTIME(1665295200), 35);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (39, FROM_UNIXTIME(1665295200), 86);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (40, FROM_UNIXTIME(1665295200), 46);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (41, FROM_UNIXTIME(1665295200), 86);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (42, FROM_UNIXTIME(1665295200), 43);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (43, FROM_UNIXTIME(1665295200), 67);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (44, FROM_UNIXTIME(1665295200), 57);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (45, FROM_UNIXTIME(1665295200), 58);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (46, FROM_UNIXTIME(1665295200), 99);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (47, FROM_UNIXTIME(1665295200), 79);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (48, FROM_UNIXTIME(1665295200), 87);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (49, FROM_UNIXTIME(1665295200), 43);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (50, FROM_UNIXTIME(1665295200), 64);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (51, FROM_UNIXTIME(1665295200), 98);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (52, FROM_UNIXTIME(1665295200), 53);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (53, FROM_UNIXTIME(1665295200), 23);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (54, FROM_UNIXTIME(1665295200), 45);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (55, FROM_UNIXTIME(1665295200), 47);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (56, FROM_UNIXTIME(1665295200), 66);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (57, FROM_UNIXTIME(1665295200), 54);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (58, FROM_UNIXTIME(1665295200), 76);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (59, FROM_UNIXTIME(1665295200), 45);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (60, FROM_UNIXTIME(1665295200), 76);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (61, FROM_UNIXTIME(1665295200), 98);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (62, FROM_UNIXTIME(1665295200), 45);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (63, FROM_UNIXTIME(1665295200), 34);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (64, FROM_UNIXTIME(1665295200), 3);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (65, FROM_UNIXTIME(1665295200), 22);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (66, FROM_UNIXTIME(1665295200), 43);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (67, FROM_UNIXTIME(1665295200), 45);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (68, FROM_UNIXTIME(1665295200), 43);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (69, FROM_UNIXTIME(1665295200), 64);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (70, FROM_UNIXTIME(1665295200), 22);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (71, FROM_UNIXTIME(1665295200), 21);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (72, FROM_UNIXTIME(1665295200), 12);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (73, FROM_UNIXTIME(1665295200), 10);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (74, FROM_UNIXTIME(1665295200), 19);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (75, FROM_UNIXTIME(1665295200), 18);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (76, FROM_UNIXTIME(1665295200), 13);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (77, FROM_UNIXTIME(1665295200), 43);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (78, FROM_UNIXTIME(1665295200), 35);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (79, FROM_UNIXTIME(1665295200), 45);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (80, FROM_UNIXTIME(1665295200), 22);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (81, FROM_UNIXTIME(1665295200), 54);

INSERT INTO connection (ID_SECTOR_IN, ID_SECTOR_OUT, ID_PIPE)
VALUES (1, 2, 1);
INSERT INTO connection (ID_SECTOR_IN, ID_SECTOR_OUT, ID_PIPE)
VALUES (1, 3, 2);
INSERT INTO connection (ID_SECTOR_IN, ID_SECTOR_OUT, ID_PIPE)
VALUES (1, 4, 3);
INSERT INTO connection (ID_SECTOR_IN, ID_SECTOR_OUT, ID_PIPE)
VALUES (1, 5, 4);
INSERT INTO connection (ID_SECTOR_IN, ID_SECTOR_OUT, ID_PIPE)
VALUES (1, 6, 5);
INSERT INTO connection (ID_SECTOR_IN, ID_SECTOR_OUT, ID_PIPE)
VALUES (1, 7, 6);
INSERT INTO connection (ID_SECTOR_IN, ID_SECTOR_OUT, ID_PIPE)
VALUES (1, 8, 7);
INSERT INTO connection (ID_SECTOR_IN, ID_SECTOR_OUT, ID_PIPE)
VALUES (1, 9, 8);
INSERT INTO connection (ID_SECTOR_IN, ID_SECTOR_OUT, ID_PIPE)
VALUES (2, 3, 9);
INSERT INTO connection (ID_SECTOR_IN, ID_SECTOR_OUT, ID_PIPE)
VALUES (2, 4, 10);
INSERT INTO connection (ID_SECTOR_IN, ID_SECTOR_OUT, ID_PIPE)
VALUES (2, 5, 11);
INSERT INTO connection (ID_SECTOR_IN, ID_SECTOR_OUT, ID_PIPE)
VALUES (2, 6, 12);
INSERT INTO connection (ID_SECTOR_IN, ID_SECTOR_OUT, ID_PIPE)
VALUES (2, 7, 13);
INSERT INTO connection (ID_SECTOR_IN, ID_SECTOR_OUT, ID_PIPE)
VALUES (2, 8, 14);
INSERT INTO connection (ID_SECTOR_IN, ID_SECTOR_OUT, ID_PIPE)
VALUES (2, 9, 15);
INSERT INTO connection (ID_SECTOR_IN, ID_SECTOR_OUT, ID_PIPE)
VALUES (3, 4, 16);
INSERT INTO connection (ID_SECTOR_IN, ID_SECTOR_OUT, ID_PIPE)
VALUES (3, 5, 17);
INSERT INTO connection (ID_SECTOR_IN, ID_SECTOR_OUT, ID_PIPE)
VALUES (3, 6, 18);
INSERT INTO connection (ID_SECTOR_IN, ID_SECTOR_OUT, ID_PIPE)
VALUES (3, 7, 19);
INSERT INTO connection (ID_SECTOR_IN, ID_SECTOR_OUT, ID_PIPE)
VALUES (3, 8, 20);
INSERT INTO connection (ID_SECTOR_IN, ID_SECTOR_OUT, ID_PIPE)
VALUES (3, 9, 21);
INSERT INTO connection (ID_SECTOR_IN, ID_SECTOR_OUT, ID_PIPE)
VALUES (4, 5, 22);
INSERT INTO connection (ID_SECTOR_IN, ID_SECTOR_OUT, ID_PIPE)
VALUES (4, 6, 23);
INSERT INTO connection (ID_SECTOR_IN, ID_SECTOR_OUT, ID_PIPE)
VALUES (4, 7, 24);
INSERT INTO connection (ID_SECTOR_IN, ID_SECTOR_OUT, ID_PIPE)
VALUES (4, 8, 25);
INSERT INTO connection (ID_SECTOR_IN, ID_SECTOR_OUT, ID_PIPE)
VALUES (4, 9, 26);
INSERT INTO connection (ID_SECTOR_IN, ID_SECTOR_OUT, ID_PIPE)
VALUES (5, 6, 27);
INSERT INTO connection (ID_SECTOR_IN, ID_SECTOR_OUT, ID_PIPE)
VALUES (5, 7, 28);
INSERT INTO connection (ID_SECTOR_IN, ID_SECTOR_OUT, ID_PIPE)
VALUES (5, 8, 29);
INSERT INTO connection (ID_SECTOR_IN, ID_SECTOR_OUT, ID_PIPE)
VALUES (5, 9, 30);
INSERT INTO connection (ID_SECTOR_IN, ID_SECTOR_OUT, ID_PIPE)
VALUES (6, 7, 31);
INSERT INTO connection (ID_SECTOR_IN, ID_SECTOR_OUT, ID_PIPE)
VALUES (6, 8, 32);
INSERT INTO connection (ID_SECTOR_IN, ID_SECTOR_OUT, ID_PIPE)
VALUES (6, 9, 29);
INSERT INTO connection (ID_SECTOR_IN, ID_SECTOR_OUT, ID_PIPE)
VALUES (7, 8, 30);
INSERT INTO connection (ID_SECTOR_IN, ID_SECTOR_OUT, ID_PIPE)
VALUES (7, 9, 31);
INSERT INTO connection (ID_SECTOR_IN, ID_SECTOR_OUT, ID_PIPE)
VALUES (8, 9, 32);

INSERT INTO sensor_pipe (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE)
VALUES (37, 4, 4);
INSERT INTO sensor_pipe (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE)
VALUES (38, 4, 4);
INSERT INTO sensor_pipe (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE)
VALUES (39, 4, 4);
INSERT INTO sensor_pipe (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE)
VALUES (40, 4, 4);
INSERT INTO sensor_pipe (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE)
VALUES (41, 4, 4);
INSERT INTO sensor_pipe (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE)
VALUES (42, 4, 4);
INSERT INTO sensor_pipe (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE)
VALUES (43, 4, 4);
INSERT INTO sensor_pipe (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE)
VALUES (44, 4, 4);
INSERT INTO sensor_pipe (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE)
VALUES (45, 4, 4);
INSERT INTO sensor_pipe (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE)
VALUES (46, 4, 4);
INSERT INTO sensor_pipe (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE)
VALUES (47, 4, 4);
INSERT INTO sensor_pipe (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE)
VALUES (48, 4, 4);
INSERT INTO sensor_pipe (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE)
VALUES (49, 4, 4);
INSERT INTO sensor_pipe (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE)
VALUES (50, 4, 4);
INSERT INTO sensor_pipe (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE)
VALUES (51, 4, 4);
INSERT INTO sensor_pipe (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE)
VALUES (52, 4, 4);
INSERT INTO sensor_pipe (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE)
VALUES (53, 4, 4);
INSERT INTO sensor_pipe (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE)
VALUES (54, 4, 4);
INSERT INTO sensor_pipe (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE)
VALUES (55, 4, 4);
INSERT INTO sensor_pipe (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE)
VALUES (56, 4, 4);
INSERT INTO sensor_pipe (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE)
VALUES (57, 4, 4);
INSERT INTO sensor_pipe (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE)
VALUES (58, 4, 4);
INSERT INTO sensor_pipe (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE)
VALUES (59, 4, 4);
INSERT INTO sensor_pipe (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE)
VALUES (60, 4, 4);
INSERT INTO sensor_pipe (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE)
VALUES (61, 4, 4);
INSERT INTO sensor_pipe (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE)
VALUES (62, 4, 4);
INSERT INTO sensor_pipe (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE)
VALUES (63, 4, 4);
INSERT INTO sensor_pipe (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE)
VALUES (64, 4, 4);
INSERT INTO sensor_pipe (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE)
VALUES (65, 4, 4);
INSERT INTO sensor_pipe (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE)
VALUES (66, 4, 4);
INSERT INTO sensor_pipe (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE)
VALUES (67, 4, 4);
INSERT INTO sensor_pipe (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE)
VALUES (68, 4, 4);
INSERT INTO sensor_pipe (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE)
VALUES (69, 4, 4);
INSERT INTO sensor_pipe (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE)
VALUES (70, 4, 4);
INSERT INTO sensor_pipe (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE)
VALUES (71, 4, 4);
INSERT INTO sensor_pipe (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE)
VALUES (72, 4, 4);


INSERT INTO pipe_sens_loc (ID_SENSOR, ID_PIPE)
VALUES (37, 1);
INSERT INTO pipe_sens_loc (ID_SENSOR, ID_PIPE)
VALUES (38, 2);
INSERT INTO pipe_sens_loc (ID_SENSOR, ID_PIPE)
VALUES (39, 3);
INSERT INTO pipe_sens_loc (ID_SENSOR, ID_PIPE)
VALUES (40, 4);
INSERT INTO pipe_sens_loc (ID_SENSOR, ID_PIPE)
VALUES (41, 5);
INSERT INTO pipe_sens_loc (ID_SENSOR, ID_PIPE)
VALUES (42, 6);
INSERT INTO pipe_sens_loc (ID_SENSOR, ID_PIPE)
VALUES (43, 7);
INSERT INTO pipe_sens_loc (ID_SENSOR, ID_PIPE)
VALUES (44, 8);
INSERT INTO pipe_sens_loc (ID_SENSOR, ID_PIPE)
VALUES (45, 9);
INSERT INTO pipe_sens_loc (ID_SENSOR, ID_PIPE)
VALUES (46, 10);
INSERT INTO pipe_sens_loc (ID_SENSOR, ID_PIPE)
VALUES (47, 11);
INSERT INTO pipe_sens_loc (ID_SENSOR, ID_PIPE)
VALUES (48, 12);
INSERT INTO pipe_sens_loc (ID_SENSOR, ID_PIPE)
VALUES (49, 13);
INSERT INTO pipe_sens_loc (ID_SENSOR, ID_PIPE)
VALUES (50, 14);
INSERT INTO pipe_sens_loc (ID_SENSOR, ID_PIPE)
VALUES (51, 15);
INSERT INTO pipe_sens_loc (ID_SENSOR, ID_PIPE)
VALUES (52, 16);
INSERT INTO pipe_sens_loc (ID_SENSOR, ID_PIPE)
VALUES (53, 17);
INSERT INTO pipe_sens_loc (ID_SENSOR, ID_PIPE)
VALUES (54, 18);
INSERT INTO pipe_sens_loc (ID_SENSOR, ID_PIPE)
VALUES (55, 19);
INSERT INTO pipe_sens_loc (ID_SENSOR, ID_PIPE)
VALUES (56, 20);
INSERT INTO pipe_sens_loc (ID_SENSOR, ID_PIPE)
VALUES (57, 21);
INSERT INTO pipe_sens_loc (ID_SENSOR, ID_PIPE)
VALUES (58, 22);
INSERT INTO pipe_sens_loc (ID_SENSOR, ID_PIPE)
VALUES (59, 23);
INSERT INTO pipe_sens_loc (ID_SENSOR, ID_PIPE)
VALUES (60, 24);
INSERT INTO pipe_sens_loc (ID_SENSOR, ID_PIPE)
VALUES (61, 25);
INSERT INTO pipe_sens_loc (ID_SENSOR, ID_PIPE)
VALUES (62, 26);
INSERT INTO pipe_sens_loc (ID_SENSOR, ID_PIPE)
VALUES (63, 27);
INSERT INTO pipe_sens_loc (ID_SENSOR, ID_PIPE)
VALUES (64, 28);
INSERT INTO pipe_sens_loc (ID_SENSOR, ID_PIPE)
VALUES (65, 29);
INSERT INTO pipe_sens_loc (ID_SENSOR, ID_PIPE)
VALUES (66, 30);
INSERT INTO pipe_sens_loc (ID_SENSOR, ID_PIPE)
VALUES (67, 31);
INSERT INTO pipe_sens_loc (ID_SENSOR, ID_PIPE)
VALUES (68, 32);
INSERT INTO pipe_sens_loc (ID_SENSOR, ID_PIPE)
VALUES (69, 33);
INSERT INTO pipe_sens_loc (ID_SENSOR, ID_PIPE)
VALUES (70, 34);
INSERT INTO pipe_sens_loc (ID_SENSOR, ID_PIPE)
VALUES (71, 35);
INSERT INTO pipe_sens_loc (ID_SENSOR, ID_PIPE)
VALUES (72, 36);

-- @block
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        37,
        FROM_UNIXTIME(1662789600),
        4,
        2.1
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        38,
        FROM_UNIXTIME(1662789600),
        4,
        3.2
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        39,
        FROM_UNIXTIME(1662789600),
        4,
        4.5
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        40,
        FROM_UNIXTIME(1662789600),
        4,
        2.3
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        41,
        FROM_UNIXTIME(1662789600),
        4,
        3.6
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        42,
        FROM_UNIXTIME(1662789600),
        4,
        4.8
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        43,
        FROM_UNIXTIME(1662789600),
        4,
        2.01
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        44,
        FROM_UNIXTIME(1662789600),
        4,
        2.74
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        45,
        FROM_UNIXTIME(1662789600),
        4,
        3.99
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        46,
        FROM_UNIXTIME(1662789600),
        4,
        2.55
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        47,
        FROM_UNIXTIME(1662789600),
        4,
       2.45
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        48,
        FROM_UNIXTIME(1662789600),
        4,
        2.65
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        49,
        FROM_UNIXTIME(1662789600),
        4,
        2.83
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        50,
        FROM_UNIXTIME(1662789600),
        4,
        2.708
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        51,
        FROM_UNIXTIME(1662789600),
        4,
       3.87
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        52,
        FROM_UNIXTIME(1662789600),
        4,
        3.22
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        53,
        FROM_UNIXTIME(1662789600),
        4,
        3.33
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        54,
        FROM_UNIXTIME(1662789600),
        4,
        3.65
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        55,
        FROM_UNIXTIME(1662789600),
        4,
        3.98
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        56,
        FROM_UNIXTIME(1662789600),
        4,
        3.12
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        57,
        FROM_UNIXTIME(1662789600),
        4,
        4.58
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        58,
        FROM_UNIXTIME(1662789600),
        4,
        4.79
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        59,
        FROM_UNIXTIME(1662789600),
        4,
        4.96
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        60,
        FROM_UNIXTIME(1662789600),
        4,
        4.22
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        61,
        FROM_UNIXTIME(1662789600),
        4,
       4.68
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        62,
        FROM_UNIXTIME(1662789600),
        4,
        4.78
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        63,
        FROM_UNIXTIME(1662789600),
        4,
        4.63
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        64,
        FROM_UNIXTIME(1662789600),
        4,
        2.65
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        65,
        FROM_UNIXTIME(1662789600),
        4,
        2.88
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        66,
        FROM_UNIXTIME(1662789600),
        4,
        2.69
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        67,
        FROM_UNIXTIME(1662789600),
        4,
        3.47
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        68,
        FROM_UNIXTIME(1662789600),
        4,
        4.13
    );

INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        69,
        FROM_UNIXTIME(1662789600),
        4,
        2.1
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        70,
        FROM_UNIXTIME(1662789600),
        4,
        3.2
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        71,
        FROM_UNIXTIME(1662789600),
        4,
        4.5
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        72,
        FROM_UNIXTIME(1662789600),
        4,
        2.3
    );


INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        37,
        FROM_UNIXTIME(1665036000),
        4,
        2.1
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        38,
        FROM_UNIXTIME(1665036000),
        4,
        3.2
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        39,
        FROM_UNIXTIME(1665036000),
        4,
        4.5
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        40,
        FROM_UNIXTIME(1665036000),
        4,
        2.3
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        41,
        FROM_UNIXTIME(1665036000),
        4,
        3.6
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        42,
        FROM_UNIXTIME(1665036000),
        4,
        4.8
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        43,
        FROM_UNIXTIME(1665036000),
        4,
        2.01
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        44,
        FROM_UNIXTIME(1665036000),
        4,
        2.74
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        45,
        FROM_UNIXTIME(1665036000),
        4,
        3.99
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        46,
        FROM_UNIXTIME(1665036000),
        4,
        2.55
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        47,
        FROM_UNIXTIME(1665036000),
        4,
       2.45
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        48,
        FROM_UNIXTIME(1665036000),
        4,
        2.65
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        49,
        FROM_UNIXTIME(1665036000),
        4,
        2.83
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        50,
        FROM_UNIXTIME(1665036000),
        4,
        2.708
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        51,
        FROM_UNIXTIME(1665036000),
        4,
       3.87
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        52,
        FROM_UNIXTIME(1665036000),
        4,
        3.22
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        53,
        FROM_UNIXTIME(1665036000),
        4,
        3.33
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        54,
        FROM_UNIXTIME(1665036000),
        4,
        3.65
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        55,
        FROM_UNIXTIME(1665036000),
        4,
        3.98
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        56,
        FROM_UNIXTIME(1665036000),
        4,
        3.12
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        57,
        FROM_UNIXTIME(1665036000),
        4,
        4.58
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        58,
        FROM_UNIXTIME(1665036000),
        4,
        4.79
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        59,
        FROM_UNIXTIME(1665036000),
        4,
        4.96
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        60,
        FROM_UNIXTIME(1665036000),
        4,
        4.22
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        61,
        FROM_UNIXTIME(1665036000),
        4,
       4.68
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        62,
        FROM_UNIXTIME(1665036000),
        4,
        4.78
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        63,
        FROM_UNIXTIME(1665036000),
        4,
        4.63
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        64,
        FROM_UNIXTIME(1665036000),
        4,
        2.65
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        65,
        FROM_UNIXTIME(1665036000),
        4,
        2.88
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        66,
        FROM_UNIXTIME(1665036000),
        4,
        2.69
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        67,
        FROM_UNIXTIME(1665036000),
        4,
        3.47
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        68,
        FROM_UNIXTIME(1665036000),
        4,
        4.13
    );

INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        69,
        FROM_UNIXTIME(1665036000),
        4,
        2.1
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        70,
        FROM_UNIXTIME(1665036000),
        4,
        3.2
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        71,
        FROM_UNIXTIME(1665036000),
        4,
        4.5
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        72,
        FROM_UNIXTIME(1665036000),
        4,
        2.3
    );

INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        37,
        FROM_UNIXTIME(1665122400),
        4,
        2.1
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        38,
        FROM_UNIXTIME(1665122400),
        4,
        3.2
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        39,
        FROM_UNIXTIME(1665122400),
        4,
        4.5
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        40,
        FROM_UNIXTIME(1665122400),
        4,
        2.3
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        41,
        FROM_UNIXTIME(1665122400),
        4,
        3.6
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        42,
        FROM_UNIXTIME(1665122400),
        4,
        4.8
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        43,
        FROM_UNIXTIME(1665122400),
        4,
        2.01
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        44,
        FROM_UNIXTIME(1665122400),
        4,
        2.74
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        45,
        FROM_UNIXTIME(1665122400),
        4,
        3.99
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        46,
        FROM_UNIXTIME(1665122400),
        4,
        2.55
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        47,
        FROM_UNIXTIME(1665122400),
        4,
       2.45
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        48,
        FROM_UNIXTIME(1665122400),
        4,
        2.65
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        49,
        FROM_UNIXTIME(1665122400),
        4,
        2.83
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        50,
        FROM_UNIXTIME(1665122400),
        4,
        2.708
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        51,
        FROM_UNIXTIME(1665122400),
        4,
       3.87
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        52,
        FROM_UNIXTIME(1665122400),
        4,
        3.22
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        53,
        FROM_UNIXTIME(1665122400),
        4,
        3.33
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        54,
        FROM_UNIXTIME(1665122400),
        4,
        3.65
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        55,
        FROM_UNIXTIME(1665122400),
        4,
        3.98
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        56,
        FROM_UNIXTIME(1665122400),
        4,
        3.12
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        57,
        FROM_UNIXTIME(1665122400),
        4,
        4.58
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        58,
        FROM_UNIXTIME(1665122400),
        4,
        4.79
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        59,
        FROM_UNIXTIME(1665122400),
        4,
        4.96
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        60,
        FROM_UNIXTIME(1665122400),
        4,
        4.22
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        61,
        FROM_UNIXTIME(1665122400),
        4,
       4.68
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        62,
        FROM_UNIXTIME(1665122400),
        4,
        4.78
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        63,
        FROM_UNIXTIME(1665122400),
        4,
        4.63
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        64,
        FROM_UNIXTIME(1665122400),
        4,
        2.65
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        65,
        FROM_UNIXTIME(1665122400),
        4,
        2.88
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        66,
        FROM_UNIXTIME(1665122400),
        4,
        2.69
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        67,
        FROM_UNIXTIME(1665122400),
        4,
        3.47
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        68,
        FROM_UNIXTIME(1665122400),
        4,
        4.13
    );

INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        69,
        FROM_UNIXTIME(1665122400),
        4,
        2.1
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        70,
        FROM_UNIXTIME(1665122400),
        4,
        3.2
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        71,
        FROM_UNIXTIME(1665122400),
        4,
        4.5
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        72,
        FROM_UNIXTIME(1665122400),
        4,
        2.3
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        37,
        FROM_UNIXTIME(1665208800),
        4,
        2.1
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        38,
        FROM_UNIXTIME(1665208800),
        4,
        3.2
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        39,
        FROM_UNIXTIME(1665208800),
        4,
        4.5
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        40,
        FROM_UNIXTIME(1665208800),
        4,
        2.3
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        41,
        FROM_UNIXTIME(1665208800),
        4,
        3.6
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        42,
        FROM_UNIXTIME(1665208800),
        4,
        4.8
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        43,
        FROM_UNIXTIME(1665208800),
        4,
        2.01
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        44,
        FROM_UNIXTIME(1665208800),
        4,
        2.74
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        45,
        FROM_UNIXTIME(1665208800),
        4,
        3.99
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        46,
        FROM_UNIXTIME(1665208800),
        4,
        2.55
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        47,
        FROM_UNIXTIME(1665208800),
        4,
       2.45
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        48,
        FROM_UNIXTIME(1665208800),
        4,
        2.65
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        49,
        FROM_UNIXTIME(1665208800),
        4,
        2.83
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        50,
        FROM_UNIXTIME(1665208800),
        4,
        2.708
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        51,
        FROM_UNIXTIME(1665208800),
        4,
       3.87
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        52,
        FROM_UNIXTIME(1665208800),
        4,
        3.22
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        53,
        FROM_UNIXTIME(1665208800),
        4,
        3.33
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        54,
        FROM_UNIXTIME(1665208800),
        4,
        3.65
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        55,
        FROM_UNIXTIME(1665208800),
        4,
        3.98
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        56,
        FROM_UNIXTIME(1665208800),
        4,
        3.12
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        57,
        FROM_UNIXTIME(1665208800),
        4,
        4.58
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        58,
        FROM_UNIXTIME(1665208800),
        4,
        4.79
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        59,
        FROM_UNIXTIME(1665208800),
        4,
        4.96
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        60,
        FROM_UNIXTIME(1665208800),
        4,
        4.22
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        61,
        FROM_UNIXTIME(1665208800),
        4,
       4.68
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        62,
        FROM_UNIXTIME(1665208800),
        4,
        4.78
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        63,
        FROM_UNIXTIME(1665208800),
        4,
        4.63
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        64,
        FROM_UNIXTIME(1665208800),
        4,
        2.65
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        65,
        FROM_UNIXTIME(1665208800),
        4,
        2.88
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        66,
        FROM_UNIXTIME(1665208800),
        4,
        2.69
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        67,
        FROM_UNIXTIME(1665208800),
        4,
        3.47
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        68,
        FROM_UNIXTIME(1665208800),
        4,
        4.13
    );

INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        69,
        FROM_UNIXTIME(1665208800),
        4,
        2.1
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        70,
        FROM_UNIXTIME(1665208800),
        4,
        3.2
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        71,
        FROM_UNIXTIME(1665208800),
        4,
        4.5
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        72,
        FROM_UNIXTIME(1665208800),
        4,
        2.3
    );

INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        37,
        FROM_UNIXTIME(1665208800),
        4,
        2.1
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        38,
        FROM_UNIXTIME(1665208800),
        4,
        3.2
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        39,
        FROM_UNIXTIME(1665208800),
        4,
        4.5
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        40,
        FROM_UNIXTIME(1665208800),
        4,
        2.3
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        41,
        FROM_UNIXTIME(1665208800),
        4,
        3.6
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        42,
        FROM_UNIXTIME(1665208800),
        4,
        4.8
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        43,
        FROM_UNIXTIME(1665208800),
        4,
        2.01
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        44,
        FROM_UNIXTIME(1665208800),
        4,
        2.74
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        45,
        FROM_UNIXTIME(1665208800),
        4,
        3.99
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        46,
        FROM_UNIXTIME(1665208800),
        4,
        2.55
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        47,
        FROM_UNIXTIME(1665208800),
        4,
       2.45
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        48,
        FROM_UNIXTIME(1665208800),
        4,
        2.65
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        49,
        FROM_UNIXTIME(1665208800),
        4,
        2.83
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        50,
        FROM_UNIXTIME(1665208800),
        4,
        2.708
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        51,
        FROM_UNIXTIME(1665208800),
        4,
       3.87
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        52,
        FROM_UNIXTIME(1665208800),
        4,
        3.22
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        53,
        FROM_UNIXTIME(1665208800),
        4,
        3.33
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        54,
        FROM_UNIXTIME(1665208800),
        4,
        3.65
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        55,
        FROM_UNIXTIME(1665208800),
        4,
        3.98
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        56,
        FROM_UNIXTIME(1665208800),
        4,
        3.12
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        57,
        FROM_UNIXTIME(1665208800),
        4,
        4.58
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        58,
        FROM_UNIXTIME(1665208800),
        4,
        4.79
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        59,
        FROM_UNIXTIME(1665208800),
        4,
        4.96
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        60,
        FROM_UNIXTIME(1665208800),
        4,
        4.22
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        61,
        FROM_UNIXTIME(1665208800),
        4,
       4.68
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        62,
        FROM_UNIXTIME(1665208800),
        4,
        4.78
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        63,
        FROM_UNIXTIME(1665208800),
        4,
        4.63
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        64,
        FROM_UNIXTIME(1665208800),
        4,
        2.65
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        65,
        FROM_UNIXTIME(1665208800),
        4,
        2.88
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        66,
        FROM_UNIXTIME(1665208800),
        4,
        2.69
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        67,
        FROM_UNIXTIME(1665208800),
        4,
        3.47
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        68,
        FROM_UNIXTIME(1665208800),
        4,
        4.13
    );

INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        69,
        FROM_UNIXTIME(1665208800),
        4,
        2.1
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        70,
        FROM_UNIXTIME(1665208800),
        4,
        3.2
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        71,
        FROM_UNIXTIME(1665208800),
        4,
        4.5
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        72,
        FROM_UNIXTIME(1665208800),
        4,
        2.3
    );
    
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        37,
        FROM_UNIXTIME(1665295200),
        4,
        2.1
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        38,
        FROM_UNIXTIME(1665295200),
        4,
        3.2
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        39,
        FROM_UNIXTIME(1665295200),
        4,
        4.5
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        40,
        FROM_UNIXTIME(1665295200),
        4,
        2.3
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        41,
        FROM_UNIXTIME(1665295200),
        4,
        3.6
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        42,
        FROM_UNIXTIME(1665295200),
        4,
        4.8
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        43,
        FROM_UNIXTIME(1665295200),
        4,
        2.01
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        44,
        FROM_UNIXTIME(1665295200),
        4,
        2.74
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        45,
        FROM_UNIXTIME(1665295200),
        4,
        3.99
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        46,
        FROM_UNIXTIME(1665295200),
        4,
        2.55
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        47,
        FROM_UNIXTIME(1665295200),
        4,
       2.45
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        48,
        FROM_UNIXTIME(1665295200),
        4,
        2.65
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        49,
        FROM_UNIXTIME(1665295200),
        4,
        2.83
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        50,
        FROM_UNIXTIME(1665295200),
        4,
        2.708
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        51,
        FROM_UNIXTIME(1665295200),
        4,
       3.87
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        52,
        FROM_UNIXTIME(1665295200),
        4,
        3.22
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        53,
        FROM_UNIXTIME(1665295200),
        4,
        3.33
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        54,
        FROM_UNIXTIME(1665295200),
        4,
        3.65
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        55,
        FROM_UNIXTIME(1665295200),
        4,
        3.98
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        56,
        FROM_UNIXTIME(1665295200),
        4,
        3.12
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        57,
        FROM_UNIXTIME(1665295200),
        4,
        4.58
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        58,
        FROM_UNIXTIME(1665295200),
        4,
        4.79
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        59,
        FROM_UNIXTIME(1665295200),
        4,
        4.96
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        60,
        FROM_UNIXTIME(1665295200),
        4,
        4.22
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        61,
        FROM_UNIXTIME(1665295200),
        4,
       4.68
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        62,
        FROM_UNIXTIME(1665295200),
        4,
        4.78
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        63,
        FROM_UNIXTIME(1665295200),
        4,
        4.63
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        64,
        FROM_UNIXTIME(1665295200),
        4,
        2.65
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        65,
        FROM_UNIXTIME(1665295200),
        4,
        2.88
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        66,
        FROM_UNIXTIME(1665295200),
        4,
        2.69
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        67,
        FROM_UNIXTIME(1665295200),
        4,
        3.47
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        68,
        FROM_UNIXTIME(1665295200),
        4,
        4.13
    );

INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        69,
        FROM_UNIXTIME(1665295200),
        4,
        2.1
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        70,
        FROM_UNIXTIME(1665295200),
        4,
        3.2
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        71,
        FROM_UNIXTIME(1665295200),
        4,
        4.5
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        72,
        FROM_UNIXTIME(1665295200),
        4,
        2.3
    );

INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        37,
        FROM_UNIXTIME(1665295200),
        4,
        2.1
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        38,
        FROM_UNIXTIME(1665295200),
        4,
        3.2
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        39,
        FROM_UNIXTIME(1665295200),
        4,
        4.5
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        40,
        FROM_UNIXTIME(1665295200),
        4,
        2.3
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        41,
        FROM_UNIXTIME(1665295200),
        4,
        3.6
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        42,
        FROM_UNIXTIME(1665295200),
        4,
        4.8
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        43,
        FROM_UNIXTIME(1665295200),
        4,
        2.01
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        44,
        FROM_UNIXTIME(1665295200),
        4,
        2.74
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        45,
        FROM_UNIXTIME(1665295200),
        4,
        3.99
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        46,
        FROM_UNIXTIME(1665295200),
        4,
        2.55
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        47,
        FROM_UNIXTIME(1665295200),
        4,
       2.45
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        48,
        FROM_UNIXTIME(1665295200),
        4,
        2.65
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        49,
        FROM_UNIXTIME(1665295200),
        4,
        2.83
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        50,
        FROM_UNIXTIME(1665295200),
        4,
        2.708
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        51,
        FROM_UNIXTIME(1665295200),
        4,
       3.87
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        52,
        FROM_UNIXTIME(1665295200),
        4,
        3.22
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        53,
        FROM_UNIXTIME(1665295200),
        4,
        3.33
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        54,
        FROM_UNIXTIME(1665295200),
        4,
        3.65
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        55,
        FROM_UNIXTIME(1665295200),
        4,
        3.98
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        56,
        FROM_UNIXTIME(1665295200),
        4,
        3.12
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        57,
        FROM_UNIXTIME(1665295200),
        4,
        4.58
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        58,
        FROM_UNIXTIME(1665295200),
        4,
        4.79
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        59,
        FROM_UNIXTIME(1665295200),
        4,
        4.96
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        60,
        FROM_UNIXTIME(1665295200),
        4,
        4.22
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        61,
        FROM_UNIXTIME(1665295200),
        4,
       4.68
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        62,
        FROM_UNIXTIME(1665295200),
        4,
        4.78
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        63,
        FROM_UNIXTIME(1665295200),
        4,
        4.63
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        64,
        FROM_UNIXTIME(1665295200),
        4,
        2.65
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        65,
        FROM_UNIXTIME(1665295200),
        4,
        2.88
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        66,
        FROM_UNIXTIME(1665295200),
        4,
        2.69
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        67,
        FROM_UNIXTIME(1665295200),
        4,
        3.47
    );
    INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        68,
        FROM_UNIXTIME(1665295200),
        4,
        4.13
    );

INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        69,
        FROM_UNIXTIME(1665295200),
        4,
        2.1
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        70,
        FROM_UNIXTIME(1665295200),
        4,
        3.2
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        71,
        FROM_UNIXTIME(1665295200),
        4,
        4.5
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        72,
        FROM_UNIXTIME(1665295200),
        4,
        2.3
    );

-- @block
-- Get all the pipes in the system and their connections
SELECT *
FROM connection;
-- Get all the pipes in the system and their connections

-- @block
SELECT * FROM value_pipe_sensor as vps,
sensor_pipe as sp,
pipe_sens_loc as psl,
pipe as p,
connection as c
WHERE vps.ID_SENSOR IN (SELECT ID_SENSOR FROM
                        sensor_pipe as sp,
                        sensor_type as st
                        WHERE sp.id_measurement_type = st.id_measurement_type
                        AND sp.id_sensor_type = st.id_measurement_type
                        AND st.ID_MEASUREMENT_TYPE = 5)
AND vps.ID_SENSOR = sp.ID_SENSOR
AND sp.ID_SENSOR = psl.ID_SENSOR
AND psl.ID_PIPE = p.ID_PIPE
AND p.ID_PIPE = c.ID_PIPE; 