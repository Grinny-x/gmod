AddCSLuaFile()
resource.AddFile("sound/ui/welcome.mp3")

function WelcomeSound(ply)
        timer.Simple(5, function()
                ply:SendLua("surface.PlaySound('ui/welcome.mp3')")
        end)
end
hook.Add("PlayerInitialSpawn", "PlaySound", WelcomeSound)
