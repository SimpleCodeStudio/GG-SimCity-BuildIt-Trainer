function Subtext(x) gg.toast("\n"..x) end
function valueNotFound() gg.alert("Searched value not found. Please ask this from developer. (SimpleCodeStudio)") return end
function Search(d,r) gg.clearResults(); gg.searchNumber(d, r); if gg.getResultsCount() == 0 then valueNotFound() end end
function Refine(a) gg.refineNumber(a) end
function FindPointer_v1(r) x=gg.getResults("1")[1].address; gg.clearResults(); gg.searchNumber(x, r) if gg.getResultsCount() == 0 then valueNotFound() end return end
function FindPointer_v14(r) x=gg.getResults("14")[14].address; gg.clearResults(); gg.searchNumber(x, r) if gg.getResultsCount() == 0 then valueNotFound() end return end
function FindPointer_v15(r) x=gg.getResults("15")[15].address; gg.clearResults(); gg.searchNumber(x, r) if gg.getResultsCount() == 0 then valueNotFound() end return end
function Offset(of) local o={}; gr=gg.getResults("1"); o[1]={}; o[1].address=gr[1].address+of; o[1].flags=gg.TYPE_DWORD; gg.addListItems(o) end
function OffsetL(of) local o={}; gr=gg.getResults("1"); o[1]={}; o[1].address=gr[1].address+of; o[1].flags=gg.TYPE_QWORD; gg.addListItems(o) end
function OffsetLd(of) local o={}; gr=gg.getResults("1"); o[1]={}; o[1].address=gr[1].address+of; o[1].flags=gg.TYPE_DWORD; gg.addListItems(o) end

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

if bit32 == true then gg.alert("Warning 32 bit detected! This can be fail or success. Because this a beta function. Atleast i coded an error fixer function for help.") end
local wc40p1 = {}
local wc40p2 = {}
local wc40p3 = {}
gg.clearList()
gg.setRanges(gg.REGION_C_ALLOC)
Search(httpData.UP_A[1], gg.TYPE_BYTE)
if bit32 == true then FindPointer_v1(gg.TYPE_DWORD) else FindPointer_v1(gg.TYPE_QWORD) end
gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_OTHER)
if bit32 == true then FindPointer_v14(gg.TYPE_DWORD) else FindPointer_v15(gg.TYPE_QWORD) end
g32 = gg.getResults("2100")
for i, v in ipairs(g32) do
  v.address = v.address + httpData.wrcOfsets[14]
  if bit32 == true then v.flags = gg.TYPE_DWORD else v.flags = gg.TYPE_QWORD end
end
gg.addListItems(g32)
gg.clearResults()
g30 = gg.getListItems("2100")
gg.loadResults(g30)
Refine("101")
gg.clearList()
if bit32 == true then OffsetLd(httpData.wrcOfsets[15]) else OffsetL(httpData.wrcOfsets[15]) end
gg.sleep("200")
if gg.getListItems("1")[1].value == 0 then
  Subtext("Error found. Fixing...")
  gg.clearList()
  gg.getResults("1")
  gg.editAll("38",gg.TYPE_DWORD)
  Refine("101")
end
if bit32 == true then OffsetLd(httpData.wrcOfsets[15]) else OffsetL(httpData.wrcOfsets[15]) end
gg.sleep("200")
wc40p1 = gg.getListItems("1")[1].value
gg.sleep("100")
gg.clearList()
if bit32 == true then OffsetLd(httpData.wrcOfsets[16]) else OffsetL(httpData.wrcOfsets[16]) end
gg.sleep("200")
wc40p2 = gg.getListItems("1")[1].value
gg.sleep("100")
gg.clearList()
if bit32 == true then OffsetLd(httpData.wrcOfsets[17]) else OffsetL(httpData.wrcOfsets[17]) end
gg.sleep("200")
wc40p3 = gg.getListItems("1")[1].value
gg.sleep("100")
gg.clearList()
if warPt == true then
  Search(warP,gg.TYPE_DWORD)
  else
  Search("53;4;19;49;38::76",gg.TYPE_DWORD)
  gg.refineNumber("53")
  Offset(httpData.wrcOfsets[1])
  gg.sleep("100")
  warP = gg.getListItems("1")[1].value
  warPt = true
  Search(warP,gg.TYPE_DWORD)
end
gg.sleep("100")
gg.clearList()
g9 = gg.getResults("30")
for i, v in ipairs(g9) do
  v.address = v.address + httpData.wrcOfsets[5]
  if bit32 == true then v.flags = gg.TYPE_DWORD else v.flags = gg.TYPE_QWORD end
  v.value = wc40p1
end
gg.addListItems(g9)
gg.setValues(g9)
gg.sleep("100")
g10 = gg.getResults("30")
for i, v in ipairs(g10) do
  v.address = v.address + httpData.wrcOfsets[6]
  if bit32 == true then v.flags = gg.TYPE_DWORD else v.flags = gg.TYPE_QWORD end
  v.value = wc40p2
end
gg.addListItems(g10)
gg.setValues(g10)
gg.sleep("100")
g11 = gg.getResults("30")
for i, v in ipairs(g11) do
  v.address = v.address + httpData.wrcOfsets[7]
  if bit32 == true then v.flags = gg.TYPE_DWORD else v.flags = gg.TYPE_QWORD end
  v.value = wc40p3
end
gg.addListItems(g11)
gg.setValues(g11)
gg.clearResults()
gg.clearList()
Subtext("Successfuly")
