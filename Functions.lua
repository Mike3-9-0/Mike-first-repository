local functions = {}


function functions.Movements(dt)
if love.keyboard.isDown("right") or love.keyboard.isDown("d") then
        Character.x = Character.x + Character.speed * dt
    end
    if love.keyboard.isDown("left") or love.keyboard.isDown("a") then
        Character.x = Character.x - Character.speed * dt
    end
    if love.keyboard.isDown("down") or love.keyboard.isDown("s") then
        Character.y = Character.y + Character.speed * dt
    end
    if love.keyboard.isDown("up") or love.keyboard.isDown("w") then
        Character.y = Character.y - Character.speed * dt
    end
end

function functions.Audio()
         love.audio.setEffect("teste som", {
         type = "reverb",
         decaytime = 2.5,
         gain = 0.8,
     })
     local Sound_test = love.audio.newSource ("Soundtrack/Apenas um Show - The Synth Wars (Gary vs David) .mp3", "stream")
     Sound_test:setEffect("teste som")
     Sound_test:play()
 love.audio.setVolume(0.4)
end