-- Generated By protoc-gen-lua Do not Edit
local protobuf = require "protobuf"
local st_lhdb_pb = require("st_lhdb_pb")
local st_human_pb = require("st_human_pb")
----------nimol modify---------
local ST_LHDB_PB_LHDBGEMCOLUMN = st_lhdb_pb.ST_LHDB_PB_LHDBGEMCOLUMN
local ST_LHDB_PB_LHDBINFO = st_lhdb_pb.ST_LHDB_PB_LHDBINFO
local ST_LHDB_PB_LHDBPRIAVEDATA = st_lhdb_pb.ST_LHDB_PB_LHDBPRIAVEDATA
local ST_LHDB_PB_LHDBSCORELIST = st_lhdb_pb.ST_LHDB_PB_LHDBSCORELIST
module('msg_lhdb_pb')


local CGLHDBENTER = protobuf.Descriptor();
local CGLHDBENTER_USERID_FIELD = protobuf.FieldDescriptor();
local CGLHDBENTER_TABLETYPE_FIELD = protobuf.FieldDescriptor();
local GCLHDBENTER = protobuf.Descriptor();
local GCLHDBENTER_RESULT_FIELD = protobuf.FieldDescriptor();
local GCLHDBENTER_TINFO_FIELD = protobuf.FieldDescriptor();
local GCLHDBENTER_DATA_FIELD = protobuf.FieldDescriptor();
local CGLHDBLEAVE = protobuf.Descriptor();
local CGLHDBLEAVE_USERID_FIELD = protobuf.FieldDescriptor();
local CGLHDBLEAVE_TABLEID_FIELD = protobuf.FieldDescriptor();
local CGLHDBLEAVE_SAVEGAMEDATA_FIELD = protobuf.FieldDescriptor();
local GCLHDBLEAVE = protobuf.Descriptor();
local GCLHDBLEAVE_RESULT_FIELD = protobuf.FieldDescriptor();
local GCLHDBLEAVE_USERID_FIELD = protobuf.FieldDescriptor();
local CGLHDBSTART = protobuf.Descriptor();
local CGLHDBSTART_USERID_FIELD = protobuf.FieldDescriptor();
local CGLHDBSTART_TABLEID_FIELD = protobuf.FieldDescriptor();
local CGLHDBSTART_POURJETTONLIST_FIELD = protobuf.FieldDescriptor();
local GCLHDBSTART = protobuf.Descriptor();
local GCLHDBSTART_RESULT_FIELD = protobuf.FieldDescriptor();
local GCLHDBSTART_TINFO_FIELD = protobuf.FieldDescriptor();
local GCLHDBSTART_POURJETTONLIST_FIELD = protobuf.FieldDescriptor();
local GCLHDBSTART_GEMMAP_FIELD = protobuf.FieldDescriptor();
local GCLHDBSTART_RESERVEGEMMAP_FIELD = protobuf.FieldDescriptor();
local GCLHDBSTART_TOTALSCORE_FIELD = protobuf.FieldDescriptor();
local GCLHDBSTART_PROCLIST_FIELD = protobuf.FieldDescriptor();
local GCLHDBSTART_ONCESCORE_FIELD = protobuf.FieldDescriptor();
local GCLHDBSTART_ROUND_FIELD = protobuf.FieldDescriptor();
local GCLHDBSTART_BOARDLENGTH_FIELD = protobuf.FieldDescriptor();
local GCLHDBSTART_PRIZELIST_FIELD = protobuf.FieldDescriptor();
local GCLHDBSTART_PRIZEID_FIELD = protobuf.FieldDescriptor();

CGLHDBENTER_USERID_FIELD.name = "userid"
CGLHDBENTER_USERID_FIELD.full_name = ".progame.cglhdbenter.userid"
CGLHDBENTER_USERID_FIELD.number = 1
CGLHDBENTER_USERID_FIELD.index = 0
CGLHDBENTER_USERID_FIELD.label = 1
CGLHDBENTER_USERID_FIELD.has_default_value = false
CGLHDBENTER_USERID_FIELD.default_value = 0
CGLHDBENTER_USERID_FIELD.type = 5
CGLHDBENTER_USERID_FIELD.cpp_type = 1

CGLHDBENTER_TABLETYPE_FIELD.name = "tabletype"
CGLHDBENTER_TABLETYPE_FIELD.full_name = ".progame.cglhdbenter.tabletype"
CGLHDBENTER_TABLETYPE_FIELD.number = 2
CGLHDBENTER_TABLETYPE_FIELD.index = 1
CGLHDBENTER_TABLETYPE_FIELD.label = 1
CGLHDBENTER_TABLETYPE_FIELD.has_default_value = false
CGLHDBENTER_TABLETYPE_FIELD.default_value = 0
CGLHDBENTER_TABLETYPE_FIELD.type = 5
CGLHDBENTER_TABLETYPE_FIELD.cpp_type = 1

CGLHDBENTER.name = "cglhdbenter"
CGLHDBENTER.full_name = ".progame.cglhdbenter"
CGLHDBENTER.nested_types = {}
CGLHDBENTER.enum_types = {}
CGLHDBENTER.fields = {CGLHDBENTER_USERID_FIELD, CGLHDBENTER_TABLETYPE_FIELD}
CGLHDBENTER.is_extendable = false
CGLHDBENTER.extensions = {}
GCLHDBENTER_RESULT_FIELD.name = "result"
GCLHDBENTER_RESULT_FIELD.full_name = ".progame.gclhdbenter.result"
GCLHDBENTER_RESULT_FIELD.number = 1
GCLHDBENTER_RESULT_FIELD.index = 0
GCLHDBENTER_RESULT_FIELD.label = 1
GCLHDBENTER_RESULT_FIELD.has_default_value = false
GCLHDBENTER_RESULT_FIELD.default_value = 0
GCLHDBENTER_RESULT_FIELD.type = 5
GCLHDBENTER_RESULT_FIELD.cpp_type = 1

GCLHDBENTER_TINFO_FIELD.name = "tinfo"
GCLHDBENTER_TINFO_FIELD.full_name = ".progame.gclhdbenter.tinfo"
GCLHDBENTER_TINFO_FIELD.number = 2
GCLHDBENTER_TINFO_FIELD.index = 1
GCLHDBENTER_TINFO_FIELD.label = 1
GCLHDBENTER_TINFO_FIELD.has_default_value = false
GCLHDBENTER_TINFO_FIELD.default_value = nil
GCLHDBENTER_TINFO_FIELD.message_type = ST_LHDB_PB_LHDBINFO
GCLHDBENTER_TINFO_FIELD.type = 11
GCLHDBENTER_TINFO_FIELD.cpp_type = 10

GCLHDBENTER_DATA_FIELD.name = "data"
GCLHDBENTER_DATA_FIELD.full_name = ".progame.gclhdbenter.data"
GCLHDBENTER_DATA_FIELD.number = 3
GCLHDBENTER_DATA_FIELD.index = 2
GCLHDBENTER_DATA_FIELD.label = 1
GCLHDBENTER_DATA_FIELD.has_default_value = false
GCLHDBENTER_DATA_FIELD.default_value = nil
GCLHDBENTER_DATA_FIELD.message_type = ST_LHDB_PB_LHDBPRIAVEDATA
GCLHDBENTER_DATA_FIELD.type = 11
GCLHDBENTER_DATA_FIELD.cpp_type = 10

GCLHDBENTER.name = "gclhdbenter"
GCLHDBENTER.full_name = ".progame.gclhdbenter"
GCLHDBENTER.nested_types = {}
GCLHDBENTER.enum_types = {}
GCLHDBENTER.fields = {GCLHDBENTER_RESULT_FIELD, GCLHDBENTER_TINFO_FIELD, GCLHDBENTER_DATA_FIELD}
GCLHDBENTER.is_extendable = false
GCLHDBENTER.extensions = {}
CGLHDBLEAVE_USERID_FIELD.name = "userid"
CGLHDBLEAVE_USERID_FIELD.full_name = ".progame.cglhdbleave.userid"
CGLHDBLEAVE_USERID_FIELD.number = 1
CGLHDBLEAVE_USERID_FIELD.index = 0
CGLHDBLEAVE_USERID_FIELD.label = 1
CGLHDBLEAVE_USERID_FIELD.has_default_value = false
CGLHDBLEAVE_USERID_FIELD.default_value = 0
CGLHDBLEAVE_USERID_FIELD.type = 5
CGLHDBLEAVE_USERID_FIELD.cpp_type = 1

CGLHDBLEAVE_TABLEID_FIELD.name = "tableid"
CGLHDBLEAVE_TABLEID_FIELD.full_name = ".progame.cglhdbleave.tableid"
CGLHDBLEAVE_TABLEID_FIELD.number = 2
CGLHDBLEAVE_TABLEID_FIELD.index = 1
CGLHDBLEAVE_TABLEID_FIELD.label = 1
CGLHDBLEAVE_TABLEID_FIELD.has_default_value = false
CGLHDBLEAVE_TABLEID_FIELD.default_value = 0
CGLHDBLEAVE_TABLEID_FIELD.type = 5
CGLHDBLEAVE_TABLEID_FIELD.cpp_type = 1

CGLHDBLEAVE_SAVEGAMEDATA_FIELD.name = "savegamedata"
CGLHDBLEAVE_SAVEGAMEDATA_FIELD.full_name = ".progame.cglhdbleave.savegamedata"
CGLHDBLEAVE_SAVEGAMEDATA_FIELD.number = 3
CGLHDBLEAVE_SAVEGAMEDATA_FIELD.index = 2
CGLHDBLEAVE_SAVEGAMEDATA_FIELD.label = 1
CGLHDBLEAVE_SAVEGAMEDATA_FIELD.has_default_value = false
CGLHDBLEAVE_SAVEGAMEDATA_FIELD.default_value = 0
CGLHDBLEAVE_SAVEGAMEDATA_FIELD.type = 5
CGLHDBLEAVE_SAVEGAMEDATA_FIELD.cpp_type = 1

CGLHDBLEAVE.name = "cglhdbleave"
CGLHDBLEAVE.full_name = ".progame.cglhdbleave"
CGLHDBLEAVE.nested_types = {}
CGLHDBLEAVE.enum_types = {}
CGLHDBLEAVE.fields = {CGLHDBLEAVE_USERID_FIELD, CGLHDBLEAVE_TABLEID_FIELD, CGLHDBLEAVE_SAVEGAMEDATA_FIELD}
CGLHDBLEAVE.is_extendable = false
CGLHDBLEAVE.extensions = {}
GCLHDBLEAVE_RESULT_FIELD.name = "result"
GCLHDBLEAVE_RESULT_FIELD.full_name = ".progame.gclhdbleave.result"
GCLHDBLEAVE_RESULT_FIELD.number = 1
GCLHDBLEAVE_RESULT_FIELD.index = 0
GCLHDBLEAVE_RESULT_FIELD.label = 1
GCLHDBLEAVE_RESULT_FIELD.has_default_value = false
GCLHDBLEAVE_RESULT_FIELD.default_value = 0
GCLHDBLEAVE_RESULT_FIELD.type = 5
GCLHDBLEAVE_RESULT_FIELD.cpp_type = 1

GCLHDBLEAVE_USERID_FIELD.name = "userid"
GCLHDBLEAVE_USERID_FIELD.full_name = ".progame.gclhdbleave.userid"
GCLHDBLEAVE_USERID_FIELD.number = 2
GCLHDBLEAVE_USERID_FIELD.index = 1
GCLHDBLEAVE_USERID_FIELD.label = 1
GCLHDBLEAVE_USERID_FIELD.has_default_value = false
GCLHDBLEAVE_USERID_FIELD.default_value = 0
GCLHDBLEAVE_USERID_FIELD.type = 5
GCLHDBLEAVE_USERID_FIELD.cpp_type = 1

GCLHDBLEAVE.name = "gclhdbleave"
GCLHDBLEAVE.full_name = ".progame.gclhdbleave"
GCLHDBLEAVE.nested_types = {}
GCLHDBLEAVE.enum_types = {}
GCLHDBLEAVE.fields = {GCLHDBLEAVE_RESULT_FIELD, GCLHDBLEAVE_USERID_FIELD}
GCLHDBLEAVE.is_extendable = false
GCLHDBLEAVE.extensions = {}
CGLHDBSTART_USERID_FIELD.name = "userid"
CGLHDBSTART_USERID_FIELD.full_name = ".progame.cglhdbstart.userid"
CGLHDBSTART_USERID_FIELD.number = 1
CGLHDBSTART_USERID_FIELD.index = 0
CGLHDBSTART_USERID_FIELD.label = 1
CGLHDBSTART_USERID_FIELD.has_default_value = false
CGLHDBSTART_USERID_FIELD.default_value = 0
CGLHDBSTART_USERID_FIELD.type = 5
CGLHDBSTART_USERID_FIELD.cpp_type = 1

CGLHDBSTART_TABLEID_FIELD.name = "tableid"
CGLHDBSTART_TABLEID_FIELD.full_name = ".progame.cglhdbstart.tableid"
CGLHDBSTART_TABLEID_FIELD.number = 2
CGLHDBSTART_TABLEID_FIELD.index = 1
CGLHDBSTART_TABLEID_FIELD.label = 1
CGLHDBSTART_TABLEID_FIELD.has_default_value = false
CGLHDBSTART_TABLEID_FIELD.default_value = 0
CGLHDBSTART_TABLEID_FIELD.type = 5
CGLHDBSTART_TABLEID_FIELD.cpp_type = 1

CGLHDBSTART_POURJETTONLIST_FIELD.name = "pourjettonlist"
CGLHDBSTART_POURJETTONLIST_FIELD.full_name = ".progame.cglhdbstart.pourjettonlist"
CGLHDBSTART_POURJETTONLIST_FIELD.number = 3
CGLHDBSTART_POURJETTONLIST_FIELD.index = 2
CGLHDBSTART_POURJETTONLIST_FIELD.label = 3
CGLHDBSTART_POURJETTONLIST_FIELD.has_default_value = false
CGLHDBSTART_POURJETTONLIST_FIELD.default_value = {}
CGLHDBSTART_POURJETTONLIST_FIELD.type = 9
CGLHDBSTART_POURJETTONLIST_FIELD.cpp_type = 9

CGLHDBSTART.name = "cglhdbstart"
CGLHDBSTART.full_name = ".progame.cglhdbstart"
CGLHDBSTART.nested_types = {}
CGLHDBSTART.enum_types = {}
CGLHDBSTART.fields = {CGLHDBSTART_USERID_FIELD, CGLHDBSTART_TABLEID_FIELD, CGLHDBSTART_POURJETTONLIST_FIELD}
CGLHDBSTART.is_extendable = false
CGLHDBSTART.extensions = {}
GCLHDBSTART_RESULT_FIELD.name = "result"
GCLHDBSTART_RESULT_FIELD.full_name = ".progame.gclhdbstart.result"
GCLHDBSTART_RESULT_FIELD.number = 1
GCLHDBSTART_RESULT_FIELD.index = 0
GCLHDBSTART_RESULT_FIELD.label = 1
GCLHDBSTART_RESULT_FIELD.has_default_value = false
GCLHDBSTART_RESULT_FIELD.default_value = 0
GCLHDBSTART_RESULT_FIELD.type = 5
GCLHDBSTART_RESULT_FIELD.cpp_type = 1

GCLHDBSTART_TINFO_FIELD.name = "tinfo"
GCLHDBSTART_TINFO_FIELD.full_name = ".progame.gclhdbstart.tinfo"
GCLHDBSTART_TINFO_FIELD.number = 2
GCLHDBSTART_TINFO_FIELD.index = 1
GCLHDBSTART_TINFO_FIELD.label = 1
GCLHDBSTART_TINFO_FIELD.has_default_value = false
GCLHDBSTART_TINFO_FIELD.default_value = nil
GCLHDBSTART_TINFO_FIELD.message_type = ST_LHDB_PB_LHDBINFO
GCLHDBSTART_TINFO_FIELD.type = 11
GCLHDBSTART_TINFO_FIELD.cpp_type = 10

GCLHDBSTART_POURJETTONLIST_FIELD.name = "pourjettonlist"
GCLHDBSTART_POURJETTONLIST_FIELD.full_name = ".progame.gclhdbstart.pourjettonlist"
GCLHDBSTART_POURJETTONLIST_FIELD.number = 3
GCLHDBSTART_POURJETTONLIST_FIELD.index = 2
GCLHDBSTART_POURJETTONLIST_FIELD.label = 3
GCLHDBSTART_POURJETTONLIST_FIELD.has_default_value = false
GCLHDBSTART_POURJETTONLIST_FIELD.default_value = {}
GCLHDBSTART_POURJETTONLIST_FIELD.type = 9
GCLHDBSTART_POURJETTONLIST_FIELD.cpp_type = 9

GCLHDBSTART_GEMMAP_FIELD.name = "gemmap"
GCLHDBSTART_GEMMAP_FIELD.full_name = ".progame.gclhdbstart.gemmap"
GCLHDBSTART_GEMMAP_FIELD.number = 4
GCLHDBSTART_GEMMAP_FIELD.index = 3
GCLHDBSTART_GEMMAP_FIELD.label = 3
GCLHDBSTART_GEMMAP_FIELD.has_default_value = false
GCLHDBSTART_GEMMAP_FIELD.default_value = {}
GCLHDBSTART_GEMMAP_FIELD.message_type = ST_LHDB_PB_LHDBGEMCOLUMN
GCLHDBSTART_GEMMAP_FIELD.type = 11
GCLHDBSTART_GEMMAP_FIELD.cpp_type = 10

GCLHDBSTART_RESERVEGEMMAP_FIELD.name = "reservegemmap"
GCLHDBSTART_RESERVEGEMMAP_FIELD.full_name = ".progame.gclhdbstart.reservegemmap"
GCLHDBSTART_RESERVEGEMMAP_FIELD.number = 5
GCLHDBSTART_RESERVEGEMMAP_FIELD.index = 4
GCLHDBSTART_RESERVEGEMMAP_FIELD.label = 3
GCLHDBSTART_RESERVEGEMMAP_FIELD.has_default_value = false
GCLHDBSTART_RESERVEGEMMAP_FIELD.default_value = {}
GCLHDBSTART_RESERVEGEMMAP_FIELD.message_type = ST_LHDB_PB_LHDBGEMCOLUMN
GCLHDBSTART_RESERVEGEMMAP_FIELD.type = 11
GCLHDBSTART_RESERVEGEMMAP_FIELD.cpp_type = 10

GCLHDBSTART_TOTALSCORE_FIELD.name = "totalscore"
GCLHDBSTART_TOTALSCORE_FIELD.full_name = ".progame.gclhdbstart.totalscore"
GCLHDBSTART_TOTALSCORE_FIELD.number = 6
GCLHDBSTART_TOTALSCORE_FIELD.index = 5
GCLHDBSTART_TOTALSCORE_FIELD.label = 1
GCLHDBSTART_TOTALSCORE_FIELD.has_default_value = false
GCLHDBSTART_TOTALSCORE_FIELD.default_value = ""
GCLHDBSTART_TOTALSCORE_FIELD.type = 9
GCLHDBSTART_TOTALSCORE_FIELD.cpp_type = 9

GCLHDBSTART_PROCLIST_FIELD.name = "proclist"
GCLHDBSTART_PROCLIST_FIELD.full_name = ".progame.gclhdbstart.proclist"
GCLHDBSTART_PROCLIST_FIELD.number = 7
GCLHDBSTART_PROCLIST_FIELD.index = 6
GCLHDBSTART_PROCLIST_FIELD.label = 3
GCLHDBSTART_PROCLIST_FIELD.has_default_value = false
GCLHDBSTART_PROCLIST_FIELD.default_value = {}
GCLHDBSTART_PROCLIST_FIELD.message_type = ST_LHDB_PB_LHDBSCORELIST
GCLHDBSTART_PROCLIST_FIELD.type = 11
GCLHDBSTART_PROCLIST_FIELD.cpp_type = 10

GCLHDBSTART_ONCESCORE_FIELD.name = "oncescore"
GCLHDBSTART_ONCESCORE_FIELD.full_name = ".progame.gclhdbstart.oncescore"
GCLHDBSTART_ONCESCORE_FIELD.number = 8
GCLHDBSTART_ONCESCORE_FIELD.index = 7
GCLHDBSTART_ONCESCORE_FIELD.label = 1
GCLHDBSTART_ONCESCORE_FIELD.has_default_value = false
GCLHDBSTART_ONCESCORE_FIELD.default_value = ""
GCLHDBSTART_ONCESCORE_FIELD.type = 9
GCLHDBSTART_ONCESCORE_FIELD.cpp_type = 9

GCLHDBSTART_ROUND_FIELD.name = "round"
GCLHDBSTART_ROUND_FIELD.full_name = ".progame.gclhdbstart.round"
GCLHDBSTART_ROUND_FIELD.number = 9
GCLHDBSTART_ROUND_FIELD.index = 8
GCLHDBSTART_ROUND_FIELD.label = 1
GCLHDBSTART_ROUND_FIELD.has_default_value = false
GCLHDBSTART_ROUND_FIELD.default_value = 0
GCLHDBSTART_ROUND_FIELD.type = 5
GCLHDBSTART_ROUND_FIELD.cpp_type = 1

GCLHDBSTART_BOARDLENGTH_FIELD.name = "boardlength"
GCLHDBSTART_BOARDLENGTH_FIELD.full_name = ".progame.gclhdbstart.boardlength"
GCLHDBSTART_BOARDLENGTH_FIELD.number = 10
GCLHDBSTART_BOARDLENGTH_FIELD.index = 9
GCLHDBSTART_BOARDLENGTH_FIELD.label = 1
GCLHDBSTART_BOARDLENGTH_FIELD.has_default_value = false
GCLHDBSTART_BOARDLENGTH_FIELD.default_value = 0
GCLHDBSTART_BOARDLENGTH_FIELD.type = 5
GCLHDBSTART_BOARDLENGTH_FIELD.cpp_type = 1

GCLHDBSTART_PRIZELIST_FIELD.name = "prizelist"
GCLHDBSTART_PRIZELIST_FIELD.full_name = ".progame.gclhdbstart.prizelist"
GCLHDBSTART_PRIZELIST_FIELD.number = 11
GCLHDBSTART_PRIZELIST_FIELD.index = 10
GCLHDBSTART_PRIZELIST_FIELD.label = 3
GCLHDBSTART_PRIZELIST_FIELD.has_default_value = false
GCLHDBSTART_PRIZELIST_FIELD.default_value = {}
GCLHDBSTART_PRIZELIST_FIELD.type = 9
GCLHDBSTART_PRIZELIST_FIELD.cpp_type = 9

GCLHDBSTART_PRIZEID_FIELD.name = "prizeid"
GCLHDBSTART_PRIZEID_FIELD.full_name = ".progame.gclhdbstart.prizeid"
GCLHDBSTART_PRIZEID_FIELD.number = 12
GCLHDBSTART_PRIZEID_FIELD.index = 11
GCLHDBSTART_PRIZEID_FIELD.label = 1
GCLHDBSTART_PRIZEID_FIELD.has_default_value = false
GCLHDBSTART_PRIZEID_FIELD.default_value = 0
GCLHDBSTART_PRIZEID_FIELD.type = 5
GCLHDBSTART_PRIZEID_FIELD.cpp_type = 1

GCLHDBSTART.name = "gclhdbstart"
GCLHDBSTART.full_name = ".progame.gclhdbstart"
GCLHDBSTART.nested_types = {}
GCLHDBSTART.enum_types = {}
GCLHDBSTART.fields = {GCLHDBSTART_RESULT_FIELD, GCLHDBSTART_TINFO_FIELD, GCLHDBSTART_POURJETTONLIST_FIELD, GCLHDBSTART_GEMMAP_FIELD, GCLHDBSTART_RESERVEGEMMAP_FIELD, GCLHDBSTART_TOTALSCORE_FIELD, GCLHDBSTART_PROCLIST_FIELD, GCLHDBSTART_ONCESCORE_FIELD, GCLHDBSTART_ROUND_FIELD, GCLHDBSTART_BOARDLENGTH_FIELD, GCLHDBSTART_PRIZELIST_FIELD, GCLHDBSTART_PRIZEID_FIELD}
GCLHDBSTART.is_extendable = false
GCLHDBSTART.extensions = {}

cglhdbenter = protobuf.Message(CGLHDBENTER)
cglhdbleave = protobuf.Message(CGLHDBLEAVE)
cglhdbstart = protobuf.Message(CGLHDBSTART)
gclhdbenter = protobuf.Message(GCLHDBENTER)
gclhdbleave = protobuf.Message(GCLHDBLEAVE)
gclhdbstart = protobuf.Message(GCLHDBSTART)

----------nimol modify---------
MSG_LHDB_PB_CGLHDBENTER = CGLHDBENTER
MSG_LHDB_PB_CGLHDBLEAVE = CGLHDBLEAVE
MSG_LHDB_PB_CGLHDBSTART = CGLHDBSTART
MSG_LHDB_PB_GCLHDBENTER = GCLHDBENTER
MSG_LHDB_PB_GCLHDBLEAVE = GCLHDBLEAVE
MSG_LHDB_PB_GCLHDBSTART = GCLHDBSTART
