function Subtext(x) gg.toast("\n"..x) end
function valueNotFound() gg.alert("Searched value not found. Please ask this from developer. (SimpleCodeStudio)") return end
function Search(d,r) gg.clearResults(); gg.searchNumber(d, r); if gg.getResultsCount() == 0 then valueNotFound() end end
function FindPointer_v1(r) x=gg.getResults("1")[1].address; gg.clearResults(); gg.searchNumber(x, r) if gg.getResultsCount() == 0 then valueNotFound() end return end
function FindPointer_v15(r) x=gg.getResults("15")[15].address; gg.clearResults(); gg.searchNumber(x, r) if gg.getResultsCount() == 0 then valueNotFound() end return end

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

if bit32 == true then
  gg.alert("Sorry. 32 bit devices not supporting this function.")
else
  Subtext("Please Wait...")
  gg.setRanges(gg.REGION_C_ALLOC)
  Search(httpData.UP_A[1], gg.TYPE_BYTE)
  FindPointer_v1(gg.TYPE_QWORD)
  gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_OTHER)
  FindPointer_v15(gg.TYPE_QWORD)
  g846 = gg.getResults("2100")
  for i, v in ipairs(g846) do
    v.address = v.address + 0x328
    v.flags = gg.TYPE_DWORD
    v.value = 11300145
  end
  gg.sleep("200")
  gg.addListItems(g846)
  gg.setValues(g846)
  gg.clearResults()
  gg.clearList()
  Subtext("Successfuly")
end
