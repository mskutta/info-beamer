gl.setup(NATIVE_WIDTH, NATIVE_HEIGHT)

node.alias "halloween"

util.noglobals()

local background = resource.load_image("UP_Gent_Buffer_TV_V.jpg")

local video_file = "UP_Gent_LivingNightmare_TV_V.mp4"
local play_audio = true

local video

util.data_mapper{
    trigger = function()
        if video then
            video:start()
        end
    end,
    abort = function()
        if video then
            video:dispose()
            video = nil
        end
    end,
}

function node.render()
    gl.clear(0, 0, 0, 1)
    background:draw(0, 0, WIDTH, HEIGHT)

    if not video then
        video = resource.load_video{
            file = video_file,
            paused = true,
            audio = play_audio,
            raw = true,
        }
        video:next()
    end

    if video then
        local state, w, h = video:state()
        if state == "loaded" then
            local x1, y1, x2, y2 = util.scale_into(NATIVE_WIDTH, NATIVE_HEIGHT, w, h)
            video:target(x1, y1, x2, y2):layer(2)
        elseif state == "finished" or state == "error" then
            video:dispose()
            video = nil
        end
    end
end