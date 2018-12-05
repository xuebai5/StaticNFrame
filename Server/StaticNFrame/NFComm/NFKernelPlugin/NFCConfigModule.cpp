// -------------------------------------------------------------------------
//    @FileName         :    NFCConfigModule.cpp
//    @Author           :    Yi.Gao
//    @Date             :    2018-11-3
//    @Module           :    NFKernelPlugin
//    @Desc             :
// -------------------------------------------------------------------------

#include "NFCConfigModule.h"

#define DEFINE_LUA_STRING_LOAD_PLUGIN			"LoadPlugin"
#define DEFINE_LUA_STRING_SERVER_PLUGINS		"ServerPlugins"
#define DEFINE_LUA_STRING_SERVER_TYPE			"ServerType"
#define DEFINE_LUA_STRING_SERVER				"Server"

#define DEFINE_LUA_STRING_SERVER_NAME			"ServerName"
#define DEFINE_LUA_STRING_SERVER_ID				"ServerId"
#define DEFINE_LUA_STRING_SERVER_MASTER_ID		"MasterId"
#define DEFINE_LUA_STRING_SERVER_WORLD_ID		"WorldId"
#define DEFINE_LUA_STRING_SERVER_ZONE_ID		"ZoneId"
#define DEFINE_LUA_STRING_SERVER_IP				"ServerIp"
#define DEFINE_LUA_STRING_SERVER_PORT			"ServerPort"
#define DEFINE_LUA_STRING_MAX_CONNECT_NUM		"MaxConnectNum"
#define DEFINE_LUA_STRING_WORK_THREAD_NUM		"WorkThreadNum"
#define DEFINE_LUA_STRING_SECURITY				"Security"
#define DEFINE_LUA_STRING_LOG_LEVEL				"LogLevel"
#define DEFINE_LUA_STRING_WebSocket				"WebSocket"
#define DEFINE_LUA_STRING_HttpPort				"HttpPort"

NFCConfigModule::NFCConfigModule(NFIPluginManager* p)
{
	pPluginManager = p;
	//�Ƚ����⣬����������������ã���Ȼplugginmanager::Awake������⣬ ��������û������
	LoadConfig();
}

NFCConfigModule::~NFCConfigModule()
{
	for (auto it = mPluginConfig.begin(); it != mPluginConfig.end(); it++)
	{
		NFPluginConfig* pConfig = it->second;
		if (pConfig)
		{
			NF_SAFE_DELETE(pConfig);
		}
	}
	mPluginConfig.clear();

	for (auto it = mServerConfig.begin(); it != mServerConfig.end(); it++)
	{
		NFServerConfig* pConfig = it->second;
		if (pConfig)
		{
			NF_SAFE_DELETE(pConfig);
		}
	}
	mServerConfig.clear();
}

bool NFCConfigModule::LoadConfig()
{
	TryAddPackagePath(pPluginManager->GetConfigPath()); //Add Search Path to Lua
	if (TryLoadScriptFile("Plugin.lua") == false)
	{
		std::cerr << "Load Plugin.lua Failed!" << std::endl;
		assert(0);
	}

	if (TryLoadScriptFile("Server.lua") == false)
	{
		std::cerr << "Load Server.lua Failed!" << std::endl;
		assert(0);
	}

	if (TryLoadScriptFile("WorldServer.lua") == false)
	{
		std::cerr << "Load WorldServer.lua Failed!" << std::endl;
		assert(0);
	}

	if (TryLoadScriptFile("ZoneServer.lua") == false)
	{
		std::cerr << "Load ZoneServer.lua Failed!" << std::endl;
		assert(0);
	}

	GetValue(DEFINE_LUA_STRING_LOG_LEVEL, mLogLevel);

	NFLuaRef pluginRef = GetGlobal(DEFINE_LUA_STRING_LOAD_PLUGIN);
	if (!pluginRef.isValid())
	{
		std::cerr << "Plugin.lua can't find the '" << DEFINE_LUA_STRING_LOAD_PLUGIN << "'" << std::endl;
		assert(0);
	}

	if (!pluginRef.isTable())
	{
		std::cerr << DEFINE_LUA_STRING_LOAD_PLUGIN << "is not table in the plugin.lua" << std::endl;
		assert(0);
	}

	for (auto it = pluginRef.begin(); it != pluginRef.end(); ++it)
	{
		std::string serverPluginName = it.key<std::string>();
		NFLuaRef serverPluginRef = it.value();
		NFLuaRef serverPluginListRef;
		if (!GetLuaTableValue(serverPluginRef, DEFINE_LUA_STRING_SERVER_PLUGINS, serverPluginListRef))
		{
			std::cerr << DEFINE_LUA_STRING_SERVER_PLUGINS << " can't find int server:" << serverPluginName << " int the table " << DEFINE_LUA_STRING_LOAD_PLUGIN << " in the plugin.lua" << std::endl;
			assert(0);
		}

		NFPluginConfig* pConfig = NF_NEW NFPluginConfig();;
		if (serverPluginListRef.isTable())
		{
			for (int i = 1; i <= serverPluginListRef.len(); i++)
			{
				std::string plugin;
				if (GetLuaTableValue(serverPluginListRef, i, plugin))
				{
					pConfig->mVecPlugins.push_back(plugin);
				}
			}
		}

		if (!GetLuaTableValue(serverPluginRef, DEFINE_LUA_STRING_SERVER_TYPE, pConfig->mServerType))
		{
			std::cerr << DEFINE_LUA_STRING_SERVER_PLUGINS << " can't find int server:" << serverPluginName << " int the table " << DEFINE_LUA_STRING_LOAD_PLUGIN << " in the plugin.lua" << std::endl;
			assert(0);
		}

		if (pConfig->mServerType >= NF_ST_MAX)
		{
			std::cerr << DEFINE_LUA_STRING_SERVER_PLUGINS << " is not right int server:" << serverPluginName << " int the table " << DEFINE_LUA_STRING_LOAD_PLUGIN << " in the plugin.lua" << std::endl;
			assert(0);
		}
		mPluginConfig.emplace(serverPluginName, pConfig);
	}

	NFLuaRef serverRef = GetGlobal(DEFINE_LUA_STRING_SERVER);
	if (!serverRef.isValid())
	{
		std::cerr << "lua file can't find the '" << DEFINE_LUA_STRING_SERVER << "'" << std::endl;
		assert(0);
	}

	for (auto it = serverRef.begin(); it != serverRef.end(); ++it)
	{
		NFLuaRef serverConfigRef = it.value();
		NFServerConfig* pConfig = NF_NEW NFServerConfig();
		if (!GetLuaTableValue(serverConfigRef, DEFINE_LUA_STRING_SERVER_NAME, pConfig->mServerName))
		{
			assert(0);
		}
		if (!GetLuaTableValue(serverConfigRef, DEFINE_LUA_STRING_SERVER_ID, pConfig->mServerId))
		{
			assert(0);
		}
		if (!GetLuaTableValue(serverConfigRef, DEFINE_LUA_STRING_SERVER_TYPE, pConfig->mServerType))
		{
			assert(0);
		}
		if (!GetLuaTableValue(serverConfigRef, DEFINE_LUA_STRING_SERVER_MASTER_ID, pConfig->mMasterId))
		{
			assert(0);
		}
		if (!GetLuaTableValue(serverConfigRef, DEFINE_LUA_STRING_SERVER_WORLD_ID, pConfig->mWorldId))
		{
			assert(0);
		}
		if (!GetLuaTableValue(serverConfigRef, DEFINE_LUA_STRING_SERVER_IP, pConfig->mServerIp))
		{
			assert(0);
		}
		if (!GetLuaTableValue(serverConfigRef, DEFINE_LUA_STRING_SERVER_PORT, pConfig->mServerPort))
		{
			assert(0);
		}
		if (!GetLuaTableValue(serverConfigRef, DEFINE_LUA_STRING_MAX_CONNECT_NUM, pConfig->mMaxConnectNum))
		{
			assert(0);
		}
		if (!GetLuaTableValue(serverConfigRef, DEFINE_LUA_STRING_WORK_THREAD_NUM, pConfig->mWorkThreadNum))
		{
			assert(0);
		}
		if (!GetLuaTableValue(serverConfigRef, DEFINE_LUA_STRING_SECURITY, pConfig->mSecurity))
		{
			assert(0);
		}

		GetLuaTableValue(serverConfigRef, DEFINE_LUA_STRING_WebSocket, pConfig->mWebSocket);
		GetLuaTableValue(serverConfigRef, DEFINE_LUA_STRING_HttpPort, pConfig->mHttpPort);
		mServerConfig.emplace(pConfig->mServerId, pConfig);
	}
	return true;
}

bool NFCConfigModule::Awake()
{
	return true;
}


bool NFCConfigModule::Init()
{
	return true;
}

bool NFCConfigModule::AfterInit()
{
	return true;
}

bool NFCConfigModule::BeforeShut()
{
	return true;
}

bool NFCConfigModule::Shut()
{
	return true;
}

bool NFCConfigModule::Execute()
{
	return true;
}

NFPluginConfig* NFCConfigModule::GetPluginConfig(const std::string& pluginName)
{
	auto it = mPluginConfig.find(pluginName);
	if (it != mPluginConfig.end())
	{
		return it->second;
	}
	return nullptr;
}

NFServerConfig* NFCConfigModule::GetServerConfig(uint32_t serverId)
{
	auto it = mServerConfig.find(serverId);
	if (it != mServerConfig.end())
	{
		return it->second;
	}
	return nullptr;
}

std::vector<NFServerConfig*> NFCConfigModule::GetServerConfigFromServerType(uint32_t serverType)
{
	std::vector<NFServerConfig*> vec;
	for (auto it = mServerConfig.begin(); it != mServerConfig.end(); it++)
	{
		NFServerConfig* pConfig = it->second;
		if (pConfig)
		{
			if (pConfig->mServerType == serverType)
			{
				vec.push_back(pConfig);
			}
		}
	}
	return vec;
}