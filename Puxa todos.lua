-- Script para puxar todos os jogadores em direção ao seu personagem
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- Função para puxar os jogadores
local function PullPlayers()
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            local character = player.Character
            if character then
                local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
                if humanoidRootPart then
                    local direction = (humanoidRootPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).unit
                    local force = 1000 -- Ajuste a força conforme necessário
                    humanoidRootPart.Velocity = direction * force
                end
            end
        end
    end
end

-- Chame a função para puxar os jogadores
PullPlayers()
