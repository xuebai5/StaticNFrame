db_slot = {    ['id']={id=1,jettontype=2,awardrate=3,rand200=4,rand2000=5,rand20000=6,},    [1]={1,1,50,1800,1800,1800,},    [2]={2,1,200,700,700,700,},    [3]={3,1,1000,140,140,140,},    [4]={4,1,2000,70,70,70,},    [5]={5,1,4000,30,30,30,},    [6]={6,1,8000,15,15,15,},    [7]={7,2,20,7,7,7,},    [8]={8,2,30,5,5,5,},    [9]={9,2,50,3,3,3,},}function db_slot.GetValue(id, index)    local indexID = db_slot["id"][index]    if db_slot[id] == nil then return nil else return db_slot[id][indexID] endendfunction db_slot.GetItem(id)    return db_slot[id]enddb_slotIndex = db_slot["id"]