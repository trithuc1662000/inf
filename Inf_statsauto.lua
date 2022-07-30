game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "Welcome";
	Text = "Inf-stats"
})
_G.GOD = true
local User = game.Players.LocalPlayer;
local Normal = "Slot1";
local Namek = "Slot2";
local name_check = (User.Character.Race.Value == "Namekian")
if not name_check then
    User.Backpack.ServerTraits.ChatStart:FireServer(workspace.FriendlyNPCs["Character Slot Changer"]); --Switch to normal
    task.wait(0.85);
    User.Backpack.ServerTraits.ChatAdvance:FireServer({"Yes"});
    task.wait(0.85);
    User.Backpack.ServerTraits.ChatAdvance:FireServer({"k"});
    task.wait(0.5);
    User.Backpack.ServerTraits.ChatAdvance:FireServer({Namek});
    task.wait(0.5)
    game.Players.LocalPlayer.CharacterRemoving:Wait()
    game.Players.LocalPlayer.CharacterAdded:Wait()
    task.wait(1)
end;

while _G.GOD do
    print("starting")
    local PlayerGui = User:WaitForChild("PlayerGui"); --Vars
    local HUD = PlayerGui:WaitForChild("HUD");
    local Bottom = HUD:WaitForChild("Bottom");
    local chatGui = Bottom:WaitForChild("ChatGui");
    local TextLabel = chatGui:WaitForChild("TextLabel")

    User.Backpack.ServerTraits.ChatStart:FireServer(workspace.FriendlyNPCs["Character Slot Changer"]); --Switch to normal
    task.wait(0.85);
    User.Backpack.ServerTraits.ChatAdvance:FireServer({"Yes"});
    task.wait(0.85);
    User.Backpack.ServerTraits.ChatAdvance:FireServer({"k"});
    task.wait(0.5);
    User.Backpack.ServerTraits.ChatAdvance:FireServer({Normal});

    repeat game:GetService("RunService").RenderStepped:wait(); until TextLabel.Text == "Loading!" or chatGui == nil; --Waits for Loading or Nil
    if chatGui ~= nil then
        pcall(function()
            repeat
            User.Backpack.ServerTraits.ChatStart:FireServer(workspace.FriendlyNPCs["KAMI"]); --Talks to Kami if chatGui is not nil
            task.wait()
            until TextLabel.Text == 'Hello' or chatGui == nil
            repeat
                if chatGui and chatGui:FindFirstChild("Opt1") then
                    firesignal(chatGui.Opt1.MouseButton1Click);
                end
                game:GetService("RunService").RenderStepped:wait();
            until chatGui == nil or not chatGui:FindFirstChild("Opt1");
        end);
    end
    game.Players.LocalPlayer.CharacterAdded:Wait();
    task.wait(3)
    User.Backpack.ServerTraits.ChatStart:FireServer(workspace.FriendlyNPCs["Character Slot Changer"]);
    task.wait(0.85);
    User.Backpack.ServerTraits.ChatAdvance:FireServer({"Yes"});
    task.wait(0.85);
    User.Backpack.ServerTraits.ChatAdvance:FireServer({"k"});
    task.wait(0.5);
    User.Backpack.ServerTraits.ChatAdvance:FireServer({Namek});
    game.Players.LocalPlayer.CharacterRemoving:Wait();
    game.Players.LocalPlayer.CharacterAdded:Wait();
    task.wait(4)
end