// -------------------------------------------------------------------------
//    @FileName         :    NFServerDefine.h
//    @Author           :    GaoYi
//    @Date             :    2018/05/25
//    @Email			:    445267987@qq.com
//    @Module           :    NFPluginModule
//
// -------------------------------------------------------------------------
#pragma once

#include <stdint.h>
#include <functional>
#include <string>

enum NF_SERVER_TYPES
{
	NF_ST_NONE = 0, // NONE
	NF_ST_MASTER = 1, //
	NF_ST_LOGIN = 2, //
	NF_ST_WORLD = 3, //
	NF_ST_GAME = 4, //
	NF_ST_PROXY = 5, //
	NF_ST_MATCH = 6,
	NF_ST_BATTLE = 7,
	NF_ST_UNION_MATCH = 8,
	NF_ST_PUBLIC_MATCH = 9,
	NF_ST_MAX = 10, //
};

#define NF_JSON_MSG_ID 0

const std::string gArrayServer[NF_ST_MAX] = {
	"NoneServer",
	"MasterServer",
	"LoginServer",
	"WorldServer",
	"GameServer",
	"ProxyServer",
	"MatchServer",
	"BattleServer", //地图服务器5张
	"UnionMatch",
	"PublicMatch", //全区服战场服
};

std::string GetServerName(NF_SERVER_TYPES serverId);

enum eMsgType
{
	eMsgType_Num = 0,
	eMsgType_CONNECTED = 1,
	eMsgType_DISCONNECTED = 2,
	eMsgType_RECIVEDATA = 3,
};

typedef std::function<void(const uint32_t unLinkId, const uint64_t valueId, const uint32_t nMsgId, const char* msg, const uint32_t nLen)> NET_RECEIVE_FUNCTOR;

typedef std::function<void(const eMsgType nEvent, const uint32_t unLinkId)> NET_EVENT_FUNCTOR;

typedef std::function<void(int severity, const char* msg)> NET_EVENT_LOG_FUNCTOR;

typedef std::function<void(const std::string& msg)> LUA_SEND_MSG_FUNCTION;

class PlayerAccountInfo
{
public:
	PlayerAccountInfo()
	{
		proxyUnlinkId = 0;
		uid = 0;
	}
	uint32_t proxyUnlinkId;
	uint64_t uid;
	std::string ip;
	std::string account;
	LUA_SEND_MSG_FUNCTION sendMsgFunc;

	void SetProxyUnlinkId(uint32_t id) { proxyUnlinkId = id; }
	uint32_t GetProxyUnlinkId() { return proxyUnlinkId; }

	void SetUid(uint64_t id) { uid = id; }
	uint64_t GetUid() { return uid; }

	void SetIp(const std::string& _ip) { ip = _ip; }
	std::string GetIp() { return ip; }

	void SetAccount(const std::string& a) { account = a; }
	std::string GetAccount() { return account; }

	void SetSendMsg(const LUA_SEND_MSG_FUNCTION& func) { sendMsgFunc = func; }
	LUA_SEND_MSG_FUNCTION GetSendMsg() { return sendMsgFunc; }
};

