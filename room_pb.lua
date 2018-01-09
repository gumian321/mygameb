-- Generated By protoc-gen-lua Do not Edit
local protobuf = require "protobuf"
local DEFINES_PB = require("defines_pb")
local USER_PB = require("user_pb")
module('room_pb')


ROOMUSER = protobuf.Descriptor();
local ROOMUSER_SEAT_ID_FIELD = protobuf.FieldDescriptor();
local ROOMUSER_BASE_USER_FIELD = protobuf.FieldDescriptor();
local ROOMUSER_USER_STATE_FIELD = protobuf.FieldDescriptor();
local ROOMUSER_READY_TIMER_REMAIN_FIELD = protobuf.FieldDescriptor();
local ROOMUSER_IS_USING_GAME_COIN_FIELD = protobuf.FieldDescriptor();
local ROOMUSER_GAME_COIN_FIELD = protobuf.FieldDescriptor();
local ROOMUSER_IP_FIELD = protobuf.FieldDescriptor();
local ROOMUSER_LOCATION_FIELD = protobuf.FieldDescriptor();
local ROOMUSER_IS_OFFLINE_FIELD = protobuf.FieldDescriptor();
local ROOMUSER_IS_ARTIFICIAL_OFFLINE_FIELD = protobuf.FieldDescriptor();
local ROOMUSER_ENTER_ROOM_TIME_FIELD = protobuf.FieldDescriptor();
ROOM = protobuf.Descriptor();
local ROOM_ROOM_ID_FIELD = protobuf.FieldDescriptor();
local ROOM_PLAYER_COUNT_FIELD = protobuf.FieldDescriptor();
local ROOM_ROOM_USER_FIELD = protobuf.FieldDescriptor();
GAMEROOMS = protobuf.Descriptor();
local GAMEROOMS_ROOMS_FIELD = protobuf.FieldDescriptor();

ROOMUSER_SEAT_ID_FIELD.name = "seat_id"
ROOMUSER_SEAT_ID_FIELD.full_name = ".pb.RoomUser.seat_id"
ROOMUSER_SEAT_ID_FIELD.number = 1
ROOMUSER_SEAT_ID_FIELD.index = 0
ROOMUSER_SEAT_ID_FIELD.label = 2
ROOMUSER_SEAT_ID_FIELD.has_default_value = false
ROOMUSER_SEAT_ID_FIELD.default_value = 0
ROOMUSER_SEAT_ID_FIELD.type = 5
ROOMUSER_SEAT_ID_FIELD.cpp_type = 1

ROOMUSER_BASE_USER_FIELD.name = "base_user"
ROOMUSER_BASE_USER_FIELD.full_name = ".pb.RoomUser.base_user"
ROOMUSER_BASE_USER_FIELD.number = 2
ROOMUSER_BASE_USER_FIELD.index = 1
ROOMUSER_BASE_USER_FIELD.label = 2
ROOMUSER_BASE_USER_FIELD.has_default_value = false
ROOMUSER_BASE_USER_FIELD.default_value = nil
ROOMUSER_BASE_USER_FIELD.message_type = USER_PB.BASEUSER
ROOMUSER_BASE_USER_FIELD.type = 11
ROOMUSER_BASE_USER_FIELD.cpp_type = 10

ROOMUSER_USER_STATE_FIELD.name = "user_state"
ROOMUSER_USER_STATE_FIELD.full_name = ".pb.RoomUser.user_state"
ROOMUSER_USER_STATE_FIELD.number = 3
ROOMUSER_USER_STATE_FIELD.index = 2
ROOMUSER_USER_STATE_FIELD.label = 2
ROOMUSER_USER_STATE_FIELD.has_default_value = false
ROOMUSER_USER_STATE_FIELD.default_value = nil
ROOMUSER_USER_STATE_FIELD.enum_type = DEFINES_PB.ROOMUSERSTATE
ROOMUSER_USER_STATE_FIELD.type = 14
ROOMUSER_USER_STATE_FIELD.cpp_type = 8

ROOMUSER_READY_TIMER_REMAIN_FIELD.name = "ready_timer_remain"
ROOMUSER_READY_TIMER_REMAIN_FIELD.full_name = ".pb.RoomUser.ready_timer_remain"
ROOMUSER_READY_TIMER_REMAIN_FIELD.number = 4
ROOMUSER_READY_TIMER_REMAIN_FIELD.index = 3
ROOMUSER_READY_TIMER_REMAIN_FIELD.label = 2
ROOMUSER_READY_TIMER_REMAIN_FIELD.has_default_value = false
ROOMUSER_READY_TIMER_REMAIN_FIELD.default_value = 0
ROOMUSER_READY_TIMER_REMAIN_FIELD.type = 5
ROOMUSER_READY_TIMER_REMAIN_FIELD.cpp_type = 1

ROOMUSER_IS_USING_GAME_COIN_FIELD.name = "is_using_game_coin"
ROOMUSER_IS_USING_GAME_COIN_FIELD.full_name = ".pb.RoomUser.is_using_game_coin"
ROOMUSER_IS_USING_GAME_COIN_FIELD.number = 5
ROOMUSER_IS_USING_GAME_COIN_FIELD.index = 4
ROOMUSER_IS_USING_GAME_COIN_FIELD.label = 2
ROOMUSER_IS_USING_GAME_COIN_FIELD.has_default_value = false
ROOMUSER_IS_USING_GAME_COIN_FIELD.default_value = false
ROOMUSER_IS_USING_GAME_COIN_FIELD.type = 8
ROOMUSER_IS_USING_GAME_COIN_FIELD.cpp_type = 7

ROOMUSER_GAME_COIN_FIELD.name = "game_coin"
ROOMUSER_GAME_COIN_FIELD.full_name = ".pb.RoomUser.game_coin"
ROOMUSER_GAME_COIN_FIELD.number = 6
ROOMUSER_GAME_COIN_FIELD.index = 5
ROOMUSER_GAME_COIN_FIELD.label = 2
ROOMUSER_GAME_COIN_FIELD.has_default_value = false
ROOMUSER_GAME_COIN_FIELD.default_value = 0
ROOMUSER_GAME_COIN_FIELD.type = 3
ROOMUSER_GAME_COIN_FIELD.cpp_type = 2

ROOMUSER_IP_FIELD.name = "ip"
ROOMUSER_IP_FIELD.full_name = ".pb.RoomUser.ip"
ROOMUSER_IP_FIELD.number = 9
ROOMUSER_IP_FIELD.index = 6
ROOMUSER_IP_FIELD.label = 2
ROOMUSER_IP_FIELD.has_default_value = false
ROOMUSER_IP_FIELD.default_value = ""
ROOMUSER_IP_FIELD.type = 9
ROOMUSER_IP_FIELD.cpp_type = 9

ROOMUSER_LOCATION_FIELD.name = "location"
ROOMUSER_LOCATION_FIELD.full_name = ".pb.RoomUser.location"
ROOMUSER_LOCATION_FIELD.number = 11
ROOMUSER_LOCATION_FIELD.index = 7
ROOMUSER_LOCATION_FIELD.label = 1
ROOMUSER_LOCATION_FIELD.has_default_value = false
ROOMUSER_LOCATION_FIELD.default_value = nil
ROOMUSER_LOCATION_FIELD.message_type = DEFINES_PB.LOCATION
ROOMUSER_LOCATION_FIELD.type = 11
ROOMUSER_LOCATION_FIELD.cpp_type = 10

ROOMUSER_IS_OFFLINE_FIELD.name = "is_offline"
ROOMUSER_IS_OFFLINE_FIELD.full_name = ".pb.RoomUser.is_offline"
ROOMUSER_IS_OFFLINE_FIELD.number = 12
ROOMUSER_IS_OFFLINE_FIELD.index = 8
ROOMUSER_IS_OFFLINE_FIELD.label = 1
ROOMUSER_IS_OFFLINE_FIELD.has_default_value = false
ROOMUSER_IS_OFFLINE_FIELD.default_value = false
ROOMUSER_IS_OFFLINE_FIELD.type = 8
ROOMUSER_IS_OFFLINE_FIELD.cpp_type = 7

ROOMUSER_IS_ARTIFICIAL_OFFLINE_FIELD.name = "is_artificial_offline"
ROOMUSER_IS_ARTIFICIAL_OFFLINE_FIELD.full_name = ".pb.RoomUser.is_artificial_offline"
ROOMUSER_IS_ARTIFICIAL_OFFLINE_FIELD.number = 13
ROOMUSER_IS_ARTIFICIAL_OFFLINE_FIELD.index = 9
ROOMUSER_IS_ARTIFICIAL_OFFLINE_FIELD.label = 1
ROOMUSER_IS_ARTIFICIAL_OFFLINE_FIELD.has_default_value = false
ROOMUSER_IS_ARTIFICIAL_OFFLINE_FIELD.default_value = false
ROOMUSER_IS_ARTIFICIAL_OFFLINE_FIELD.type = 8
ROOMUSER_IS_ARTIFICIAL_OFFLINE_FIELD.cpp_type = 7

ROOMUSER_ENTER_ROOM_TIME_FIELD.name = "enter_room_time"
ROOMUSER_ENTER_ROOM_TIME_FIELD.full_name = ".pb.RoomUser.enter_room_time"
ROOMUSER_ENTER_ROOM_TIME_FIELD.number = 14
ROOMUSER_ENTER_ROOM_TIME_FIELD.index = 10
ROOMUSER_ENTER_ROOM_TIME_FIELD.label = 1
ROOMUSER_ENTER_ROOM_TIME_FIELD.has_default_value = false
ROOMUSER_ENTER_ROOM_TIME_FIELD.default_value = 0
ROOMUSER_ENTER_ROOM_TIME_FIELD.type = 3
ROOMUSER_ENTER_ROOM_TIME_FIELD.cpp_type = 2

ROOMUSER.name = "RoomUser"
ROOMUSER.full_name = ".pb.RoomUser"
ROOMUSER.nested_types = {}
ROOMUSER.enum_types = {}
ROOMUSER.fields = {ROOMUSER_SEAT_ID_FIELD, ROOMUSER_BASE_USER_FIELD, ROOMUSER_USER_STATE_FIELD, ROOMUSER_READY_TIMER_REMAIN_FIELD, ROOMUSER_IS_USING_GAME_COIN_FIELD, ROOMUSER_GAME_COIN_FIELD, ROOMUSER_IP_FIELD, ROOMUSER_LOCATION_FIELD, ROOMUSER_IS_OFFLINE_FIELD, ROOMUSER_IS_ARTIFICIAL_OFFLINE_FIELD, ROOMUSER_ENTER_ROOM_TIME_FIELD}
ROOMUSER.is_extendable = false
ROOMUSER.extensions = {}
ROOM_ROOM_ID_FIELD.name = "room_id"
ROOM_ROOM_ID_FIELD.full_name = ".pb.Room.room_id"
ROOM_ROOM_ID_FIELD.number = 1
ROOM_ROOM_ID_FIELD.index = 0
ROOM_ROOM_ID_FIELD.label = 2
ROOM_ROOM_ID_FIELD.has_default_value = false
ROOM_ROOM_ID_FIELD.default_value = 0
ROOM_ROOM_ID_FIELD.type = 5
ROOM_ROOM_ID_FIELD.cpp_type = 1

ROOM_PLAYER_COUNT_FIELD.name = "player_count"
ROOM_PLAYER_COUNT_FIELD.full_name = ".pb.Room.player_count"
ROOM_PLAYER_COUNT_FIELD.number = 5
ROOM_PLAYER_COUNT_FIELD.index = 1
ROOM_PLAYER_COUNT_FIELD.label = 2
ROOM_PLAYER_COUNT_FIELD.has_default_value = false
ROOM_PLAYER_COUNT_FIELD.default_value = 0
ROOM_PLAYER_COUNT_FIELD.type = 5
ROOM_PLAYER_COUNT_FIELD.cpp_type = 1

ROOM_ROOM_USER_FIELD.name = "room_user"
ROOM_ROOM_USER_FIELD.full_name = ".pb.Room.room_user"
ROOM_ROOM_USER_FIELD.number = 11
ROOM_ROOM_USER_FIELD.index = 2
ROOM_ROOM_USER_FIELD.label = 3
ROOM_ROOM_USER_FIELD.has_default_value = false
ROOM_ROOM_USER_FIELD.default_value = {}
ROOM_ROOM_USER_FIELD.message_type = ROOMUSER
ROOM_ROOM_USER_FIELD.type = 11
ROOM_ROOM_USER_FIELD.cpp_type = 10

ROOM.name = "Room"
ROOM.full_name = ".pb.Room"
ROOM.nested_types = {}
ROOM.enum_types = {}
ROOM.fields = {ROOM_ROOM_ID_FIELD, ROOM_PLAYER_COUNT_FIELD, ROOM_ROOM_USER_FIELD}
ROOM.is_extendable = false
ROOM.extensions = {}
GAMEROOMS_ROOMS_FIELD.name = "rooms"
GAMEROOMS_ROOMS_FIELD.full_name = ".pb.GameRooms.rooms"
GAMEROOMS_ROOMS_FIELD.number = 2
GAMEROOMS_ROOMS_FIELD.index = 0
GAMEROOMS_ROOMS_FIELD.label = 3
GAMEROOMS_ROOMS_FIELD.has_default_value = false
GAMEROOMS_ROOMS_FIELD.default_value = {}
GAMEROOMS_ROOMS_FIELD.message_type = ROOM
GAMEROOMS_ROOMS_FIELD.type = 11
GAMEROOMS_ROOMS_FIELD.cpp_type = 10

GAMEROOMS.name = "GameRooms"
GAMEROOMS.full_name = ".pb.GameRooms"
GAMEROOMS.nested_types = {}
GAMEROOMS.enum_types = {}
GAMEROOMS.fields = {GAMEROOMS_ROOMS_FIELD}
GAMEROOMS.is_extendable = false
GAMEROOMS.extensions = {}

GameRooms = protobuf.Message(GAMEROOMS)
Room = protobuf.Message(ROOM)
RoomUser = protobuf.Message(ROOMUSER)

