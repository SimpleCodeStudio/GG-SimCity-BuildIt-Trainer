function Subtext(x) gg.toast("\n"..x) end
function valueNotFound() gg.alert("Searched value not found. Please ask this from developer. (SimpleCodeStudio)") return end
function Search(d,r) gg.clearResults(); gg.searchNumber(d, r); if gg.getResultsCount() == 0 then valueNotFound() end end
function FindPointer_v1(r) x=gg.getResults("1")[1].address; gg.clearResults(); gg.searchNumber(x, r) if gg.getResultsCount() == 0 then valueNotFound() end return end

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

print("Discord: https://discord.com/invite/3BHekVBQUe")
print("Support me with patreon!: https://www.patreon.com/c/user?u=86903282")
print("Open source, Github project: https://github.com/SimpleCodeStudio/GG-SimCity-BuildIt-Trainer")
if gg.getTargetInfo().versionName == httpData.UGV[1] then
  else
  gg.alert("WARNING: Data updated for SimCity ["..httpData.UGV[1].."] Version!")
  gg.setVisible(true)
  os.exit()
end

gg.toast("\nPlease Wait...")
gg.clearResults()
gg.clearList()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber(httpData.UP_C[1],gg.TYPE_BYTE) 
gg.sleep("100")
if gg.getResultsCount() == 0 then
valueNotFound()
return
end
g23 = gg.getResults("1")
gg.addListItems(g23)
g7_1 = gg.getListItems("1")
gg.clearResults()
gg.searchNumber(g7_1[1].address,gg.TYPE_QWORD)
gg.clearList()
g7_2 = gg.getResults("1")
gg.addListItems(g7_2)
gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_OTHER)
gg.clearResults()
g24 = gg.getListItems("1")
gg.searchNumber(g24[1].address,gg.TYPE_QWORD)
gg.clearList()
local lofs = {}
g25 = gg.getResults("1")
function loadRss()
  gg.setVisible(false)
  local o7 = {}
  o7[1] = {}
  o7[1].address = g25[1].address + lofs
  o7[1].flags = gg.TYPE_DWORD
  o7[1].value = 123456789
  o7[1].name = customName
  gg.addListItems(o7)
  gg.setValues(o7)
end
customName = "NOTE: If you do not like the value, enter a random value again."
gg.sleep("100")
local o99 = {}
o99[1] = {}
o99[1].address = g25[1].address + -0x8
o99[1].flags = gg.TYPE_DWORD
o99[1].name = customName
gg.addListItems(o99)
--simoleon
customName = "Simoleon"
lofs = httpData.freezeOfsets[7]
gg.sleep("100")
loadRss()
--simcash
customName = "Simcash"
lofs = httpData.freezeOfsets[11]
gg.sleep("100")
loadRss()
--golden key
customName = "Golden Key"
lofs = httpData.freezeOfsets[15]
gg.sleep("100")
loadRss()
--platinum key
customName = "Platinum Key"
lofs = httpData.freezeOfsets[19]
gg.sleep("100")
loadRss()
--neo simoleon
customName = "Neo Simoleon"
lofs = httpData.freezeOfsets[23]
gg.sleep("100")
loadRss()
gg.clearResults()
gg.toast("Okay")
