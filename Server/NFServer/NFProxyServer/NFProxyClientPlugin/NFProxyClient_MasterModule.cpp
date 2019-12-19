// -------------------------------------------------------------------------
//    @FileName         :    NFProxyClient_GameModule.cpp
//    @Author           :    GaoYi
//    @Date             :    2018/06/12
//    @Email			:    445267987@qq.com
//    @Module           :    NFProxyClientPlugin
//
// -------------------------------------------------------------------------

#include "NFProxyClient_MasterModule.h"
#include "NFComm/NFPluginModule/NFIPluginManager.h"
#include <NFComm/NFPluginModule/NFConfigMgr.h>
#include <NFComm/NFPluginModule/NFEventMgr.h>
#include <NFComm/NFPluginModule/NFEventDefine.h>
#include "NFServer/NFServerCommon/NFServerCommon.h"
#include "NFMessageDefine/NFMsgDefine.h"
#include "NFMessageDefine/msg_gm.pb.h"
#include "NFComm/NFPluginModule/NFIMonitorModule.h"

NFCProxyClient_MasterModule::NFCProxyClient_MasterModule(NFIPluginManager* p)
{
	m_pPluginManager = p;
}

NFCProxyClient_MasterModule::~NFCProxyClient_MasterModule()
{
}

bool NFCProxyClient_MasterModule::Init()
{
	m_pMasterServerData = NF_SHARE_PTR<NFServerData>(NF_NEW NFServerData());
	return true;
}

bool NFCProxyClient_MasterModule::AfterInit()
{
	FindModule<NFINetClientModule>()->AddEventCallBack(NF_ST_MASTER, this, &NFCProxyClient_MasterModule::OnProxySocketEvent);
	FindModule<NFINetClientModule>()->AddReceiveCallBack(NF_ST_MASTER, this, &NFCProxyClient_MasterModule::OnHandleOtherMessage);

	FindModule<NFINetClientModule>()->AddReceiveCallBack(NF_ST_MASTER, EGMI_NET_MASTER_SEND_OTHERS_TO_PROXY, this, &NFCProxyClient_MasterModule::OnHandleServerReport);
	FindModule<NFINetClientModule>()->AddReceiveCallBack(NF_ST_MASTER, EGMI_STS_GM_MSG, this, &NFCProxyClient_MasterModule::OnHandleGmMsg);
	NFServerConfig* pConfig = NFServerCommon::GetServerConfig(m_pPluginManager, NF_ST_MASTER);
	if (pConfig)
	{
		//AddServer会自动重连，断开连接时，m_pMasterServerData->mUnlinkId不用清理，不变
		m_pMasterServerData->mUnlinkId = FindModule<NFINetClientModule>()->AddServer(NF_ST_MASTER, pConfig->mServerIp, pConfig->mServerPort);
		m_pMasterServerData->mServerInfo.set_server_id(pConfig->mServerId);
		m_pMasterServerData->mServerInfo.set_server_ip(pConfig->mServerIp);
		m_pMasterServerData->mServerInfo.set_server_port(pConfig->mServerPort);
		m_pMasterServerData->mServerInfo.set_server_name(pConfig->mServerName);
		m_pMasterServerData->mServerInfo.set_server_type(pConfig->mServerType);
		m_pMasterServerData->mServerInfo.set_server_state(NFMsg::EST_NARMAL);
	}
	else
	{
		NFLogError(NF_LOG_SERVER_CONNECT_SERVER, 0, "I Can't get the Master Server config!");
		return false;
	}

	return true;
}

bool NFCProxyClient_MasterModule::Execute()
{
	ServerReport();
	return true;
}

bool NFCProxyClient_MasterModule::BeforeShut()
{
	return true;
}

bool NFCProxyClient_MasterModule::Shut()
{
	return true;
}

void NFCProxyClient_MasterModule::RegisterServer()
{
	NFServerConfig* pConfig = NFServerCommon::GetAppConfig(m_pPluginManager, NF_ST_PROXY);
	if (pConfig)
	{
		NFMsg::ServerInfoReportList xMsg;
		NFMsg::ServerInfoReport* pData = xMsg.add_server_list();
		pData->set_server_id(pConfig->mServerId);
		pData->set_server_name(pConfig->mServerName);
		pData->set_server_ip(pConfig->mServerIp);
		pData->set_server_type(pConfig->mServerType);
		pData->set_server_port(pConfig->mServerPort);
		pData->set_server_max_online(pConfig->mMaxConnectNum);
		pData->set_server_state(NFMsg::EST_NARMAL);

		FindModule<NFINetClientModule>()->SendToServerByPB(m_pMasterServerData->mUnlinkId, EGMI_NET_PROXY_TO_MASTER_REGISTER, xMsg, 0, 0);
	}

	FindModule<NFIServerNetEventModule>()->OnServerNetEvent(eMsgType_CONNECTED, NF_ST_PROXY, NF_ST_MASTER, m_pMasterServerData->mUnlinkId, m_pMasterServerData);
}

void NFCProxyClient_MasterModule::OnProxySocketEvent(const eMsgType nEvent, const uint32_t unLinkId)
{
	if (unLinkId != m_pMasterServerData->mUnlinkId) return;

	if (nEvent == eMsgType_CONNECTED)
	{
		NFLogDebug(NF_LOG_SERVER_CONNECT_SERVER, 0, "Proxy Server Connect Master Server Success!");

		//连接成功，发送网关服务器IP以及数据给世界服务器
		RegisterServer();
	}
	else if (nEvent == eMsgType_DISCONNECTED)
	{
		NFLogDebug(NF_LOG_SERVER_CONNECT_SERVER, 0, "Proxy Server DisConnect Master Server!");

		FindModule<NFIServerNetEventModule>()->OnServerNetEvent(eMsgType_DISCONNECTED, NF_ST_PROXY, NF_ST_MASTER, m_pMasterServerData->mUnlinkId, m_pMasterServerData);
	}
}

void NFCProxyClient_MasterModule::OnHandleOtherMessage(const uint32_t unLinkId, const uint64_t playerId, const uint32_t operateId, const uint32_t nMsgId, const char* msg, const uint32_t nLen)
{
	if (unLinkId != m_pMasterServerData->mUnlinkId) return;

	NFLogWarning(NF_LOG_SERVER_NOT_HANDLE_MESSAGE, 0, "msg:{} not handled", nMsgId);
}

void NFCProxyClient_MasterModule::ServerReport()
{
	static uint64_t mLastReportTime = m_pPluginManager->GetNowTime();
	if (mLastReportTime + 10000 > m_pPluginManager->GetNowTime())
	{
		return;
	}

	mLastReportTime = m_pPluginManager->GetNowTime();

	NFServerConfig* pConfig = NFServerCommon::GetAppConfig(m_pPluginManager, NF_ST_PROXY);
	if (pConfig)
	{
		NFMsg::ServerInfoReportList xMsg;
		NFMsg::ServerInfoReport* pData = xMsg.add_server_list();
		pData->set_server_id(pConfig->mServerId);
		pData->set_server_name(pConfig->mServerName);
		pData->set_server_ip(pConfig->mServerIp);
		pData->set_server_port(pConfig->mServerPort);
		pData->set_server_type(pConfig->mServerType);
		pData->set_server_max_online(pConfig->mMaxConnectNum);
		pData->set_server_state(NFMsg::EST_NARMAL);

		NFIMonitorModule* pMonitorModule = m_pPluginManager->FindModule<NFIMonitorModule>();
		if (pMonitorModule)
		{
			const NFSystemInfo& systemInfo = pMonitorModule->GetSystemInfo();

			pData->set_system_info(systemInfo.GetOsInfo().mOsDescription);
			pData->set_total_mem(systemInfo.GetMemInfo().mTotalMem);
			pData->set_free_mem(systemInfo.GetMemInfo().mFreeMem);
			pData->set_used_mem(systemInfo.GetMemInfo().mUsedMem);

			pData->set_proc_cpu(systemInfo.GetProcessInfo().mCpuUsed);
			pData->set_proc_mem(systemInfo.GetProcessInfo().mMemUsed);
			pData->set_proc_thread(systemInfo.GetProcessInfo().mThreads);
			pData->set_proc_name(systemInfo.GetProcessInfo().mName);
			pData->set_proc_cwd(systemInfo.GetProcessInfo().mCwd);
			pData->set_proc_pid(systemInfo.GetProcessInfo().mPid);
			pData->set_server_cur_online(systemInfo.GetUserCount());
		}

		if (pData->proc_cpu() > 0 && pData->proc_mem() > 0)
		{
			FindModule<NFINetClientModule>()->SendToServerByPB(m_pMasterServerData->mUnlinkId, EGMI_STS_SERVER_REPORT, xMsg, 0, 0);
		}
		
	}
}

void NFCProxyClient_MasterModule::OnHandleServerReport(const uint32_t unLinkId, const uint64_t playerId, const uint32_t operateId, const uint32_t nMsgId, const char* msg, const uint32_t nLen)
{
	NFMsg::ServerInfoReportList xMsg;
	CLIENT_MSG_PROCESS_NO_OBJECT(nMsgId, playerId, msg, nLen, xMsg);

	for (int i = 0; i < xMsg.server_list_size(); ++i)
	{
		const NFMsg::ServerInfoReport& xData = xMsg.server_list(i);
		switch (xData.server_type())
		{
		case NF_SERVER_TYPES::NF_ST_WORLD:
		{
			FindModule<NFIProxyClient_WorldModule>()->OnHandleServerReport(xData);
		}
		break;
		case NF_SERVER_TYPES::NF_ST_GAME:
		{
			FindModule<NFIProxyClient_GameModule>()->OnHandleServerReport(xData);
		}
		break;
		case NF_SERVER_TYPES::NF_ST_LOGIN:
		{
			FindModule<NFIProxyClient_LoginModule>()->OnHandleServerReport(xData);
		}
		break;
		}
	}
}

void NFCProxyClient_MasterModule::OnHandleGmMsg(const uint32_t unLinkId, const uint64_t playerId, const uint32_t operateId, const uint32_t nMsgId, const char* msg, const uint32_t nLen)
{
	if (unLinkId != m_pMasterServerData->mUnlinkId) return;

	NFMsg::http_msg_gm xMsg;
	CLIENT_MSG_PROCESS_NO_OBJECT(nMsgId, playerId, msg, nLen, xMsg);

	NFEventMgr::Instance()->FireExecute(NFEVENT_GM, 0, 0, xMsg);
}


