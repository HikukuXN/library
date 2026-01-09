local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Librart Hub",
   LoadingTitle = "Library Hub",
   LoadingSubtitle = "by Library",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "Library",
      FileName = "Library"
   },
   Discord = {
      Enabled = false,
      Invite = "",
      RememberJoins = true
   },
   KeySystem = false
})

-- SCRIPT LIST
local buttonData = {
   ["Murder Mystery 2"] = "https://raw.githubusercontent.com/KuniX99/MurderMystery2/refs/heads/main/main.lua",
   ["Adopt Me"] = "https://raw.githubusercontent.com/KuniX99/AdoptMe/refs/heads/main/main.lua",

   -- SAB (Steal A Brainrot)
   ["Steal A Brainrot"] = "https://raw.githubusercontent.com/KuniX99/StealABrainrot/refs/heads/main/main.lua",

   ["Ronix Hub"] = "https://api.luarmor.net/files/v3/loaders/b44706178039e9b88c4d768d4d8b012f.lua",
   ["Thunder Z Hub"] = "https://raw.githubusercontent.com/ThundarZ/Welcome/refs/heads/main/Main/GaG/Main.lua",
   ["Limit Hub"] = "https://raw.githubusercontent.com/FakeModz/LimitHub/refs/heads/main/LimitHub_Luarmor_E.lua",
   ["Speed Hub"] = "https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua",
   ["Quantum Hub"] = "https://raw.githubusercontent.com/flazhy/QuantumOnyx/refs/heads/main/QuantumOnyx.lua"
}

local lastUsedScript = "None"

local function ExecuteScript(name, url)
   lastUsedScript = name

   Rayfield:Notify({
      Title = "Executing",
      Content = name,
      Duration = 3,
      Image = 4483362458,
   })

   local success, err = pcall(function()
      loadstring(game:HttpGet(url))()
   end)

   if not success then
      Rayfield:Notify({
         Title = "Error",
         Content = "Failed: " .. name,
         Duration = 5,
         Image = 4483362458,
      })
      warn("Failed to execute script:", err)
   else
      Rayfield:Notify({
         Title = "Success",
         Content = name .. " loaded!",
         Duration = 3,
         Image = 4483362458,
      })
   end
end

-- ALL TAB
local AllTab = Window:CreateTab("ALL", 4483362458)
for name, url in pairs(buttonData) do
   AllTab:CreateButton({
      Name = name,
      Callback = function()
         ExecuteScript(name, url)
      end,
   })
end

-- ADM TAB
local AdoptMeTab = Window:CreateTab("ADM", 4483362458)
for name, url in pairs(buttonData) do
   if name:find("Adopt Me") then
      AdoptMeTab:CreateButton({
         Name = name,
         Callback = function()
            ExecuteScript(name, url)
         end,
      })
   end
end

-- MM2 TAB
local MM2Tab = Window:CreateTab("MM2", 4483362458)
for name, url in pairs(buttonData) do
   if name:find("Murder Mystery 2") then
      MM2Tab:CreateButton({
         Name = name,
         Callback = function()
            ExecuteScript(name, url)
         end,
      })
   end
end

-- SAB TAB (NEW)
local SABTab = Window:CreateTab("SAB", 4483362458)
for name, url in pairs(buttonData) do
   if name:find("Steal A Brainrot") then
      SABTab:CreateButton({
         Name = name,
         Callback = function()
            ExecuteScript(name, url)
         end,
      })
   end
end

-- OTHERS TAB
local OthersTab = Window:CreateTab("OTHERS", 4483362458)
local hubs = {
   "Ronix Hub",
   "Thunder Z Hub",
   "Limit Hub",
   "Speed Hub",
   "Quantum Hub"
}

for _, name in ipairs(hubs) do
   if buttonData[name] then
      OthersTab:CreateButton({
         Name = name,
         Callback = function()
            ExecuteScript(name, buttonData[name])
         end,
      })
   end
end

-- INFO TAB
local InfoTab = Window:CreateTab("Info", 4483362458)

InfoTab:CreateParagraph({
   Title = "Naguri Hub Library",
   Content = "Select a script from the tabs to execute it."
})

InfoTab:CreateButton({
   Name = "Show Last Used",
   Callback = function()
      Rayfield:Notify({
         Title = "Last Used Script",
         Content = lastUsedScript,
         Duration = 4,
         Image = 4483362458,
      })
   end,
})

Rayfield:LoadConfiguration()
