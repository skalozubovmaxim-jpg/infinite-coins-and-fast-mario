-- name: Q10sTestCodemod
-- description: a test mod

Amountofsomething = 4 -- Global
local CanIdosomething = true -- включаем мод

function mario_update(m)
    if CanIdosomething then
        -- Добавляем монетки
        m.numCoins = m.numCoins + Amountofsomething
        
        -- Увеличиваем скорость (пример)
        local addtoysspeedfloat = 25.5
        m.vel.x = m.vel.x + addtoysspeedfloat
        m.vel.z = m.vel.z + addtoysspeedfloat
        -- m.vel.y обычно не меняем, чтобы не нарушить прыжки
    end
end

hook_event(HOOK_MARIO_UPDATE, mario_update)