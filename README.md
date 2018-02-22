【IOT: control light】

STEP 1: Hardware Setup
download ESPlorer and open the jar file
set up the board (reference to NodeMCU documentation to set the output)

STEP 2:  TCP Communication Scripts 
loTlightControl.lua
-open a socket (create the door/server)
-listen: receive
-listen: send

STEP 3: Load Scripts into WIFI Chip and Run it
through the mobile app or Packet Sender(send/receive the TCP message over network)