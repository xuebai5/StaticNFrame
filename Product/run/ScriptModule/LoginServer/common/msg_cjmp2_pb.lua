-- Generated By protoc-gen-lua Do not Edit
local protobuf = require "protobuf"
local st_human_pb = require("st_human_pb")
local st_cjmp_pb = require("st_cjmp_pb")
----------nimol modify---------
local ST_CJMP_PB_CJMPINFO = st_cjmp_pb.ST_CJMP_PB_CJMPINFO
local ST_HUMAN_PB_PLAYERSIMPLEINFO = st_human_pb.ST_HUMAN_PB_PLAYERSIMPLEINFO
module('msg_cjmp2_pb')


local GCCJMPHISTORY = protobuf.Descriptor();
local GCCJMPHISTORY_RESULT_FIELD = protobuf.FieldDescriptor();
local GCCJMPHISTORY_ALLNUM1_FIELD = protobuf.FieldDescriptor();
local GCCJMPHISTORY_ALLNUM2_FIELD = protobuf.FieldDescriptor();
local GCCJMPHISTORY_ALLNUM3_FIELD = protobuf.FieldDescriptor();
local GCCJMPHISTORY_ALLNUM4_FIELD = protobuf.FieldDescriptor();
local GCCJMPHISTORY_GAMENUM_FIELD = protobuf.FieldDescriptor();
local GCCJMPHISTORY_LONGNUM_FIELD = protobuf.FieldDescriptor();
local GCCJMPHISTORY_HUNUM_FIELD = protobuf.FieldDescriptor();
local GCCJMPHISTORY_HENUM_FIELD = protobuf.FieldDescriptor();
local GCCJMPHISTORY_ROUND_FIELD = protobuf.FieldDescriptor();
local GCCJMPHISTORY_INNINGS_FIELD = protobuf.FieldDescriptor();
local GCCJMPGAMEHISTORYUPDATA = protobuf.Descriptor();
local GCCJMPGAMEHISTORYUPDATA_RESULT_FIELD = protobuf.FieldDescriptor();
local GCCJMPGAMEHISTORYUPDATA_TABLEID_FIELD = protobuf.FieldDescriptor();
local GCCJMPGAMEHISTORYUPDATA_STATE_FIELD = protobuf.FieldDescriptor();
local GCCJMPGAMEHISTORYUPDATA_TIMEMARK_FIELD = protobuf.FieldDescriptor();
local GCCJMPGAMEHISTORYUPDATA_RECORDIDENTIFICATION_FIELD = protobuf.FieldDescriptor();
local GCCJMPGAMEHISTORYUPDATA_ALLNUM1_FIELD = protobuf.FieldDescriptor();
local GCCJMPGAMEHISTORYUPDATA_ALLNUM2_FIELD = protobuf.FieldDescriptor();
local GCCJMPGAMEHISTORYUPDATA_ALLNUM3_FIELD = protobuf.FieldDescriptor();
local GCCJMPGAMEHISTORYUPDATA_ALLNUM4_FIELD = protobuf.FieldDescriptor();
local GCCJMPGAMEHISTORYUPDATA_WINTYPE_FIELD = protobuf.FieldDescriptor();
local GCCJMPGAMEHISTORYUPDATA_GAMENUM_FIELD = protobuf.FieldDescriptor();
local GCCJMPGAMEHISTORYUPDATA_LONGNUM_FIELD = protobuf.FieldDescriptor();
local GCCJMPGAMEHISTORYUPDATA_HUNUM_FIELD = protobuf.FieldDescriptor();
local GCCJMPGAMEHISTORYUPDATA_HENUM_FIELD = protobuf.FieldDescriptor();
local GCCJMPSTART = protobuf.Descriptor();
local GCCJMPSTART_RESULT_FIELD = protobuf.FieldDescriptor();
local GCCJMPSTART_STATE_FIELD = protobuf.FieldDescriptor();
local GCCJMPSTART_TIMEMARK_FIELD = protobuf.FieldDescriptor();
local GCCJMPSTART_HINFO_FIELD = protobuf.FieldDescriptor();
local GCCJMPSTART_PSLIST_FIELD = protobuf.FieldDescriptor();
local GCCJMPSTART_ROUND_FIELD = protobuf.FieldDescriptor();
local GCCJMPSTART_INNINGS_FIELD = protobuf.FieldDescriptor();
local GCCJMPSTART_PLAYTYPE_FIELD = protobuf.FieldDescriptor();
local GCCJMPSTART_DIANSHU_FIELD = protobuf.FieldDescriptor();
local GCCJMPSTART_HUASE_FIELD = protobuf.FieldDescriptor();
local GCCJMPSTART_CANJETTON_FIELD = protobuf.FieldDescriptor();
local GCCJMPSTART_LEGALKEY_FIELD = protobuf.FieldDescriptor();

GCCJMPHISTORY_RESULT_FIELD.name = "result"
GCCJMPHISTORY_RESULT_FIELD.full_name = ".progame.gccjmphistory.result"
GCCJMPHISTORY_RESULT_FIELD.number = 1
GCCJMPHISTORY_RESULT_FIELD.index = 0
GCCJMPHISTORY_RESULT_FIELD.label = 1
GCCJMPHISTORY_RESULT_FIELD.has_default_value = false
GCCJMPHISTORY_RESULT_FIELD.default_value = 0
GCCJMPHISTORY_RESULT_FIELD.type = 5
GCCJMPHISTORY_RESULT_FIELD.cpp_type = 1

GCCJMPHISTORY_ALLNUM1_FIELD.name = "allnum1"
GCCJMPHISTORY_ALLNUM1_FIELD.full_name = ".progame.gccjmphistory.allnum1"
GCCJMPHISTORY_ALLNUM1_FIELD.number = 2
GCCJMPHISTORY_ALLNUM1_FIELD.index = 1
GCCJMPHISTORY_ALLNUM1_FIELD.label = 3
GCCJMPHISTORY_ALLNUM1_FIELD.has_default_value = false
GCCJMPHISTORY_ALLNUM1_FIELD.default_value = {}
GCCJMPHISTORY_ALLNUM1_FIELD.type = 5
GCCJMPHISTORY_ALLNUM1_FIELD.cpp_type = 1

GCCJMPHISTORY_ALLNUM2_FIELD.name = "allnum2"
GCCJMPHISTORY_ALLNUM2_FIELD.full_name = ".progame.gccjmphistory.allnum2"
GCCJMPHISTORY_ALLNUM2_FIELD.number = 3
GCCJMPHISTORY_ALLNUM2_FIELD.index = 2
GCCJMPHISTORY_ALLNUM2_FIELD.label = 3
GCCJMPHISTORY_ALLNUM2_FIELD.has_default_value = false
GCCJMPHISTORY_ALLNUM2_FIELD.default_value = {}
GCCJMPHISTORY_ALLNUM2_FIELD.type = 5
GCCJMPHISTORY_ALLNUM2_FIELD.cpp_type = 1

GCCJMPHISTORY_ALLNUM3_FIELD.name = "allnum3"
GCCJMPHISTORY_ALLNUM3_FIELD.full_name = ".progame.gccjmphistory.allnum3"
GCCJMPHISTORY_ALLNUM3_FIELD.number = 4
GCCJMPHISTORY_ALLNUM3_FIELD.index = 3
GCCJMPHISTORY_ALLNUM3_FIELD.label = 3
GCCJMPHISTORY_ALLNUM3_FIELD.has_default_value = false
GCCJMPHISTORY_ALLNUM3_FIELD.default_value = {}
GCCJMPHISTORY_ALLNUM3_FIELD.type = 5
GCCJMPHISTORY_ALLNUM3_FIELD.cpp_type = 1

GCCJMPHISTORY_ALLNUM4_FIELD.name = "allnum4"
GCCJMPHISTORY_ALLNUM4_FIELD.full_name = ".progame.gccjmphistory.allnum4"
GCCJMPHISTORY_ALLNUM4_FIELD.number = 5
GCCJMPHISTORY_ALLNUM4_FIELD.index = 4
GCCJMPHISTORY_ALLNUM4_FIELD.label = 3
GCCJMPHISTORY_ALLNUM4_FIELD.has_default_value = false
GCCJMPHISTORY_ALLNUM4_FIELD.default_value = {}
GCCJMPHISTORY_ALLNUM4_FIELD.type = 5
GCCJMPHISTORY_ALLNUM4_FIELD.cpp_type = 1

GCCJMPHISTORY_GAMENUM_FIELD.name = "gamenum"
GCCJMPHISTORY_GAMENUM_FIELD.full_name = ".progame.gccjmphistory.gamenum"
GCCJMPHISTORY_GAMENUM_FIELD.number = 6
GCCJMPHISTORY_GAMENUM_FIELD.index = 5
GCCJMPHISTORY_GAMENUM_FIELD.label = 3
GCCJMPHISTORY_GAMENUM_FIELD.has_default_value = false
GCCJMPHISTORY_GAMENUM_FIELD.default_value = {}
GCCJMPHISTORY_GAMENUM_FIELD.type = 5
GCCJMPHISTORY_GAMENUM_FIELD.cpp_type = 1

GCCJMPHISTORY_LONGNUM_FIELD.name = "longnum"
GCCJMPHISTORY_LONGNUM_FIELD.full_name = ".progame.gccjmphistory.longnum"
GCCJMPHISTORY_LONGNUM_FIELD.number = 7
GCCJMPHISTORY_LONGNUM_FIELD.index = 6
GCCJMPHISTORY_LONGNUM_FIELD.label = 3
GCCJMPHISTORY_LONGNUM_FIELD.has_default_value = false
GCCJMPHISTORY_LONGNUM_FIELD.default_value = {}
GCCJMPHISTORY_LONGNUM_FIELD.type = 5
GCCJMPHISTORY_LONGNUM_FIELD.cpp_type = 1

GCCJMPHISTORY_HUNUM_FIELD.name = "hunum"
GCCJMPHISTORY_HUNUM_FIELD.full_name = ".progame.gccjmphistory.hunum"
GCCJMPHISTORY_HUNUM_FIELD.number = 8
GCCJMPHISTORY_HUNUM_FIELD.index = 7
GCCJMPHISTORY_HUNUM_FIELD.label = 3
GCCJMPHISTORY_HUNUM_FIELD.has_default_value = false
GCCJMPHISTORY_HUNUM_FIELD.default_value = {}
GCCJMPHISTORY_HUNUM_FIELD.type = 5
GCCJMPHISTORY_HUNUM_FIELD.cpp_type = 1

GCCJMPHISTORY_HENUM_FIELD.name = "henum"
GCCJMPHISTORY_HENUM_FIELD.full_name = ".progame.gccjmphistory.henum"
GCCJMPHISTORY_HENUM_FIELD.number = 9
GCCJMPHISTORY_HENUM_FIELD.index = 8
GCCJMPHISTORY_HENUM_FIELD.label = 3
GCCJMPHISTORY_HENUM_FIELD.has_default_value = false
GCCJMPHISTORY_HENUM_FIELD.default_value = {}
GCCJMPHISTORY_HENUM_FIELD.type = 5
GCCJMPHISTORY_HENUM_FIELD.cpp_type = 1

GCCJMPHISTORY_ROUND_FIELD.name = "round"
GCCJMPHISTORY_ROUND_FIELD.full_name = ".progame.gccjmphistory.round"
GCCJMPHISTORY_ROUND_FIELD.number = 10
GCCJMPHISTORY_ROUND_FIELD.index = 9
GCCJMPHISTORY_ROUND_FIELD.label = 1
GCCJMPHISTORY_ROUND_FIELD.has_default_value = false
GCCJMPHISTORY_ROUND_FIELD.default_value = 0
GCCJMPHISTORY_ROUND_FIELD.type = 5
GCCJMPHISTORY_ROUND_FIELD.cpp_type = 1

GCCJMPHISTORY_INNINGS_FIELD.name = "innings"
GCCJMPHISTORY_INNINGS_FIELD.full_name = ".progame.gccjmphistory.innings"
GCCJMPHISTORY_INNINGS_FIELD.number = 11
GCCJMPHISTORY_INNINGS_FIELD.index = 10
GCCJMPHISTORY_INNINGS_FIELD.label = 1
GCCJMPHISTORY_INNINGS_FIELD.has_default_value = false
GCCJMPHISTORY_INNINGS_FIELD.default_value = 0
GCCJMPHISTORY_INNINGS_FIELD.type = 5
GCCJMPHISTORY_INNINGS_FIELD.cpp_type = 1

GCCJMPHISTORY.name = "gccjmphistory"
GCCJMPHISTORY.full_name = ".progame.gccjmphistory"
GCCJMPHISTORY.nested_types = {}
GCCJMPHISTORY.enum_types = {}
GCCJMPHISTORY.fields = {GCCJMPHISTORY_RESULT_FIELD, GCCJMPHISTORY_ALLNUM1_FIELD, GCCJMPHISTORY_ALLNUM2_FIELD, GCCJMPHISTORY_ALLNUM3_FIELD, GCCJMPHISTORY_ALLNUM4_FIELD, GCCJMPHISTORY_GAMENUM_FIELD, GCCJMPHISTORY_LONGNUM_FIELD, GCCJMPHISTORY_HUNUM_FIELD, GCCJMPHISTORY_HENUM_FIELD, GCCJMPHISTORY_ROUND_FIELD, GCCJMPHISTORY_INNINGS_FIELD}
GCCJMPHISTORY.is_extendable = false
GCCJMPHISTORY.extensions = {}
GCCJMPGAMEHISTORYUPDATA_RESULT_FIELD.name = "result"
GCCJMPGAMEHISTORYUPDATA_RESULT_FIELD.full_name = ".progame.gccjmpgamehistoryupdata.result"
GCCJMPGAMEHISTORYUPDATA_RESULT_FIELD.number = 1
GCCJMPGAMEHISTORYUPDATA_RESULT_FIELD.index = 0
GCCJMPGAMEHISTORYUPDATA_RESULT_FIELD.label = 1
GCCJMPGAMEHISTORYUPDATA_RESULT_FIELD.has_default_value = false
GCCJMPGAMEHISTORYUPDATA_RESULT_FIELD.default_value = 0
GCCJMPGAMEHISTORYUPDATA_RESULT_FIELD.type = 5
GCCJMPGAMEHISTORYUPDATA_RESULT_FIELD.cpp_type = 1

GCCJMPGAMEHISTORYUPDATA_TABLEID_FIELD.name = "tableid"
GCCJMPGAMEHISTORYUPDATA_TABLEID_FIELD.full_name = ".progame.gccjmpgamehistoryupdata.tableid"
GCCJMPGAMEHISTORYUPDATA_TABLEID_FIELD.number = 2
GCCJMPGAMEHISTORYUPDATA_TABLEID_FIELD.index = 1
GCCJMPGAMEHISTORYUPDATA_TABLEID_FIELD.label = 3
GCCJMPGAMEHISTORYUPDATA_TABLEID_FIELD.has_default_value = false
GCCJMPGAMEHISTORYUPDATA_TABLEID_FIELD.default_value = {}
GCCJMPGAMEHISTORYUPDATA_TABLEID_FIELD.type = 5
GCCJMPGAMEHISTORYUPDATA_TABLEID_FIELD.cpp_type = 1

GCCJMPGAMEHISTORYUPDATA_STATE_FIELD.name = "state"
GCCJMPGAMEHISTORYUPDATA_STATE_FIELD.full_name = ".progame.gccjmpgamehistoryupdata.state"
GCCJMPGAMEHISTORYUPDATA_STATE_FIELD.number = 3
GCCJMPGAMEHISTORYUPDATA_STATE_FIELD.index = 2
GCCJMPGAMEHISTORYUPDATA_STATE_FIELD.label = 3
GCCJMPGAMEHISTORYUPDATA_STATE_FIELD.has_default_value = false
GCCJMPGAMEHISTORYUPDATA_STATE_FIELD.default_value = {}
GCCJMPGAMEHISTORYUPDATA_STATE_FIELD.type = 5
GCCJMPGAMEHISTORYUPDATA_STATE_FIELD.cpp_type = 1

GCCJMPGAMEHISTORYUPDATA_TIMEMARK_FIELD.name = "timemark"
GCCJMPGAMEHISTORYUPDATA_TIMEMARK_FIELD.full_name = ".progame.gccjmpgamehistoryupdata.timemark"
GCCJMPGAMEHISTORYUPDATA_TIMEMARK_FIELD.number = 4
GCCJMPGAMEHISTORYUPDATA_TIMEMARK_FIELD.index = 3
GCCJMPGAMEHISTORYUPDATA_TIMEMARK_FIELD.label = 3
GCCJMPGAMEHISTORYUPDATA_TIMEMARK_FIELD.has_default_value = false
GCCJMPGAMEHISTORYUPDATA_TIMEMARK_FIELD.default_value = {}
GCCJMPGAMEHISTORYUPDATA_TIMEMARK_FIELD.type = 5
GCCJMPGAMEHISTORYUPDATA_TIMEMARK_FIELD.cpp_type = 1

GCCJMPGAMEHISTORYUPDATA_RECORDIDENTIFICATION_FIELD.name = "recordidentification"
GCCJMPGAMEHISTORYUPDATA_RECORDIDENTIFICATION_FIELD.full_name = ".progame.gccjmpgamehistoryupdata.recordidentification"
GCCJMPGAMEHISTORYUPDATA_RECORDIDENTIFICATION_FIELD.number = 5
GCCJMPGAMEHISTORYUPDATA_RECORDIDENTIFICATION_FIELD.index = 4
GCCJMPGAMEHISTORYUPDATA_RECORDIDENTIFICATION_FIELD.label = 3
GCCJMPGAMEHISTORYUPDATA_RECORDIDENTIFICATION_FIELD.has_default_value = false
GCCJMPGAMEHISTORYUPDATA_RECORDIDENTIFICATION_FIELD.default_value = {}
GCCJMPGAMEHISTORYUPDATA_RECORDIDENTIFICATION_FIELD.type = 9
GCCJMPGAMEHISTORYUPDATA_RECORDIDENTIFICATION_FIELD.cpp_type = 9

GCCJMPGAMEHISTORYUPDATA_ALLNUM1_FIELD.name = "allnum1"
GCCJMPGAMEHISTORYUPDATA_ALLNUM1_FIELD.full_name = ".progame.gccjmpgamehistoryupdata.allnum1"
GCCJMPGAMEHISTORYUPDATA_ALLNUM1_FIELD.number = 6
GCCJMPGAMEHISTORYUPDATA_ALLNUM1_FIELD.index = 5
GCCJMPGAMEHISTORYUPDATA_ALLNUM1_FIELD.label = 3
GCCJMPGAMEHISTORYUPDATA_ALLNUM1_FIELD.has_default_value = false
GCCJMPGAMEHISTORYUPDATA_ALLNUM1_FIELD.default_value = {}
GCCJMPGAMEHISTORYUPDATA_ALLNUM1_FIELD.type = 5
GCCJMPGAMEHISTORYUPDATA_ALLNUM1_FIELD.cpp_type = 1

GCCJMPGAMEHISTORYUPDATA_ALLNUM2_FIELD.name = "allnum2"
GCCJMPGAMEHISTORYUPDATA_ALLNUM2_FIELD.full_name = ".progame.gccjmpgamehistoryupdata.allnum2"
GCCJMPGAMEHISTORYUPDATA_ALLNUM2_FIELD.number = 7
GCCJMPGAMEHISTORYUPDATA_ALLNUM2_FIELD.index = 6
GCCJMPGAMEHISTORYUPDATA_ALLNUM2_FIELD.label = 3
GCCJMPGAMEHISTORYUPDATA_ALLNUM2_FIELD.has_default_value = false
GCCJMPGAMEHISTORYUPDATA_ALLNUM2_FIELD.default_value = {}
GCCJMPGAMEHISTORYUPDATA_ALLNUM2_FIELD.type = 5
GCCJMPGAMEHISTORYUPDATA_ALLNUM2_FIELD.cpp_type = 1

GCCJMPGAMEHISTORYUPDATA_ALLNUM3_FIELD.name = "allnum3"
GCCJMPGAMEHISTORYUPDATA_ALLNUM3_FIELD.full_name = ".progame.gccjmpgamehistoryupdata.allnum3"
GCCJMPGAMEHISTORYUPDATA_ALLNUM3_FIELD.number = 8
GCCJMPGAMEHISTORYUPDATA_ALLNUM3_FIELD.index = 7
GCCJMPGAMEHISTORYUPDATA_ALLNUM3_FIELD.label = 3
GCCJMPGAMEHISTORYUPDATA_ALLNUM3_FIELD.has_default_value = false
GCCJMPGAMEHISTORYUPDATA_ALLNUM3_FIELD.default_value = {}
GCCJMPGAMEHISTORYUPDATA_ALLNUM3_FIELD.type = 5
GCCJMPGAMEHISTORYUPDATA_ALLNUM3_FIELD.cpp_type = 1

GCCJMPGAMEHISTORYUPDATA_ALLNUM4_FIELD.name = "allnum4"
GCCJMPGAMEHISTORYUPDATA_ALLNUM4_FIELD.full_name = ".progame.gccjmpgamehistoryupdata.allnum4"
GCCJMPGAMEHISTORYUPDATA_ALLNUM4_FIELD.number = 9
GCCJMPGAMEHISTORYUPDATA_ALLNUM4_FIELD.index = 8
GCCJMPGAMEHISTORYUPDATA_ALLNUM4_FIELD.label = 3
GCCJMPGAMEHISTORYUPDATA_ALLNUM4_FIELD.has_default_value = false
GCCJMPGAMEHISTORYUPDATA_ALLNUM4_FIELD.default_value = {}
GCCJMPGAMEHISTORYUPDATA_ALLNUM4_FIELD.type = 5
GCCJMPGAMEHISTORYUPDATA_ALLNUM4_FIELD.cpp_type = 1

GCCJMPGAMEHISTORYUPDATA_WINTYPE_FIELD.name = "wintype"
GCCJMPGAMEHISTORYUPDATA_WINTYPE_FIELD.full_name = ".progame.gccjmpgamehistoryupdata.wintype"
GCCJMPGAMEHISTORYUPDATA_WINTYPE_FIELD.number = 10
GCCJMPGAMEHISTORYUPDATA_WINTYPE_FIELD.index = 9
GCCJMPGAMEHISTORYUPDATA_WINTYPE_FIELD.label = 3
GCCJMPGAMEHISTORYUPDATA_WINTYPE_FIELD.has_default_value = false
GCCJMPGAMEHISTORYUPDATA_WINTYPE_FIELD.default_value = {}
GCCJMPGAMEHISTORYUPDATA_WINTYPE_FIELD.type = 5
GCCJMPGAMEHISTORYUPDATA_WINTYPE_FIELD.cpp_type = 1

GCCJMPGAMEHISTORYUPDATA_GAMENUM_FIELD.name = "gamenum"
GCCJMPGAMEHISTORYUPDATA_GAMENUM_FIELD.full_name = ".progame.gccjmpgamehistoryupdata.gamenum"
GCCJMPGAMEHISTORYUPDATA_GAMENUM_FIELD.number = 11
GCCJMPGAMEHISTORYUPDATA_GAMENUM_FIELD.index = 10
GCCJMPGAMEHISTORYUPDATA_GAMENUM_FIELD.label = 3
GCCJMPGAMEHISTORYUPDATA_GAMENUM_FIELD.has_default_value = false
GCCJMPGAMEHISTORYUPDATA_GAMENUM_FIELD.default_value = {}
GCCJMPGAMEHISTORYUPDATA_GAMENUM_FIELD.type = 5
GCCJMPGAMEHISTORYUPDATA_GAMENUM_FIELD.cpp_type = 1

GCCJMPGAMEHISTORYUPDATA_LONGNUM_FIELD.name = "longnum"
GCCJMPGAMEHISTORYUPDATA_LONGNUM_FIELD.full_name = ".progame.gccjmpgamehistoryupdata.longnum"
GCCJMPGAMEHISTORYUPDATA_LONGNUM_FIELD.number = 12
GCCJMPGAMEHISTORYUPDATA_LONGNUM_FIELD.index = 11
GCCJMPGAMEHISTORYUPDATA_LONGNUM_FIELD.label = 3
GCCJMPGAMEHISTORYUPDATA_LONGNUM_FIELD.has_default_value = false
GCCJMPGAMEHISTORYUPDATA_LONGNUM_FIELD.default_value = {}
GCCJMPGAMEHISTORYUPDATA_LONGNUM_FIELD.type = 5
GCCJMPGAMEHISTORYUPDATA_LONGNUM_FIELD.cpp_type = 1

GCCJMPGAMEHISTORYUPDATA_HUNUM_FIELD.name = "hunum"
GCCJMPGAMEHISTORYUPDATA_HUNUM_FIELD.full_name = ".progame.gccjmpgamehistoryupdata.hunum"
GCCJMPGAMEHISTORYUPDATA_HUNUM_FIELD.number = 13
GCCJMPGAMEHISTORYUPDATA_HUNUM_FIELD.index = 12
GCCJMPGAMEHISTORYUPDATA_HUNUM_FIELD.label = 3
GCCJMPGAMEHISTORYUPDATA_HUNUM_FIELD.has_default_value = false
GCCJMPGAMEHISTORYUPDATA_HUNUM_FIELD.default_value = {}
GCCJMPGAMEHISTORYUPDATA_HUNUM_FIELD.type = 5
GCCJMPGAMEHISTORYUPDATA_HUNUM_FIELD.cpp_type = 1

GCCJMPGAMEHISTORYUPDATA_HENUM_FIELD.name = "henum"
GCCJMPGAMEHISTORYUPDATA_HENUM_FIELD.full_name = ".progame.gccjmpgamehistoryupdata.henum"
GCCJMPGAMEHISTORYUPDATA_HENUM_FIELD.number = 14
GCCJMPGAMEHISTORYUPDATA_HENUM_FIELD.index = 13
GCCJMPGAMEHISTORYUPDATA_HENUM_FIELD.label = 3
GCCJMPGAMEHISTORYUPDATA_HENUM_FIELD.has_default_value = false
GCCJMPGAMEHISTORYUPDATA_HENUM_FIELD.default_value = {}
GCCJMPGAMEHISTORYUPDATA_HENUM_FIELD.type = 5
GCCJMPGAMEHISTORYUPDATA_HENUM_FIELD.cpp_type = 1

GCCJMPGAMEHISTORYUPDATA.name = "gccjmpgamehistoryupdata"
GCCJMPGAMEHISTORYUPDATA.full_name = ".progame.gccjmpgamehistoryupdata"
GCCJMPGAMEHISTORYUPDATA.nested_types = {}
GCCJMPGAMEHISTORYUPDATA.enum_types = {}
GCCJMPGAMEHISTORYUPDATA.fields = {GCCJMPGAMEHISTORYUPDATA_RESULT_FIELD, GCCJMPGAMEHISTORYUPDATA_TABLEID_FIELD, GCCJMPGAMEHISTORYUPDATA_STATE_FIELD, GCCJMPGAMEHISTORYUPDATA_TIMEMARK_FIELD, GCCJMPGAMEHISTORYUPDATA_RECORDIDENTIFICATION_FIELD, GCCJMPGAMEHISTORYUPDATA_ALLNUM1_FIELD, GCCJMPGAMEHISTORYUPDATA_ALLNUM2_FIELD, GCCJMPGAMEHISTORYUPDATA_ALLNUM3_FIELD, GCCJMPGAMEHISTORYUPDATA_ALLNUM4_FIELD, GCCJMPGAMEHISTORYUPDATA_WINTYPE_FIELD, GCCJMPGAMEHISTORYUPDATA_GAMENUM_FIELD, GCCJMPGAMEHISTORYUPDATA_LONGNUM_FIELD, GCCJMPGAMEHISTORYUPDATA_HUNUM_FIELD, GCCJMPGAMEHISTORYUPDATA_HENUM_FIELD}
GCCJMPGAMEHISTORYUPDATA.is_extendable = false
GCCJMPGAMEHISTORYUPDATA.extensions = {}
GCCJMPSTART_RESULT_FIELD.name = "result"
GCCJMPSTART_RESULT_FIELD.full_name = ".progame.gccjmpstart.result"
GCCJMPSTART_RESULT_FIELD.number = 1
GCCJMPSTART_RESULT_FIELD.index = 0
GCCJMPSTART_RESULT_FIELD.label = 1
GCCJMPSTART_RESULT_FIELD.has_default_value = false
GCCJMPSTART_RESULT_FIELD.default_value = 0
GCCJMPSTART_RESULT_FIELD.type = 5
GCCJMPSTART_RESULT_FIELD.cpp_type = 1

GCCJMPSTART_STATE_FIELD.name = "state"
GCCJMPSTART_STATE_FIELD.full_name = ".progame.gccjmpstart.state"
GCCJMPSTART_STATE_FIELD.number = 2
GCCJMPSTART_STATE_FIELD.index = 1
GCCJMPSTART_STATE_FIELD.label = 1
GCCJMPSTART_STATE_FIELD.has_default_value = false
GCCJMPSTART_STATE_FIELD.default_value = 0
GCCJMPSTART_STATE_FIELD.type = 5
GCCJMPSTART_STATE_FIELD.cpp_type = 1

GCCJMPSTART_TIMEMARK_FIELD.name = "timemark"
GCCJMPSTART_TIMEMARK_FIELD.full_name = ".progame.gccjmpstart.timemark"
GCCJMPSTART_TIMEMARK_FIELD.number = 3
GCCJMPSTART_TIMEMARK_FIELD.index = 2
GCCJMPSTART_TIMEMARK_FIELD.label = 1
GCCJMPSTART_TIMEMARK_FIELD.has_default_value = false
GCCJMPSTART_TIMEMARK_FIELD.default_value = 0
GCCJMPSTART_TIMEMARK_FIELD.type = 5
GCCJMPSTART_TIMEMARK_FIELD.cpp_type = 1

GCCJMPSTART_HINFO_FIELD.name = "hinfo"
GCCJMPSTART_HINFO_FIELD.full_name = ".progame.gccjmpstart.hinfo"
GCCJMPSTART_HINFO_FIELD.number = 4
GCCJMPSTART_HINFO_FIELD.index = 3
GCCJMPSTART_HINFO_FIELD.label = 1
GCCJMPSTART_HINFO_FIELD.has_default_value = false
GCCJMPSTART_HINFO_FIELD.default_value = nil
GCCJMPSTART_HINFO_FIELD.message_type = ST_CJMP_PB_CJMPINFO
GCCJMPSTART_HINFO_FIELD.type = 11
GCCJMPSTART_HINFO_FIELD.cpp_type = 10

GCCJMPSTART_PSLIST_FIELD.name = "pslist"
GCCJMPSTART_PSLIST_FIELD.full_name = ".progame.gccjmpstart.pslist"
GCCJMPSTART_PSLIST_FIELD.number = 5
GCCJMPSTART_PSLIST_FIELD.index = 4
GCCJMPSTART_PSLIST_FIELD.label = 3
GCCJMPSTART_PSLIST_FIELD.has_default_value = false
GCCJMPSTART_PSLIST_FIELD.default_value = {}
GCCJMPSTART_PSLIST_FIELD.message_type = ST_HUMAN_PB_PLAYERSIMPLEINFO
GCCJMPSTART_PSLIST_FIELD.type = 11
GCCJMPSTART_PSLIST_FIELD.cpp_type = 10

GCCJMPSTART_ROUND_FIELD.name = "round"
GCCJMPSTART_ROUND_FIELD.full_name = ".progame.gccjmpstart.round"
GCCJMPSTART_ROUND_FIELD.number = 6
GCCJMPSTART_ROUND_FIELD.index = 5
GCCJMPSTART_ROUND_FIELD.label = 1
GCCJMPSTART_ROUND_FIELD.has_default_value = false
GCCJMPSTART_ROUND_FIELD.default_value = 0
GCCJMPSTART_ROUND_FIELD.type = 5
GCCJMPSTART_ROUND_FIELD.cpp_type = 1

GCCJMPSTART_INNINGS_FIELD.name = "innings"
GCCJMPSTART_INNINGS_FIELD.full_name = ".progame.gccjmpstart.innings"
GCCJMPSTART_INNINGS_FIELD.number = 7
GCCJMPSTART_INNINGS_FIELD.index = 6
GCCJMPSTART_INNINGS_FIELD.label = 1
GCCJMPSTART_INNINGS_FIELD.has_default_value = false
GCCJMPSTART_INNINGS_FIELD.default_value = 0
GCCJMPSTART_INNINGS_FIELD.type = 5
GCCJMPSTART_INNINGS_FIELD.cpp_type = 1

GCCJMPSTART_PLAYTYPE_FIELD.name = "playtype"
GCCJMPSTART_PLAYTYPE_FIELD.full_name = ".progame.gccjmpstart.playtype"
GCCJMPSTART_PLAYTYPE_FIELD.number = 8
GCCJMPSTART_PLAYTYPE_FIELD.index = 7
GCCJMPSTART_PLAYTYPE_FIELD.label = 1
GCCJMPSTART_PLAYTYPE_FIELD.has_default_value = false
GCCJMPSTART_PLAYTYPE_FIELD.default_value = 0
GCCJMPSTART_PLAYTYPE_FIELD.type = 5
GCCJMPSTART_PLAYTYPE_FIELD.cpp_type = 1

GCCJMPSTART_DIANSHU_FIELD.name = "dianshu"
GCCJMPSTART_DIANSHU_FIELD.full_name = ".progame.gccjmpstart.dianshu"
GCCJMPSTART_DIANSHU_FIELD.number = 9
GCCJMPSTART_DIANSHU_FIELD.index = 8
GCCJMPSTART_DIANSHU_FIELD.label = 1
GCCJMPSTART_DIANSHU_FIELD.has_default_value = false
GCCJMPSTART_DIANSHU_FIELD.default_value = 0
GCCJMPSTART_DIANSHU_FIELD.type = 5
GCCJMPSTART_DIANSHU_FIELD.cpp_type = 1

GCCJMPSTART_HUASE_FIELD.name = "huase"
GCCJMPSTART_HUASE_FIELD.full_name = ".progame.gccjmpstart.huase"
GCCJMPSTART_HUASE_FIELD.number = 10
GCCJMPSTART_HUASE_FIELD.index = 9
GCCJMPSTART_HUASE_FIELD.label = 1
GCCJMPSTART_HUASE_FIELD.has_default_value = false
GCCJMPSTART_HUASE_FIELD.default_value = 0
GCCJMPSTART_HUASE_FIELD.type = 5
GCCJMPSTART_HUASE_FIELD.cpp_type = 1

GCCJMPSTART_CANJETTON_FIELD.name = "canjetton"
GCCJMPSTART_CANJETTON_FIELD.full_name = ".progame.gccjmpstart.canjetton"
GCCJMPSTART_CANJETTON_FIELD.number = 11
GCCJMPSTART_CANJETTON_FIELD.index = 10
GCCJMPSTART_CANJETTON_FIELD.label = 1
GCCJMPSTART_CANJETTON_FIELD.has_default_value = false
GCCJMPSTART_CANJETTON_FIELD.default_value = ""
GCCJMPSTART_CANJETTON_FIELD.type = 9
GCCJMPSTART_CANJETTON_FIELD.cpp_type = 9

GCCJMPSTART_LEGALKEY_FIELD.name = "legalkey"
GCCJMPSTART_LEGALKEY_FIELD.full_name = ".progame.gccjmpstart.legalkey"
GCCJMPSTART_LEGALKEY_FIELD.number = 12
GCCJMPSTART_LEGALKEY_FIELD.index = 11
GCCJMPSTART_LEGALKEY_FIELD.label = 1
GCCJMPSTART_LEGALKEY_FIELD.has_default_value = false
GCCJMPSTART_LEGALKEY_FIELD.default_value = ""
GCCJMPSTART_LEGALKEY_FIELD.type = 9
GCCJMPSTART_LEGALKEY_FIELD.cpp_type = 9

GCCJMPSTART.name = "gccjmpstart"
GCCJMPSTART.full_name = ".progame.gccjmpstart"
GCCJMPSTART.nested_types = {}
GCCJMPSTART.enum_types = {}
GCCJMPSTART.fields = {GCCJMPSTART_RESULT_FIELD, GCCJMPSTART_STATE_FIELD, GCCJMPSTART_TIMEMARK_FIELD, GCCJMPSTART_HINFO_FIELD, GCCJMPSTART_PSLIST_FIELD, GCCJMPSTART_ROUND_FIELD, GCCJMPSTART_INNINGS_FIELD, GCCJMPSTART_PLAYTYPE_FIELD, GCCJMPSTART_DIANSHU_FIELD, GCCJMPSTART_HUASE_FIELD, GCCJMPSTART_CANJETTON_FIELD, GCCJMPSTART_LEGALKEY_FIELD}
GCCJMPSTART.is_extendable = false
GCCJMPSTART.extensions = {}

gccjmpgamehistoryupdata = protobuf.Message(GCCJMPGAMEHISTORYUPDATA)
gccjmphistory = protobuf.Message(GCCJMPHISTORY)
gccjmpstart = protobuf.Message(GCCJMPSTART)

----------nimol modify---------
MSG_CJMP2_PB_GCCJMPGAMEHISTORYUPDATA = GCCJMPGAMEHISTORYUPDATA
MSG_CJMP2_PB_GCCJMPHISTORY = GCCJMPHISTORY
MSG_CJMP2_PB_GCCJMPSTART = GCCJMPSTART
