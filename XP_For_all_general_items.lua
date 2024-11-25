function Subtext(x) gg.toast("\n"..x) end
function Search(d,r) gg.clearResults(); gg.searchNumber(d, r); if gg.getResultsCount() == 0 then valueNotFound() end end
function valueNotFound() gg.alert("Searched value not found. Please ask this from developer. (SimpleCodeStudio)") return end
function FindPointer_v1(r) x=gg.getResults("1")[1].address; gg.clearResults(); gg.searchNumber(x, r) if gg.getResultsCount() == 0 then valueNotFound() end return end
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

if bit32 == true then
  gg.alert("Sorry. 32 bit devices not supporting this function.")
  os.exit()
  else
  p1 = gg.prompt({"XP Amount for all items:"})
  if p1 == nil then
      print("CANCEL")
      os.exit
    else
    Subtext("Please Wait...")
    gg.setRanges(gg.REGION_C_ALLOC)
    Search(httpData.UP_A[1], gg.TYPE_BYTE)
    FindPointer_v1(gg.TYPE_QWORD)
    gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_OTHER)
    FindPointer_v18(gg.TYPE_QWORD)
    g1 = gg.getResults("120")
    for i, v in ipairs(g1) do
      v.address = v.address + 0x1f8
      v.flags = gg.TYPE_DWORD
      v.value = p1[1]
    end
    gg.setVisible(false)
    XP = "X"
    gg.addListItems(g1)
    gg.setValues(g1)
    gg.clearResults()
    g2 = gg.getListItems("120")
    gg.loadResults(g2)
    Subtext("Successfuly")
    gg.alert("Simple Warning:\nIf you open GameGuardian, XP Amount function is will disable.")
  end
end

while true do
  if gg.isVisible(true) then
    gg.getResults("120")
    gg.editAll("0",gg.TYPE_DWORD)
    gg.clearResults()
    gg.clearList()
    print("XP Amount disabled.")
    os.exit()
  end
end
