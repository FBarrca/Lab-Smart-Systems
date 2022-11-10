import random as rd
import os

#table state, address, weather, sector
querys = []
querys_estate = []
querys_adress = []
querys_weather = []
querys_sector = []
for i in range(1, 4):
    lon = 90 * rd.random()
    lat = 360 * rd.random()
    timestamp = rd.randint(1660000000,1667476927)
    rain = 100 * rd.random()
    temperature = rd.randint(15, 32)
    for id_sector in range(1,4):
        water_demand = 1000 * rd.random()
        querys_sector.append("INSERT INTO sector (id_sector, LON, LAT, WATER_DEMAND) VALUES ( " + str(id_sector) + ", " + str(lon) + ", " + str(lat) + ", " + str(water_demand) + ");")
    querys_estate.append("INSERT INTO estate (LON, LAT) VALUES ( " + str(lon) + ", " + str(lat) + ");")
    querys_adress.append("INSERT INTO address (LON, LAT, description) VALUES ( " + str(lon) + ", " + str(lat) + ", address" + str(i) +");")
    querys_weather.append("INSERT INTO weather (LON, LAT, timestamp, rain, temperature) VALUES ( " + str(lon) + ", " + str(lat) + ", " + str(timestamp) + ", " + str(rain) + ", " + str(temperature) +");")

querys.append(querys_estate)
querys.append(querys_sector)
querys.append(querys_adress)
querys.append(querys_weather)

#table sect_sensor_loc
querys_sect_sensor_loc = []
for i in range(1, 4):
    for j in range(1, 3): # un sensor de cada tipo por sector
        id_sector = i
        id_sensor = i*j
        querys_sect_sensor_loc.append("INSERT INTO sect_sensor_loc (id_sensor, id_sector) VALUES ( " + str(id_sensor) + ", " + str(id_sector) + " );")

querys.append(querys_sect_sensor_loc)

#table sensor_sector
querys_sensor_sector = []
for id_sensor in range(1, 12):
    id_measurement_type = rd.randint(1, 3)  # 1 humidity, 2 temperature, 3 mineral, 4 flow, 5 pressure
    id_sensor_type = id_measurement_type
    querys_sensor_sector.append("INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type) VALUES ( " + str(id_sensor) + ", " + str(id_measurement_type) + "," + str(id_sensor_type) + ");")

querys.append(querys_sensor_sector)

#table value_sector_sensor
querys_value_sector_sensor = []
for id_sensor in range(1, 12):
    timestamp = rd.randint(1660000000,1667476927)
    id_measurement_type = rd.randint(1, 3)  # 1 humidity, 2 temperature, 3 mineral, 4 flow, 5 pressure
    value = rd.random() * 10
    querys_value_sector_sensor.append("INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value) VALUES ( " + str(id_sensor) + ", " + str(timestamp) + ", " + str(id_measurement_type) +", " + str(value) + ");")

querys.append(querys_value_sector_sensor)

#table actuator_sector
querys_actuator_sector = []
for i in range (1,4): # mineral valve (4 uno por sector), water valve (12 dos por tuberia), pump (6 uno por tuberia)
    id_actuator = i
    id_type = 1
    querys_actuator_sector.append("INSERT INTO actuator_sector (ID_ACTUATOR, ID_TYPE) VALUES ("+str(id_actuator)+","+str(id_type)+");")

querys.append(querys_actuator_sector)

#table value_sector_actuator 
querys_value_sector_actuator = []
for i in range (1,4):
    for j in range (1,5): #5 values each actuator
        id_actuator = i
        timestamp_unix = rd.randint(1660000000,1667476927)
        value = rd.randint(0,100) #porcentaje
        querys_value_sector_actuator.append("INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES ("+str(id_actuator)+", FROM_UNIXTIME("+str(timestamp_unix)+"),"+str(value)+");")

querys.append(querys_value_sector_actuator)

#table sect_act_loc 
querys_sect_act_loc = []
for i in range (1,4):
    id_actuator = i
    id_sector = i
querys_sect_act_loc.append("INSERT INTO sect_act_loc (ID_ACTUATOR, ID_SECTOR) VALUES ("+str(id_actuator)+", "+str(id_sector)+");")

querys.append(querys_sect_act_loc)

#table actuator_pipe 
querys_actuator_pipe = []
for i in range (5,22): # mineral valve (4 uno por sector), water valve (12 dos por tuberia), pump (6 uno por tuberia)
    id_actuator = i

    if i<=17:
        id_type = 2 # 1 mineral valve, 2 water valve, 3 pumps  

    else:
        id_type = 3
    querys_actuator_pipe.append("INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE) VALUES ("+str(id_actuator)+","+str(id_type)+");")

querys.append(querys_actuator_pipe)

#table value_pipe_actuator 
querys_value_pipe_actuator = []
for i in range (5,22):
    for j in range (1,5): #5 values each actuator
        id_actuator = i
        timestamp_unix = rd.randint(1660000000,1667476927)
        value = rd.randint(0,100) #porcentaje
        querys_value_pipe_actuator.append("INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES ("+str(id_actuator)+", FROM_UNIXTIME("+str(timestamp_unix)+"),"+str(value)+");")

querys.append(querys_value_pipe_actuator)

#table pipe_act_loc 
querys_pipe_act_loc = []
querys_pipe_act_loc.append("INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE) VALUES (5,1);")
querys_pipe_act_loc.append("INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE) VALUES (6,1);")
querys_pipe_act_loc.append("INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE) VALUES (7,2);")
querys_pipe_act_loc.append("INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE) VALUES (8,2);")
querys_pipe_act_loc.append("INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE) VALUES (9,3);")
querys_pipe_act_loc.append("INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE) VALUES (10,3);")
querys_pipe_act_loc.append("INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE) VALUES (11,4);")
querys_pipe_act_loc.append("INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE) VALUES (12,4);")
querys_pipe_act_loc.append("INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE) VALUES (13,5);")
querys_pipe_act_loc.append("INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE) VALUES (14,5);")
querys_pipe_act_loc.append("INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE) VALUES (15,6);")
querys_pipe_act_loc.append("INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE) VALUES (16,6);")
querys_pipe_act_loc.append("INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE) VALUES (17,1);")
querys_pipe_act_loc.append("INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE) VALUES (18,2);")
querys_pipe_act_loc.append("INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE) VALUES (19,3);")
querys_pipe_act_loc.append("INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE) VALUES (20,4);")
querys_pipe_act_loc.append("INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE) VALUES (21,5);")
querys_pipe_act_loc.append("INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE) VALUES (22,6);")

querys.append(querys_pipe_act_loc)

#table pipe 
querys_pipe = []
for i in range (1,6):
        id_pipe = i
        querys_pipe.append("INSERT INTO pipe (ID_PIPE) VALUES ("+str(id_pipe)+");")

querys.append(querys_pipe)

#table pipe_sens_loc
querys_pipe_sens_loc = []
for i in range (1,6):
    for j in range (1,2):
        id_sensor = i*j+12 
        id_pipe = i
        querys_pipe_sens_loc.append("INSERT INTO pipe_sens_loc (ID_SENSOR, ID_PIPE) VALUES ("+str(id_sensor)+","+str(id_pipe)+");")

querys.append(querys_pipe_sens_loc)

#table sensor_pipe
querys_sensor_pipe = []
for i in range (1,6):
    for j in range (1,2):
        id_sensor = i*j+12
        id_sensor_type = rd.randint(4,5) # 1 humidity, 2 temperature, 3 mineral, 4 flow, 5 pressure
        id_measurement_type = id_sensor_type 
        querys_sensor_pipe.append("INSERT INTO sensor_pipe (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE) VALUES ("+str(id_sensor)+","+str(id_measurement_type)+","+str(id_sensor_type)+");")

querys.append(querys_sensor_pipe)

#table value_pipe_sensor
querys_value_pipe_sensor = []
for i in range (1,6):
    for j in range (1,2):
        id_sensor = i*j+12 
        timestamp_unix = rd.randint(1660000000,1667476927)
        id_sensor_type = rd.randint(4,5) # 1 humidity, 2 temperature, 3 mineral, 4 flow, 5 pressure
        id_measurement_type = id_sensor_type
        value = rd.random()*10
        querys_value_pipe_sensor.append("INSERT INTO value_pipe_sensor (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE) VALUES ("+str(id_sensor)+", SELECT FROM_UNIXTIME("+str(timestamp_unix)+"),"+str(id_measurement_type)+","+str(value)+");")

querys.append(querys_value_pipe_sensor)

#table actuator_type
querys_actuator_type = [] # 1 mineral valve, 2 water valve, 3 pumps  
description1 = '"MINERAL VALVE"'
location1 = '"SECTOR"'
querys_actuator_type.append("INSERT INTO actuator_pipe (ID_TYPE, DESCRIPTION, IS_SWITCH, LOCATION) VALUES (1, "+description1+", 1, "+location1+");")
description2 = '"WATER VALVE"'
location2 = '"PIPE"'
querys_actuator_type.append("INSERT INTO actuator_pipe (ID_TYPE, DESCRIPTION, IS_SWITCH, LOCATION) VALUES (2, "+description2+", 1, "+location2+");")
description3 = '"PUMP"'
location3 = '"PIPE"'
querys_actuator_type.append("INSERT INTO actuator_pipe (ID_TYPE, DESCRIPTION, IS_SWITCH, LOCATION) VALUES (3, "+description3+", 1, "+location3+");")

querys.append(querys_actuator_pipe)

#table connection
querys_connection = []
querys_connection.append("INSERT INTO connection (ID_SENSOR_IN, ID_SECTOR_OUT, ID_PIPE) VALUES (1,2,1);")
querys_connection.append("INSERT INTO connection (ID_SENSOR_IN, ID_SECTOR_OUT, ID_PIPE) VALUES (1,3,2);")
querys_connection.append("INSERT INTO connection (ID_SENSOR_IN, ID_SECTOR_OUT, ID_PIPE) VALUES (1,4,3);")
querys_connection.append("INSERT INTO connection (ID_SENSOR_IN, ID_SECTOR_OUT, ID_PIPE) VALUES (2,3,4);")
querys_connection.append("INSERT INTO connection (ID_SENSOR_IN, ID_SECTOR_OUT, ID_PIPE) VALUES (2,4,5);")
querys_connection.append("INSERT INTO connection (ID_SENSOR_IN, ID_SECTOR_OUT, ID_PIPE) VALUES (3,4,6);")

querys.append(querys_connection)

#table sensor_type
querys_sensor_type = []
for i in range (1,5):
    id_sensor_type = i # 1 humidity, 2 temperature, 3 mineral, 4 flow, 5 pressure
    id_measurement_type = id_sensor_type

    if i == 1:
        sensor_description = '"HUMIDITY"'
        measurement_description = sensor_description
        unit = '"g/m3"'
        location = '"SECTOR"'

    if i == 2:
        sensor_description = '"TEMPERATURE"'
        measurement_description = sensor_description
        unit = '"ºc"'
        location = '"SECTOR"'

    if i == 3:
        sensor_description = '"MINERAL"'
        measurement_description = sensor_description
        unit = '"ppm"'
        location = '"SECTOR"'

    if i == 4:
        sensor_description = '"FLOW"'
        measurement_description = sensor_description
        unit = '"m3/s"'
        location = '"PIPE"'

    if i == 5:
        sensor_description = '"PRESSURE"'
        measurement_description = sensor_description
        unit = '"pa"'
        location = '"PIPE"'

    querys_sensor_type.append("INSERT INTO sensor_type (ID_SENSOR_TYPE, ID_MEASUREMENT_TYPE, SENSOR_DESCRIPTION, MEASUREMENT_DESCRIPTION, UNIT, LOCATION) VALUES ("+str(id_sensor_type)+","+str(id_measurement_type)+", "+sensor_description+", "+measurement_description+", "+unit+", "+location+");")

querys.append(querys_sensor_type)

base_path = os.getcwd()
with open(base_path+"/querys.txt","w") as fd:
    fd.write(f"\n")
for i in querys:
    for j in i:
        with open(base_path+"/querys.txt","a") as fd:
            fd.write(j + "\n")

