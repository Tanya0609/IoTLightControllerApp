# Internet of Things (IoT) Light Controller App

## Summary
This app allows turning on and off lights remotely using IoT enabled devices.

## Prerequisites
Arduino board
IoT enabled lights

## Setup
1. Install [Python] (https://www.python.org/downloads/)
2. Install [Lua] (https://www.lua.org/download.html)
3. [Setup hardware] (http://nodemcu.com/index_en.html)
4. Download [ESPlorer] (https://esp8266.ru/esplorer/)

## Code logic
STEP 1: Hardware Setup
Refer to steps 3 and 4 in the setup

STEP 2:  TCP Communication Scripts 
In the file loTlightControl.lua:
1. Open a socket (create the door/server)
2. Listen: receive
3. Listen: send

STEP 3: Load Scripts into WIFI Chip and Run it
This is done through the mobile app or Packet Sender(send/receive the TCP message over network)
