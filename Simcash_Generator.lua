-- Fixed some bugs
print("Discord: https://discord.com/invite/3BHekVBQUe")
print("Support me with patreon!: https://www.patreon.com/c/user?u=86903282")
print("Open source, Github project: https://github.com/SimpleCodeStudio/GG-SimCity-BuildIt-Trainer")
function Subtext(x) gg.toast("\n"..x) end
function valueNotFound() gg.alert("Searched value not found. Please ask this from developer. (SimpleCodeStudio)") return end
function Search(d,r) gg.clearResults(); gg.searchNumber(d, r); if gg.getResultsCount() == 0 then valueNotFound() end end
local getT2 = {}
function SimpleIncrementer() local increment = 1; for v = 1, getT2 do; local o = {}; gr=gg.getResults("500"); o[1]={}; o[1].address=gr[increment].address+0x0; o[1].flags=gg.TYPE_DWORD; o[1].value = gg.getResults("1")[1].value + increment; gg.addListItems(o); gg.setValues(o); increment = increment + 1 end end

sc = gg.prompt({"Achievements require:", "Simcash value:"})
if sc == nil then
  print("CANCEL")
  os.exit()
  else
  Subtext("Please Wait...")
  gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_OTHER)
  Search(sc[1]..";"..sc[2].."::8", gg.TYPE_DWORD)
  gg.refineNumber(sc[2])
  gg.sleep("100")
  getT2 = gg.getResultsCount()
  SimpleIncrementer()
  gg.clearList()
  gg.alert("Find correct value and edit with by yourself!")
  Subtext("Successfuly")
end
