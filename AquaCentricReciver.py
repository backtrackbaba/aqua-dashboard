import requests 
import serial
import json
import time
import random

url = "http://localhost:3030"
token = "1234567890"
TempWidget = "synergy"
ChlorineWidget = "chlorine"
PhWidget = "valuation"
UvWidget = "uv"
OzoneWidget = "ozone"

#chlorine: value , uv: text and ozone:text

#We Create an instance to save the incoming serial data
ser = serial.Serial('/dev/cu.usbserial-A50285BI', 9600) #open the serial port at 9600


if ser.isOpen():
    while True:
        Data = json.loads(ser.readline())       #Load the incoming data as a json buffer
        temperature = int(Data['Temperature:'])+random.randint(2,10)
        chlorine = Data['Chlorine:']
        ph = Data['Ph:']
        uv = Data['Uv:']
        ozone = Data['Ozone:']
        print(temperature)
        TempData = {"auth_token": token, "value": format(temperature, '.2f')}
        print(TempData)
        fullUrl = "%s/widgets/%s" % (url, TempWidget)
        headers = {'Content-type': 'application/json'}
        requests.post(fullUrl, data=json.dumps(TempData), headers=headers)
        time.sleep(5)






        
