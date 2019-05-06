gl.setup(1920, 1080)

local video = resource.load_video{
    file = "UP_Gent_LivingNightmare_TV_V.mp4";
    looped = true;
}

function node.render()
    video:draw(0, 0, WIDTH, HEIGHT)
end