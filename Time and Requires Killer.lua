

Subtext("Please Wait...")
gg.clearList()
gg.setRanges(gg.REGION_C_ALLOC)
Search(UP_A, gg.TYPE_BYTE)
if bit32 == true then FindPointer_v1(gg.TYPE_DWORD) else FindPointer_v1(gg.TYPE_QWORD) end
gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_OTHER)
if bit32 == true then if gg.getResultsCount() == 58 then FindPointer_v18(gg.TYPE_DWORD) else FindPointer_v17(gg.TYPE_DWORD) end else FindPointer_v18(gg.TYPE_QWORD) end
gg.sleep("200")
g3 = gg.getResults("125")
for i, v in ipairs(g3) do
  v.address = v.address + timeReseterOfsets[1]
  v.flags = gg.TYPE_DWORD
end
gg.addListItems(g3)
gg.sleep("200")
g4 = gg.getResults("125")
for i, v in ipairs(g4) do
  v.address = v.address + timeReseterOfsets[2]
  if bit32 == true then v.flags = gg.TYPE_DWORD else v.flags = gg.TYPE_QWORD end
end
gg.addListItems(g4)
gg.sleep("200")
g5 = gg.getResults("125")
for i, v in ipairs(g5) do
  v.address = v.address + timeReseterOfsets[3]
  if bit32 == true then v.flags = gg.TYPE_DWORD else v.flags = gg.TYPE_QWORD end
end
gg.addListItems(g5)
gg.sleep("200")
g6 = gg.getResults("125")
for i, v in ipairs(g6) do
  v.address = v.address + timeReseterOfsets[4]
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
