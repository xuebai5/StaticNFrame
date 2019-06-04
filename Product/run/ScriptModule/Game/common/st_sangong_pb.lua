-- Generated By protoc-gen-lua Do not Edit
local protobuf = require "protobuf"
local st_human_pb = require("st_human_pb")
module('st_sangong_pb')


local SANGONGUSER = protobuf.Descriptor();
local SANGONGUSER_USERID_FIELD = protobuf.FieldDescriptor();
local SANGONGUSER_CHAIRID_FIELD = protobuf.FieldDescriptor();
local SANGONGUSER_CARDLIST_FIELD = protobuf.FieldDescriptor();
local SANGONGUSER_STATUS_FIELD = protobuf.FieldDescriptor();
local SANGONGUSER_JIFEN_FIELD = protobuf.FieldDescriptor();
local SANGONGUSER_POURBEI_FIELD = protobuf.FieldDescriptor();
local SANGONGUSER_WINCOUNT_FIELD = protobuf.FieldDescriptor();
local SANGONGUSER_MAXTYPE_FIELD = protobuf.FieldDescriptor();
local SANGONGUSER_CARDTYPE_FIELD = protobuf.FieldDescriptor();
local SANGONGUSER_BANKEROPT_FIELD = protobuf.FieldDescriptor();
local SANGONGUSER_SANGONGCOUNT_FIELD = protobuf.FieldDescriptor();
local SANGONGUSER_BAOJIUCOUNT_FIELD = protobuf.FieldDescriptor();
local SANGONGUSER_ZHUANGCOUNT_FIELD = protobuf.FieldDescriptor();
local SANGONGINFO = protobuf.Descriptor();
local SANGONGINFO_TABLEID_FIELD = protobuf.FieldDescriptor();
local SANGONGINFO_TABLETYPE_FIELD = protobuf.FieldDescriptor();
local SANGONGINFO_PLAYNUM_FIELD = protobuf.FieldDescriptor();
local SANGONGINFO_DIFEN_FIELD = protobuf.FieldDescriptor();
local SANGONGINFO_SGTYPE_FIELD = protobuf.FieldDescriptor();
local SANGONGINFO_STATE_FIELD = protobuf.FieldDescriptor();
local SANGONGINFO_TIMEMARK_FIELD = protobuf.FieldDescriptor();
local SANGONGINFO_SITUSER_FIELD = protobuf.FieldDescriptor();
local SANGONGINFO_STANDUSER_FIELD = protobuf.FieldDescriptor();
local SANGONGINFO_USERNUM_FIELD = protobuf.FieldDescriptor();
local SANGONGINFO_BANKERID_FIELD = protobuf.FieldDescriptor();
local SANGONGINFO_MAXPLAYNUM_FIELD = protobuf.FieldDescriptor();
local SANGONGINFO_MAXUSER_FIELD = protobuf.FieldDescriptor();
local SANGONGINFO_POKERLIST_FIELD = protobuf.FieldDescriptor();
local SANGONGINFO_OWNERID_FIELD = protobuf.FieldDescriptor();
local SANGONGINFO_MOVERID_FIELD = protobuf.FieldDescriptor();
local SANGONGINFO_BINDEX_FIELD = protobuf.FieldDescriptor();
local SANGONGINFO_DISSOLVEINFO_FIELD = protobuf.FieldDescriptor();
local SANGONGINFO_PAYWAY_FIELD = protobuf.FieldDescriptor();
local SANGONGINFO_PAYNUM_FIELD = protobuf.FieldDescriptor();
local SANGONGINFO_ZHUANGTYPE_FIELD = protobuf.FieldDescriptor();
local SANGONGINFO_TABLEMARK_FIELD = protobuf.FieldDescriptor();
local SANGONGINFO_MOSHI_FIELD = protobuf.FieldDescriptor();
local SANGONGINFO_READYUSER_FIELD = protobuf.FieldDescriptor();
local SANGONGINFO_PAYTYPE_FIELD = protobuf.FieldDescriptor();
local SANGONGINFO_JULEBUID_FIELD = protobuf.FieldDescriptor();
local SANGONGHTYUSER = protobuf.Descriptor();
local SANGONGHTYUSER_USERID_FIELD = protobuf.FieldDescriptor();
local SANGONGHTYUSER_NICKNAME_FIELD = protobuf.FieldDescriptor();
local SANGONGHTYUSER_FACEID_FIELD = protobuf.FieldDescriptor();
local SANGONGHTYUSER_CARDTYPE_FIELD = protobuf.FieldDescriptor();
local SANGONGHTYUSER_CARDLIST_FIELD = protobuf.FieldDescriptor();
local SANGONGHTYUSER_WINJIFEN_FIELD = protobuf.FieldDescriptor();
local SANGONGHTYUSER_ALLJIFEN_FIELD = protobuf.FieldDescriptor();
local SANGONGHTYINFO = protobuf.Descriptor();
local SANGONGHTYINFO_FRAMEID_FIELD = protobuf.FieldDescriptor();
local SANGONGHTYINFO_HTYUSRLIST_FIELD = protobuf.FieldDescriptor();
local SANGONGHISTORY = protobuf.Descriptor();
local SANGONGHISTORY_TABLEID_FIELD = protobuf.FieldDescriptor();
local SANGONGHISTORY_OWNERNAME_FIELD = protobuf.FieldDescriptor();
local SANGONGHISTORY_TIMESTR_FIELD = protobuf.FieldDescriptor();
local SANGONGHISTORY_USEVIPNUM_FIELD = protobuf.FieldDescriptor();
local SANGONGHISTORY_OWNERFACEID_FIELD = protobuf.FieldDescriptor();
local SANGONGHISTORY_HTYLIST_FIELD = protobuf.FieldDescriptor();

SANGONGUSER_USERID_FIELD.name = "userid"
SANGONGUSER_USERID_FIELD.full_name = ".progame.sangonguser.userid"
SANGONGUSER_USERID_FIELD.number = 1
SANGONGUSER_USERID_FIELD.index = 0
SANGONGUSER_USERID_FIELD.label = 1
SANGONGUSER_USERID_FIELD.has_default_value = false
SANGONGUSER_USERID_FIELD.default_value = 0
SANGONGUSER_USERID_FIELD.type = 5
SANGONGUSER_USERID_FIELD.cpp_type = 1

SANGONGUSER_CHAIRID_FIELD.name = "chairid"
SANGONGUSER_CHAIRID_FIELD.full_name = ".progame.sangonguser.chairid"
SANGONGUSER_CHAIRID_FIELD.number = 2
SANGONGUSER_CHAIRID_FIELD.index = 1
SANGONGUSER_CHAIRID_FIELD.label = 1
SANGONGUSER_CHAIRID_FIELD.has_default_value = false
SANGONGUSER_CHAIRID_FIELD.default_value = 0
SANGONGUSER_CHAIRID_FIELD.type = 5
SANGONGUSER_CHAIRID_FIELD.cpp_type = 1

SANGONGUSER_CARDLIST_FIELD.name = "cardlist"
SANGONGUSER_CARDLIST_FIELD.full_name = ".progame.sangonguser.cardlist"
SANGONGUSER_CARDLIST_FIELD.number = 3
SANGONGUSER_CARDLIST_FIELD.index = 2
SANGONGUSER_CARDLIST_FIELD.label = 3
SANGONGUSER_CARDLIST_FIELD.has_default_value = false
SANGONGUSER_CARDLIST_FIELD.default_value = {}
SANGONGUSER_CARDLIST_FIELD.type = 5
SANGONGUSER_CARDLIST_FIELD.cpp_type = 1

SANGONGUSER_STATUS_FIELD.name = "status"
SANGONGUSER_STATUS_FIELD.full_name = ".progame.sangonguser.status"
SANGONGUSER_STATUS_FIELD.number = 4
SANGONGUSER_STATUS_FIELD.index = 3
SANGONGUSER_STATUS_FIELD.label = 1
SANGONGUSER_STATUS_FIELD.has_default_value = false
SANGONGUSER_STATUS_FIELD.default_value = 0
SANGONGUSER_STATUS_FIELD.type = 5
SANGONGUSER_STATUS_FIELD.cpp_type = 1

SANGONGUSER_JIFEN_FIELD.name = "jifen"
SANGONGUSER_JIFEN_FIELD.full_name = ".progame.sangonguser.jifen"
SANGONGUSER_JIFEN_FIELD.number = 5
SANGONGUSER_JIFEN_FIELD.index = 4
SANGONGUSER_JIFEN_FIELD.label = 1
SANGONGUSER_JIFEN_FIELD.has_default_value = false
SANGONGUSER_JIFEN_FIELD.default_value = 0
SANGONGUSER_JIFEN_FIELD.type = 5
SANGONGUSER_JIFEN_FIELD.cpp_type = 1

SANGONGUSER_POURBEI_FIELD.name = "pourbei"
SANGONGUSER_POURBEI_FIELD.full_name = ".progame.sangonguser.pourbei"
SANGONGUSER_POURBEI_FIELD.number = 6
SANGONGUSER_POURBEI_FIELD.index = 5
SANGONGUSER_POURBEI_FIELD.label = 1
SANGONGUSER_POURBEI_FIELD.has_default_value = false
SANGONGUSER_POURBEI_FIELD.default_value = 0
SANGONGUSER_POURBEI_FIELD.type = 5
SANGONGUSER_POURBEI_FIELD.cpp_type = 1

SANGONGUSER_WINCOUNT_FIELD.name = "wincount"
SANGONGUSER_WINCOUNT_FIELD.full_name = ".progame.sangonguser.wincount"
SANGONGUSER_WINCOUNT_FIELD.number = 7
SANGONGUSER_WINCOUNT_FIELD.index = 6
SANGONGUSER_WINCOUNT_FIELD.label = 1
SANGONGUSER_WINCOUNT_FIELD.has_default_value = false
SANGONGUSER_WINCOUNT_FIELD.default_value = 0
SANGONGUSER_WINCOUNT_FIELD.type = 5
SANGONGUSER_WINCOUNT_FIELD.cpp_type = 1

SANGONGUSER_MAXTYPE_FIELD.name = "maxtype"
SANGONGUSER_MAXTYPE_FIELD.full_name = ".progame.sangonguser.maxtype"
SANGONGUSER_MAXTYPE_FIELD.number = 9
SANGONGUSER_MAXTYPE_FIELD.index = 7
SANGONGUSER_MAXTYPE_FIELD.label = 1
SANGONGUSER_MAXTYPE_FIELD.has_default_value = false
SANGONGUSER_MAXTYPE_FIELD.default_value = 0
SANGONGUSER_MAXTYPE_FIELD.type = 5
SANGONGUSER_MAXTYPE_FIELD.cpp_type = 1

SANGONGUSER_CARDTYPE_FIELD.name = "cardtype"
SANGONGUSER_CARDTYPE_FIELD.full_name = ".progame.sangonguser.cardtype"
SANGONGUSER_CARDTYPE_FIELD.number = 10
SANGONGUSER_CARDTYPE_FIELD.index = 8
SANGONGUSER_CARDTYPE_FIELD.label = 1
SANGONGUSER_CARDTYPE_FIELD.has_default_value = false
SANGONGUSER_CARDTYPE_FIELD.default_value = 0
SANGONGUSER_CARDTYPE_FIELD.type = 5
SANGONGUSER_CARDTYPE_FIELD.cpp_type = 1

SANGONGUSER_BANKEROPT_FIELD.name = "bankeropt"
SANGONGUSER_BANKEROPT_FIELD.full_name = ".progame.sangonguser.bankeropt"
SANGONGUSER_BANKEROPT_FIELD.number = 11
SANGONGUSER_BANKEROPT_FIELD.index = 9
SANGONGUSER_BANKEROPT_FIELD.label = 1
SANGONGUSER_BANKEROPT_FIELD.has_default_value = false
SANGONGUSER_BANKEROPT_FIELD.default_value = 0
SANGONGUSER_BANKEROPT_FIELD.type = 5
SANGONGUSER_BANKEROPT_FIELD.cpp_type = 1

SANGONGUSER_SANGONGCOUNT_FIELD.name = "sangongcount"
SANGONGUSER_SANGONGCOUNT_FIELD.full_name = ".progame.sangonguser.sangongcount"
SANGONGUSER_SANGONGCOUNT_FIELD.number = 12
SANGONGUSER_SANGONGCOUNT_FIELD.index = 10
SANGONGUSER_SANGONGCOUNT_FIELD.label = 1
SANGONGUSER_SANGONGCOUNT_FIELD.has_default_value = false
SANGONGUSER_SANGONGCOUNT_FIELD.default_value = 0
SANGONGUSER_SANGONGCOUNT_FIELD.type = 5
SANGONGUSER_SANGONGCOUNT_FIELD.cpp_type = 1

SANGONGUSER_BAOJIUCOUNT_FIELD.name = "baojiucount"
SANGONGUSER_BAOJIUCOUNT_FIELD.full_name = ".progame.sangonguser.baojiucount"
SANGONGUSER_BAOJIUCOUNT_FIELD.number = 13
SANGONGUSER_BAOJIUCOUNT_FIELD.index = 11
SANGONGUSER_BAOJIUCOUNT_FIELD.label = 1
SANGONGUSER_BAOJIUCOUNT_FIELD.has_default_value = false
SANGONGUSER_BAOJIUCOUNT_FIELD.default_value = 0
SANGONGUSER_BAOJIUCOUNT_FIELD.type = 5
SANGONGUSER_BAOJIUCOUNT_FIELD.cpp_type = 1

SANGONGUSER_ZHUANGCOUNT_FIELD.name = "zhuangcount"
SANGONGUSER_ZHUANGCOUNT_FIELD.full_name = ".progame.sangonguser.zhuangcount"
SANGONGUSER_ZHUANGCOUNT_FIELD.number = 14
SANGONGUSER_ZHUANGCOUNT_FIELD.index = 12
SANGONGUSER_ZHUANGCOUNT_FIELD.label = 1
SANGONGUSER_ZHUANGCOUNT_FIELD.has_default_value = false
SANGONGUSER_ZHUANGCOUNT_FIELD.default_value = 0
SANGONGUSER_ZHUANGCOUNT_FIELD.type = 5
SANGONGUSER_ZHUANGCOUNT_FIELD.cpp_type = 1

SANGONGUSER.name = "sangonguser"
SANGONGUSER.full_name = ".progame.sangonguser"
SANGONGUSER.nested_types = {}
SANGONGUSER.enum_types = {}
SANGONGUSER.fields = {SANGONGUSER_USERID_FIELD, SANGONGUSER_CHAIRID_FIELD, SANGONGUSER_CARDLIST_FIELD, SANGONGUSER_STATUS_FIELD, SANGONGUSER_JIFEN_FIELD, SANGONGUSER_POURBEI_FIELD, SANGONGUSER_WINCOUNT_FIELD, SANGONGUSER_MAXTYPE_FIELD, SANGONGUSER_CARDTYPE_FIELD, SANGONGUSER_BANKEROPT_FIELD, SANGONGUSER_SANGONGCOUNT_FIELD, SANGONGUSER_BAOJIUCOUNT_FIELD, SANGONGUSER_ZHUANGCOUNT_FIELD}
SANGONGUSER.is_extendable = false
SANGONGUSER.extensions = {}
SANGONGINFO_TABLEID_FIELD.name = "tableid"
SANGONGINFO_TABLEID_FIELD.full_name = ".progame.sangonginfo.tableid"
SANGONGINFO_TABLEID_FIELD.number = 1
SANGONGINFO_TABLEID_FIELD.index = 0
SANGONGINFO_TABLEID_FIELD.label = 1
SANGONGINFO_TABLEID_FIELD.has_default_value = false
SANGONGINFO_TABLEID_FIELD.default_value = 0
SANGONGINFO_TABLEID_FIELD.type = 5
SANGONGINFO_TABLEID_FIELD.cpp_type = 1

SANGONGINFO_TABLETYPE_FIELD.name = "tabletype"
SANGONGINFO_TABLETYPE_FIELD.full_name = ".progame.sangonginfo.tabletype"
SANGONGINFO_TABLETYPE_FIELD.number = 2
SANGONGINFO_TABLETYPE_FIELD.index = 1
SANGONGINFO_TABLETYPE_FIELD.label = 1
SANGONGINFO_TABLETYPE_FIELD.has_default_value = false
SANGONGINFO_TABLETYPE_FIELD.default_value = 0
SANGONGINFO_TABLETYPE_FIELD.type = 5
SANGONGINFO_TABLETYPE_FIELD.cpp_type = 1

SANGONGINFO_PLAYNUM_FIELD.name = "playnum"
SANGONGINFO_PLAYNUM_FIELD.full_name = ".progame.sangonginfo.playnum"
SANGONGINFO_PLAYNUM_FIELD.number = 3
SANGONGINFO_PLAYNUM_FIELD.index = 2
SANGONGINFO_PLAYNUM_FIELD.label = 1
SANGONGINFO_PLAYNUM_FIELD.has_default_value = false
SANGONGINFO_PLAYNUM_FIELD.default_value = 0
SANGONGINFO_PLAYNUM_FIELD.type = 5
SANGONGINFO_PLAYNUM_FIELD.cpp_type = 1

SANGONGINFO_DIFEN_FIELD.name = "difen"
SANGONGINFO_DIFEN_FIELD.full_name = ".progame.sangonginfo.difen"
SANGONGINFO_DIFEN_FIELD.number = 4
SANGONGINFO_DIFEN_FIELD.index = 3
SANGONGINFO_DIFEN_FIELD.label = 1
SANGONGINFO_DIFEN_FIELD.has_default_value = false
SANGONGINFO_DIFEN_FIELD.default_value = 0
SANGONGINFO_DIFEN_FIELD.type = 5
SANGONGINFO_DIFEN_FIELD.cpp_type = 1

SANGONGINFO_SGTYPE_FIELD.name = "sgtype"
SANGONGINFO_SGTYPE_FIELD.full_name = ".progame.sangonginfo.sgtype"
SANGONGINFO_SGTYPE_FIELD.number = 5
SANGONGINFO_SGTYPE_FIELD.index = 4
SANGONGINFO_SGTYPE_FIELD.label = 1
SANGONGINFO_SGTYPE_FIELD.has_default_value = false
SANGONGINFO_SGTYPE_FIELD.default_value = 0
SANGONGINFO_SGTYPE_FIELD.type = 5
SANGONGINFO_SGTYPE_FIELD.cpp_type = 1

SANGONGINFO_STATE_FIELD.name = "state"
SANGONGINFO_STATE_FIELD.full_name = ".progame.sangonginfo.state"
SANGONGINFO_STATE_FIELD.number = 6
SANGONGINFO_STATE_FIELD.index = 5
SANGONGINFO_STATE_FIELD.label = 1
SANGONGINFO_STATE_FIELD.has_default_value = false
SANGONGINFO_STATE_FIELD.default_value = 0
SANGONGINFO_STATE_FIELD.type = 5
SANGONGINFO_STATE_FIELD.cpp_type = 1

SANGONGINFO_TIMEMARK_FIELD.name = "timemark"
SANGONGINFO_TIMEMARK_FIELD.full_name = ".progame.sangonginfo.timemark"
SANGONGINFO_TIMEMARK_FIELD.number = 7
SANGONGINFO_TIMEMARK_FIELD.index = 6
SANGONGINFO_TIMEMARK_FIELD.label = 1
SANGONGINFO_TIMEMARK_FIELD.has_default_value = false
SANGONGINFO_TIMEMARK_FIELD.default_value = 0
SANGONGINFO_TIMEMARK_FIELD.type = 5
SANGONGINFO_TIMEMARK_FIELD.cpp_type = 1

SANGONGINFO_SITUSER_FIELD.name = "situser"
SANGONGINFO_SITUSER_FIELD.full_name = ".progame.sangonginfo.situser"
SANGONGINFO_SITUSER_FIELD.number = 8
SANGONGINFO_SITUSER_FIELD.index = 7
SANGONGINFO_SITUSER_FIELD.label = 3
SANGONGINFO_SITUSER_FIELD.has_default_value = false
SANGONGINFO_SITUSER_FIELD.default_value = {}
SANGONGINFO_SITUSER_FIELD.message_type = SANGONGUSER
SANGONGINFO_SITUSER_FIELD.type = 11
SANGONGINFO_SITUSER_FIELD.cpp_type = 10

SANGONGINFO_STANDUSER_FIELD.name = "standuser"
SANGONGINFO_STANDUSER_FIELD.full_name = ".progame.sangonginfo.standuser"
SANGONGINFO_STANDUSER_FIELD.number = 10
SANGONGINFO_STANDUSER_FIELD.index = 8
SANGONGINFO_STANDUSER_FIELD.label = 3
SANGONGINFO_STANDUSER_FIELD.has_default_value = false
SANGONGINFO_STANDUSER_FIELD.default_value = {}
SANGONGINFO_STANDUSER_FIELD.type = 5
SANGONGINFO_STANDUSER_FIELD.cpp_type = 1

SANGONGINFO_USERNUM_FIELD.name = "usernum"
SANGONGINFO_USERNUM_FIELD.full_name = ".progame.sangonginfo.usernum"
SANGONGINFO_USERNUM_FIELD.number = 11
SANGONGINFO_USERNUM_FIELD.index = 9
SANGONGINFO_USERNUM_FIELD.label = 1
SANGONGINFO_USERNUM_FIELD.has_default_value = false
SANGONGINFO_USERNUM_FIELD.default_value = 0
SANGONGINFO_USERNUM_FIELD.type = 5
SANGONGINFO_USERNUM_FIELD.cpp_type = 1

SANGONGINFO_BANKERID_FIELD.name = "bankerid"
SANGONGINFO_BANKERID_FIELD.full_name = ".progame.sangonginfo.bankerid"
SANGONGINFO_BANKERID_FIELD.number = 12
SANGONGINFO_BANKERID_FIELD.index = 10
SANGONGINFO_BANKERID_FIELD.label = 1
SANGONGINFO_BANKERID_FIELD.has_default_value = false
SANGONGINFO_BANKERID_FIELD.default_value = 0
SANGONGINFO_BANKERID_FIELD.type = 5
SANGONGINFO_BANKERID_FIELD.cpp_type = 1

SANGONGINFO_MAXPLAYNUM_FIELD.name = "maxplaynum"
SANGONGINFO_MAXPLAYNUM_FIELD.full_name = ".progame.sangonginfo.maxplaynum"
SANGONGINFO_MAXPLAYNUM_FIELD.number = 13
SANGONGINFO_MAXPLAYNUM_FIELD.index = 11
SANGONGINFO_MAXPLAYNUM_FIELD.label = 1
SANGONGINFO_MAXPLAYNUM_FIELD.has_default_value = false
SANGONGINFO_MAXPLAYNUM_FIELD.default_value = 0
SANGONGINFO_MAXPLAYNUM_FIELD.type = 5
SANGONGINFO_MAXPLAYNUM_FIELD.cpp_type = 1

SANGONGINFO_MAXUSER_FIELD.name = "maxuser"
SANGONGINFO_MAXUSER_FIELD.full_name = ".progame.sangonginfo.maxuser"
SANGONGINFO_MAXUSER_FIELD.number = 14
SANGONGINFO_MAXUSER_FIELD.index = 12
SANGONGINFO_MAXUSER_FIELD.label = 1
SANGONGINFO_MAXUSER_FIELD.has_default_value = false
SANGONGINFO_MAXUSER_FIELD.default_value = 0
SANGONGINFO_MAXUSER_FIELD.type = 5
SANGONGINFO_MAXUSER_FIELD.cpp_type = 1

SANGONGINFO_POKERLIST_FIELD.name = "pokerlist"
SANGONGINFO_POKERLIST_FIELD.full_name = ".progame.sangonginfo.pokerlist"
SANGONGINFO_POKERLIST_FIELD.number = 15
SANGONGINFO_POKERLIST_FIELD.index = 13
SANGONGINFO_POKERLIST_FIELD.label = 3
SANGONGINFO_POKERLIST_FIELD.has_default_value = false
SANGONGINFO_POKERLIST_FIELD.default_value = {}
SANGONGINFO_POKERLIST_FIELD.type = 5
SANGONGINFO_POKERLIST_FIELD.cpp_type = 1

SANGONGINFO_OWNERID_FIELD.name = "ownerid"
SANGONGINFO_OWNERID_FIELD.full_name = ".progame.sangonginfo.ownerid"
SANGONGINFO_OWNERID_FIELD.number = 16
SANGONGINFO_OWNERID_FIELD.index = 14
SANGONGINFO_OWNERID_FIELD.label = 1
SANGONGINFO_OWNERID_FIELD.has_default_value = false
SANGONGINFO_OWNERID_FIELD.default_value = 0
SANGONGINFO_OWNERID_FIELD.type = 5
SANGONGINFO_OWNERID_FIELD.cpp_type = 1

SANGONGINFO_MOVERID_FIELD.name = "moverid"
SANGONGINFO_MOVERID_FIELD.full_name = ".progame.sangonginfo.moverid"
SANGONGINFO_MOVERID_FIELD.number = 17
SANGONGINFO_MOVERID_FIELD.index = 15
SANGONGINFO_MOVERID_FIELD.label = 1
SANGONGINFO_MOVERID_FIELD.has_default_value = false
SANGONGINFO_MOVERID_FIELD.default_value = 0
SANGONGINFO_MOVERID_FIELD.type = 5
SANGONGINFO_MOVERID_FIELD.cpp_type = 1

SANGONGINFO_BINDEX_FIELD.name = "bindex"
SANGONGINFO_BINDEX_FIELD.full_name = ".progame.sangonginfo.bindex"
SANGONGINFO_BINDEX_FIELD.number = 18
SANGONGINFO_BINDEX_FIELD.index = 16
SANGONGINFO_BINDEX_FIELD.label = 1
SANGONGINFO_BINDEX_FIELD.has_default_value = false
SANGONGINFO_BINDEX_FIELD.default_value = 0
SANGONGINFO_BINDEX_FIELD.type = 5
SANGONGINFO_BINDEX_FIELD.cpp_type = 1

SANGONGINFO_DISSOLVEINFO_FIELD.name = "dissolveinfo"
SANGONGINFO_DISSOLVEINFO_FIELD.full_name = ".progame.sangonginfo.dissolveinfo"
SANGONGINFO_DISSOLVEINFO_FIELD.number = 19
SANGONGINFO_DISSOLVEINFO_FIELD.index = 17
SANGONGINFO_DISSOLVEINFO_FIELD.label = 1
SANGONGINFO_DISSOLVEINFO_FIELD.has_default_value = false
SANGONGINFO_DISSOLVEINFO_FIELD.default_value = 0
SANGONGINFO_DISSOLVEINFO_FIELD.type = 5
SANGONGINFO_DISSOLVEINFO_FIELD.cpp_type = 1

SANGONGINFO_PAYWAY_FIELD.name = "payway"
SANGONGINFO_PAYWAY_FIELD.full_name = ".progame.sangonginfo.payway"
SANGONGINFO_PAYWAY_FIELD.number = 20
SANGONGINFO_PAYWAY_FIELD.index = 18
SANGONGINFO_PAYWAY_FIELD.label = 1
SANGONGINFO_PAYWAY_FIELD.has_default_value = false
SANGONGINFO_PAYWAY_FIELD.default_value = 0
SANGONGINFO_PAYWAY_FIELD.type = 5
SANGONGINFO_PAYWAY_FIELD.cpp_type = 1

SANGONGINFO_PAYNUM_FIELD.name = "paynum"
SANGONGINFO_PAYNUM_FIELD.full_name = ".progame.sangonginfo.paynum"
SANGONGINFO_PAYNUM_FIELD.number = 21
SANGONGINFO_PAYNUM_FIELD.index = 19
SANGONGINFO_PAYNUM_FIELD.label = 1
SANGONGINFO_PAYNUM_FIELD.has_default_value = false
SANGONGINFO_PAYNUM_FIELD.default_value = 0
SANGONGINFO_PAYNUM_FIELD.type = 5
SANGONGINFO_PAYNUM_FIELD.cpp_type = 1

SANGONGINFO_ZHUANGTYPE_FIELD.name = "zhuangtype"
SANGONGINFO_ZHUANGTYPE_FIELD.full_name = ".progame.sangonginfo.zhuangtype"
SANGONGINFO_ZHUANGTYPE_FIELD.number = 22
SANGONGINFO_ZHUANGTYPE_FIELD.index = 20
SANGONGINFO_ZHUANGTYPE_FIELD.label = 1
SANGONGINFO_ZHUANGTYPE_FIELD.has_default_value = false
SANGONGINFO_ZHUANGTYPE_FIELD.default_value = 0
SANGONGINFO_ZHUANGTYPE_FIELD.type = 5
SANGONGINFO_ZHUANGTYPE_FIELD.cpp_type = 1

SANGONGINFO_TABLEMARK_FIELD.name = "tablemark"
SANGONGINFO_TABLEMARK_FIELD.full_name = ".progame.sangonginfo.tablemark"
SANGONGINFO_TABLEMARK_FIELD.number = 23
SANGONGINFO_TABLEMARK_FIELD.index = 21
SANGONGINFO_TABLEMARK_FIELD.label = 1
SANGONGINFO_TABLEMARK_FIELD.has_default_value = false
SANGONGINFO_TABLEMARK_FIELD.default_value = 0
SANGONGINFO_TABLEMARK_FIELD.type = 5
SANGONGINFO_TABLEMARK_FIELD.cpp_type = 1

SANGONGINFO_MOSHI_FIELD.name = "moshi"
SANGONGINFO_MOSHI_FIELD.full_name = ".progame.sangonginfo.moshi"
SANGONGINFO_MOSHI_FIELD.number = 24
SANGONGINFO_MOSHI_FIELD.index = 22
SANGONGINFO_MOSHI_FIELD.label = 1
SANGONGINFO_MOSHI_FIELD.has_default_value = false
SANGONGINFO_MOSHI_FIELD.default_value = 0
SANGONGINFO_MOSHI_FIELD.type = 5
SANGONGINFO_MOSHI_FIELD.cpp_type = 1

SANGONGINFO_READYUSER_FIELD.name = "readyuser"
SANGONGINFO_READYUSER_FIELD.full_name = ".progame.sangonginfo.readyuser"
SANGONGINFO_READYUSER_FIELD.number = 25
SANGONGINFO_READYUSER_FIELD.index = 23
SANGONGINFO_READYUSER_FIELD.label = 3
SANGONGINFO_READYUSER_FIELD.has_default_value = false
SANGONGINFO_READYUSER_FIELD.default_value = {}
SANGONGINFO_READYUSER_FIELD.type = 5
SANGONGINFO_READYUSER_FIELD.cpp_type = 1

SANGONGINFO_PAYTYPE_FIELD.name = "paytype"
SANGONGINFO_PAYTYPE_FIELD.full_name = ".progame.sangonginfo.paytype"
SANGONGINFO_PAYTYPE_FIELD.number = 26
SANGONGINFO_PAYTYPE_FIELD.index = 24
SANGONGINFO_PAYTYPE_FIELD.label = 1
SANGONGINFO_PAYTYPE_FIELD.has_default_value = false
SANGONGINFO_PAYTYPE_FIELD.default_value = 0
SANGONGINFO_PAYTYPE_FIELD.type = 5
SANGONGINFO_PAYTYPE_FIELD.cpp_type = 1

SANGONGINFO_JULEBUID_FIELD.name = "julebuid"
SANGONGINFO_JULEBUID_FIELD.full_name = ".progame.sangonginfo.julebuid"
SANGONGINFO_JULEBUID_FIELD.number = 27
SANGONGINFO_JULEBUID_FIELD.index = 25
SANGONGINFO_JULEBUID_FIELD.label = 1
SANGONGINFO_JULEBUID_FIELD.has_default_value = false
SANGONGINFO_JULEBUID_FIELD.default_value = 0
SANGONGINFO_JULEBUID_FIELD.type = 5
SANGONGINFO_JULEBUID_FIELD.cpp_type = 1

SANGONGINFO.name = "sangonginfo"
SANGONGINFO.full_name = ".progame.sangonginfo"
SANGONGINFO.nested_types = {}
SANGONGINFO.enum_types = {}
SANGONGINFO.fields = {SANGONGINFO_TABLEID_FIELD, SANGONGINFO_TABLETYPE_FIELD, SANGONGINFO_PLAYNUM_FIELD, SANGONGINFO_DIFEN_FIELD, SANGONGINFO_SGTYPE_FIELD, SANGONGINFO_STATE_FIELD, SANGONGINFO_TIMEMARK_FIELD, SANGONGINFO_SITUSER_FIELD, SANGONGINFO_STANDUSER_FIELD, SANGONGINFO_USERNUM_FIELD, SANGONGINFO_BANKERID_FIELD, SANGONGINFO_MAXPLAYNUM_FIELD, SANGONGINFO_MAXUSER_FIELD, SANGONGINFO_POKERLIST_FIELD, SANGONGINFO_OWNERID_FIELD, SANGONGINFO_MOVERID_FIELD, SANGONGINFO_BINDEX_FIELD, SANGONGINFO_DISSOLVEINFO_FIELD, SANGONGINFO_PAYWAY_FIELD, SANGONGINFO_PAYNUM_FIELD, SANGONGINFO_ZHUANGTYPE_FIELD, SANGONGINFO_TABLEMARK_FIELD, SANGONGINFO_MOSHI_FIELD, SANGONGINFO_READYUSER_FIELD, SANGONGINFO_PAYTYPE_FIELD, SANGONGINFO_JULEBUID_FIELD}
SANGONGINFO.is_extendable = false
SANGONGINFO.extensions = {}
SANGONGHTYUSER_USERID_FIELD.name = "userid"
SANGONGHTYUSER_USERID_FIELD.full_name = ".progame.sangonghtyuser.userid"
SANGONGHTYUSER_USERID_FIELD.number = 1
SANGONGHTYUSER_USERID_FIELD.index = 0
SANGONGHTYUSER_USERID_FIELD.label = 1
SANGONGHTYUSER_USERID_FIELD.has_default_value = false
SANGONGHTYUSER_USERID_FIELD.default_value = 0
SANGONGHTYUSER_USERID_FIELD.type = 5
SANGONGHTYUSER_USERID_FIELD.cpp_type = 1

SANGONGHTYUSER_NICKNAME_FIELD.name = "nickname"
SANGONGHTYUSER_NICKNAME_FIELD.full_name = ".progame.sangonghtyuser.nickname"
SANGONGHTYUSER_NICKNAME_FIELD.number = 2
SANGONGHTYUSER_NICKNAME_FIELD.index = 1
SANGONGHTYUSER_NICKNAME_FIELD.label = 1
SANGONGHTYUSER_NICKNAME_FIELD.has_default_value = false
SANGONGHTYUSER_NICKNAME_FIELD.default_value = ""
SANGONGHTYUSER_NICKNAME_FIELD.type = 9
SANGONGHTYUSER_NICKNAME_FIELD.cpp_type = 9

SANGONGHTYUSER_FACEID_FIELD.name = "faceid"
SANGONGHTYUSER_FACEID_FIELD.full_name = ".progame.sangonghtyuser.faceid"
SANGONGHTYUSER_FACEID_FIELD.number = 3
SANGONGHTYUSER_FACEID_FIELD.index = 2
SANGONGHTYUSER_FACEID_FIELD.label = 1
SANGONGHTYUSER_FACEID_FIELD.has_default_value = false
SANGONGHTYUSER_FACEID_FIELD.default_value = ""
SANGONGHTYUSER_FACEID_FIELD.type = 9
SANGONGHTYUSER_FACEID_FIELD.cpp_type = 9

SANGONGHTYUSER_CARDTYPE_FIELD.name = "cardtype"
SANGONGHTYUSER_CARDTYPE_FIELD.full_name = ".progame.sangonghtyuser.cardtype"
SANGONGHTYUSER_CARDTYPE_FIELD.number = 4
SANGONGHTYUSER_CARDTYPE_FIELD.index = 3
SANGONGHTYUSER_CARDTYPE_FIELD.label = 1
SANGONGHTYUSER_CARDTYPE_FIELD.has_default_value = false
SANGONGHTYUSER_CARDTYPE_FIELD.default_value = 0
SANGONGHTYUSER_CARDTYPE_FIELD.type = 5
SANGONGHTYUSER_CARDTYPE_FIELD.cpp_type = 1

SANGONGHTYUSER_CARDLIST_FIELD.name = "cardlist"
SANGONGHTYUSER_CARDLIST_FIELD.full_name = ".progame.sangonghtyuser.cardlist"
SANGONGHTYUSER_CARDLIST_FIELD.number = 6
SANGONGHTYUSER_CARDLIST_FIELD.index = 4
SANGONGHTYUSER_CARDLIST_FIELD.label = 3
SANGONGHTYUSER_CARDLIST_FIELD.has_default_value = false
SANGONGHTYUSER_CARDLIST_FIELD.default_value = {}
SANGONGHTYUSER_CARDLIST_FIELD.type = 5
SANGONGHTYUSER_CARDLIST_FIELD.cpp_type = 1

SANGONGHTYUSER_WINJIFEN_FIELD.name = "winjifen"
SANGONGHTYUSER_WINJIFEN_FIELD.full_name = ".progame.sangonghtyuser.winjifen"
SANGONGHTYUSER_WINJIFEN_FIELD.number = 7
SANGONGHTYUSER_WINJIFEN_FIELD.index = 5
SANGONGHTYUSER_WINJIFEN_FIELD.label = 1
SANGONGHTYUSER_WINJIFEN_FIELD.has_default_value = false
SANGONGHTYUSER_WINJIFEN_FIELD.default_value = 0
SANGONGHTYUSER_WINJIFEN_FIELD.type = 5
SANGONGHTYUSER_WINJIFEN_FIELD.cpp_type = 1

SANGONGHTYUSER_ALLJIFEN_FIELD.name = "alljifen"
SANGONGHTYUSER_ALLJIFEN_FIELD.full_name = ".progame.sangonghtyuser.alljifen"
SANGONGHTYUSER_ALLJIFEN_FIELD.number = 8
SANGONGHTYUSER_ALLJIFEN_FIELD.index = 6
SANGONGHTYUSER_ALLJIFEN_FIELD.label = 1
SANGONGHTYUSER_ALLJIFEN_FIELD.has_default_value = false
SANGONGHTYUSER_ALLJIFEN_FIELD.default_value = 0
SANGONGHTYUSER_ALLJIFEN_FIELD.type = 5
SANGONGHTYUSER_ALLJIFEN_FIELD.cpp_type = 1

SANGONGHTYUSER.name = "sangonghtyuser"
SANGONGHTYUSER.full_name = ".progame.sangonghtyuser"
SANGONGHTYUSER.nested_types = {}
SANGONGHTYUSER.enum_types = {}
SANGONGHTYUSER.fields = {SANGONGHTYUSER_USERID_FIELD, SANGONGHTYUSER_NICKNAME_FIELD, SANGONGHTYUSER_FACEID_FIELD, SANGONGHTYUSER_CARDTYPE_FIELD, SANGONGHTYUSER_CARDLIST_FIELD, SANGONGHTYUSER_WINJIFEN_FIELD, SANGONGHTYUSER_ALLJIFEN_FIELD}
SANGONGHTYUSER.is_extendable = false
SANGONGHTYUSER.extensions = {}
SANGONGHTYINFO_FRAMEID_FIELD.name = "frameid"
SANGONGHTYINFO_FRAMEID_FIELD.full_name = ".progame.sangonghtyinfo.frameid"
SANGONGHTYINFO_FRAMEID_FIELD.number = 1
SANGONGHTYINFO_FRAMEID_FIELD.index = 0
SANGONGHTYINFO_FRAMEID_FIELD.label = 1
SANGONGHTYINFO_FRAMEID_FIELD.has_default_value = false
SANGONGHTYINFO_FRAMEID_FIELD.default_value = 0
SANGONGHTYINFO_FRAMEID_FIELD.type = 5
SANGONGHTYINFO_FRAMEID_FIELD.cpp_type = 1

SANGONGHTYINFO_HTYUSRLIST_FIELD.name = "htyusrlist"
SANGONGHTYINFO_HTYUSRLIST_FIELD.full_name = ".progame.sangonghtyinfo.htyusrlist"
SANGONGHTYINFO_HTYUSRLIST_FIELD.number = 2
SANGONGHTYINFO_HTYUSRLIST_FIELD.index = 1
SANGONGHTYINFO_HTYUSRLIST_FIELD.label = 3
SANGONGHTYINFO_HTYUSRLIST_FIELD.has_default_value = false
SANGONGHTYINFO_HTYUSRLIST_FIELD.default_value = {}
SANGONGHTYINFO_HTYUSRLIST_FIELD.message_type = SANGONGHTYUSER
SANGONGHTYINFO_HTYUSRLIST_FIELD.type = 11
SANGONGHTYINFO_HTYUSRLIST_FIELD.cpp_type = 10

SANGONGHTYINFO.name = "sangonghtyinfo"
SANGONGHTYINFO.full_name = ".progame.sangonghtyinfo"
SANGONGHTYINFO.nested_types = {}
SANGONGHTYINFO.enum_types = {}
SANGONGHTYINFO.fields = {SANGONGHTYINFO_FRAMEID_FIELD, SANGONGHTYINFO_HTYUSRLIST_FIELD}
SANGONGHTYINFO.is_extendable = false
SANGONGHTYINFO.extensions = {}
SANGONGHISTORY_TABLEID_FIELD.name = "tableid"
SANGONGHISTORY_TABLEID_FIELD.full_name = ".progame.sangonghistory.tableid"
SANGONGHISTORY_TABLEID_FIELD.number = 1
SANGONGHISTORY_TABLEID_FIELD.index = 0
SANGONGHISTORY_TABLEID_FIELD.label = 1
SANGONGHISTORY_TABLEID_FIELD.has_default_value = false
SANGONGHISTORY_TABLEID_FIELD.default_value = 0
SANGONGHISTORY_TABLEID_FIELD.type = 5
SANGONGHISTORY_TABLEID_FIELD.cpp_type = 1

SANGONGHISTORY_OWNERNAME_FIELD.name = "ownername"
SANGONGHISTORY_OWNERNAME_FIELD.full_name = ".progame.sangonghistory.ownername"
SANGONGHISTORY_OWNERNAME_FIELD.number = 2
SANGONGHISTORY_OWNERNAME_FIELD.index = 1
SANGONGHISTORY_OWNERNAME_FIELD.label = 1
SANGONGHISTORY_OWNERNAME_FIELD.has_default_value = false
SANGONGHISTORY_OWNERNAME_FIELD.default_value = ""
SANGONGHISTORY_OWNERNAME_FIELD.type = 9
SANGONGHISTORY_OWNERNAME_FIELD.cpp_type = 9

SANGONGHISTORY_TIMESTR_FIELD.name = "timestr"
SANGONGHISTORY_TIMESTR_FIELD.full_name = ".progame.sangonghistory.timestr"
SANGONGHISTORY_TIMESTR_FIELD.number = 3
SANGONGHISTORY_TIMESTR_FIELD.index = 2
SANGONGHISTORY_TIMESTR_FIELD.label = 1
SANGONGHISTORY_TIMESTR_FIELD.has_default_value = false
SANGONGHISTORY_TIMESTR_FIELD.default_value = ""
SANGONGHISTORY_TIMESTR_FIELD.type = 9
SANGONGHISTORY_TIMESTR_FIELD.cpp_type = 9

SANGONGHISTORY_USEVIPNUM_FIELD.name = "usevipnum"
SANGONGHISTORY_USEVIPNUM_FIELD.full_name = ".progame.sangonghistory.usevipnum"
SANGONGHISTORY_USEVIPNUM_FIELD.number = 4
SANGONGHISTORY_USEVIPNUM_FIELD.index = 3
SANGONGHISTORY_USEVIPNUM_FIELD.label = 1
SANGONGHISTORY_USEVIPNUM_FIELD.has_default_value = false
SANGONGHISTORY_USEVIPNUM_FIELD.default_value = 0
SANGONGHISTORY_USEVIPNUM_FIELD.type = 5
SANGONGHISTORY_USEVIPNUM_FIELD.cpp_type = 1

SANGONGHISTORY_OWNERFACEID_FIELD.name = "ownerfaceid"
SANGONGHISTORY_OWNERFACEID_FIELD.full_name = ".progame.sangonghistory.ownerfaceid"
SANGONGHISTORY_OWNERFACEID_FIELD.number = 5
SANGONGHISTORY_OWNERFACEID_FIELD.index = 4
SANGONGHISTORY_OWNERFACEID_FIELD.label = 1
SANGONGHISTORY_OWNERFACEID_FIELD.has_default_value = false
SANGONGHISTORY_OWNERFACEID_FIELD.default_value = ""
SANGONGHISTORY_OWNERFACEID_FIELD.type = 9
SANGONGHISTORY_OWNERFACEID_FIELD.cpp_type = 9

SANGONGHISTORY_HTYLIST_FIELD.name = "htylist"
SANGONGHISTORY_HTYLIST_FIELD.full_name = ".progame.sangonghistory.htylist"
SANGONGHISTORY_HTYLIST_FIELD.number = 6
SANGONGHISTORY_HTYLIST_FIELD.index = 5
SANGONGHISTORY_HTYLIST_FIELD.label = 3
SANGONGHISTORY_HTYLIST_FIELD.has_default_value = false
SANGONGHISTORY_HTYLIST_FIELD.default_value = {}
SANGONGHISTORY_HTYLIST_FIELD.message_type = SANGONGHTYINFO
SANGONGHISTORY_HTYLIST_FIELD.type = 11
SANGONGHISTORY_HTYLIST_FIELD.cpp_type = 10

SANGONGHISTORY.name = "sangonghistory"
SANGONGHISTORY.full_name = ".progame.sangonghistory"
SANGONGHISTORY.nested_types = {}
SANGONGHISTORY.enum_types = {}
SANGONGHISTORY.fields = {SANGONGHISTORY_TABLEID_FIELD, SANGONGHISTORY_OWNERNAME_FIELD, SANGONGHISTORY_TIMESTR_FIELD, SANGONGHISTORY_USEVIPNUM_FIELD, SANGONGHISTORY_OWNERFACEID_FIELD, SANGONGHISTORY_HTYLIST_FIELD}
SANGONGHISTORY.is_extendable = false
SANGONGHISTORY.extensions = {}

sangonghistory = protobuf.Message(SANGONGHISTORY)
sangonghtyinfo = protobuf.Message(SANGONGHTYINFO)
sangonghtyuser = protobuf.Message(SANGONGHTYUSER)
sangonginfo = protobuf.Message(SANGONGINFO)
sangonguser = protobuf.Message(SANGONGUSER)

----------nimol modify---------
ST_SANGONG_PB_SANGONGHISTORY = SANGONGHISTORY
ST_SANGONG_PB_SANGONGHTYINFO = SANGONGHTYINFO
ST_SANGONG_PB_SANGONGHTYUSER = SANGONGHTYUSER
ST_SANGONG_PB_SANGONGINFO = SANGONGINFO
ST_SANGONG_PB_SANGONGUSER = SANGONGUSER