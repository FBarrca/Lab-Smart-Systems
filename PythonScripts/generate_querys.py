import random as rd

id_sector = rd.randint(1,4)
query1 = "INSERT INTO table_name (field_name1, ...) VALUES (value1, ...);" 

#Query sectors
querys_sectors = []
for id_sector in range(1,4):
    lon = 90 * rd.random()
    lat = 360 * rd.random()
    water_demand = 1000 * rd.random()
    querys_sectors.append("INSERT INTO sector (id_sector, LON, LAT, WATER_DEMAND) VALUES ( " + str(id_sector) + ", " + str(lon) + ", " + str(lat) + ", " + str(water_demand) + ");")

#Query state, address
querys_estates = []
querys_adress = []
querys_weather = []
for i in range(1, 4):
    lon = 90 * rd.random()
    lat = 360 * rd.random()
    timestamp = rd.randint(1660000000,1667476927)
    rain = 100 * rd.random()
    temperature = rd.randint(15, 32)
    querys_estates.append("INSERT INTO estate (LON, LAT) VALUES ( " + str(lon) + ", " + str(lat) + ");")
    querys_adress.append("INSERT INTO address (LON, LAT, description) VALUES ( " + str(lon) + ", " + str(lat) + ", address" + str(i) +");")
    querys_weather.append("INSERT INTO weather (LON, LAT, timestamp, rain, temperature) VALUES ( " + str(lon) + ", " + str(lat) + ", " + str(timestamp) + ", " + str(rain) + ", " + str(temperature) +");")

#Querys sect_sensor_loc
querys_sect_sensor_location = []
for id_sensor in range(1, 5):
    id_sector = rd.randint(1, 4)
    querys_sect_sensor_location.append("INSERT INTO sect_sensor_loc (id_sensor, id_sector) VALUES ( " + str(id_sensor) + ", " + str(id_sector) + " );")
    
#Querys sensor_sector
querys_sensor_sector = []
for id_sensor in range(1, 5):
    id_measurement_type = rd.randint(1, 3)
    id_sensor_type = id_measurement_type
    querys_sensor_sector.append("INSERT INTO sensor_sector (id_sensor, id_measurment_type, id_sensor_type) VALUES ( " + str(id_sensor) + ", " + str(id_measurement_type) + "," + str(id_sensor_type) + ");")

#Querys value_sector_sensor
querys_value_sector_sensor = []
for id_sensor in range(1, 5):
    timestamp = rd.randint(1660000000,1667476927)
    id_measurement_type = rd.randint(1, 3)
    value = rd.random() * 10
    querys_value_sector_sensor.append("INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value) VALUES ( " + str(id_sensor) + ", " + str(timestamp) + ", " + str(id_measurement_type) +", " + str(value) + ");")
    
#table actuator_pipe 
querys_actuator_pipe = []
for i in range (1,18):
    id_actuator = i
    id_type = rd.randint(1,3) # 1 mineral valve, 2 water valve, 3 pumps  
    querys_actuator_pipe.append("INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE) VALUES ("+str(id_actuator)+","+str(id_type)+");")

#table value_pipe_actuator 
querys_value_pipe_actuator = []
for i in range (1,18):
    for j in range (1,5): #5 values each actuator
        id_actuator = i
        timestamp_unix = rd.randint(1660000000,1667476927)
        value = rd.randint(0,100) #porcentaje
        querys_value_pipe_actuator.append("INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES ("+str(id_actuator)+", SELECT FROM_UNIXTIME("+str(timestamp_unix)+"),"+str(value)+");")

#table pipe_act_loc 
querys_pipe_act_loc = []
for i in range (1,6):
    for j in range (1,3):
        id_actuator = i*j
        id_pipe = i
        querys_pipe_act_loc.append("INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE) VALUES ("+str(id_actuator)+","+str(id_pipe)+");")

#table pipe 
querys_pipe = []
for i in range (1,6):
        id_pipe = i
        querys_pipe.append("INSERT INTO (ID_PIPE) VALUES ("+str(id_pipe)+");")

#table pipe_sens_loc
querys_pipe_sens_loc = []
for i in range (1,6):
    for j in range (1,2):
        id_sensor = i*j 
        id_pipe = i
        querys_pipe_sens_loc.append("INSERT INTO pipe_sens_loc (ID_SENSOR, ID_PIPE) VALUES ("+str(id_sensor)+","+str(id_pipe)+");")

#table sensor_pipe
querys_sensor_pipe = []
for i in range (1,6):
    for j in range (1,2):
        id_sensor = i*j # 1 humidity, 2 temperature, 3 mineral, 4 flow, 5 pressure
        id_sensor_type = rd.randint(1,2)
        id_measurement_type = rd.randint(1,2)
        querys_sensor_pipe.append("INSERT INTO sensor_pipe (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE) VALUES ("+str(id_sensor)+","+str(id_measurement_type)+","+str(id_sensor_type)+",);")

#table value_pipe_sensor
querys_value_pipe_sensor = []
for i in range (1,6):
    for j in range (1,2):
        id_sensor = i*j # 1 flow, 2 pressure
        timestamp_unix = rd.randint(1660000000,1667476927)
        id_sensor_type = rd.randint(1,2)
        id_measurement_type = rd.randint(1,2)
        value = rd.random*10
        querys_value_pipe_sensor.append("INSERT INTO value_pipe_sensor (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE) VALUES ("+str(id_sensor)+", SELECT FROM_UNIXTIME("+str(timestamp_unix)+"),"+str(id_measurement_type)+","+str(value)+",);")

#table actuator_type
querys_actuator_type = [] # 1 mineral valve, 2 water valve, 3 pumps  
description1 = "MINERAL VALVE"
location1 = "SECTOR"
querys_actuator_type.append("INSERT INTO actuator_pipe (ID_TYPE, DESCRIPTION, IS_SWITCH, LOCATION) VALUES (1, "+description1+", 1, "+location1+");")
description2 = "WATER VALVE"
location2 = "PIPE"
querys_actuator_type.append("INSERT INTO actuator_pipe (ID_TYPE, DESCRIPTION, IS_SWITCH, LOCATION) VALUES (2, "+description2+", 1, "+location2+");")
description3 = "PUMP"
location3 = "PIPE"
querys_actuator_type.append("INSERT INTO actuator_pipe (ID_TYPE, DESCRIPTION, IS_SWITCH, LOCATION) VALUES (3, "+description3+", 1, "+location3+");")

#table connection
querys_connection = []
querys_connection.append("INSERT INTO connection (ID_SENSOR_IN, ID_SECTOR_OUT, ID_PIPE) VALUES (1,2,1);")
querys_connection.append("INSERT INTO connection (ID_SENSOR_IN, ID_SECTOR_OUT, ID_PIPE) VALUES (1,3,2);")
querys_connection.append("INSERT INTO connection (ID_SENSOR_IN, ID_SECTOR_OUT, ID_PIPE) VALUES (1,4,3);")
querys_connection.append("INSERT INTO connection (ID_SENSOR_IN, ID_SECTOR_OUT, ID_PIPE) VALUES (2,3,4);")
querys_connection.append("INSERT INTO connection (ID_SENSOR_IN, ID_SECTOR_OUT, ID_PIPE) VALUES (2,4,5);")
querys_connection.append("INSERT INTO connection (ID_SENSOR_IN, ID_SECTOR_OUT, ID_PIPE) VALUES (3,4,6);")

#table sensor_type
querys_sensor_type = []
for i in range (1,6):
    for j in range (1,2):
        id_sensor = i*j # 1 flow, 2 pressure
        timestamp_unix = rd.randint(1660000000,1667476927)
        id_sensor_type = rd.randint(1,2)
        id_measurement_type = rd.randint(1,2)
        value = rd.random*10
        querys_sensor_type.append("INSERT INTO value_pipe_sensor (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE) VALUES ("+str(id_sensor)+", SELECT FROM_UNIXTIME("+str(timestamp_unix)+"),"+str(id_measurement_type)+","+str(value)+",);")


##Arreglar id_sensor poner los de alberto un numero mas alto
#acabar tabla sensor_type