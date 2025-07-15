-- Tamanho da janela
largura_janela = 800
altura_janela = 600

-- Personagem
personagem = {
    x = 100,
    y = 100,
    largura = 50,
    altura = 50,
    velocidade = 200 -- píxeis por segundo
}

function love.load()
    love.window.setTitle("Jogo com movimento")
    love.window.setMode(largura_janela, altura_janela)
end

function love.update(dt)
   movements()
end

function love.draw()
    -- love.graphics.setColor(1, 0.5, 0.2) -- cor laranja
    -- love.graphics.rectangle("fill", personagem.x, personagem.y, personagem.largura, personagem.altura)

    -- love.graphics.setColor(1, 1, 1)
    -- love.graphics.print("Usa as setas ou WASD para moveres o quadrado!", 10, 10)
    
    love.graphics.print("Hello World", 400, 300)
end

function movements()
if love.keyboard.isDown("right") or love.keyboard.isDown("d") then
        personagem.x = personagem.x + personagem.velocidade * dt
    end
    if love.keyboard.isDown("left") or love.keyboard.isDown("a") then
        personagem.x = personagem.x - personagem.velocidade * dt
    end
    if love.keyboard.isDown("down") or love.keyboard.isDown("s") then
        personagem.y = personagem.y + personagem.velocidade * dt
    end
    if love.keyboard.isDown("up") or love.keyboard.isDown("w") then
        personagem.y = personagem.y - personagem.velocidade * dt
    end
end