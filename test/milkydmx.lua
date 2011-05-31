
function dmxset (channel, value)
    local f = assert(io.open("/dev/dmx_out","w"))
    f:setvbuf("full",1)
    f:seek("set",channel)
    f:write(value)
    f:close()
end


function sleep() do
    for i = 0, 10000, 1 do end
end

function full_off() do
    for i = 0, 255, 1 do
        dmxset(i,0)
    end
end

function full_on() do
    for i = 0, 255, 1 do
        dmxset(i,0)
    end
end

function full_random() do
    for i = 0, 255, 1 do
        dmxset(i,math.random(255))
    end
end

