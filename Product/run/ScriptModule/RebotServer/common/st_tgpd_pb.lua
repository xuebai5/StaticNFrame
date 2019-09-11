-- Generated By protoc-gen-lua Do not Edit
local protobuf = require "protobuf"
local st_human_pb = require("st_human_pb")
module('st_tgpd_pb')


local TGPDINFO = protobuf.Descriptor();
local TGPDINFO_TABLEID_FIELD = protobuf.FieldDescriptor();
local TGPDINFO_TABLETYPE_FIELD = protobuf.FieldDescriptor();
local TGPDINFO_STATE_FIELD = protobuf.FieldDescriptor();
local TGPDINFO_TIMEMARK_FIELD = protobuf.FieldDescriptor();
local TGPDINFO_USERIDLIST_FIELD = protobuf.FieldDescriptor();
local TGPDINFO_MINJETTON_FIELD = protobuf.FieldDescriptor();
local TGPDINFO_BANKERID_FIELD = protobuf.FieldDescriptor();
local TGPDINFO_BANKERJETTON_FIELD = protobuf.FieldDescriptor();
local TGPDINFO_BANKERNAME_FIELD = protobuf.FieldDescriptor();
local TGPDINFO_BANKERFACEID_FIELD = protobuf.FieldDescriptor();
local TGPDINFO_BANKERLIMIT_FIELD = protobuf.FieldDescriptor();
local TGPDINFO_DROPBANKER_FIELD = protobuf.FieldDescriptor();
local TGPDPOINT = protobuf.Descriptor();
local TGPDPOINT_X_FIELD = protobuf.FieldDescriptor();
local TGPDPOINT_Y_FIELD = protobuf.FieldDescriptor();
local TGPDGEMCOLUMN = protobuf.Descriptor();
local TGPDGEMCOLUMN_LIST_FIELD = protobuf.FieldDescriptor();
local TGPDSCOREITEM = protobuf.Descriptor();
local TGPDSCOREITEM_GEM_FIELD = protobuf.FieldDescriptor();
local TGPDSCOREITEM_SCORELIST_FIELD = protobuf.FieldDescriptor();
local TGPDSCOREITEM_POINTLIST_FIELD = protobuf.FieldDescriptor();
local TGPDSCORELIST = protobuf.Descriptor();
local TGPDSCORELIST_LIST_FIELD = protobuf.FieldDescriptor();
local TGPDPRIAVEDATA = protobuf.Descriptor();
local TGPDPRIAVEDATA_TOTALSCORE_FIELD = protobuf.FieldDescriptor();
local TGPDPRIAVEDATA_ROUND_FIELD = protobuf.FieldDescriptor();
local TGPDPRIAVEDATA_BOARDLENGTH_FIELD = protobuf.FieldDescriptor();
local TGPDPRIAVEDATA_GEMMAP_FIELD = protobuf.FieldDescriptor();
local TGPDPRIAVEDATA_RESERVEGEMMAP_FIELD = protobuf.FieldDescriptor();
local TGPDPRIAVEDATA_POURJETTONLIST_FIELD = protobuf.FieldDescriptor();
local TGPDPRIAVEDATA_TIMEMARK_FIELD = protobuf.FieldDescriptor();

TGPDINFO_TABLEID_FIELD.name = "tableid"
TGPDINFO_TABLEID_FIELD.full_name = ".progame.tgpdinfo.tableid"
TGPDINFO_TABLEID_FIELD.number = 1
TGPDINFO_TABLEID_FIELD.index = 0
TGPDINFO_TABLEID_FIELD.label = 1
TGPDINFO_TABLEID_FIELD.has_default_value = false
TGPDINFO_TABLEID_FIELD.default_value = 0
TGPDINFO_TABLEID_FIELD.type = 5
TGPDINFO_TABLEID_FIELD.cpp_type = 1

TGPDINFO_TABLETYPE_FIELD.name = "tabletype"
TGPDINFO_TABLETYPE_FIELD.full_name = ".progame.tgpdinfo.tabletype"
TGPDINFO_TABLETYPE_FIELD.number = 2
TGPDINFO_TABLETYPE_FIELD.index = 1
TGPDINFO_TABLETYPE_FIELD.label = 1
TGPDINFO_TABLETYPE_FIELD.has_default_value = false
TGPDINFO_TABLETYPE_FIELD.default_value = 0
TGPDINFO_TABLETYPE_FIELD.type = 5
TGPDINFO_TABLETYPE_FIELD.cpp_type = 1

TGPDINFO_STATE_FIELD.name = "state"
TGPDINFO_STATE_FIELD.full_name = ".progame.tgpdinfo.state"
TGPDINFO_STATE_FIELD.number = 3
TGPDINFO_STATE_FIELD.index = 2
TGPDINFO_STATE_FIELD.label = 1
TGPDINFO_STATE_FIELD.has_default_value = false
TGPDINFO_STATE_FIELD.default_value = 0
TGPDINFO_STATE_FIELD.type = 5
TGPDINFO_STATE_FIELD.cpp_type = 1

TGPDINFO_TIMEMARK_FIELD.name = "timemark"
TGPDINFO_TIMEMARK_FIELD.full_name = ".progame.tgpdinfo.timemark"
TGPDINFO_TIMEMARK_FIELD.number = 4
TGPDINFO_TIMEMARK_FIELD.index = 3
TGPDINFO_TIMEMARK_FIELD.label = 1
TGPDINFO_TIMEMARK_FIELD.has_default_value = false
TGPDINFO_TIMEMARK_FIELD.default_value = 0
TGPDINFO_TIMEMARK_FIELD.type = 5
TGPDINFO_TIMEMARK_FIELD.cpp_type = 1

TGPDINFO_USERIDLIST_FIELD.name = "useridlist"
TGPDINFO_USERIDLIST_FIELD.full_name = ".progame.tgpdinfo.useridlist"
TGPDINFO_USERIDLIST_FIELD.number = 5
TGPDINFO_USERIDLIST_FIELD.index = 4
TGPDINFO_USERIDLIST_FIELD.label = 3
TGPDINFO_USERIDLIST_FIELD.has_default_value = false
TGPDINFO_USERIDLIST_FIELD.default_value = {}
TGPDINFO_USERIDLIST_FIELD.type = 5
TGPDINFO_USERIDLIST_FIELD.cpp_type = 1

TGPDINFO_MINJETTON_FIELD.name = "minjetton"
TGPDINFO_MINJETTON_FIELD.full_name = ".progame.tgpdinfo.minjetton"
TGPDINFO_MINJETTON_FIELD.number = 6
TGPDINFO_MINJETTON_FIELD.index = 5
TGPDINFO_MINJETTON_FIELD.label = 1
TGPDINFO_MINJETTON_FIELD.has_default_value = false
TGPDINFO_MINJETTON_FIELD.default_value = ""
TGPDINFO_MINJETTON_FIELD.type = 9
TGPDINFO_MINJETTON_FIELD.cpp_type = 9

TGPDINFO_BANKERID_FIELD.name = "bankerid"
TGPDINFO_BANKERID_FIELD.full_name = ".progame.tgpdinfo.bankerid"
TGPDINFO_BANKERID_FIELD.number = 8
TGPDINFO_BANKERID_FIELD.index = 6
TGPDINFO_BANKERID_FIELD.label = 1
TGPDINFO_BANKERID_FIELD.has_default_value = false
TGPDINFO_BANKERID_FIELD.default_value = 0
TGPDINFO_BANKERID_FIELD.type = 5
TGPDINFO_BANKERID_FIELD.cpp_type = 1

TGPDINFO_BANKERJETTON_FIELD.name = "bankerjetton"
TGPDINFO_BANKERJETTON_FIELD.full_name = ".progame.tgpdinfo.bankerjetton"
TGPDINFO_BANKERJETTON_FIELD.number = 9
TGPDINFO_BANKERJETTON_FIELD.index = 7
TGPDINFO_BANKERJETTON_FIELD.label = 1
TGPDINFO_BANKERJETTON_FIELD.has_default_value = false
TGPDINFO_BANKERJETTON_FIELD.default_value = ""
TGPDINFO_BANKERJETTON_FIELD.type = 9
TGPDINFO_BANKERJETTON_FIELD.cpp_type = 9

TGPDINFO_BANKERNAME_FIELD.name = "bankername"
TGPDINFO_BANKERNAME_FIELD.full_name = ".progame.tgpdinfo.bankername"
TGPDINFO_BANKERNAME_FIELD.number = 10
TGPDINFO_BANKERNAME_FIELD.index = 8
TGPDINFO_BANKERNAME_FIELD.label = 1
TGPDINFO_BANKERNAME_FIELD.has_default_value = false
TGPDINFO_BANKERNAME_FIELD.default_value = ""
TGPDINFO_BANKERNAME_FIELD.type = 9
TGPDINFO_BANKERNAME_FIELD.cpp_type = 9

TGPDINFO_BANKERFACEID_FIELD.name = "bankerfaceid"
TGPDINFO_BANKERFACEID_FIELD.full_name = ".progame.tgpdinfo.bankerfaceid"
TGPDINFO_BANKERFACEID_FIELD.number = 11
TGPDINFO_BANKERFACEID_FIELD.index = 9
TGPDINFO_BANKERFACEID_FIELD.label = 1
TGPDINFO_BANKERFACEID_FIELD.has_default_value = false
TGPDINFO_BANKERFACEID_FIELD.default_value = ""
TGPDINFO_BANKERFACEID_FIELD.type = 9
TGPDINFO_BANKERFACEID_FIELD.cpp_type = 9

TGPDINFO_BANKERLIMIT_FIELD.name = "bankerlimit"
TGPDINFO_BANKERLIMIT_FIELD.full_name = ".progame.tgpdinfo.bankerlimit"
TGPDINFO_BANKERLIMIT_FIELD.number = 12
TGPDINFO_BANKERLIMIT_FIELD.index = 10
TGPDINFO_BANKERLIMIT_FIELD.label = 1
TGPDINFO_BANKERLIMIT_FIELD.has_default_value = false
TGPDINFO_BANKERLIMIT_FIELD.default_value = ""
TGPDINFO_BANKERLIMIT_FIELD.type = 9
TGPDINFO_BANKERLIMIT_FIELD.cpp_type = 9

TGPDINFO_DROPBANKER_FIELD.name = "dropbanker"
TGPDINFO_DROPBANKER_FIELD.full_name = ".progame.tgpdinfo.dropbanker"
TGPDINFO_DROPBANKER_FIELD.number = 13
TGPDINFO_DROPBANKER_FIELD.index = 11
TGPDINFO_DROPBANKER_FIELD.label = 1
TGPDINFO_DROPBANKER_FIELD.has_default_value = false
TGPDINFO_DROPBANKER_FIELD.default_value = 0
TGPDINFO_DROPBANKER_FIELD.type = 5
TGPDINFO_DROPBANKER_FIELD.cpp_type = 1

TGPDINFO.name = "tgpdinfo"
TGPDINFO.full_name = ".progame.tgpdinfo"
TGPDINFO.nested_types = {}
TGPDINFO.enum_types = {}
TGPDINFO.fields = {TGPDINFO_TABLEID_FIELD, TGPDINFO_TABLETYPE_FIELD, TGPDINFO_STATE_FIELD, TGPDINFO_TIMEMARK_FIELD, TGPDINFO_USERIDLIST_FIELD, TGPDINFO_MINJETTON_FIELD, TGPDINFO_BANKERID_FIELD, TGPDINFO_BANKERJETTON_FIELD, TGPDINFO_BANKERNAME_FIELD, TGPDINFO_BANKERFACEID_FIELD, TGPDINFO_BANKERLIMIT_FIELD, TGPDINFO_DROPBANKER_FIELD}
TGPDINFO.is_extendable = false
TGPDINFO.extensions = {}
TGPDPOINT_X_FIELD.name = "x"
TGPDPOINT_X_FIELD.full_name = ".progame.tgpdpoint.x"
TGPDPOINT_X_FIELD.number = 1
TGPDPOINT_X_FIELD.index = 0
TGPDPOINT_X_FIELD.label = 1
TGPDPOINT_X_FIELD.has_default_value = false
TGPDPOINT_X_FIELD.default_value = 0
TGPDPOINT_X_FIELD.type = 5
TGPDPOINT_X_FIELD.cpp_type = 1

TGPDPOINT_Y_FIELD.name = "y"
TGPDPOINT_Y_FIELD.full_name = ".progame.tgpdpoint.y"
TGPDPOINT_Y_FIELD.number = 2
TGPDPOINT_Y_FIELD.index = 1
TGPDPOINT_Y_FIELD.label = 1
TGPDPOINT_Y_FIELD.has_default_value = false
TGPDPOINT_Y_FIELD.default_value = 0
TGPDPOINT_Y_FIELD.type = 5
TGPDPOINT_Y_FIELD.cpp_type = 1

TGPDPOINT.name = "tgpdpoint"
TGPDPOINT.full_name = ".progame.tgpdpoint"
TGPDPOINT.nested_types = {}
TGPDPOINT.enum_types = {}
TGPDPOINT.fields = {TGPDPOINT_X_FIELD, TGPDPOINT_Y_FIELD}
TGPDPOINT.is_extendable = false
TGPDPOINT.extensions = {}
TGPDGEMCOLUMN_LIST_FIELD.name = "list"
TGPDGEMCOLUMN_LIST_FIELD.full_name = ".progame.tgpdgemcolumn.list"
TGPDGEMCOLUMN_LIST_FIELD.number = 1
TGPDGEMCOLUMN_LIST_FIELD.index = 0
TGPDGEMCOLUMN_LIST_FIELD.label = 3
TGPDGEMCOLUMN_LIST_FIELD.has_default_value = false
TGPDGEMCOLUMN_LIST_FIELD.default_value = {}
TGPDGEMCOLUMN_LIST_FIELD.type = 5
TGPDGEMCOLUMN_LIST_FIELD.cpp_type = 1

TGPDGEMCOLUMN.name = "tgpdgemcolumn"
TGPDGEMCOLUMN.full_name = ".progame.tgpdgemcolumn"
TGPDGEMCOLUMN.nested_types = {}
TGPDGEMCOLUMN.enum_types = {}
TGPDGEMCOLUMN.fields = {TGPDGEMCOLUMN_LIST_FIELD}
TGPDGEMCOLUMN.is_extendable = false
TGPDGEMCOLUMN.extensions = {}
TGPDSCOREITEM_GEM_FIELD.name = "gem"
TGPDSCOREITEM_GEM_FIELD.full_name = ".progame.tgpdscoreitem.gem"
TGPDSCOREITEM_GEM_FIELD.number = 1
TGPDSCOREITEM_GEM_FIELD.index = 0
TGPDSCOREITEM_GEM_FIELD.label = 1
TGPDSCOREITEM_GEM_FIELD.has_default_value = false
TGPDSCOREITEM_GEM_FIELD.default_value = 0
TGPDSCOREITEM_GEM_FIELD.type = 5
TGPDSCOREITEM_GEM_FIELD.cpp_type = 1

TGPDSCOREITEM_SCORELIST_FIELD.name = "scorelist"
TGPDSCOREITEM_SCORELIST_FIELD.full_name = ".progame.tgpdscoreitem.scorelist"
TGPDSCOREITEM_SCORELIST_FIELD.number = 2
TGPDSCOREITEM_SCORELIST_FIELD.index = 1
TGPDSCOREITEM_SCORELIST_FIELD.label = 3
TGPDSCOREITEM_SCORELIST_FIELD.has_default_value = false
TGPDSCOREITEM_SCORELIST_FIELD.default_value = {}
TGPDSCOREITEM_SCORELIST_FIELD.type = 9
TGPDSCOREITEM_SCORELIST_FIELD.cpp_type = 9

TGPDSCOREITEM_POINTLIST_FIELD.name = "pointlist"
TGPDSCOREITEM_POINTLIST_FIELD.full_name = ".progame.tgpdscoreitem.pointlist"
TGPDSCOREITEM_POINTLIST_FIELD.number = 3
TGPDSCOREITEM_POINTLIST_FIELD.index = 2
TGPDSCOREITEM_POINTLIST_FIELD.label = 3
TGPDSCOREITEM_POINTLIST_FIELD.has_default_value = false
TGPDSCOREITEM_POINTLIST_FIELD.default_value = {}
TGPDSCOREITEM_POINTLIST_FIELD.message_type = TGPDPOINT
TGPDSCOREITEM_POINTLIST_FIELD.type = 11
TGPDSCOREITEM_POINTLIST_FIELD.cpp_type = 10

TGPDSCOREITEM.name = "tgpdscoreitem"
TGPDSCOREITEM.full_name = ".progame.tgpdscoreitem"
TGPDSCOREITEM.nested_types = {}
TGPDSCOREITEM.enum_types = {}
TGPDSCOREITEM.fields = {TGPDSCOREITEM_GEM_FIELD, TGPDSCOREITEM_SCORELIST_FIELD, TGPDSCOREITEM_POINTLIST_FIELD}
TGPDSCOREITEM.is_extendable = false
TGPDSCOREITEM.extensions = {}
TGPDSCORELIST_LIST_FIELD.name = "list"
TGPDSCORELIST_LIST_FIELD.full_name = ".progame.tgpdscorelist.list"
TGPDSCORELIST_LIST_FIELD.number = 1
TGPDSCORELIST_LIST_FIELD.index = 0
TGPDSCORELIST_LIST_FIELD.label = 3
TGPDSCORELIST_LIST_FIELD.has_default_value = false
TGPDSCORELIST_LIST_FIELD.default_value = {}
TGPDSCORELIST_LIST_FIELD.message_type = TGPDSCOREITEM
TGPDSCORELIST_LIST_FIELD.type = 11
TGPDSCORELIST_LIST_FIELD.cpp_type = 10

TGPDSCORELIST.name = "tgpdscorelist"
TGPDSCORELIST.full_name = ".progame.tgpdscorelist"
TGPDSCORELIST.nested_types = {}
TGPDSCORELIST.enum_types = {}
TGPDSCORELIST.fields = {TGPDSCORELIST_LIST_FIELD}
TGPDSCORELIST.is_extendable = false
TGPDSCORELIST.extensions = {}
TGPDPRIAVEDATA_TOTALSCORE_FIELD.name = "totalscore"
TGPDPRIAVEDATA_TOTALSCORE_FIELD.full_name = ".progame.tgpdpriavedata.totalscore"
TGPDPRIAVEDATA_TOTALSCORE_FIELD.number = 1
TGPDPRIAVEDATA_TOTALSCORE_FIELD.index = 0
TGPDPRIAVEDATA_TOTALSCORE_FIELD.label = 1
TGPDPRIAVEDATA_TOTALSCORE_FIELD.has_default_value = false
TGPDPRIAVEDATA_TOTALSCORE_FIELD.default_value = ""
TGPDPRIAVEDATA_TOTALSCORE_FIELD.type = 9
TGPDPRIAVEDATA_TOTALSCORE_FIELD.cpp_type = 9

TGPDPRIAVEDATA_ROUND_FIELD.name = "round"
TGPDPRIAVEDATA_ROUND_FIELD.full_name = ".progame.tgpdpriavedata.round"
TGPDPRIAVEDATA_ROUND_FIELD.number = 2
TGPDPRIAVEDATA_ROUND_FIELD.index = 1
TGPDPRIAVEDATA_ROUND_FIELD.label = 1
TGPDPRIAVEDATA_ROUND_FIELD.has_default_value = false
TGPDPRIAVEDATA_ROUND_FIELD.default_value = 0
TGPDPRIAVEDATA_ROUND_FIELD.type = 5
TGPDPRIAVEDATA_ROUND_FIELD.cpp_type = 1

TGPDPRIAVEDATA_BOARDLENGTH_FIELD.name = "boardlength"
TGPDPRIAVEDATA_BOARDLENGTH_FIELD.full_name = ".progame.tgpdpriavedata.boardlength"
TGPDPRIAVEDATA_BOARDLENGTH_FIELD.number = 3
TGPDPRIAVEDATA_BOARDLENGTH_FIELD.index = 2
TGPDPRIAVEDATA_BOARDLENGTH_FIELD.label = 1
TGPDPRIAVEDATA_BOARDLENGTH_FIELD.has_default_value = false
TGPDPRIAVEDATA_BOARDLENGTH_FIELD.default_value = 0
TGPDPRIAVEDATA_BOARDLENGTH_FIELD.type = 5
TGPDPRIAVEDATA_BOARDLENGTH_FIELD.cpp_type = 1

TGPDPRIAVEDATA_GEMMAP_FIELD.name = "gemmap"
TGPDPRIAVEDATA_GEMMAP_FIELD.full_name = ".progame.tgpdpriavedata.gemmap"
TGPDPRIAVEDATA_GEMMAP_FIELD.number = 4
TGPDPRIAVEDATA_GEMMAP_FIELD.index = 3
TGPDPRIAVEDATA_GEMMAP_FIELD.label = 3
TGPDPRIAVEDATA_GEMMAP_FIELD.has_default_value = false
TGPDPRIAVEDATA_GEMMAP_FIELD.default_value = {}
TGPDPRIAVEDATA_GEMMAP_FIELD.message_type = TGPDGEMCOLUMN
TGPDPRIAVEDATA_GEMMAP_FIELD.type = 11
TGPDPRIAVEDATA_GEMMAP_FIELD.cpp_type = 10

TGPDPRIAVEDATA_RESERVEGEMMAP_FIELD.name = "reservegemmap"
TGPDPRIAVEDATA_RESERVEGEMMAP_FIELD.full_name = ".progame.tgpdpriavedata.reservegemmap"
TGPDPRIAVEDATA_RESERVEGEMMAP_FIELD.number = 5
TGPDPRIAVEDATA_RESERVEGEMMAP_FIELD.index = 4
TGPDPRIAVEDATA_RESERVEGEMMAP_FIELD.label = 3
TGPDPRIAVEDATA_RESERVEGEMMAP_FIELD.has_default_value = false
TGPDPRIAVEDATA_RESERVEGEMMAP_FIELD.default_value = {}
TGPDPRIAVEDATA_RESERVEGEMMAP_FIELD.message_type = TGPDGEMCOLUMN
TGPDPRIAVEDATA_RESERVEGEMMAP_FIELD.type = 11
TGPDPRIAVEDATA_RESERVEGEMMAP_FIELD.cpp_type = 10

TGPDPRIAVEDATA_POURJETTONLIST_FIELD.name = "pourjettonlist"
TGPDPRIAVEDATA_POURJETTONLIST_FIELD.full_name = ".progame.tgpdpriavedata.pourjettonlist"
TGPDPRIAVEDATA_POURJETTONLIST_FIELD.number = 6
TGPDPRIAVEDATA_POURJETTONLIST_FIELD.index = 5
TGPDPRIAVEDATA_POURJETTONLIST_FIELD.label = 3
TGPDPRIAVEDATA_POURJETTONLIST_FIELD.has_default_value = false
TGPDPRIAVEDATA_POURJETTONLIST_FIELD.default_value = {}
TGPDPRIAVEDATA_POURJETTONLIST_FIELD.type = 9
TGPDPRIAVEDATA_POURJETTONLIST_FIELD.cpp_type = 9

TGPDPRIAVEDATA_TIMEMARK_FIELD.name = "timemark"
TGPDPRIAVEDATA_TIMEMARK_FIELD.full_name = ".progame.tgpdpriavedata.timemark"
TGPDPRIAVEDATA_TIMEMARK_FIELD.number = 7
TGPDPRIAVEDATA_TIMEMARK_FIELD.index = 6
TGPDPRIAVEDATA_TIMEMARK_FIELD.label = 1
TGPDPRIAVEDATA_TIMEMARK_FIELD.has_default_value = false
TGPDPRIAVEDATA_TIMEMARK_FIELD.default_value = 0
TGPDPRIAVEDATA_TIMEMARK_FIELD.type = 3
TGPDPRIAVEDATA_TIMEMARK_FIELD.cpp_type = 2

TGPDPRIAVEDATA.name = "tgpdpriavedata"
TGPDPRIAVEDATA.full_name = ".progame.tgpdpriavedata"
TGPDPRIAVEDATA.nested_types = {}
TGPDPRIAVEDATA.enum_types = {}
TGPDPRIAVEDATA.fields = {TGPDPRIAVEDATA_TOTALSCORE_FIELD, TGPDPRIAVEDATA_ROUND_FIELD, TGPDPRIAVEDATA_BOARDLENGTH_FIELD, TGPDPRIAVEDATA_GEMMAP_FIELD, TGPDPRIAVEDATA_RESERVEGEMMAP_FIELD, TGPDPRIAVEDATA_POURJETTONLIST_FIELD, TGPDPRIAVEDATA_TIMEMARK_FIELD}
TGPDPRIAVEDATA.is_extendable = false
TGPDPRIAVEDATA.extensions = {}

tgpdgemcolumn = protobuf.Message(TGPDGEMCOLUMN)
tgpdinfo = protobuf.Message(TGPDINFO)
tgpdpoint = protobuf.Message(TGPDPOINT)
tgpdpriavedata = protobuf.Message(TGPDPRIAVEDATA)
tgpdscoreitem = protobuf.Message(TGPDSCOREITEM)
tgpdscorelist = protobuf.Message(TGPDSCORELIST)

----------nimol modify---------
ST_TGPD_PB_TGPDGEMCOLUMN = TGPDGEMCOLUMN
ST_TGPD_PB_TGPDINFO = TGPDINFO
ST_TGPD_PB_TGPDPOINT = TGPDPOINT
ST_TGPD_PB_TGPDPRIAVEDATA = TGPDPRIAVEDATA
ST_TGPD_PB_TGPDSCOREITEM = TGPDSCOREITEM
ST_TGPD_PB_TGPDSCORELIST = TGPDSCORELIST
