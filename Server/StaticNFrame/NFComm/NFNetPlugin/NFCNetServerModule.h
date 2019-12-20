// -------------------------------------------------------------------------
//    @FileName         :    NFCNetServerModule.h
//    @Author           :    GaoYi
//    @Date             :    2017-10-16
//    @Module           :    NFCNetServerModule
//
//
//                    .::::.
//                  .::::::::.
//                 :::::::::::  FUCK YOU
//             ..:::::::::::'
//           '::::::::::::'
//             .::::::::::
//        '::::::::::::::..
//             ..::::::::::::.
//           ``::::::::::::::::
//            ::::``:::::::::'        .:::.
//           ::::'   ':::::'       .::::::::.
//         .::::'      ::::     .:::::::'::::.
//        .:::'       :::::  .:::::::::' ':::::.
//       .::'        :::::.:::::::::'      ':::::.
//      .::'         ::::::::::::::'         ``::::.
//  ...:::           ::::::::::::'              ``::.
// ```` ':.          ':::::::::'                  ::::..
//                    '.:::::'                    ':'````..
//
// -------------------------------------------------------------------------

#pragma once

#include "NFComm/NFPluginModule/NFINetServerModule.h"
#include "NFComm/NFPluginModule/NFIPluginManager.h"
#include "NFIServer.h"
#include <NFComm/NFCore/NFBuffer.h>

class NFILuaScriptModule;

class NFCNetServerModule : public NFINetServerModule
{
public:
	/**
	 * @brief 构造函数
	 */
	NFCNetServerModule(NFIPluginManager* p);

	/**
	 * @brief 析构函数
	 */
	virtual ~NFCNetServerModule();

	/**
	* @brief
	*
	* @return bool
	*/
	virtual bool Awake() override;

	/**
	 * @brief
	 *
	 * @return bool
	 */
	virtual bool Init() override;

	/**
	 * @brief
	 *
	 * @return bool
	 */
	virtual bool AfterInit() override;

	/**
	 * @brief
	 *
	 * @return bool
	 */
	virtual bool BeforeShut() override;

	/**
	 * @brief
	 *
	 * @return bool
	 */
	virtual bool Shut() override;

	/**
	 * @brief 释放数据
	 *
	 * @return bool
	 */
	virtual bool Finalize() override;

	/**
	 * @brief
	 *
	 * @return bool
	 */
	virtual bool Execute() override;

	/**
	 * @brief 添加服务器
	 *
	 * @param  eType		服务器类型
	 * @param  nServerID	服务器ID
	 * @param  nMaxClient	服务器最大连接客户端数
	 * @param  nPort		服务器监听端口
	 * @return int			返回0错误
	 */
	virtual uint32_t AddServer(const NF_SERVER_TYPES eServerType, uint32_t nServerID, uint32_t nMaxClient, uint32_t nPort, bool bWebSocket = false, uint32_t nPacketParseType = 0, bool bForeignNetwork = false, bool bRefuseAttackIp = false) override;

	/**
	 * @brief 获得连接的IP
	 *
	 * @param  usLinkId
	 * @return std::string 
	 */
	virtual std::string GetLinkIp(uint32_t usLinkId) override;

	/**
	* @brief 关闭连接
	*
	* @param  usLinkId
	* @return
	*/
	virtual void CloseLinkId(uint32_t usLinkId) override;

	/**
	 * @brief
	 *
	 * @param  usLinkId
	 * @param  nMsgID
	 * @param  strData
	 * @param  nPlayerID
	 * @return void
	 */
	virtual void SendByServerID(uint32_t usLinkId, const uint32_t nMsgID, const std::string& strData, const uint64_t nPlayerID, const uint32_t operateId) override;

	/**
	 * @brief
	 *
	 * @param  usLinkId
	 * @param  nMsgID
	 * @param  msg
	 * @param  nLen
	 * @param  nPlayerID
	 * @return void
	 */
	virtual void SendByServerID(uint32_t usLinkId, const uint32_t nMsgID, const char* msg, const uint32_t nLen, const uint64_t nPlayerID, const uint32_t operateId) override;

	/**
	 * @brief
	 *
	 * @param  usLinkId
	 * @param  nMsgID
	 * @param  xData
	 * @param  nPlayerID
	 * @return void
	 */
	virtual void SendToServerByPB(uint32_t usLinkId, const uint32_t nMsgID, const google::protobuf::Message& xData, const uint64_t nPlayerID, const uint32_t operateId) override;

	/**
	 * @brief
	 *
	 * @param  nMsgID
	 * @param  strData
	 * @param  nPlayerID
	 * @return void
	 */
	virtual void SendToAllServer(const uint32_t nMsgID, const std::string& strData, const uint64_t nPlayerID, const uint32_t operateId) override;

	/**
	 * @brief
	 *
	 * @param  nMsgID
	 * @param  msg
	 * @param  nLen
	 * @param  nPlayerID
	 * @return void
	 */
	virtual void SendToAllServer(const uint32_t nMsgID, const char* msg, const uint32_t nLen, const uint64_t nPlayerID, const uint32_t operateId) override;

	/**
	 * @brief
	 *
	 * @param  nMsgID
	 * @param  xData
	 * @param  nPlayerID
	 * @return void
	 */
	virtual void SendToAllServerByPB(const uint32_t nMsgID, const google::protobuf::Message& xData, const uint64_t nPlayerID, const uint32_t operateId) override;

	/**
	 * @brief
	 *
	 * @param  eServerType
	 * @param  nMsgID
	 * @param  strData
	 * @param  nPlayerID
	 * @return void
	 */
	virtual void SendToAllServer(NF_SERVER_TYPES eServerType, uint32_t nMsgID, const std::string& strData, const uint64_t nPlayerID, const uint32_t operateId) override;

	/**
	 * @brief
	 *
	 * @param  eServerType
	 * @param  nMsgID
	 * @param  msg
	 * @param  nLen
	 * @param  nPlayerID
	 * @return void
	 */
	virtual void SendToAllServer(NF_SERVER_TYPES eServerType, const uint32_t nMsgID, const char* msg, const uint32_t nLen, const uint64_t nPlayerID, const uint32_t operateId) override;

	/**
	 * @brief
	 *
	 * @param  eServerType
	 * @param  nMsgID
	 * @param  xData
	 * @param  nPlayerID
	 * @return void
	 */
	virtual void SendToAllServerByPB(NF_SERVER_TYPES eServerType, const uint32_t nMsgID, const google::protobuf::Message& xData, const uint64_t nPlayerID, const uint32_t operateId) override;

	virtual void SendByServerID(uint32_t usLinkId, const uint16_t nMainMsgID, const uint16_t nSubMsgID, const std::string& strData, const uint64_t nPlayerID, const uint32_t operateId) override;

	virtual void SendByServerID(uint32_t usLinkId, const uint16_t nMainMsgID, const uint16_t nSubMsgID, const char* msg, const uint32_t nLen, const uint64_t nPlayerID, const uint32_t operateId) override;

	virtual void SendToServerByPB(uint32_t usLinkId, const uint16_t nMainMsgID, const uint16_t nSubMsgID, const google::protobuf::Message& xData, const uint64_t nPlayerID, const uint32_t operateId) override;

	virtual void SendToAllServer(const uint16_t nMainMsgID, const uint16_t nSubMsgID, const std::string& strData, const uint64_t nPlayerID, const uint32_t operateId) override;

	virtual void SendToAllServer(const uint16_t nMainMsgID, const uint16_t nSubMsgID, const char* msg, const uint32_t nLen, const uint64_t nPlayerID, const uint32_t operateId) override;

	virtual void SendToAllServerByPB(const uint16_t nMainMsgID, const uint16_t nSubMsgID, const google::protobuf::Message& xData, const uint64_t nPlayerID, const uint32_t operateId) override;

	virtual void SendToAllServer(NF_SERVER_TYPES eServerType, const uint16_t nMainMsgID, const uint16_t nSubMsgID, const std::string& strData, const uint64_t nPlayerID, const uint32_t operateId) override;

	virtual void SendToAllServer(NF_SERVER_TYPES eServerType, const uint16_t nMainMsgID, const uint16_t nSubMsgID, const char* msg, const uint32_t nLen, const uint64_t nPlayerID, const uint32_t operateId) override;

	virtual void SendToAllServerByPB(NF_SERVER_TYPES eServerType, const uint16_t nMainMsgID, const uint16_t nSubMsgID, const google::protobuf::Message& xData, const uint64_t nPlayerID, const uint32_t operateId) override;
protected:
	/**
	 * @brief 将消息编码后通过pServer发送出去
	 *
	 * @param  pServer
	 * @param  usLinkId
	 * @param  nMsgID
	 * @param  msg
	 * @param  nLen
	 * @param  nPlayerID
	 * @return void
	 */
	void SendMsg(NFIServer* pServer, uint32_t usLinkId, const uint32_t nMsgID, const char* msg, const uint32_t nLen, const uint64_t nPlayerID, const uint32_t operateId);

	/**
	 * @brief
	 *
	 * @param  pServer
	 * @param  nMsgID
	 * @param  msg
	 * @param  nLen
	 * @param  nPlayerID
	 * @return void
	 */
	void SendAllMsg(NFIServer* pServer, const uint32_t nMsgID, const char* msg, const uint32_t nLen, const uint64_t nPlayerID, const uint32_t operateId);
private:
	std::vector<NFIServer*> mServerArray;
};

