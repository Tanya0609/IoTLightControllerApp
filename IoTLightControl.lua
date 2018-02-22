--define the light switch
LIGHT_SWITCH = 0 --0 is gpio16
gpio.mode(LIGHT_SWITCH,gpio.OUTPUT)

--create a TCP server 
server = net.createServer(net.TCP, 30) --30 is the timeout
	server:listen(8000,function(conn) 
		--handleListen function body
		--connection on recieve case
		conn:on("receive",function(conn,receiveMessage)
            -- handleRecieve function body
            print("Input: " .. receiveMessage)
			if string.find(receiveMessage,"LIGHT_SWITCH") then
				LIGHT_SWITCH_STATE =tonumber(string.sub(receiveMessage,14))  --recieveMessage: LIGHT_SWITCH=1
				if LIGHT_SWITCH_STATE == 1 then
					gpio.write(LIGHT_SWITCH,gpio.LOW) --turn on the light
				elseif LIGHT_SWITCH_STATE == 0 then
					gpio.write(LIGHT_SWITCH,gpio.HIGH) --turn off the light
				end
				--conn:send("OK")
             end
		end)
		--connection on send case
		conn:on("sent",function(conn)
			-- handleSend function body
			conn:close()
		end)
	end)
