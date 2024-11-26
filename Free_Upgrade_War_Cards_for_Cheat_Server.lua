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

gg.clearResults()
gg.clearList()
gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_OTHER)
gg.searchNumber("53;4;19;49;38::76",gg.TYPE_DWORD)
if gg.getResultsCount() == 0 then
  valueNotFound()
  return
end
gg.refineNumber("53")
g71 = gg.getResults("1")
for i, v in ipairs(g71) do
  v.address = v.address + httpData.wrcOfsets[1]
  if bit32 == true then v.flags = gg.TYPE_DWORD else v.flags = gg.TYPE_QWORD end
end
gg.addListItems(g71)
gg.clearResults()
g81 = gg.getListItems("1")
if bit32 == true then gg.searchNumber(g81[1].value,gg.TYPE_DWORD) else gg.searchNumber(g81[1].value,gg.TYPE_QWORD)  end
gg.clearList()
g91 = gg.getResults("30")
for i, v in ipairs(g91) do
  v.address = v.address + httpData.wrcOfsets[5]
  if bit32 == true then v.flags = gg.TYPE_DWORD else v.flags = gg.TYPE_QWORD end
end
gg.addListItems(g91)
gg.sleep("100")
g101 = gg.getResults("30")
for i, v in ipairs(g101) do
  v.address = v.address + httpData.wrcOfsets[6]
  if bit32 == true then v.flags = gg.TYPE_DWORD else v.flags = gg.TYPE_QWORD end
end
gg.addListItems(g101)
gg.sleep("100")
g111 = gg.getResults("30")
for i, v in ipairs(g111) do
  v.address = v.address + httpData.wrcOfsets[7]
  if bit32 == true then v.flags = gg.TYPE_DWORD else v.flags = gg.TYPE_QWORD end
end
gg.addListItems(g111)
g120 = gg.getListItems("80")
gg.clearResults()
gg.loadResults(g120)
gg.getResults("80")
if bit32 == true then gg.editAll("0",gg.TYPE_DWORD) else gg.editAll("0",gg.TYPE_QWORD) end
gg.clearResults()
gg.clearList()
gg.toast("\nSuccessfuly")
