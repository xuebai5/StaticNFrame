
LuaNFrame = LuaNFrame or {}

function LuaNFrame.GetAppName()
    return CPPNFrame:GetAppName()
end

function LuaNFrame.GetAppID()
    return CPPNFrame:GetAppID()
end

function LuaNFrame.init(luaModule)
	CPPNFrame:init(luaModule)
end

--添加服务器秒定时器
function LuaNFrame.AddTimer(luaFunc, nInterValSec, nCallCount, dataStr)
    if nInterValSec == nil or type(luaFunc) ~= "string" then
		LuaNFrame.Error(NFLogId.NF_LOG_SYSTEMLOG, 0, __G__TRACKBACK__("AddTimer Para Error"))
		return
	end

    if nCallCount == nil then
		nCallCount = 0;
	elseif type(nCallCount) ~= "number" then
		LuaNFrame.Error(NFLogId.NF_LOG_SYSTEMLOG, 0, __G__TRACKBACK__("AddTimer Para Error:nCallCount is not number"))
		return
	end

	return CPPNFrame:AddTimer(luaFunc, nInterValSec*1000, nCallCount, dataStr)
end

--每嗝1毫秒的定时器示例, 300ms执行testtimer函数一次,总共执行5此
--LuaNFrame.addtimermsec("testtimer",300, 5)
function LuaNFrame.AddTimerMsec(luaFunc, nInterValMSec, nCallCount, dataStr)
	if nInterValMSec == nil or type(luaFunc) ~= "string" then
		LuaNFrame.Error(NFLogId.NF_LOG_SYSTEMLOG, 0, __G__TRACKBACK__("AddTimerMsec Para Error"))
		return
    end

    if nCallCount == nil then
        nCallCount = 0;
	end
	
	if nCallCount == nil then
		nCallCount = 0;
	elseif type(nCallCount) ~= "number" then
		LuaNFrame.Error(NFLogId.NF_LOG_SYSTEMLOG, 0, __G__TRACKBACK__("AddTimerMsec Para Error:nCallCount is not number"))
		return
	end

	return CPPNFrame:AddTimer(luaFunc, nInterValMSec, nCallCount, dataStr)
end

--入参是两个参数，第一个是索引，第一个是参数信息
function LuaNFrame.ProcessWork(luaFunc, dataStr)
	if type(luaFunc) ~= "string" then
		LuaNFrame.Error(NFLogId.NF_LOG_SYSTEMLOG, 0, __G__TRACKBACK__("ProcessWork Para Error"))
		return
    end

	CPPNFrame:ProcessWork(luaFunc, dataStr)
end

function LuaNFrame.ProcessTimer(timeSec, luaFunc, dataStr)
	if type(luaFunc) ~= "string" then
		LuaNFrame.Error(NFLogId.NF_LOG_SYSTEMLOG, 0, __G__TRACKBACK__("ProcessTimer Para Error"))
		return
	end
	
	if timeSec == nil then
		timeSec = 0;
	elseif type(timeSec) ~= "number" then
		timeSec = tonumber(timeSec)
		if timeSec == nil then
			LuaNFrame.Error(NFLogId.NF_LOG_SYSTEMLOG, 0, __G__TRACKBACK__("ProcessTimer Para Error:timeSec is not number"))
		end
		return
	end

    CPPNFrame:ProcessTimer(timeSec, luaFunc, dataStr)
end

function LuaNFrame.ProcessLoopTimer(timeSec, luaFunc, dataStr)
	--该函数设置的定时器，是在主线程serverloop的线程中执行
	if type(luaFunc) ~= "string" then
		LuaNFrame.Error(NFLogId.NF_LOG_SYSTEMLOG, 0, __G__TRACKBACK__("ProcessTimer Para Error"))
		return
	end
	
	if timeSec == nil then
		timeSec = 0;
	elseif type(timeSec) ~= "number" then
		timeSec = tonumber(timeSec)
		if timeSec == nil then
			LuaNFrame.Error(NFLogId.NF_LOG_SYSTEMLOG, 0, __G__TRACKBACK__("ProcessTimer Para Error:timeSec is not number"))
		end
		return
	end

    CPPNFrame:ProcessLoopTimer(timeSec, luaFunc, dataStr)
end


--停止服务器定时器
function LuaNFrame.StopTimer(timer)
	if type(timer) ~= "number" then
		LuaNFrame.Error(NFLogId.NF_LOG_SYSTEMLOG, 0, __G__TRACKBACK__("StopTimer Para Error"))
		return 
	end
	CPPNFrame:StopTimer(timer)
end

-- 关于闹钟实例：
--  原理解释：
	-- intervalSec 表示从1970年开始到现在，把所有的时间以intervalSec为单位划分用 “---”表示
	-- sec 表示，在intervalSec这个单位时间段内需要触发闹钟的时刻用"*"表示
	-- 所以要求sec < intervalSec
	-- 图示：1970开始｜-*---｜-*--｜-*--|.......|-*--|now
-- 实例：
-- （1）每隔物理10秒的第1秒时钟实例 ：LuaNFrame.addclocker("testclocker",1,10,0);
	--function testclocker(text,clocker)
	--	LuaNFrame.debug("testclocker:"..text)
	--  clocker.Stop()
	--end
--  (2) 每天上午8点触发闹钟实例：LuaNFrame.addclocker("OnClocker", 8*3600, 24*3600, 0 );
	--function OnClocker(text,clocker)
	--	LuaNFrame.debug("每日触发实列")
	--end
-- (3) 每周（7*24*3600）的第34个小时触发闹钟：LuaNFrame.addclocker("OnClocker", 34*3600, 7*24*3600, 0);
-- 
function LuaNFrame.AddClocker(luaFunc, sec, intervalSec, nCallCount, dataStr)
	if type(luaFunc) ~= "string" or type(sec) ~= "number" or type(intervalSec) ~= "number" then
		LuaNFrame.Error(NFLogId.NF_LOG_SYSTEMLOG, 0, __G__TRACKBACK__("AddClocker Para Error"))
		return
    end

    if nCallCount == nil then
        nCallCount = 0;
	end
	
	if nCallCount == nil then
		nCallCount = 0;
	elseif type(nCallCount) ~= "number" then
		LuaNFrame.Error(NFLogId.NF_LOG_SYSTEMLOG, 0, __G__TRACKBACK__("AddClocker Para Error:nCallCount is not number"))
		return
	end

	return CPPNFrame:AddClocker(luaFunc, sec, intervalSec, nCallCount, dataStr)
end

--创建全局唯一的UUID
function LuaNFrame.GetUUID()
    return CPPNFrame:GetUUID()
end

--获得服务器开启时间，单位ms
function LuaNFrame.GetInitTime()
    return CPPNFrame:GetInitTime()
end

--获得服务器当前时间，单位ms
function LuaNFrame.GetNowTime()
    return CPPNFrame:GetNowTime()
end

--获得服务器当前时间，单位ms
function LuaNFrame.GetMsecTime()
    return CPPNFrame:GetMsecTime()
end

--获得服务器当前时间，单位s
function LuaNFrame.GetSecTime()
    return CPPNFrame:GetSecTime()
end

--通过字符串获得MD5, 返回MD5字符串
function LuaNFrame.GetMD5(str)
	if type(str) ~= "string" then
		LuaNFrame.Error(NFLogId.NF_LOG_SYSTEMLOG, 0, __G__TRACKBACK__("GetMD5 Para Error"))
		return
    end
    return CPPNFrame:GetMD5(str)
end

--通过字符串获得对应的CRC32, 返回数字
function LuaNFrame.GetCRC32(str)
	if type(str) ~= "string" then
		LuaNFrame.Error(NFLogId.NF_LOG_SYSTEMLOG, 0, __G__TRACKBACK__("GetCRC32 Para Error"))
		return
    end
    return CPPNFrame:GetCRC32(str)
end

--通过字符串获得对应的CRC16, 返回数字
function LuaNFrame.GetCRC16(str)
	if type(str) ~= "string" then
		LuaNFrame.Error(NFLogId.NF_LOG_SYSTEMLOG, 0, __G__TRACKBACK__("GetCRC16 Para Error"))
		return
    end
    return CPPNFrame:GetCRC16(str)
end

--通过字符串获得对应的Base64Encode, 返回字符串
function LuaNFrame.Base64Encode(str)
	if type(str) ~= "string" then
		LuaNFrame.Error(NFLogId.NF_LOG_SYSTEMLOG, 0, __G__TRACKBACK__("Base64Encode Para Error"))
		return
    end
    return CPPNFrame:Base64Encode(str)
end

--通过字符串获得对应的Base64Decode, 返回字符串
function LuaNFrame.Base64Decode(str)
	if type(str) ~= "string" then
		LuaNFrame.Error(NFLogId.NF_LOG_SYSTEMLOG, 0, __G__TRACKBACK__("Base64Decode Para Error"))
		return
    end
    return CPPNFrame:Base64Decode(str)
end

function LuaNFrame.Sha256(str)
    return CPPNFrame:Sha256(str)
end

function LuaNFrame.Platfrom()
    return CPPNFrame:Platfrom()
end

function LuaNFrame.IsThreadModule()
    return CPPNFrame:IsThreadModule()
end

--设置LOG等级
function LuaNFrame.SetLogLevel(level)
    CPPNFrame:SetLogLevel(level)
end

--设置LOG立马刷新等级
function LuaNFrame.SetFlushOn(level)
    CPPNFrame:SetFlushOn(level)
end

function LuaNFrame.Debug(logId, guid, ...)
	local cStackInfo = debug.getinfo(2, "Sl")
	if cStackInfo then
		CPPNFrame:Debug(logId, guid,"["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(...))
	else
		CPPNFrame:Debug(logId, guid, tostring(...))
	end
end

function LuaNFrame.Info(logId, guid, ...)
	local cStackInfo = debug.getinfo(2, "Sl")
	if cStackInfo then
		CPPNFrame:Info(logId, guid,"["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(...))
	else
		CPPNFrame:Info(logId, guid,tostring(...))
	end
end

function LuaNFrame.Warn(logId, guid, ...)
	local cStackInfo = debug.getinfo(2, "Sl")
	if cStackInfo then
		CPPNFrame:Warn(logId, guid,"["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(...))
	else
		CPPNFrame:Warn(logId, guid,tostring(...))
	end
end

function LuaNFrame.Error(logId, guid, ...)
	local cStackInfo = debug.getinfo(2, "Sl")
	if cStackInfo then
		CPPNFrame:Error(logId, guid, "["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(...))
	else
		CPPNFrame:Error(logId, guid, tostring(...))
	end
end

function LuaNFrame.ExeFunc(func)
	local status, msg = xpcall (func, __G__TRACKBACK__)

    if not status then
        LuaNFrame.Error(NFLogId.NF_LOG_SYSTEMLOG, 0, msg)
    end
end

function LuaNFrame.BeginProfiler(name)
    CPPNFrame:BeginProfiler(name)
end

function LuaNFrame.EndProfiler()
    CPPNFrame:EndProfiler()
end

function LuaNFrame.SendMsgToPlayer(unLinkId, nPlayerId, nMsgId, nLen, strData)
	if type(unLinkId) == "number" and type(nMsgId) == "number" and type(strData) == "string" and type(nPlayerId) == "number" and type(nLen) == "number" then
		CPPNFrame:SendMsgToPlayer(unLinkId, nPlayerId, nMsgId, nLen, strData)
	else
		LuaNFrame.Error(NFLogId.NF_LOG_SYSTEMLOG, 0, __G__TRACKBACK__("LuaNFrame.SendMsgToPlayer Para Error"))
	end
end

function LuaNFrame.SendMsgToWorld(unLinkId, nPlayerId, nMsgId, nLen, strData)
	if type(unLinkId) == "number" and type(nMsgId) == "number" and type(strData) == "string" and type(nPlayerId) == "number" and type(nLen) == "number" then
		CPPNFrame:SendMsgToWorld(unLinkId, nPlayerId, nMsgId, nLen, strData)
	else
		LuaNFrame.Error(NFLogId.NF_LOG_SYSTEMLOG, 0, __G__TRACKBACK__("LuaNFrame.SendMsgToWorld Para Error"))
	end
end

function LuaNFrame.SendMsgToMaster(unLinkId, nPlayerId, nMsgId, nLen, strData)
	if type(unLinkId) == "number" and type(nMsgId) == "number" and type(strData) == "string" and type(nPlayerId) == "number" and type(nLen) == "number" then
		CPPNFrame:SendMsgToMaster(unLinkId, nPlayerId, nMsgId, nLen, strData)
	else
		LuaNFrame.Error(NFLogId.NF_LOG_SYSTEMLOG, 0, __G__TRACKBACK__("LuaNFrame.SendMsgToMaster Para Error"))
	end
end

g_operateID = g_operateID or 0

--处理登录服务器协议数据
function LuaNFrame.LoginServer_DispatchTcp(unLinkId, valueId, nMsgId, strMsg)
	local function TcpExecute()
		local retMsgID,controller = tcpManager:createController(nMsgId)
	
		if controller == nil then
			LuaNFrame.Error(NFLogId.NF_LOG_SYSTEMLOG, valueId, "nMsgId:"..nMsgId.." not handled!")
		else
			g_operateID = g_operateID + 1
			local playerID, retCode, retBufferLen, retString, otString = controller.execute(nMsgId, g_operateID, strMsg)
			if type(playerID) == "number" and playerID == 0 then
				playerID = valueId
			end
			LuaNFrame.SendMsgToPlayer(unLinkId, playerID, retMsgID, retBufferLen, retString)
		end
	end
	
	local status, msg = xpcall (TcpExecute, __G__TRACKBACK__)

	if not status then
		LuaNFrame.Error(NFLogId.NF_LOG_SYSTEMLOG, 0,  "LuaNFrame.LoginServer_DispatchTcp error, unLinkId:"..tostring(unLinkId).." valueId:"..tostring(valueId).." nMsgId:"..nMsgId)
        LuaNFrame.Error(NFLogId.NF_LOG_SYSTEMLOG, 0, msg)
    end
end

--执行游戏服务器信息
function LuaNFrame.DispatchTcp(unLinkId, valueId, nMsgId, strMsg)
	local function TcpExecute()
		local retMsgID,controller = tcpManager:createController(nMsgId)
	
		if controller == nil then
			LuaNFrame.Error(NFLogId.NF_LOG_SYSTEMLOG, valueId, "nMsgId:"..nMsgId.." not handled!")
		else
			g_operateID = g_operateID + 1
			local playerID, retCode, retBufferLen, retString, otString = controller.execute(nMsgId, g_operateID, strMsg)
			if type(playerID) == "number" and playerID == 0 then
				playerID = valueId
			end
			--登录协议特殊处理一下
			if nMsgId == 1001 then
				LuaNFrame.SendMsgToPlayer(unLinkId, valueId, retMsgID, retBufferLen, retString)
			else
				LuaNFrame.SendMsgToPlayer(unLinkId, playerID, retMsgID, retBufferLen, retString)
			end
		end
	end
	
	local status, msg = xpcall (TcpExecute, __G__TRACKBACK__)

	if not status then
		LuaNFrame.Error(NFLogId.NF_LOG_SYSTEMLOG, 0,  "LuaNFrame.DispatchTcp error, unLinkId:"..tostring(unLinkId).." valueId:"..tostring(valueId).." nMsgId:"..nMsgId)
        LuaNFrame.Error(NFLogId.NF_LOG_SYSTEMLOG, 0, msg)
    end
end


--处理世界服务器消息
function LuaNFrame.DispatchWorldTcp(unLinkId, valueId, nMsgId, strMsg)
	local function TcpExecute()
		local retMsgID,controller = tcpManager:createController(nMsgId)
	
		if controller == nil then
			LuaNFrame.Error(NFLogId.NF_LOG_SYSTEMLOG, valueId, "nMsgId:"..nMsgId.." not handled!")
		else
			g_operateID = g_operateID + 1
			local playerID, retCode, retBufferLen, retString, otString = controller.execute(nMsgId, g_operateID, strMsg)
			LuaNFrame.SendMsgToWorld(unLinkId, playerID, retMsgID, retBufferLen, retString)
		end
	end
	
	local status, msg = xpcall (TcpExecute, __G__TRACKBACK__)

	if not status then
		LuaNFrame.Error(NFLogId.NF_LOG_SYSTEMLOG, 0,  "LuaNFrame.DispatchWorldTcp error, unLinkId:"..tostring(unLinkId).." valueId:"..tostring(valueId).." nMsgId:"..nMsgId)
        LuaNFrame.Error(NFLogId.NF_LOG_SYSTEMLOG, 0, msg)
    end
end

--处理Master服务器消息
function LuaNFrame.DispatchMasterTcp(unLinkId, valueId, nMsgId, strMsg)
	local function TcpExecute()
		local retMsgID,controller = tcpManager:createController(nMsgId)
	
		if controller == nil then
			LuaNFrame.Error(NFLogId.NF_LOG_SYSTEMLOG, valueId, "nMsgId:"..nMsgId.." not handled!")
		else
			g_operateID = g_operateID + 1
			local playerID, retCode, retBufferLen, retString, otString = controller.execute(nMsgId, g_operateID, strMsg)
			LuaNFrame.SendMsgToMaster(unLinkId, playerID, retMsgID, retBufferLen, retString)
		end
	end
	
	local status, msg = xpcall (TcpExecute, __G__TRACKBACK__)

	if not status then
		LuaNFrame.Error(NFLogId.NF_LOG_SYSTEMLOG, 0,  "LuaNFrame.DispatchMasterTcp error, unLinkId:"..tostring(unLinkId).." valueId:"..tostring(valueId).." nMsgId:"..nMsgId)
        LuaNFrame.Error(NFLogId.NF_LOG_SYSTEMLOG, 0, msg)
    end
end

--处理Master服务器消息
function LuaNFrame.DispatchMasterHttp(unLinkId, requestId, firstPath, secondPath, strMsg)
	local function HttpExecute()
		controller = HttpManager.CreateController(firstPath)
	
		if controller == nil then
			LuaNFrame.Error(NFLogId.NF_LOG_SYSTEMLOG, 0, "http msg:/"..firstPath.."/"..secondPath.." not handled!")
		else
			retString,retSize = controller[secondPath](strMsg) 
			LuaNFrame.SendMsgTMaster(unLinkId, requestId, 5, retSize, retString)
		end
	end
	
	local status, msg = xpcall (HttpExecute, __G__TRACKBACK__)

	if not status then
		LuaNFrame.Error(NFLogId.NF_LOG_SYSTEMLOG, 0,  "LuaNFrame.DispatchMasterHttp error, unLinkId:"..tostring(unLinkId)..", requestId:"..tostring(requestId)..", firstPath:"..firstPath..", secondPath:"..secondPath)
        LuaNFrame.Error(NFLogId.NF_LOG_SYSTEMLOG, 0, msg)
    end
end

--执行定时函数
function LuaNFrame.DispatchTimer(luaFunc, dataStr)
	local function timerExecute()
		local timer = timerManager:createOnceTimer(luaFunc)
		
		if timer == nil then
			LuaNFrame.Error(NFLogId.NF_LOG_SYSTEMLOG, 0, "DispatchTimer luaFunc:"..luaFunc.." not handled!")
		else
			timer.execute(dataStr)
		end
	end
	
	local status, msg = xpcall (timerExecute, __G__TRACKBACK__)

	if not status then
		LuaNFrame.Error(NFLogId.NF_LOG_SYSTEMLOG, 0,  "LuaNFrame.DispatchTimer error, func:"..luaFunc.." param:"..tostring(dataStr))
        LuaNFrame.Error(NFLogId.NF_LOG_SYSTEMLOG, 0, msg)
    end
end

--执行定时函数
function LuaNFrame.DispatchTimerLoop(dataStr)
	local function timerExecute()
		timerManager:execute(TimeUtils.GetMescTime(), dataStr)
	end
	
	local status, msg = xpcall (timerExecute, __G__TRACKBACK__)

	if not status then
		LuaNFrame.Error(NFLogId.NF_LOG_SYSTEMLOG, 0,  "LuaNFrame.DispatchTimerLoop error, param:"..tostring(dataStr))
        LuaNFrame.Error(NFLogId.NF_LOG_SYSTEMLOG, 0, msg)
    end
end

function LuaNFrame.DispatchTimerOnce( luaFunc, dataStr)
	local function timerExecute()
		local timer = timerManager:createOnceTimer(luaFunc)
		
		if timer == nil then
			LuaNFrame.Error(NFLogId.NF_LOG_SYSTEMLOG, 0, "DispatchTimerOnce luaFunc:"..luaFunc.." not handled!")
		else
			timer.execute(dataStr)
		end
	end
	
	local status, msg = xpcall (timerExecute, __G__TRACKBACK__)

	if not status then
		LuaNFrame.Error(NFLogId.NF_LOG_SYSTEMLOG, 0,  "LuaNFrame.DispatchTimerOnce error, func:"..luaFunc.." param:"..tostring(dataStr))
        LuaNFrame.Error(NFLogId.NF_LOG_SYSTEMLOG, 0, msg)
    end
end

function LuaNFrame.TimerInit(timeType)
	local function timerInitData()
		timerManager.Init(TimeUtils.GetMescTime(), timeType)
	end
	
	local status, msg = xpcall (timerInitData, __G__TRACKBACK__)

	if not status then
		LuaNFrame.Error(NFLogId.NF_LOG_SYSTEMLOG, 0,  "LuaNFrame.TimerInit error, param:"..tostring(timeType))
        LuaNFrame.Error(NFLogId.NF_LOG_SYSTEMLOG, 0, msg)
    end
end

function LuaNFrame.DispatchWorker(indexStr, dataStr)
	--传入的参数中，第一个是index索引，字符串类型的，第二个是参数
	local function workExecute()
		local worker = workManager:createWork(indexStr)
		
		if worker == nil then
			LuaNFrame.Error(NFLogId.NF_LOG_SYSTEMLOG, 0, "DispatchWorker luaFunc:"..indexStr.." not handled!")
		else
			worker.work(dataStr)
		end
	end
	
	local status, msg = xpcall (workExecute, __G__TRACKBACK__)

	if not status then
		LuaNFrame.Error(NFLogId.NF_LOG_SYSTEMLOG, 0,  "LuaNFrame.DispatchWorker "..tostring(indexStr).." error, param:"..tostring(dataStr))
        LuaNFrame.Error(NFLogId.NF_LOG_SYSTEMLOG, 0, msg)
    end
end

