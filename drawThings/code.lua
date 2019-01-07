t = 0
amnt = 500
x = 0;
y = 0;
x2 = 0;
y2 = 0;

function Draw()
    Clear()
    t +  = 5
    for i = 0, amnt, 0.5 do
        x = math.cos(i / 40 + t / 20) * 60
        y = math.sin(i / 40 + t / 20) * 60

        x2 = 40 + math.cos(x / 16 + t / 40) * 35
        y2 = 40 + math.sin(y / 16 + t / 40) * 35

        DrawSprite(0, - x2 - 5, y2 - 13, false, false, nil, i%2)
        DrawSprite(1, x2 - 5, y2 - 13, false, false, nil, i%2)

        DrawSprite(0, x2 - 4, - y2 - 11, false, false, nil, i%2)
        DrawSprite(1, - x2 - 4, - y2 - 11, false, false, nil, i%2)
    end

    --DrawText(ReadTotalSprites(), 1, 1, drawMode, "default", 1)
end
