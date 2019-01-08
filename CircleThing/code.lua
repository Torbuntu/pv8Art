

function Init()
    BackgroundColor(0)
end


t = 0
x = 0
y = 0
len = 50
angle = 0.0
step = 0.1

function Update(timeDelta)
    t +  = timeDelta

end


function Draw()

    RedrawDisplay()
    amnt = 2 * math.pi
    angle = 0.0
    while (angle < amnt) do
        x = len * math.cos(angle + t)
        y = len * math.sin(angle + t)

        x = math.cos(x / 10 * angle / t) * 132
        y = math.sin(y / 10 * angle / t) * 128

        DrawSprite(0, x + 120, y + 80, false, false, nil, angle%3)
        angle +  = step
    end
    DrawText("X: "..x, 0, 10, drawMode, "large", 2, 0)

end
