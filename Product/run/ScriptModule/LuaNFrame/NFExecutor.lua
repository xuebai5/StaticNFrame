--lua5.3 没有math.mod函数
function math.mod(a, b)
	a = tonumber(a)
	b = tonumber(b)
	return math.fmod(a,b)
end

g_platfrom = 'luaself'           --g_platfrom init for luaself

function md5(md5Str)
	return LuaNFrame.GetMD5(md5Str)
end

g_randomsee = 0
function math.myrandom(...)
	local arg = {...}
	if g_randomsee == 0 then
		math.newrandomseed()
		g_randomsee = 1
	end
	for i = 1, #arg do
		arg[i] = math.floor(arg[i])
	end

	return math.random(table.unpack(arg))
end


function LogFile(file, msg)
	local cStackInfo = debug.getinfo(2, "Sl")
	if cStackInfo then
		if type(file) == "string" then
			if file == "error" then
				CPPNFrame:Error(NFLogId.NF_LOG_SYSTEMLOG, 0, "["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(msg))
				return
			end
		end
		CPPNFrame:Info(NFLogId.NF_LOG_SYSTEMLOG, 0, "["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(msg))
	else
		CPPNFrame:Info(NFLogId.NF_LOG_SYSTEMLOG, 0, tostring(msg))
	end
end

function LogHall(file, msg)
	local cStackInfo = debug.getinfo(2, "Sl")
	if cStackInfo then
		if type(file) == "string" then
			if file == "error" then
				CPPNFrame:Error(NFLogId.NF_LOG_GAME_HALL_LOG, 0, "["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(msg))
				return
			end
		end
		CPPNFrame:Info(NFLogId.NF_LOG_GAME_HALL_LOG, 0, "["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(msg))
	else
		CPPNFrame:Info(NFLogId.NF_LOG_GAME_HALL_LOG, 0, tostring(msg))
	end
end

function LogAgent(file, msg)
	local cStackInfo = debug.getinfo(2, "Sl")
	if cStackInfo then
		if type(file) == "string" then
			if file == "error" then
				CPPNFrame:Error(NFLogId.NF_LOG_GAME_AGENT_LOG, 0, "["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(msg))
				return
			end
		end
		CPPNFrame:Info(NFLogId.NF_LOG_GAME_AGENT_LOG, 0, "["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(msg))
	else
		CPPNFrame:Info(NFLogId.NF_LOG_GAME_AGENT_LOG, 0, tostring(msg))
	end
end

function LogBarccatat(file, msg)
	local cStackInfo = debug.getinfo(2, "Sl")
	if cStackInfo then
		if type(file) == "string" then
			if file == "error" then
				CPPNFrame:Error(NFLogId.NF_LOG_GAME_Barccatat_LOG, 0, "["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(msg))
				return
			end
		end
		CPPNFrame:Info(NFLogId.NF_LOG_GAME_Barccatat_LOG, 0, "["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(msg))
	else
		CPPNFrame:Info(NFLogId.NF_LOG_GAME_Barccatat_LOG, 0, tostring(msg))
	end
end

function LogBrnn(file, msg)
	local cStackInfo = debug.getinfo(2, "Sl")
	if cStackInfo then
		if type(file) == "string" then
			if file == "error" then
				CPPNFrame:Error(NFLogId.NF_LOG_GAME_Brnn_LOG, 0, "["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(msg))
				return
			end
		end
		CPPNFrame:Info(NFLogId.NF_LOG_GAME_Brnn_LOG, 0, "["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(msg))
	else
		CPPNFrame:Info(NFLogId.NF_LOG_GAME_Brnn_LOG, 0, tostring(msg))
	end
end

function LogBcbm(file, msg)
	local cStackInfo = debug.getinfo(2, "Sl")
	if cStackInfo then
		if type(file) == "string" then
			if file == "error" then
				CPPNFrame:Error(NFLogId.NF_LOG_GAME_Bcbm_LOG, 0, "["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(msg))
				return
			end
		end
		CPPNFrame:Info(NFLogId.NF_LOG_GAME_Bcbm_LOG, 0, "["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(msg))
	else
		CPPNFrame:Info(NFLogId.NF_LOG_GAME_Bcbm_LOG, 0, tostring(msg))
	end
end

function LogCaipiao(file, msg)
	local cStackInfo = debug.getinfo(2, "Sl")
	if cStackInfo then
		if type(file) == "string" then
			if file == "error" then
				CPPNFrame:Error(NFLogId.NF_LOG_GAME_Caipiao_LOG, 0, "["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(msg))
				return
			end
		end
		CPPNFrame:Info(NFLogId.NF_LOG_GAME_Caipiao_LOG, 0, "["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(msg))
	else
		CPPNFrame:Info(NFLogId.NF_LOG_GAME_Caipiao_LOG, 0, tostring(msg))
	end
end

function LogDdz(file, msg)
	local cStackInfo = debug.getinfo(2, "Sl")
	if cStackInfo then
		if type(file) == "string" then
			if file == "error" then
				CPPNFrame:Error(NFLogId.NF_LOG_GAME_Ddz_LOG, 0, "["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(msg))
				return
			end
		end
		CPPNFrame:Info(NFLogId.NF_LOG_GAME_Ddz_LOG, 0, "["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(msg))
	else
		CPPNFrame:Info(NFLogId.NF_LOG_GAME_Ddz_LOG, 0, tostring(msg))
	end
end

function LogDouNiu(file, msg)
	local cStackInfo = debug.getinfo(2, "Sl")
	if cStackInfo then
		if type(file) == "string" then
			if file == "error" then
				CPPNFrame:Error(NFLogId.NF_LOG_GAME_DouNiu_LOG, 0, "["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(msg))
				return
			end
		end
		CPPNFrame:Info(NFLogId.NF_LOG_GAME_DouNiu_LOG, 0, "["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(msg))
	else
		CPPNFrame:Info(NFLogId.NF_LOG_GAME_DouNiu_LOG, 0, tostring(msg))
	end
end

function LogDouNiutz(file, msg)
	local cStackInfo = debug.getinfo(2, "Sl")
	if cStackInfo then
		if type(file) == "string" then
			if file == "error" then
				CPPNFrame:Error(NFLogId.NF_LOG_GAME_DouNiutz_LOG, 0, "["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(msg))
				return
			end
		end
		CPPNFrame:Info(NFLogId.NF_LOG_GAME_DouNiutz_LOG, 0, "["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(msg))
	else
		CPPNFrame:Info(NFLogId.NF_LOG_GAME_DouNiutz_LOG, 0, tostring(msg))
	end
end

function LogErnn(file, msg)
	local cStackInfo = debug.getinfo(2, "Sl")
	if cStackInfo then
		if type(file) == "string" then
			if file == "error" then
				CPPNFrame:Error(NFLogId.NF_LOG_GAME_Ernn_LOG, 0, "["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(msg))
				return
			end
		end
		CPPNFrame:Info(NFLogId.NF_LOG_GAME_Ernn_LOG, 0, "["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(msg))
	else
		CPPNFrame:Info(NFLogId.NF_LOG_GAME_Ernn_LOG, 0, tostring(msg))
	end
end

function LogErsh(file, msg)
	local cStackInfo = debug.getinfo(2, "Sl")
	if cStackInfo then
		if type(file) == "string" then
			if file == "error" then
				CPPNFrame:Error(NFLogId.NF_LOG_GAME_Ersh_LOG, 0, "["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(msg))
				return
			end
		end
		CPPNFrame:Info(NFLogId.NF_LOG_GAME_Ersh_LOG, 0, "["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(msg))
	else
		CPPNFrame:Info(NFLogId.NF_LOG_GAME_Ersh_LOG, 0, tostring(msg))
	end
end

function LogFfc(file, msg)
	local cStackInfo = debug.getinfo(2, "Sl")
	if cStackInfo then
		if type(file) == "string" then
			if file == "error" then
				CPPNFrame:Error(NFLogId.NF_LOG_GAME_Ffc_LOG, 0, "["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(msg))
				return
			end
		end
		CPPNFrame:Info(NFLogId.NF_LOG_GAME_Ffc_LOG, 0, "["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(msg))
	else
		CPPNFrame:Info(NFLogId.NF_LOG_GAME_Ffc_LOG, 0, tostring(msg))
	end
end

function LogForest(file, msg)
	local cStackInfo = debug.getinfo(2, "Sl")
	if cStackInfo then
		if type(file) == "string" then
			if file == "error" then
				CPPNFrame:Error(NFLogId.NF_LOG_GAME_Forest_LOG, 0, "["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(msg))
				return
			end
		end
		CPPNFrame:Info(NFLogId.NF_LOG_GAME_Forest_LOG, 0, "["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(msg))
	else
		CPPNFrame:Info(NFLogId.NF_LOG_GAME_Forest_LOG, 0, tostring(msg))
	end
end

function LogFqzs(file, msg)
	local cStackInfo = debug.getinfo(2, "Sl")
	if cStackInfo then
		if type(file) == "string" then
			if file == "error" then
				CPPNFrame:Error(NFLogId.NF_LOG_GAME_Fqzs_LOG, 0, "["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(msg))
				return
			end
		end
		CPPNFrame:Info(NFLogId.NF_LOG_GAME_Fqzs_LOG, 0, "["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(msg))
	else
		CPPNFrame:Info(NFLogId.NF_LOG_GAME_Fqzs_LOG, 0, tostring(msg))
	end
end

function LogFruit(file, msg)
	local cStackInfo = debug.getinfo(2, "Sl")
	if cStackInfo then
		if type(file) == "string" then
			if file == "error" then
				CPPNFrame:Error(NFLogId.NF_LOG_GAME_Fruit_LOG, 0, "["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(msg))
				return
			end
		end
		CPPNFrame:Info(NFLogId.NF_LOG_GAME_Fruit_LOG, 0, "["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(msg))
	else
		CPPNFrame:Info(NFLogId.NF_LOG_GAME_Fruit_LOG, 0, tostring(msg))
	end
end

function LogFruitBat(file, msg)
	local cStackInfo = debug.getinfo(2, "Sl")
	if cStackInfo then
		if type(file) == "string" then
			if file == "error" then
				CPPNFrame:Error(NFLogId.NF_LOG_GAME_FruitBat_LOG, 0, "["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(msg))
				return
			end
		end
		CPPNFrame:Info(NFLogId.NF_LOG_GAME_FruitBat_LOG, 0, "["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(msg))
	else
		CPPNFrame:Info(NFLogId.NF_LOG_GAME_FruitBat_LOG, 0, tostring(msg))
	end
end

function LogGdmj(file, msg)
	local cStackInfo = debug.getinfo(2, "Sl")
	if cStackInfo then
		if type(file) == "string" then
			if file == "error" then
				CPPNFrame:Error(NFLogId.NF_LOG_GAME_Gdmj_LOG, 0, "["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(msg))
				return
			end
		end
		CPPNFrame:Info(NFLogId.NF_LOG_GAME_Gdmj_LOG, 0, "["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(msg))
	else
		CPPNFrame:Info(NFLogId.NF_LOG_GAME_Gdmj_LOG, 0, tostring(msg))
	end
end

function LogHongHei(file, msg)
	local cStackInfo = debug.getinfo(2, "Sl")
	if cStackInfo then
		if type(file) == "string" then
			if file == "error" then
				CPPNFrame:Error(NFLogId.NF_LOG_GAME_HongHei_LOG, 0, "["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(msg))
				return
			end
		end
		CPPNFrame:Info(NFLogId.NF_LOG_GAME_HongHei_LOG, 0, "["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(msg))
	else
		CPPNFrame:Info(NFLogId.NF_LOG_GAME_HongHei_LOG, 0, tostring(msg))
	end
end

function LogLhd(file, msg)
	local cStackInfo = debug.getinfo(2, "Sl")
	if cStackInfo then
		if type(file) == "string" then
			if file == "error" then
				CPPNFrame:Error(NFLogId.NF_LOG_GAME_Lhd_LOG, 0, "["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(msg))
				return
			end
		end
		CPPNFrame:Info(NFLogId.NF_LOG_GAME_Lhd_LOG, 0, "["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(msg))
	else
		CPPNFrame:Info(NFLogId.NF_LOG_GAME_Lhd_LOG, 0, tostring(msg))
	end
end

function LogPsz(file, msg)
	local cStackInfo = debug.getinfo(2, "Sl")
	if cStackInfo then
		if type(file) == "string" then
			if file == "error" then
				CPPNFrame:Error(NFLogId.NF_LOG_GAME_Psz_LOG, 0, "["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(msg))
				return
			end
		end
		CPPNFrame:Info(NFLogId.NF_LOG_GAME_Psz_LOG, 0, "["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(msg))
	else
		CPPNFrame:Info(NFLogId.NF_LOG_GAME_Psz_LOG, 0, tostring(msg))
	end
end

function LogRobot(file, msg)
	local cStackInfo = debug.getinfo(2, "Sl")
	if cStackInfo then
		if type(file) == "string" then
			if file == "error" then
				CPPNFrame:Error(NFLogId.NF_LOG_GAME_Robot_LOG, 0, "["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(msg))
				return
			end
		end
		CPPNFrame:Info(NFLogId.NF_LOG_GAME_Robot_LOG, 0, "["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(msg))
	else
		CPPNFrame:Info(NFLogId.NF_LOG_GAME_Robot_LOG, 0, tostring(msg))
	end
end

function LogShzBat(file, msg)
	local cStackInfo = debug.getinfo(2, "Sl")
	if cStackInfo then
		if type(file) == "string" then
			if file == "error" then
				CPPNFrame:Error(NFLogId.NF_LOG_GAME_ShzBat_LOG, 0, "["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(msg))
				return
			end
		end
		CPPNFrame:Info(NFLogId.NF_LOG_GAME_ShzBat_LOG, 0, "["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(msg))
	else
		CPPNFrame:Info(NFLogId.NF_LOG_GAME_ShzBat_LOG, 0, tostring(msg))
	end
end

function LogScibo(file, msg)
	local cStackInfo = debug.getinfo(2, "Sl")
	if cStackInfo then
		if type(file) == "string" then
			if file == "error" then
				CPPNFrame:Error(NFLogId.NF_LOG_GAME_Scibo_LOG, 0, "["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(msg))
				return
			end
		end
		CPPNFrame:Info(NFLogId.NF_LOG_GAME_Scibo_LOG, 0, "["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(msg))
	else
		CPPNFrame:Info(NFLogId.NF_LOG_GAME_Scibo_LOG, 0, tostring(msg))
	end
end

function LogSlhb(file, msg)
	local cStackInfo = debug.getinfo(2, "Sl")
	if cStackInfo then
		if type(file) == "string" then
			if file == "error" then
				CPPNFrame:Error(NFLogId.NF_LOG_GAME_Slhb_LOG, 0, "["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(msg))
				return
			end
		end
		CPPNFrame:Info(NFLogId.NF_LOG_GAME_Slhb_LOG, 0, "["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(msg))
	else
		CPPNFrame:Info(NFLogId.NF_LOG_GAME_Slhb_LOG, 0, tostring(msg))
	end
end

function LogTexas(file, msg)
	local cStackInfo = debug.getinfo(2, "Sl")
	if cStackInfo then
		if type(file) == "string" then
			if file == "error" then
				CPPNFrame:Error(NFLogId.NF_LOG_GAME_Texas_LOG, 0, "["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(msg))
				return
			end
		end
		CPPNFrame:Info(NFLogId.NF_LOG_GAME_Texas_LOG, 0, "["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(msg))
	else
		CPPNFrame:Info(NFLogId.NF_LOG_GAME_Texas_LOG, 0, tostring(msg))
	end
end

function LogTtz(file, msg)
	local cStackInfo = debug.getinfo(2, "Sl")
	if cStackInfo then
		if type(file) == "string" then
			if file == "error" then
				CPPNFrame:Error(NFLogId.NF_LOG_GAME_Ttz_LOG, 0, "["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(msg))
				return
			end
		end
		CPPNFrame:Info(NFLogId.NF_LOG_GAME_Ttz_LOG, 0, "["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(msg))
	else
		CPPNFrame:Info(NFLogId.NF_LOG_GAME_Ttz_LOG, 0, tostring(msg))
	end
end

function LogYqs(file, msg)
	local cStackInfo = debug.getinfo(2, "Sl")
	if cStackInfo then
		if type(file) == "string" then
			if file == "error" then
				CPPNFrame:Error(NFLogId.NF_LOG_GAME_Yqs_LOG, 0, "["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(msg))
				return
			end
		end
		CPPNFrame:Info(NFLogId.NF_LOG_GAME_Yqs_LOG, 0, "["..tostring(cStackInfo.short_src)..":"..tostring(cStackInfo.currentline).."] | "..tostring(msg))
	else
		CPPNFrame:Info(NFLogId.NF_LOG_GAME_Yqs_LOG, 0, tostring(msg))
	end
end

--入参是两个参数，第一个是索引，第一个是参数信息
function processWork(luaFunc, dataStr)
	LuaNFrame.ProcessWork(luaFunc, dataStr)
end

function processTimer(timeSec, indexStr, dataStr)
	LuaNFrame.ProcessTimer(timeSec, indexStr, dataStr)
end

function processLoopTimer(timeSec, indexStr, dataStr)
	--该函数设置的定时器，是在主线程serverloop的线程中执行
	LuaNFrame.ProcessLoopTimer(timeSec, indexStr, dataStr)
end

function TcpSessionClose(playerID)
	if tonumber(playerID) == 0 then
		return
	end

	LogFile("error", playerID.." Exit")
	OnlineModel.PlayerExit(playerID)
end

function TcpSessionReport(userID, IP)
	--上报玩家的IP，目前主要是IP	
	LogFile("error", userID.." Report:"..IP)
	PlayerModel.PlayerReport(userID, IP)
end

function SendMessage(useridList, retMsgID, buffLen, retString)

	if useridList == nil or buffLen == 0  then
		return 
	end

	local userIDStr = {}
	if type(useridList) == "table" then
		if #useridList == 0 then
			return
		end
		
		for key,values in pairs(useridList) do
			if RobotService.IsRobot(values) ~= true and tonumber(values) > 1000 then
				table.insert(userIDStr, tonumber(values))
			end
			if #userIDStr >= 20 then
				LuaNFrame.SendMsgToManyPlayer(userIDStr, retMsgID, buffLen, retString)
				userIDStr = {}
			end
		end
		if #userIDStr > 0 then
			LuaNFrame.SendMsgToManyPlayer(userIDStr, retMsgID, buffLen, retString)
		end
	else
		if RobotService.IsRobot(useridList) ~= true and tonumber(useridList) > 1000 then
			LuaNFrame.SendMsgToPlayer(0, tonumber(useridList), retMsgID, buffLen, retString)
		end
	end
end

function Sha256(content)
	return LuaNFrame.Sha256(content)
end

function HttpPost(url,content)
	local str = LuaNFrame.HttpPost(url,content)
	if type(str) ~= "string" then
		str = "{}"
	else
		if str == "" then
			str = "{}"
		end
	end
	return str
end

function HttpPostWithHead(url,content,head)
	local str = LuaNFrame.HttpPostWithHead(url,content,head)
	if type(str) ~= "string" then
		str = "{}"
	else
		if str == "" then
			str = "{}"
		end
	end
	return str
end

function HttpGet(url)
	local str = LuaNFrame.HttpGet(url)
	if type(str) ~= "string" then
		str = "{}"
	else
		if str == "" then
			str = "{}"
		end
	end
	return str
end

function HttpGetWithHead(url,head)
	local str LuaNFrame.HttpGetWithHead(url,head)
	if type(str) ~= "string" then
		str = "{}"
	else
		if str == "" then
			str = "{}"
		end
	end
	return str
end