db_paygdmj = {    ['id']={id=1,description=2,paymoney=3,getmoney=4,extramoney=5,channel=6,remark=7,},    [1101]={1101,'10钻石',10,10,0,'ios_normal','',},    [1102]={1102,'18钻石',18,18,12,'ios_normal','',},    [1103]={1103,'30钻石',30,30,30,'ios_normal','',},    [1104]={1104,'68钻石',68,68,100,'ios_normal','',},    [1105]={1105,'128钻石',128,128,428,'ios_normal','',},    [1106]={1106,'328钻石',328,328,1300,'ios_normal','',},    [1201]={1201,'10钻石',10,10,0,'ios_normal','',},    [1202]={1202,'18钻石',18,18,2,'ios_normal','',},    [1203]={1203,'30钻石',30,30,12,'ios_normal','',},    [1204]={1204,'68钻石',68,68,30,'ios_normal','',},    [1205]={1205,'128钻石',128,128,100,'ios_normal','',},    [1206]={1206,'328钻石',328,328,328,'ios_normal','',},    [1301]={1301,'10钻石',10,10,0,'ios_normal','',},    [1302]={1302,'18钻石',18,18,0,'ios_normal','',},    [1303]={1303,'30钻石',30,30,0,'ios_normal','',},    [1304]={1304,'68钻石',68,68,0,'ios_normal','',},    [1305]={1305,'128钻石',128,128,0,'ios_normal','',},    [1306]={1306,'328钻石',328,328,0,'ios_normal','',},    [1401]={1401,'10钻石',10,10,0,'ios_normal','',},    [1402]={1402,'18钻石',30,30,6,'ios_normal','',},    [1403]={1403,'30钻石',50,50,20,'ios_normal','',},    [1404]={1404,'68钻石',100,100,50,'ios_normal','',},    [1405]={1405,'128钻石',200,200,120,'ios_normal','',},    [1406]={1406,'328钻石',500,500,500,'ios_normal','',},    [1501]={1501,'5钻石',10,5,0,'ios_normal','',},    [1502]={1502,'10钻石',20,10,0,'ios_normal','',},    [1503]={1503,'30钻石',60,30,0,'ios_normal','',},    [1504]={1504,'50钻石',100,50,0,'ios_normal','',},    [1505]={1505,'100钻石',200,100,0,'ios_normal','',},    [1506]={1506,'200钻石',400,200,0,'ios_normal','',},}function db_paygdmj.GetValue(id, index)    local indexID = db_paygdmj["id"][index]    if db_paygdmj[id] == nil then return nil else return db_paygdmj[id][indexID] endendfunction db_paygdmj.GetItem(id)    return db_paygdmj[id]enddb_paygdmjIndex = db_paygdmj["id"]