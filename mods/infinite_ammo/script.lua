-- Ace Combat 5 - Infinite Ammo
-- Restaura a munição depois que a função original a decrementa.

local AMMO_OFFSET = 0x1B27
local FIRE_FUNCTION = 0x001273C8

local ammo_before = {}

-- Guarda a munição antes da função original
ac5.hook_before(FIRE_FUNCTION, function(ctx)
    local obj = ac5.arg(ctx, 0)

    if obj ~= 0 then
        ammo_before[obj] = ac5.read8(obj + AMMO_OFFSET)
    end
end)

-- Depois da função original, desfaz somente o decremento
ac5.hook_after(FIRE_FUNCTION, function(ctx)
    local obj = ac5.entry_arg(ctx, 0)

    if obj == 0 then
        return
    end

    local old_ammo = ammo_before[obj]

    if old_ammo == nil then
        return
    end

    local current_ammo = ac5.read8(obj + AMMO_OFFSET)

    -- A função original decrementou exatamente 1 unidade.
    if old_ammo > 0 and current_ammo == old_ammo - 1 then
        ac5.write8(obj + AMMO_OFFSET, old_ammo)
    end

    ammo_before[obj] = nil
end)

ac5.log("Infinite Ammo carregado!")