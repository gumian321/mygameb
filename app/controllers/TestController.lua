--
-- Author: gerry
-- Date: 2015-11-26 15:08:53
--
local protocols = require("app.protocol.init")
local GameUtils = require("app.core.GameUtils")
local GameConfig = require("app.core.GameConfig")
local ControllerBase = require("app.controllers.ControllerBase")
local scheduler = require("framework.scheduler")
local TestController = class("TestController", ControllerBase)
local GlobalStatus = APP:getObject("GlobalStatus")
local utils = require("app.common.utils")
local GameMapConfig = require("app.core.Game.GameMapConfig")

function TestController:ctor()
	TestController.super.ctor(self)

    
	self._ao = 0 -- 初始化角度
	self._playerACanMove = false
    self._myNode = nil
    self._playerList = {}
    

    --[[--------------------------------------------------
    -- 例子
    APP:createView("YaoGanNode")
        :addTo(self, 1)


    self:initRoom()
    --]]--------------------------------------------------


    ----[[--------------------------------------------------
    -- 测试
    -- for i=1,100 do
    --     self:testA()
    -- end
    -- for i=1,100 do
    --     self:testB()
    -- end

    ---
    --测试背景
    self:createTestBg()


    local emitter = cc.ParticleSystemQuad:create("effect/particle/particle_texture_02.plist")
    emitter:setPosition(display.cx, display.cy)
    self:addChild(emitter, 100)

    for i=1,3 do

        local params = 
        {
            type = GameConfig._TOOLS_LABEL_TYPE[i+1],
            num = 0*math.pow(10, i),
            size = 88,
            isEnglishType = true,
            color = GameConfig._COLOR["Snow"], 
            borderColor = GameConfig._COLOR["Purple1"], 
            bordWidth = 3,
            shadowWidth = 4,
            fontPath = "effect/BRITANIC.TTF"
        }
        local _vo = APP:createView("ToolsNumLabelNode",params)
                :pos(display.cx, display.cy - 100*i)
                :addTo(self,15)

        _vo:updateNum(params.num+16, true)
    end

    
    

    --]]--------------------------------------------------

    local json = require("framework.json")
    local _a = json.encode({
        user_type = 1, 
        account = "options.account",
        password = "(*@638&8I*H@s2)",
    })

    -- local _a = "gerry goo 1986@123"
    local _b = GameUtils.encodeBase64(_a)
    print("----------base 64 test")
    print(_b)
    local _c = GameUtils.decodeBase64(_b)    
    print(_c)
    local _d = json.decode(_c)
    dump(_d)
end

function TestController:onEnter()
	TestController.super.onEnter(self)
	self._handelA = scheduler.scheduleGlobal(handler(self, self.onCollision), 0)
end

function TestController:onExit()
    TestController.super.onExit(self)
    scheduler.unscheduleGlobal(self._handelA)
end
--------------------------------------------------------
--init
function TestController:initRoom()
    local RoomProxy = GlobalStatus:getRoom()
    local MyInfo = RoomProxy:getMyRoomInfo()
    if MyInfo then
        self._myNode = self:createPlayer(MyInfo)
    end
    for _,v in ipairs(RoomProxy:getPlayerRoomInfo()) do
        local _vo = self:createPlayer(v)
        table.insert(self._playerList, {RoomUser = v, PlayerNode = _vo})  
    end
end
--------------------------------------------------------
-- tools createPlayer
function TestController:createPlayer(RoomUser)
    local User = APP:getObject("User")
    local __cc3 = cc.c3b(255, 0, 0)
    if RoomUser.base_user.user_id == User.user_id then
        __cc3 = cc.c3b(0, 255, 0)
    end
    local _vo = display.newSprite("image/chatin_new_voice.png")
        :pos(display.cx,display.cy)
        :addTo(self, 2)

    cc.ui.UILabel.new({
            text = RoomUser.base_user.name, 
            size = 22,
            color = __cc3,
            align = cc.ui.TEXT_ALIGN_CENTER})
        :align(display.CENTER, 0, -10)
        :addTo(_vo) 
    return _vo 
end
--------------------------------------------------------
-- tools getPlayer
function TestController:getPlayer(playerUserId)
    local _out = nil
    for _,v in ipairs(self._playerList) do
        if v.RoomUser.base_user.user_id == playerUserId then
            _out = v
            break
        end
    end
    return _out
end

-------------------------------
-------- onCollision ----------
-------------------------------
function TestController:onCollision(dt)
    if self._playerACanMove and self._myNode then
    	local _startPos = cc.p(self._myNode:getPositionX(), self._myNode:getPositionY())
    	local _r = 2
    	local _pai = 3.14159
    	local _newX = _startPos.x + _r * math.cos(self._ao * _pai/180) 
        local _newY = _startPos.y + _r * math.sin(self._ao * _pai/180) 
    	self._myNode:setPosition(_newX, _newY)

    	local request = protocols.game_pb.MoveRequest()
    	request.src_x = _newX
    	request.src_y = _newY
        SOCKET_MANAGER.send(protocols.command_pb.CMD_GAME_MOVE_REQ, request)  
    end
end
-------------------------------
-------- onCollision end ------
-------------------------------

function TestController:_pointStart()
	self._ao = 0
	self._playerACanMove = true
	
end

function TestController:_pointAo(ao)
	self._ao = ao
end

function TestController:_pointEnd()
	self._ao = 0
	self._playerACanMove = false
end








-------------------------------
-------- socket api  ----------
-------------------------------
function TestController:handleRoomNotifyEnter(enterUser)
    local _vo = self:createPlayer(enterUser)
    table.insert(self._playerList, {RoomUser = enterUser, PlayerNode = _vo})  
end

function TestController:handleRoomNotifyLeave(leaveUser)
    for i,v in ipairs(self._playerList) do
        if v.RoomUser.base_user.user_id == leaveUser.base_user.user_id then
            v.PlayerNode:removeSelf()
            table.remove(self._playerList, i)
            break
        end
    end
end

function TestController:handleGameNotifyMove(response)
    local _newX = response.src_x
    local _newY = response.src_y
    local _player = self:getPlayer(response.player_user_id)
    _player.PlayerNode:setPosition(_newX, _newY)
end



-------------------------------
-------- socket api  end ------
-------------------------------




---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------

function TestController:testA()
    local GameRocksLogic = require("app.gamelogic.GameRocksLogic")
    local res = {}
    GameRocksLogic.autoCreateRocksTypeA(res, nil)
    -- dump(res)
    local _printArray = {}
    for i=1,GameMapConfig.ROCK_X do
        table.insert(_printArray, {false, 0})
    end
    local _sid = 1
    for _,v in ipairs(res) do
        if v.color > 0 then
            local _s, _e = _sid, _sid+v.len-1
            for i=_s, _e do
                _printArray[i] = {true, v.color}
            end
            
        end
        _sid = _sid+(v.len)
    end
    local _pString = ""
    for _,v in ipairs(_printArray) do
        if v[1] == true then
            _pString = _pString..tostring(v[2])
        else
            _pString = _pString.."_"
        end
    end
    print(_pString)
end


function TestController:testB()
    local GameRocksLogic = require("app.gamelogic.GameRocksLogic")
    local res = {}
    GameRocksLogic.autoCreateRocksTypeB(res, nil)
    -- dump(res)
    local _printArray = {}
    for i=1,GameMapConfig.ROCK_X do
        table.insert(_printArray, {false, 0})
    end
    local _sid = 1
    for _,v in ipairs(res) do
        if v.color > 0 then
            local _s, _e = _sid, _sid+v.len-1
            for i=_s, _e do
                _printArray[i] = {true, v.color}
            end
            
        end
        _sid = _sid+(v.len)
    end
    local _pString = ""
    for _,v in ipairs(_printArray) do
        if v[1] == true then
            _pString = _pString..tostring(v[2])
        else
            _pString = _pString.."_"
        end
    end
    print(_pString)
end

---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
function TestController:createTestBg()
    display.newRect(cc.rect(0, 0, display.width, display.height),{
                fillColor = cc.c4f(152/255,245/255,245/255,1), 
                borderColor = cc.c4f(1,0,0,1), 
                borderWidth = 1
            })
            :addTo(self, 1)

end


return TestController