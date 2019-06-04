-- Generated By protoc-gen-lua Do not Edit
local protobuf = require "protobuf"
module('st_shop_pb')


local PAYINFO = protobuf.Descriptor();
local PAYINFO_PAYID_FIELD = protobuf.FieldDescriptor();
local PAYINFO_DESCRIPTION_FIELD = protobuf.FieldDescriptor();
local PAYINFO_PAYMONEY_FIELD = protobuf.FieldDescriptor();
local PAYINFO_GETMONEY_FIELD = protobuf.FieldDescriptor();
local PAYINFO_ADDTYPE_FIELD = protobuf.FieldDescriptor();
local PAYINFO_ADDAMOUNT_FIELD = protobuf.FieldDescriptor();
local PAYINFO_ADDDES_FIELD = protobuf.FieldDescriptor();
local PAYINFO_ADDTIME_FIELD = protobuf.FieldDescriptor();
local BUYMONEYINFO = protobuf.Descriptor();
local BUYMONEYINFO_ORDERID_FIELD = protobuf.FieldDescriptor();
local BUYMONEYINFO_USERID_FIELD = protobuf.FieldDescriptor();
local BUYMONEYINFO_BUYID_FIELD = protobuf.FieldDescriptor();
local BUYMONEYINFO_TIMEID_FIELD = protobuf.FieldDescriptor();
local BUYMONEYINFO_STATUS_FIELD = protobuf.FieldDescriptor();
local BUYMONEYINFO_CHANNEL_FIELD = protobuf.FieldDescriptor();
local BUYMONEYINFO_SIGN_FIELD = protobuf.FieldDescriptor();
local BUYMONEYINFO_SHOPTYPE_FIELD = protobuf.FieldDescriptor();

PAYINFO_PAYID_FIELD.name = "payid"
PAYINFO_PAYID_FIELD.full_name = ".progame.payinfo.payid"
PAYINFO_PAYID_FIELD.number = 1
PAYINFO_PAYID_FIELD.index = 0
PAYINFO_PAYID_FIELD.label = 1
PAYINFO_PAYID_FIELD.has_default_value = false
PAYINFO_PAYID_FIELD.default_value = 0
PAYINFO_PAYID_FIELD.type = 5
PAYINFO_PAYID_FIELD.cpp_type = 1

PAYINFO_DESCRIPTION_FIELD.name = "description"
PAYINFO_DESCRIPTION_FIELD.full_name = ".progame.payinfo.description"
PAYINFO_DESCRIPTION_FIELD.number = 2
PAYINFO_DESCRIPTION_FIELD.index = 1
PAYINFO_DESCRIPTION_FIELD.label = 1
PAYINFO_DESCRIPTION_FIELD.has_default_value = false
PAYINFO_DESCRIPTION_FIELD.default_value = ""
PAYINFO_DESCRIPTION_FIELD.type = 9
PAYINFO_DESCRIPTION_FIELD.cpp_type = 9

PAYINFO_PAYMONEY_FIELD.name = "paymoney"
PAYINFO_PAYMONEY_FIELD.full_name = ".progame.payinfo.paymoney"
PAYINFO_PAYMONEY_FIELD.number = 3
PAYINFO_PAYMONEY_FIELD.index = 2
PAYINFO_PAYMONEY_FIELD.label = 1
PAYINFO_PAYMONEY_FIELD.has_default_value = false
PAYINFO_PAYMONEY_FIELD.default_value = 0
PAYINFO_PAYMONEY_FIELD.type = 5
PAYINFO_PAYMONEY_FIELD.cpp_type = 1

PAYINFO_GETMONEY_FIELD.name = "getmoney"
PAYINFO_GETMONEY_FIELD.full_name = ".progame.payinfo.getmoney"
PAYINFO_GETMONEY_FIELD.number = 4
PAYINFO_GETMONEY_FIELD.index = 3
PAYINFO_GETMONEY_FIELD.label = 1
PAYINFO_GETMONEY_FIELD.has_default_value = false
PAYINFO_GETMONEY_FIELD.default_value = 0
PAYINFO_GETMONEY_FIELD.type = 5
PAYINFO_GETMONEY_FIELD.cpp_type = 1

PAYINFO_ADDTYPE_FIELD.name = "addtype"
PAYINFO_ADDTYPE_FIELD.full_name = ".progame.payinfo.addtype"
PAYINFO_ADDTYPE_FIELD.number = 5
PAYINFO_ADDTYPE_FIELD.index = 4
PAYINFO_ADDTYPE_FIELD.label = 1
PAYINFO_ADDTYPE_FIELD.has_default_value = false
PAYINFO_ADDTYPE_FIELD.default_value = 0
PAYINFO_ADDTYPE_FIELD.type = 5
PAYINFO_ADDTYPE_FIELD.cpp_type = 1

PAYINFO_ADDAMOUNT_FIELD.name = "addamount"
PAYINFO_ADDAMOUNT_FIELD.full_name = ".progame.payinfo.addamount"
PAYINFO_ADDAMOUNT_FIELD.number = 6
PAYINFO_ADDAMOUNT_FIELD.index = 5
PAYINFO_ADDAMOUNT_FIELD.label = 1
PAYINFO_ADDAMOUNT_FIELD.has_default_value = false
PAYINFO_ADDAMOUNT_FIELD.default_value = 0
PAYINFO_ADDAMOUNT_FIELD.type = 5
PAYINFO_ADDAMOUNT_FIELD.cpp_type = 1

PAYINFO_ADDDES_FIELD.name = "adddes"
PAYINFO_ADDDES_FIELD.full_name = ".progame.payinfo.adddes"
PAYINFO_ADDDES_FIELD.number = 7
PAYINFO_ADDDES_FIELD.index = 6
PAYINFO_ADDDES_FIELD.label = 1
PAYINFO_ADDDES_FIELD.has_default_value = false
PAYINFO_ADDDES_FIELD.default_value = ""
PAYINFO_ADDDES_FIELD.type = 9
PAYINFO_ADDDES_FIELD.cpp_type = 9

PAYINFO_ADDTIME_FIELD.name = "addtime"
PAYINFO_ADDTIME_FIELD.full_name = ".progame.payinfo.addtime"
PAYINFO_ADDTIME_FIELD.number = 8
PAYINFO_ADDTIME_FIELD.index = 7
PAYINFO_ADDTIME_FIELD.label = 1
PAYINFO_ADDTIME_FIELD.has_default_value = false
PAYINFO_ADDTIME_FIELD.default_value = 0
PAYINFO_ADDTIME_FIELD.type = 5
PAYINFO_ADDTIME_FIELD.cpp_type = 1

PAYINFO.name = "payinfo"
PAYINFO.full_name = ".progame.payinfo"
PAYINFO.nested_types = {}
PAYINFO.enum_types = {}
PAYINFO.fields = {PAYINFO_PAYID_FIELD, PAYINFO_DESCRIPTION_FIELD, PAYINFO_PAYMONEY_FIELD, PAYINFO_GETMONEY_FIELD, PAYINFO_ADDTYPE_FIELD, PAYINFO_ADDAMOUNT_FIELD, PAYINFO_ADDDES_FIELD, PAYINFO_ADDTIME_FIELD}
PAYINFO.is_extendable = false
PAYINFO.extensions = {}
BUYMONEYINFO_ORDERID_FIELD.name = "orderid"
BUYMONEYINFO_ORDERID_FIELD.full_name = ".progame.buymoneyinfo.orderid"
BUYMONEYINFO_ORDERID_FIELD.number = 1
BUYMONEYINFO_ORDERID_FIELD.index = 0
BUYMONEYINFO_ORDERID_FIELD.label = 1
BUYMONEYINFO_ORDERID_FIELD.has_default_value = false
BUYMONEYINFO_ORDERID_FIELD.default_value = 0
BUYMONEYINFO_ORDERID_FIELD.type = 5
BUYMONEYINFO_ORDERID_FIELD.cpp_type = 1

BUYMONEYINFO_USERID_FIELD.name = "userid"
BUYMONEYINFO_USERID_FIELD.full_name = ".progame.buymoneyinfo.userid"
BUYMONEYINFO_USERID_FIELD.number = 2
BUYMONEYINFO_USERID_FIELD.index = 1
BUYMONEYINFO_USERID_FIELD.label = 1
BUYMONEYINFO_USERID_FIELD.has_default_value = false
BUYMONEYINFO_USERID_FIELD.default_value = 0
BUYMONEYINFO_USERID_FIELD.type = 5
BUYMONEYINFO_USERID_FIELD.cpp_type = 1

BUYMONEYINFO_BUYID_FIELD.name = "buyid"
BUYMONEYINFO_BUYID_FIELD.full_name = ".progame.buymoneyinfo.buyid"
BUYMONEYINFO_BUYID_FIELD.number = 3
BUYMONEYINFO_BUYID_FIELD.index = 2
BUYMONEYINFO_BUYID_FIELD.label = 1
BUYMONEYINFO_BUYID_FIELD.has_default_value = false
BUYMONEYINFO_BUYID_FIELD.default_value = 0
BUYMONEYINFO_BUYID_FIELD.type = 5
BUYMONEYINFO_BUYID_FIELD.cpp_type = 1

BUYMONEYINFO_TIMEID_FIELD.name = "timeid"
BUYMONEYINFO_TIMEID_FIELD.full_name = ".progame.buymoneyinfo.timeid"
BUYMONEYINFO_TIMEID_FIELD.number = 4
BUYMONEYINFO_TIMEID_FIELD.index = 3
BUYMONEYINFO_TIMEID_FIELD.label = 1
BUYMONEYINFO_TIMEID_FIELD.has_default_value = false
BUYMONEYINFO_TIMEID_FIELD.default_value = 0
BUYMONEYINFO_TIMEID_FIELD.type = 5
BUYMONEYINFO_TIMEID_FIELD.cpp_type = 1

BUYMONEYINFO_STATUS_FIELD.name = "status"
BUYMONEYINFO_STATUS_FIELD.full_name = ".progame.buymoneyinfo.status"
BUYMONEYINFO_STATUS_FIELD.number = 5
BUYMONEYINFO_STATUS_FIELD.index = 4
BUYMONEYINFO_STATUS_FIELD.label = 1
BUYMONEYINFO_STATUS_FIELD.has_default_value = false
BUYMONEYINFO_STATUS_FIELD.default_value = 0
BUYMONEYINFO_STATUS_FIELD.type = 5
BUYMONEYINFO_STATUS_FIELD.cpp_type = 1

BUYMONEYINFO_CHANNEL_FIELD.name = "channel"
BUYMONEYINFO_CHANNEL_FIELD.full_name = ".progame.buymoneyinfo.channel"
BUYMONEYINFO_CHANNEL_FIELD.number = 6
BUYMONEYINFO_CHANNEL_FIELD.index = 5
BUYMONEYINFO_CHANNEL_FIELD.label = 1
BUYMONEYINFO_CHANNEL_FIELD.has_default_value = false
BUYMONEYINFO_CHANNEL_FIELD.default_value = ""
BUYMONEYINFO_CHANNEL_FIELD.type = 9
BUYMONEYINFO_CHANNEL_FIELD.cpp_type = 9

BUYMONEYINFO_SIGN_FIELD.name = "sign"
BUYMONEYINFO_SIGN_FIELD.full_name = ".progame.buymoneyinfo.sign"
BUYMONEYINFO_SIGN_FIELD.number = 7
BUYMONEYINFO_SIGN_FIELD.index = 6
BUYMONEYINFO_SIGN_FIELD.label = 1
BUYMONEYINFO_SIGN_FIELD.has_default_value = false
BUYMONEYINFO_SIGN_FIELD.default_value = ""
BUYMONEYINFO_SIGN_FIELD.type = 9
BUYMONEYINFO_SIGN_FIELD.cpp_type = 9

BUYMONEYINFO_SHOPTYPE_FIELD.name = "shoptype"
BUYMONEYINFO_SHOPTYPE_FIELD.full_name = ".progame.buymoneyinfo.shoptype"
BUYMONEYINFO_SHOPTYPE_FIELD.number = 8
BUYMONEYINFO_SHOPTYPE_FIELD.index = 7
BUYMONEYINFO_SHOPTYPE_FIELD.label = 1
BUYMONEYINFO_SHOPTYPE_FIELD.has_default_value = false
BUYMONEYINFO_SHOPTYPE_FIELD.default_value = 0
BUYMONEYINFO_SHOPTYPE_FIELD.type = 5
BUYMONEYINFO_SHOPTYPE_FIELD.cpp_type = 1

BUYMONEYINFO.name = "buymoneyinfo"
BUYMONEYINFO.full_name = ".progame.buymoneyinfo"
BUYMONEYINFO.nested_types = {}
BUYMONEYINFO.enum_types = {}
BUYMONEYINFO.fields = {BUYMONEYINFO_ORDERID_FIELD, BUYMONEYINFO_USERID_FIELD, BUYMONEYINFO_BUYID_FIELD, BUYMONEYINFO_TIMEID_FIELD, BUYMONEYINFO_STATUS_FIELD, BUYMONEYINFO_CHANNEL_FIELD, BUYMONEYINFO_SIGN_FIELD, BUYMONEYINFO_SHOPTYPE_FIELD}
BUYMONEYINFO.is_extendable = false
BUYMONEYINFO.extensions = {}

buymoneyinfo = protobuf.Message(BUYMONEYINFO)
payinfo = protobuf.Message(PAYINFO)

----------nimol modify---------
ST_SHOP_PB_BUYMONEYINFO = BUYMONEYINFO
ST_SHOP_PB_PAYINFO = PAYINFO