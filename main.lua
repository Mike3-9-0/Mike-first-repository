if arg[2] == "debug" then
    require("lldebugger").start()
end
local functions = require 'Functions'
-- Tamanho da janela
Width_Window = 1366
Height_Window = 768

-- Personagem
Character = {
    x = 100,
    y = 100,
    width = 50,
    height = 50,
    speed = 200 -- píxeis por segundo
}

function love.load()
    love.window.setTitle("Game test")
    love.window.setMode(Width_Window, Height_Window)
    functions.Audio()-- teste de áudio
end

function love.update(dt)
   functions.Movements(dt)
end

function love.draw()
    love.graphics.setColor(1, 0.5, 0.2) -- cor laranja
    love.graphics.rectangle("fill", Character.x, Character.y, Character.width, Character.height)

    love.graphics.setColor(1, 1, 1)
    love.graphics.print("Use WASD or the arrows to move", 10, 10)
end

local love_errorhandler = love.errorhandler

function love.errorhandler(msg)
    if lldebugger then
        error(msg, 2)
    else
        return love_errorhandler(msg)
    end
end