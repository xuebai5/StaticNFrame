db_shopxwyx = {    ['id']={id=1,goodsid=2,name=3,category=4,description=5,moneytype1=6,price1=7,moneytype2=8,price2=9,amount=10,isexist=11,sortid=12,limittype=13,limitamount=14,},    [101]={101,1002,'3万金币',1,'购买金币',1001,3,0,0,30000,1,100,0,-1,},    [102]={102,1002,'5万金币',1,'购买金币',1001,5,0,0,50000,1,99,0,-1,},    [103]={103,1002,'20万金币',1,'购买金币',1001,20,0,0,200000,1,98,0,-1,},}function db_shopxwyx.GetValue(id, index)    local indexID = db_shopxwyx["id"][index]    if db_shopxwyx[id] == nil then return nil else return db_shopxwyx[id][indexID] endendfunction db_shopxwyx.GetItem(id)    return db_shopxwyx[id]enddb_shopxwyxIndex = db_shopxwyx["id"]