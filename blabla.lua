--enemies code
function make_enemies()
	new_enemy = {
		x = 40,
		y = 104,
		speed = 1,
		}
		add(enemies, new_enemy)
end


function update_enemies()
				for e in all(enemies) do
					e.x += e.speed
				if e.x >= 88 then
							e.speed = -1
				elseif e.x <= 40 then
											e.speed = 1
						end
			end
end

function draw_enemies()
		for e in all(enemies) do
	spr(48,e.x,e.y)
	end
end



-- loop through enemies
for e in all(enemies) do
    if collision(p, e) then
        p.life -= 1
        if p.life == 0 then
            p.x = 3
            p.y = 2
        end
    end
end


-- collision function

function collision(p, e)
    print("p.x:", p.x, "p.y:", p.y)
    print("e.x:", e.x, "e.y:", e.y)
    if p.x > e.x + 8
    or p.y > e.y + 8
    or e.x > p.x + 8
    or e.y > p.y + 8 then
            return false
    else
        return true
    end    
end


function old_camera()
	camx=mid(0,p.x-7.5,127-15)
	camy=mid(0,p.y-7.5,63-15)
	camera(camx*8,camy*8)
end



