-- this si an example for the script, use this to amke your own! (Might be adding custom Themes)
local Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/7yhx/kwargs-Ui-Library/main/Ui%20Library.lua"))()

local UI = Lib:Create{
   Theme = "Dark", -- or "Light"
   Size = UDim2.new(0, 555, 0, 400) -- default
}

local Main = UI:Tab{
   Name = "Inicio"
}

local Divider = Main:Divider{
   Name = "Inicio shit"
}

local QuitDivider = Main:Divider{
   Name = "sair"
}

-- Script de Lua para Counter-Strike 2
-- Ajusta o FOV e identifica inimigos

local fov = 90 -- Campo de visão padrão
local showEnemies = false -- Estado inicial para mostrar inimigos

-- Função para alternar a exibição de inimigos
function toggleEnemies()
    showEnemies = not showEnemies
    if showEnemies then
        print("Inimigos visíveis")
    else
        print("Inimigos ocultos")
    end
end

-- Função para ajustar o FOV
function setFOV(newFOV)
    fov = newFOV
    print("FOV ajustado para " .. fov)
end

-- Função principal do script
function main()
    -- Configuração inicial
    setFOV(90)

    -- Loop principal do jogo
    while true do
        -- Verifica se a tecla "P" foi pressionada
        if isKeyPressed("P") then
            toggleEnemies()
        end

        -- Lógica para identificar inimigos
        if showEnemies then
            for _, player in ipairs(getAllPlayers()) do
                if isEnemy(player) then
                    drawText(player.position, "INIMIGO", {255, 0, 0})
                end
            end
        end

        -- Aguarda um pequeno intervalo antes de continuar o loop
        wait(0.1)
    end
end

-- Funções auxiliares (exemplos, precisam ser implementadas conforme a API do jogo)
function isKeyPressed(key)
    -- Implementar verificação de tecla pressionada
end

function getAllPlayers()
    -- Implementar obtenção de todos os jogadores
end

function isEnemy(player)
    -- Implementar verificação se o jogador é inimigo
end

function drawText(position, text, color)
    -- Implementar desenho de texto na tela
end

-- Inicia o script
main()
