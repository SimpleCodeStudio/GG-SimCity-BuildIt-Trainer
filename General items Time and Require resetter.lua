function Subtext(x) gg.toast("\n"..x) end
function valueNotFound() gg.alert("Searched value not found. Please ask this from developer. (SimpleCodeStudio)") return end
function Search(d,r) gg.clearResults(); gg.searchNumber(d, r); if gg.getResultsCount() == 0 then valueNotFound() end end
function FindPointer_v1(r) x=gg.getResults("1")[1].address; gg.clearResults(); gg.searchNumber(x, r) if gg.getResultsCount() == 0 then valueNotFound() end return end
function FindPointer_v17(r) x=gg.getResults("17")[17].address; gg.clearResults(); gg.searchNumber(x, r) if gg.getResultsCount() == 0 then valueNotFound() end return end
function FindPointer_v18(r) x=gg.getResults("18")[18].address; gg.clearResults(); gg.searchNumber(x, r) if gg.getResultsCount() == 0 then valueNotFound() end return end

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
  gg.alert("WARNING: Game update detected. Please wait the data update.")
  gg.setVisible(true)
  os.exit()
end

Subtext("Please Wait...")
gg.clearList()
gg.setRanges(gg.REGION_C_ALLOC)
Search(httpData.UP_A[1], gg.TYPE_BYTE)
if bit32 == true then FindPointer_v1(gg.TYPE_DWORD) else FindPointer_v1(gg.TYPE_QWORD) end
gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_OTHER)
if bit32 == true then if gg.getResultsCount() == 58 then FindPointer_v18(gg.TYPE_DWORD) else FindPointer_v17(gg.TYPE_DWORD) end else FindPointer_v18(gg.TYPE_QWORD) end
gg.sleep("200")
g3 = gg.getResults("125")
for i, v in ipairs(g3) do
  v.address = v.address + httpData.timeReseterOfsets[1]
  v.flags = gg.TYPE_DWORD
end
gg.addListItems(g3)
gg.sleep("200")
g4 = gg.getResults("125")
for i, v in ipairs(g4) do
  v.address = v.address + httpData.timeReseterOfsets[2]
  if bit32 == true then v.flags = gg.TYPE_DWORD else v.flags = gg.TYPE_QWORD end
end
gg.addListItems(g4)
gg.sleep("200")
g5 = gg.getResults("125")
for i, v in ipairs(g5) do
  v.address = v.address + httpData.timeReseterOfsets[3]
  if bit32 == true then v.flags = gg.TYPE_DWORD else v.flags = gg.TYPE_QWORD end
end
gg.addListItems(g5)
gg.sleep("200")
g6 = gg.getResults("125")
for i, v in ipairs(g6) do
  v.address = v.address + httpData.timeReseterOfsets[4]
  v.flags = gg.TYPE_QWORD
end
gg.addListItems(g6)
gg.clearResults()
l1 = gg.getListItems("700")
gg.loadResults(l1)
gg.getResults("700")
if bit32 == false then gg.editAll("0",gg.TYPE_QWORD) end
gg.editAll("0",gg.TYPE_DWORD)
gg.clearResults()
gg.clearList()
gg.toast("\nSuccessfuly")
