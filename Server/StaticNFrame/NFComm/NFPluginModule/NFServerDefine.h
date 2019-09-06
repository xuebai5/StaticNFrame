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
#include "NFMessageDefine/NFMsgDefine.h"

enum NF_SERVER_TYPES
{
	NF_ST_NONE = 0, // NONE
	NF_ST_MASTER = 1, //
	NF_ST_LOGIN = 2, //
	NF_ST_WORLD = 3, //
	NF_ST_GAME = 4, //
	NF_ST_PROXY = 5, //
	NF_ST_MAX = 10, //
};

enum PacketParseType
{
	PACKET_PARSE_TYPE_NORMAL = 0,
	PACKET_PARSE_TYPE_QIPAI = 1,
};

#define NF_JSON_MSG_ID 0

const std::string gArrayServer[NF_ST_MAX] = {
	"NoneServer",
	"MasterServer",
	"LoginServer",
	"WorldServer",
	"GameServer",
	"ProxyServer",
};

std::string _NFExport GetServerName(NF_SERVER_TYPES serverId);

enum eMsgType
{
	eMsgType_Num = 0,
	eMsgType_CONNECTED = 1,
	eMsgType_DISCONNECTED = 2,
	eMsgType_RECIVEDATA = 3,
};

enum eAccountEventType
{
	eAccountEventType_Num = 0,
	eAccountEventType_CONNECTED = 1,
	eAccountEventType_DISCONNECTED = 2,
	eAccountEventType_RECONNECTED = 3,
};

typedef std::function<void(const uint32_t unLinkId, const uint64_t valueId, const uint32_t nMsgId, const char* msg, const uint32_t nLen)> NET_RECEIVE_FUNCTOR;

typedef std::function<void(const eMsgType nEvent, const uint32_t unLinkId)> NET_EVENT_FUNCTOR;

typedef std::function<void(int severity, const char* msg)> NET_EVENT_LOG_FUNCTOR;

typedef std::function<void(const std::string& msg)> LUA_SEND_MSG_FUNCTION;

//////////////////////////////////////////////////////////////////////////
class NFServerData
{
public:
	NFServerData()
	{
		mUnlinkId = 0;
	}

	~NFServerData()
	{
		mUnlinkId = 0;
	}

	uint32_t GetUnlinkId() { return mUnlinkId; }
	uint32_t GetServerId() { return mServerInfo.server_id(); }
	uint32_t GetServerType() { return mServerInfo.server_type(); }
	std::string GetServerName() { return mServerInfo.server_name(); }

	uint32_t mUnlinkId;
	NFMsg::ServerInfoReport mServerInfo;
};

class PlayerGameServerInfo
{
public:
	PlayerGameServerInfo()
	{
		mProxyUnlinkId = 0;
		mProxyId = 0;
		mPlayerId = 0;
		mWorldId = 0;
		mWorldUnlinkId = 0;
	}
	uint32_t mProxyUnlinkId;
	uint32_t mProxyId;
	uint32_t mWorldId;
	uint32_t mWorldUnlinkId;
	uint64_t mPlayerId;
	std::string ip;
	std::string account;

	uint32_t GetProxyUnlinkId() { return mProxyUnlinkId; }
	uint32_t GetProxyId() { return mProxyId; }
	uint32_t GetWorldId() { return mWorldId; }
	uint32_t GetWorldUnlinkId() { return mWorldUnlinkId; }
	uint64_t GetPlayerId() { return mPlayerId; }
	std::string GetIp() { return ip; }
	std::string GetAccount() { return account; }
};

class ProxyLinkInfo
{
public:
	ProxyLinkInfo()
	{
		mUnlinkId = 0;
		mPlayerId = 0;
		mIsLogin = false;
		mGameServerId = 0;
		mSendMsgCount = 0;
		mRecvMsgCount = 0;
		mRecvHeartBeatTime = 0;
	}

	uint32_t mUnlinkId;
	uint64_t mPlayerId;
	std::string mIPAddr;
	std::string mAccount;
	bool mIsLogin;
	uint32_t mGameServerId;
	uint32_t mSendMsgCount;
	uint32_t mRecvMsgCount;
	uint64_t mRecvHeartBeatTime;
};

class PlayerWorldServerInfo
{
public:
	enum LoginStatusEnum
	{
		ENUM_LOGIN_STATUS_NOT_LOGIN = 0, //没有登录
		ENUM_LOGIN_STATUS_START_LOGIN = 1, //发起登录
		ENUM_LOGIN_STATUS_LOGIN_TIME_OUT = 2, //登录超时
		ENUM_LOGIN_STATUS_LOGIN_FAILED = 3, //登录失败
		ENUM_LOGIN_STATUS_LOGIN_SUCCESS = 4, //登录成功
	};

	PlayerWorldServerInfo()
	{
		mPlayerId = 0;
		mGameServerId = 0;
		mProxyServerId = 0;
	}

	uint64_t mPlayerId;
	std::string mIPAddr;
	std::string mAccount;
	std::string mPhonenum;
	uint32_t mGameServerId;
	uint32_t mProxyServerId;
};

/**
* @brief log打印配置
*
* @param  mLogId log配置ID
* @param  mDisplay 是否打印这个LOG
* @param  mLevel 输出等级
* @param  mLogName 显示名字
* @param  mGuid 0表示打印所有玩家LOG，玩家ID表示只打印这个玩家的LOG
*/
class LogInfoConfig
{
public:
	LogInfoConfig()
	{
		mLogId = 0;
		mDisplay = false;
		mLevel = 0;
	}

	bool Exist(uint64_t guid)
	{
		for (size_t i = 0; i < mVecGuid.size(); i++)
		{
			if (mVecGuid[i] == guid)
			{
				return true;
			}
			return false;
		}
		return true;
	}

	uint32_t mLogId;
	bool mDisplay;
	uint32_t mLevel;
	std::string mLogName;
	std::vector<uint64_t> mVecGuid;
};

