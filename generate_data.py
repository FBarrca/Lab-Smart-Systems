#generate data for database
import datetime
import random

#get ramdon date in form '2019-01-01 00:00:00'
def get_random_date():
    
    start = datetime.datetime.strptime('2012-01-01 00:00:00', '%Y-%m-%d %H:%M:%S')
    end = datetime.datetime.strptime('2022-12-31 23:59:59', '%Y-%m-%d %H:%M:%S')
    return '"'+ str(start + datetime.timedelta(seconds=random.randint(0, int((end - start).total_seconds()))))+'"'

#get random number in range
def get_random_number(start, end):
    return random.randint(start, end)

def get_MEASUREMENT_PIPE():
    print("(",get_random_number(1,1),",",get_random_date(),',',get_random_number(1,1),"),")

def main():
    for i in range(10):
        get_MEASUREMENT_PIPE()
        


if __name__ == '__main__':
    main()