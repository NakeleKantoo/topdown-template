function love.load()
    x, y, w, h = 20, 20, 50, 50
end

-- Increase the size of the rectangle every frame.
function love.update(dt)
    if love.keyboard.isDown("a") then
        x=x-3
    end
    if love.keyboard.isDown("d") then
        x=x+3
    end
    if love.keyboard.isDown("w") then
        y=y-3
    end
    if love.keyboard.isDown("s") then
        y=y+3
    end
end

-- Draw a coloured rectangle.
function love.draw()
    -- In versions prior to 11.0, color component values are (0, 102, 102)
    love.graphics.setColor(0, 0.4, 0.4)
    love.graphics.rectangle("fill", x, y, w, h)
end