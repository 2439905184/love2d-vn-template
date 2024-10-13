local text = {
    "欢迎使用love2d视觉小说参考模板","第二行"
}
local t = ""
function love.load()
    love.window.setTitle("test")
    love.graphics.setBackgroundColor(0,255,0,1)
    myFont = love.graphics.newFont("puhuiti.ttf",24)
    love.graphics.setFont(myFont)
end

function love.draw()
    width = love.graphics.getWidth()
    height = love.graphics.getHeight()

    textbg = love.graphics.newImage("textbox.png")
    ch = love.graphics.newImage("c01.png")
    ch_x  = width/2 - ch:getWidth()/2

    love.graphics.draw(ch,ch_x,0)
    love.graphics.draw(textbg,0,485)
    
    love.graphics.print(text, 200,485)
end