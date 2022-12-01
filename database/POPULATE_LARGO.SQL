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
        FROM_UNIXTIME(1669747624),
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

INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        1,
        FROM_UNIXTIME(1669747624),
        1,
        4.2
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        1,
        FROM_UNIXTIME(1669737624),
        1,
        4.35
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        1,
        FROM_UNIXTIME(1669727624),
        1,
        4.8
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        1,
        FROM_UNIXTIME(1669717624),
        1,
        4.6
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        1,
        FROM_UNIXTIME(1669707624),
        1,
        4.24
    );

INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        2,
        FROM_UNIXTIME(1669747624),
        2,
        17.1
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        2,
        FROM_UNIXTIME(1669737624),
        2,
        18.1
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        2,
        FROM_UNIXTIME(1669727624),
        2,
        19.1
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        2,
        FROM_UNIXTIME(1669717624),
        2,
        20.1
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        2,
        FROM_UNIXTIME(1669707624),
        2,
        21.1
    );

INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        3,
        FROM_UNIXTIME(1669747624),
        3,
        40.85
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        3,
        FROM_UNIXTIME(1669737624),
        3,
        51.48
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        3,
        FROM_UNIXTIME(1669727624),
        3,
        44.65
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        3,
        FROM_UNIXTIME(1669717624),
        3,
        35.48
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        3,
        FROM_UNIXTIME(1669707624),
        3,
        42.56
    );

INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        4,
        FROM_UNIXTIME(1669747624),
        5,
        2.7
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        4,
        FROM_UNIXTIME(1669737624),
        5,
        2.75
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        4,
        FROM_UNIXTIME(1669727624),
        5,
        2.68
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        4,
        FROM_UNIXTIME(1669717624),
        5,
        2.48
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        4,
        FROM_UNIXTIME(1669707624),
        5,
        2.78
    );

INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        5,
        FROM_UNIXTIME(1669747624),
        1,
        5.64
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        5,
        FROM_UNIXTIME(1669737624),
        1,
        5.28
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        5,
        FROM_UNIXTIME(1669727624),
        1,
        5.89
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        5,
        FROM_UNIXTIME(1669717624),
        1,
        5.14
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        5,
        FROM_UNIXTIME(1669707624),
        1,
        5.77
    );

INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        6,
        FROM_UNIXTIME(1669747624),
        2,
       17.2
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        6,
        FROM_UNIXTIME(1669737624),
        2,
        18.2
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        6,
        FROM_UNIXTIME(1669727624),
        2,
        19.2
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        6,
        FROM_UNIXTIME(1669717624),
        2,
        20.2
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        6,
        FROM_UNIXTIME(1669707624),
        2,
        21.2
    );

INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        7,
        FROM_UNIXTIME(1669747624),
        3,
        41.35
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        7,
        FROM_UNIXTIME(1669737624),
        3,
        39.56
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        7,
        FROM_UNIXTIME(1669727624),
        3,
        31.65
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        7,
        FROM_UNIXTIME(1669717624),
        3,
        30.03
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        7,
        FROM_UNIXTIME(1669707624),
        3,
        29.64
    );

INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        8,
        FROM_UNIXTIME(1669747624),
        5,
        3.1
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        8,
        FROM_UNIXTIME(1669737624),
        5,
        3.23
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        8,
        FROM_UNIXTIME(1669727624),
        5,
        3.42
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        8,
        FROM_UNIXTIME(1669717624),
        5,
        3.51
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        8,
        FROM_UNIXTIME(1669707624),
        5,
        3.46
    );

INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        9,
        FROM_UNIXTIME(1669747624),
        1,
        7.12
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        9,
        FROM_UNIXTIME(1669737624),
        1,
        7.89
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        9,
        FROM_UNIXTIME(1669727624),
        1,
        7.45
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        9,
        FROM_UNIXTIME(1669717624),
        1,
        7.64
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        9,
        FROM_UNIXTIME(1669707624),
        1,
        7.99
    );

INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        10,
        FROM_UNIXTIME(1669747624),
        2,
        17.3
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        10,
        FROM_UNIXTIME(1669737624),
        2,
        18.3
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        10,
        FROM_UNIXTIME(1669727624),
        2,
        19.3
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        10,
        FROM_UNIXTIME(1669717624),
        2,
        20.3
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        10,
        FROM_UNIXTIME(1669707624),
        2,
        21.3
    );

INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        11,
        FROM_UNIXTIME(1669747624),
        3,
        52.65
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        11,
        FROM_UNIXTIME(1669737624),
        3,
        43.65
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        11,
        FROM_UNIXTIME(1669727624),
        3,
        48.65
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        11,
        FROM_UNIXTIME(1669717624),
        3,
        38.56
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        11,
        FROM_UNIXTIME(1669707624),
        3,
        40.2
    );

INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        12,
        FROM_UNIXTIME(1669747624),
        5,
        2.88
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        12,
        FROM_UNIXTIME(1669737624),
        5,
        2.93
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        12,
        FROM_UNIXTIME(1669727624),
        5,
        2.84
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        12,
        FROM_UNIXTIME(1669717624),
        5,
       2.69
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        12,
        FROM_UNIXTIME(1669707624),
        5,
        2.51
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

INSERT INTO sect_act_loc(ID_ACTUATOR, ID_SECTOR)
VALUE (1,1);
INSERT INTO sect_act_loc(ID_ACTUATOR, ID_SECTOR)
VALUE (2,2);
INSERT INTO sect_act_loc(ID_ACTUATOR, ID_SECTOR)
VALUE (3,3);

INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (1, FROM_UNIXTIME(1669747624), 12);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (1, FROM_UNIXTIME(1669737624), 24);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (1, FROM_UNIXTIME(1669727624), 36);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (1, FROM_UNIXTIME(1669717624), 45);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (1, FROM_UNIXTIME(1669707624), 65);

INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (2, FROM_UNIXTIME(1669747624), 25);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (2, FROM_UNIXTIME(1669737624), 34);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (2, FROM_UNIXTIME(1669727624), 52);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (2, FROM_UNIXTIME(1669717624), 47);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (2, FROM_UNIXTIME(1669707624), 38);

INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (3, FROM_UNIXTIME(1669747624), 89);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (3, FROM_UNIXTIME(1669737624), 100);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (3, FROM_UNIXTIME(1669727624), 100);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (3, FROM_UNIXTIME(1669717624), 89);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (3, FROM_UNIXTIME(1669707624), 74);


INSERT INTO pipe (ID_PIPE)
VALUES (1);
INSERT INTO pipe (ID_PIPE)
VALUES (2);
INSERT INTO pipe (ID_PIPE)
VALUES (3);

INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (4, 2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (5, 3);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (6, 2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (7, 3);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (8, 2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (9, 3);

INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (4, 1);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (5, 1);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (6, 2);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (7, 2);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (8, 3);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (9, 3);

INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (4, FROM_UNIXTIME(1669747624), 12);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (5, FROM_UNIXTIME(1669747624), 42);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (6, FROM_UNIXTIME(1669747624), 65);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (7, FROM_UNIXTIME(1669747624), 87);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (8, FROM_UNIXTIME(1669747624), 47);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (9, FROM_UNIXTIME(1669747624), 36);

INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (4, FROM_UNIXTIME(1669737624), 15);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (5, FROM_UNIXTIME(1669737624), 53);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (6, FROM_UNIXTIME(1669737624), 62);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (7, FROM_UNIXTIME(1669737624), 87);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (8, FROM_UNIXTIME(1669737624), 48);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (9, FROM_UNIXTIME(1669737624), 20);

INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (4, FROM_UNIXTIME(1669727624), 7);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (5, FROM_UNIXTIME(1669727624), 53);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (6, FROM_UNIXTIME(1669727624), 66);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (7, FROM_UNIXTIME(1669727624), 93);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (8, FROM_UNIXTIME(1669727624), 39);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (9, FROM_UNIXTIME(1669727624), 42);

INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (4, FROM_UNIXTIME(1669717624), 21);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (5, FROM_UNIXTIME(1669717624), 38);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (6, FROM_UNIXTIME(1669717624), 60);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (7, FROM_UNIXTIME(1669717624), 85);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (8, FROM_UNIXTIME(1669717624), 52);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (9, FROM_UNIXTIME(1669717624), 41);

INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (4, FROM_UNIXTIME(1669707624), 25);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (5, FROM_UNIXTIME(1669707624), 37);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (6, FROM_UNIXTIME(1669707624), 55);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (7, FROM_UNIXTIME(1669707624), 75);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (8, FROM_UNIXTIME(1669707624), 49);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (9, FROM_UNIXTIME(1669707624), 40);


INSERT INTO connection (ID_SECTOR_IN, ID_SECTOR_OUT, ID_PIPE)
VALUES (1, 2, 1);
INSERT INTO connection (ID_SECTOR_IN, ID_SECTOR_OUT, ID_PIPE)
VALUES (1, 3, 2);
INSERT INTO connection (ID_SECTOR_IN, ID_SECTOR_OUT, ID_PIPE)
VALUES (2, 3, 3);

INSERT INTO sensor_pipe (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE)
VALUES (13, 4, 4);
INSERT INTO sensor_pipe (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE)
VALUES (14, 4, 4);
INSERT INTO sensor_pipe (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE)
VALUES (15, 4, 4);

INSERT INTO pipe_sens_loc (ID_SENSOR, ID_PIPE)
VALUES (13, 1);
INSERT INTO pipe_sens_loc (ID_SENSOR, ID_PIPE)
VALUES (14, 2);
INSERT INTO pipe_sens_loc (ID_SENSOR, ID_PIPE)
VALUES (15, 3);

INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        13,
        FROM_UNIXTIME(1669747624),
        4,
        2.1
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        14,
        FROM_UNIXTIME(1669747624),
        4,
        3.2
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        15,
        FROM_UNIXTIME(1669747624),
        4,
        4.5
    );

INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        13,
        FROM_UNIXTIME(1669737624),
        4,
        2.0
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        14,
        FROM_UNIXTIME(1669737624),
        4,
        3.1
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        15,
        FROM_UNIXTIME(1669737624),
        4,
        4.3
    );

INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        13,
        FROM_UNIXTIME(1669727624),
        4,
        2.3
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        14,
        FROM_UNIXTIME(1669727624),
        4,
        3.1
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        15,
        FROM_UNIXTIME(1669727624),
        4,
        4.4
    );

INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        13,
        FROM_UNIXTIME(1669717624),
        4,
        2.4
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        14,
        FROM_UNIXTIME(1669717624),
        4,
        3.4
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        15,
        FROM_UNIXTIME(1669717624),
        4,
        4.7
    );

INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        13,
        FROM_UNIXTIME(1669707624),
        4,
        2.2
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        14,
        FROM_UNIXTIME(1669707624),
        4,
        3.1
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        15,
        FROM_UNIXTIME(1669707624),
        4,
        4.2
    );

-- @block
-- Get all the pipes in the system and their connections
SELECT *
FROM connection;
-- Get all the pipes in the system and their connections

-- @block
SELECT ss.ID_SENSOR, ssloc.ID_SECTOR, ss.ID_SENSOR_TYPE
FROM sensor_sector as ss, sect_sens_loc as ssloc
WHERE ss.ID_SENSOR = ssloc.ID_SENSOR;

-- Select the last value of sensor 1
DELETE FROM value_sector_sensor
WHERE ID_SENSOR = 1
ORDER BY TIMESTAMP DESC
LIMIT 1;