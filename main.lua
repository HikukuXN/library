--// Library Hub - Rayfield UI Version

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

--// Window
local Window = Rayfield:CreateWindow({
   Name = "Library Hub",
   LoadingTitle = "Library Hub",
   LoadingSubtitle = "by Library",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil,
      FileName = "LibraryHub"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink",
      RememberJoins = true
   },
   KeySystem = false,
   KeySettings = {
      Title = "Library Hub",
      Subtitle = "Key System",
      Note = "No key required",
      FileName = "Key",
      SaveKey = true,
      GrabKeyFromSite = false,
      Key = {""}
   }
})

--// Tabs
local Tabs = {
    All  = Window:CreateTab("All Scripts", 4483362458),
    ADM  = Window:CreateTab("Adopt Me", 4483362458),
    MM2  = Window:CreateTab("Murder Mystery 2", 4483362458),
    SAB  = Window:CreateTab("Steal A Brainrot", 4483362458),
    Hubs = Window:CreateTab("Hubs", 4483362458),
    Info = Window:CreateTab("Info", 4483362458)
}

--// Script Database
local scriptData = {
    ["Kuni Hub MM2"] = "https://raw.githubusercontent.com/KuniX99/MurderMystery2/refs/heads/main/main.lua",
    ["Kuni Hub ADM"] = "https://raw.githubusercontent.com/KuniX99/AdoptMe/refs/heads/main/main.lua",
    ["Adopt Me Force Trade"] = "https://raw.githubusercontent.com/KuniX99/AdoptMe/refs/heads/main/forcetrade",
    ["Kuni Hub SAB"] = "https://raw.githubusercontent.com/KuniX99/StealABrainrot/refs/heads/main/main.lua",

    ["Ronix Hub"] = "https://api.luarmor.net/files/v3/loaders/b44706178039e9b88c4d768d4d8b012f.lua",
    ["Thunder Z Hub"] = "https://raw.githubusercontent.com/ThundarZ/Welcome/refs/heads/main/Main/GaG/Main.lua",
    ["Limit Hub"] = "https://raw.githubusercontent.com/FakeModz/LimitHub/refs/heads/main/LimitHub_Luarmor_E.lua",
    ["Speed Hub"] = "https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua",
    ["Quantum Hub"] = "https://raw.githubusercontent.com/flazhy/QuantumOnyx/refs/heads/main/QuantumOnyx.lua"
}

local lastUsed = "None"

--// Execute Function
local function Execute(name, url)
    lastUsed = name

    Rayfield:Notify({
       Title = "Library Hub",
       Content = "Executing " .. name .. "...",
       Duration = 3,
       Image = 4483362458,
       Actions = {
          Ignore = {
             Name = "Okay!",
             Callback = function()
             end
          },
       },
    })

    task.spawn(function()
        local success, err = pcall(function()
            loadstring(game:HttpGet(url))()
        end)

        if success then
            Rayfield:Notify({
               Title = "Success",
               Content = name .. " loaded successfully!",
               Duration = 4,
               Image = 4483362458,
               Actions = {
                  Ignore = {
                     Name = "Okay!",
                     Callback = function()
                     end
                  },
               },
            })
        else
            Rayfield:Notify({
               Title = "Error",
               Content = "Failed to load " .. name,
               Duration = 5,
               Image = 4483362458,
               Actions = {
                  Ignore = {
                     Name = "Okay!",
                     Callback = function()
                     end
                  },
               },
            })
            warn("Script Error:", err)
        end
    end)
end

--// ALL TAB
local AllSection = Tabs.All:CreateSection("All Available Scripts")

Tabs.All:CreateParagraph({Title = "All Scripts", Content = "Click any button below to execute the script"})

for name, url in pairs(scriptData) do
    Tabs.All:CreateButton({
       Name = name,
       Callback = function()
           Execute(name, url)
       end,
    })
end

--// ADOPT ME TAB
local ADMSection = Tabs.ADM:CreateSection("Adopt Me Scripts")

Tabs.ADM:CreateParagraph({Title = "Adopt Me", Content = "Scripts specifically for Adopt Me"})

for name, url in pairs(scriptData) do
    if name:find("ADM") or name:lower():find("adopt") then
        Tabs.ADM:CreateButton({
           Name = name,
           Callback = function()
               Execute(name, url)
           end,
        })
    end
end

--// MM2 TAB
local MM2Section = Tabs.MM2:CreateSection("Murder Mystery 2 Scripts")

Tabs.MM2:CreateParagraph({Title = "Murder Mystery 2", Content = "Scripts for MM2"})

for name, url in pairs(scriptData) do
    if name:find("MM2") then
        Tabs.MM2:CreateButton({
           Name = name,
           Callback = function()
               Execute(name, url)
           end,
        })
    end
end

--// SAB TAB
local SABSection = Tabs.SAB:CreateSection("Steal A Brainrot Scripts")

Tabs.SAB:CreateParagraph({Title = "Steal A Brainrot", Content = "Scripts for SAB"})

for name, url in pairs(scriptData) do
    if name:find("SAB") then
        Tabs.SAB:CreateButton({
           Name = name,
           Callback = function()
               Execute(name, url)
           end,
        })
    end
end

--// HUBS TAB
local HubsSection = Tabs.Hubs:CreateSection("Universal Hubs")

Tabs.Hubs:CreateParagraph({Title = "Universal Hubs", Content = "Multi-game script hubs"})

local hubList = {
    "Ronix Hub",
    "Thunder Z Hub",
    "Limit Hub",
    "Speed Hub",
    "Quantum Hub"
}

for _, name in ipairs(hubList) do
    if scriptData[name] then
        Tabs.Hubs:CreateButton({
           Name = name,
           Callback = function()
               Execute(name, scriptData[name])
           end,
        })
    end
end

--// INFO TAB
local InfoSection = Tabs.Info:CreateSection("Library Hub Information")

Tabs.Info:CreateParagraph({Title = "Library Hub", Content = "Professional script hub for mobile and PC.\nCreated by Library"})

Tabs.Info:CreateButton({
   Name = "Show Last Used Script",
   Callback = function()
       Rayfield:Notify({
          Title = "Last Used Script",
          Content = lastUsed,
          Duration = 5,
          Image = 4483362458,
          Actions = {
             Ignore = {
                Name = "Okay!",
                Callback = function()
                end
             },
          },
       })
   end,
})

Tabs.Info:CreateParagraph({Title = "Controls", Content = "Press Right CTRL to toggle the GUI"})

Tabs.Info:CreateButton({
   Name = "Close GUI",
   Callback = function()
       Rayfield:Notify({
          Title = "Closing",
          Content = "Goodbye!",
          Duration = 2,
          Image = 4483362458,
          Actions = {
             Ignore = {
                Name = "Bye!",
                Callback = function()
                end
             },
          },
       })
       task.wait(2)
       Rayfield:Destroy()
   end,
})

--// Loaded Notify
Rayfield:Notify({
   Title = "Library Hub",
   Content = "Successfully loaded!",
   Duration = 5,
   Image = 4483362458,
   Actions = {
      Ignore = {
         Name = "Okay!",
         Callback = function()
         end
      },
   },
})
