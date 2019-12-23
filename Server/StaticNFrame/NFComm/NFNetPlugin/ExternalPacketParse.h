// -------------------------------------------------------------------------
//    @FileName         :    QiPaiNetPacketParse.h
//    @Author           :    GaoYi
//    @Date             :    2019/04/13
//    @Email			:    445267987@qq.com
//    @Module           :    NFNetPlugin
//
// -------------------------------------------------------------------------
#pragma once

#include "NFIPacketParse.h"

#include <set>

class ExternalPacketParse : public NFIPacketParse
{
public:
	ExternalPacketParse();
	////////////////////////////////////////////////////////////////////
	virtual int DeCodeImpl(const char* strData, const uint32_t unLen, char*& outData, uint32_t& outLen, uint32_t& allLen, uint32_t& nMsgId, uint64_t& value, uint32_t& opreateId) override;
	virtual int EnCodeImpl(const uint32_t unMsgID, const uint64_t nValue, const uint32_t opreateId, const char* strData, const uint32_t unDataLen, NFBuffer& buffer) override;
};