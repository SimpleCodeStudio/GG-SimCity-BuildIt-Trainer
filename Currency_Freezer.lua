function Subtext(x) gg.toast("\n"..x) end
function valueNotFound() gg.alert("Searched value not found. Please ask this from developer. (SimpleCodeStudio)") return end
function Search(d,r) gg.clearResults(); gg.searchNumber(d, r); if gg.getResultsCount() == 0 then valueNotFound() end end
function FindPointer_v1(r) x=gg.getResults("1")[1].address; gg.clearResults(); gg.searchNumber(x, r) if gg.getResultsCount() == 0 then valueNotFound() end return end

local FreezeMenus = {"XP", "SIMOLEON", "SIMCASH", "GOLDEN KEY", "PLATINUM KEY", "NEO SIMOLEON", "EXIT"}
local bit32 = false
local melon = {}
if gg.getTargetInfo().x64 then
  melon = gg.makeRequest("https://raw.githubusercontent.com/SimpleCodeStudio/GG-SimCity-BuildIt-Trainer/refs/heads/main/64bit-Pointers%26Ofsets.lua")
  else
  bit32 = true
  melon = gg.makeRequest("https://raw.githubusercontent.com/SimpleCodeStudio/GG-SimCity-BuildIt-Trainer/refs/heads/main/32bit-Pointers%26Ofsets.lua")
end
if not melon or not melon.content then print("Data Can't get!") return end
local httpData = {}
setmetatable(httpData, { __index = _G })
local getMelon, badMelon = load(melon.content, "RemoteScript", "t", httpData)
if not getMelon then print("Lua code can't loaded: ", badMelon) return end
local success, result = pcall(getMelon)
if not success then print("Code can't worked: ", result) return end

function freezeMenu()
  fm = gg.multiChoice(FreezeMenus)
  
  if fm == nil then
    else
    local fvls = {}
    local fplc = {}
    g11 = gg.getResults("24")
    function freezeRss()
      local o5 = {}
      o5[1] = {}
      o5[1].address = g11[fplc].address + 0x0
      o5[1].flags = gg.TYPE_DWORD
      o5[1].value = fvls
      o5[1].freeze = true
      o5[1].name = "Hey! Why you looking here??? 🧐🍉"
      gg.addListItems(o5)
      gg.setValues(o5)
    end
    function unFreezeRss()
      local o5 = {}
      o5[1] = {}
      o5[1].address = g11[fplc].address + 0x0
      o5[1].flags = gg.TYPE_DWORD
      o5[1].name = "Hey! Why you looking here??? 🧐🍉"
      gg.addListItems(o5)
    end
    if fm[1] == true then
      if FreezeMenus[1] == "XP |✅️|" then
        FreezeMenus[1] = "XP"
        fplc = 1
        gg.sleep("100")
        unFreezeRss()
        fplc = 2
        gg.sleep("100")
        unFreezeRss()
        fplc = 3
        gg.sleep("100")
        unFreezeRss()
        fplc = 4
        gg.sleep("100")
        unFreezeRss()
        gg.toast("\nXP Unfreezed.")
      else
        FreezeMenus[1] = "XP |✅️|"
        fplc = 1
        fvls = g11[1].value
        gg.sleep("100")
        freezeRss()
        fplc = 2
        fvls = g11[2].value
        gg.sleep("100")
        freezeRss()
        fplc = 3
        fvls = g11[3].value
        gg.sleep("100")
        freezeRss()
        fplc = 4
        fvls = g11[4].value
        gg.sleep("100")
        freezeRss()
        gg.toast("\nXP Freezed")
      end
    end
    if fm[2] == true then
      if FreezeMenus[2] == "SIMOLEON |✅️|" then
        FreezeMenus[2] = "SIMOLEON"
          fplc = 5
          gg.sleep("100")
          unFreezeRss()
          fplc = 6
          gg.sleep("100")
          unFreezeRss()
          fplc = 7
          gg.sleep("100")
          unFreezeRss()
          fplc = 8
          gg.sleep("100")
          unFreezeRss()
          gg.toast("\nSimoleon Unfreezed.")
        else
        FreezeMenus[2] = "SIMOLEON |✅️|"
        fplc = 5
        fvls = g11[5].value
        gg.sleep("100")
        freezeRss()
        fplc = 6
        fvls = g11[6].value
        gg.sleep("100")
        freezeRss()
        fplc = 7
        fvls = g11[7].value
        gg.sleep("100")
        freezeRss()
        fplc = 8
        fvls = g11[8].value
        gg.sleep("100")
        freezeRss()
        gg.toast("\nSimoleon Freezed")
      end
    end
    if fm[3] == true then
      if FreezeMenus[3] == "SIMCASH |✅️|" then
        FreezeMenus[3] = "SIMCASH"
          fplc = 9
          gg.sleep("100")
          unFreezeRss()
          fplc = 10
          gg.sleep("100")
          unFreezeRss()
          fplc = 11
          gg.sleep("100")
          unFreezeRss()
          fplc = 12
          gg.sleep("100")
          unFreezeRss()
          gg.toast("\nSimcash Unfreezed.")
        else
        FreezeMenus[3] = "SIMCASH |✅️|"
        fplc = 9
        fvls = g11[9].value
        gg.sleep("100")
        freezeRss()
        fplc = 10
        fvls = g11[10].value
        gg.sleep("100")
        freezeRss()
        fplc = 11
        fvls = g11[11].value
        gg.sleep("100")
        freezeRss()
        fplc = 12
        fvls = g11[12].value
        gg.sleep("100")
        freezeRss()
        gg.toast("\nSimcash Freezed")
      end
    end
    if fm[4] == true then
      if FreezeMenus[4] == "GOLDEN KEY |✅️|" then
        FreezeMenus[4] = "GOLDEN KEY"
          fplc = 13
          gg.sleep("100")
          unFreezeRss()
          fplc = 14
          gg.sleep("100")
          unFreezeRss()
          fplc = 15
          gg.sleep("100")
          unFreezeRss()
          fplc = 16
          gg.sleep("100")
          unFreezeRss()
          gg.toast("\nGolden Key Unfreezed.")
        else
        FreezeMenus[4] = "GOLDEN KEY |✅️|"
        fplc = 13
        fvls = g11[13].value
        gg.sleep("100")
        freezeRss()
        fplc = 14
        fvls = g11[14].value
        gg.sleep("100")
        freezeRss()
        fplc = 15
        fvls = g11[15].value
        gg.sleep("100")
        freezeRss()
        fplc = 16
        fvls = g11[16].value
        gg.sleep("100")
        freezeRss()
        gg.toast("\nGolden Key Freezed")
      end
    end
    if fm[5] == true then
      if FreezeMenus[5] == "PLATINUM KEY |✅️|" then
        FreezeMenus[5] = "PLATINUM KEY"
          gg.sleep("100")
          unFreezeRss()
          fplc = 18
          gg.sleep("100")
          unFreezeRss()
          fplc = 19
          gg.sleep("100")
          unFreezeRss()
          fplc = 20
          gg.sleep("100")
          unFreezeRss()
          gg.toast("\nPlatinum Key Unfreezed.")
        else
        FreezeMenus[5] = "PLATINUM KEY |✅️|"
        fplc = 17
        fvls = g11[17].value
        gg.sleep("100")
        freezeRss()
        fplc = 18
        fvls = g11[18].value
        gg.sleep("100")
        freezeRss()
        fplc = 19
        fvls = g11[19].value
        gg.sleep("100")
        freezeRss()
        fplc = 20
        fvls = g11[20].value
        gg.sleep("100")
        freezeRss()
        gg.toast("\nPlatinum Key Freezed")
      end
    end
    if fm[6] == true then
      if FreezeMenus[6] == "NEO SIMOLEON |✅️|" then
        FreezeMenus[6] = "NEO SIMOLEON"
          fplc = 21
          gg.sleep("100")
          unFreezeRss()
          fplc = 22
          gg.sleep("100")
          unFreezeRss()
          fplc = 23
          gg.sleep("100")
          unFreezeRss()
          fplc = 24
          gg.sleep("100")
          unFreezeRss()
          gg.toast("\nNeo Simoleon Unfreezed.")
        else
        FreezeMenus[6] = "NEO SIMOLEON |✅️|"
        fplc = 21
        fvls = g11[21].value
        gg.sleep("100")
        freezeRss()
        fplc = 22
        fvls = g11[22].value
        gg.sleep("100")
        freezeRss()
        fplc = 23
        fvls = g11[23].value
        gg.sleep("100")
        freezeRss()
        fplc = 24
        fvls = g11[24].value
        gg.sleep("100")
        freezeRss()
        gg.toast("\nNeo Simoleon Freezed")
      end
    end
    if fm[7] == true then
      gg.clearList()
      gg.clearResults()
      print("Freeze mode disabled.")
      os.exit()
      return
    end
  end
end

Subtext("Freeze mode loading...")
gg.clearList()
gg.setRanges(gg.REGION_C_ALLOC)
Search(httpData.UP_C[1], gg.TYPE_BYTE)
if bit32 == true then FindPointer_v1(gg.TYPE_DWORD) else FindPointer_v1(gg.TYPE_QWORD) end
gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_OTHER)
if bit32 == true then FindPointer_v1(gg.TYPE_DWORD) else FindPointer_v1(gg.TYPE_QWORD) end
gg.clearList()
local lofs = {}
g25 = gg.getResults("1")
function loadRss()
  gg.setVisible(false)
  local o4 = {}
  o4[1] = {}
  o4[1].address = g25[1].address + lofs
  o4[1].flags = gg.TYPE_DWORD
  o4[1].name = "Hey! Why you looking here??? 🧐🍉"
  gg.addListItems(o4)
end
--xp
lofs = httpData.freezeOfsets[1]
gg.sleep("100")
loadRss()
lofs = httpData.freezeOfsets[2]
gg.sleep("100")
loadRss()
lofs = httpData.freezeOfsets[3]
gg.sleep("100")
loadRss()
lofs = httpData.freezeOfsets[4]
gg.sleep("100")
loadRss()
--simoleon
lofs = httpData.freezeOfsets[5]
gg.sleep("100")
loadRss()
lofs = httpData.freezeOfsets[6]
gg.sleep("100")
loadRss()
lofs = httpData.freezeOfsets[7]
gg.sleep("100")
loadRss()
lofs = httpData.freezeOfsets[8]
gg.sleep("100")
loadRss()
--simcash
lofs = httpData.freezeOfsets[9]
gg.sleep("100")
loadRss()
lofs = httpData.freezeOfsets[10]
gg.sleep("100")
loadRss()
lofs = httpData.freezeOfsets[11]
gg.sleep("100")
loadRss()
lofs = httpData.freezeOfsets[12]
gg.sleep("100")
loadRss()
--golden key
lofs = httpData.freezeOfsets[13]
gg.sleep("100")
loadRss()
lofs = httpData.freezeOfsets[14]
gg.sleep("100")
loadRss()
lofs = httpData.freezeOfsets[15]
gg.sleep("100")
loadRss()
lofs = httpData.freezeOfsets[16]
gg.sleep("100")
loadRss()
--platinum key
lofs = httpData.freezeOfsets[17]
gg.sleep("100")
loadRss()
lofs = httpData.freezeOfsets[18]
gg.sleep("100")
loadRss()
lofs = httpData.freezeOfsets[19]
gg.sleep("100")
loadRss()
lofs = httpData.freezeOfsets[20]
gg.sleep("100")
loadRss()
--neo simoleon
lofs = httpData.freezeOfsets[21]
gg.sleep("100")
loadRss()
lofs = httpData.freezeOfsets[22]
gg.sleep("100")
loadRss()
lofs = httpData.freezeOfsets[23]
gg.sleep("100")
loadRss()
lofs = httpData.freezeOfsets[24]
gg.sleep("100")
loadRss()
gg.clearResults()
gg.sleep("100")
g10 = gg.getListItems("24")
gg.loadResults(g10)
gg.toast("Freeze menu loaded.")
freezeMenu_A = true
gg.toast("\nFreeze mode loaded.")

while true do
  if gg.isVisible(true) then
    gg.setVisible(false)
    freezeMenu()
  end
end
