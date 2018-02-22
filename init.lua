--this is script starts the first, like the main function 

--connect to the network through the script 
dofile('wifiConnect.lua')  
dofile('IoTLightControl.lua')

--in case the wifi is disconnect, reconnect it 
tmr.alarm(1, 300000, 1, function() dofile('wifiConnect.lua') end)
