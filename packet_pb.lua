-- Generated By protoc-gen-lua Do not Edit
local protobuf = require "protobuf"
local COMMAND_PB = require("command_pb")
module('packet_pb')


PACKET = protobuf.Descriptor();
local PACKET_TYPE_FIELD = protobuf.FieldDescriptor();
local PACKET_PAYLOAD_FIELD = protobuf.FieldDescriptor();
local PACKET_TIMESTAMP_FIELD = protobuf.FieldDescriptor();

PACKET_TYPE_FIELD.name = "type"
PACKET_TYPE_FIELD.full_name = ".pb.Packet.type"
PACKET_TYPE_FIELD.number = 1
PACKET_TYPE_FIELD.index = 0
PACKET_TYPE_FIELD.label = 2
PACKET_TYPE_FIELD.has_default_value = false
PACKET_TYPE_FIELD.default_value = nil
PACKET_TYPE_FIELD.enum_type = COMMAND_PB.COMMAND
PACKET_TYPE_FIELD.type = 14
PACKET_TYPE_FIELD.cpp_type = 8

PACKET_PAYLOAD_FIELD.name = "payload"
PACKET_PAYLOAD_FIELD.full_name = ".pb.Packet.payload"
PACKET_PAYLOAD_FIELD.number = 2
PACKET_PAYLOAD_FIELD.index = 1
PACKET_PAYLOAD_FIELD.label = 1
PACKET_PAYLOAD_FIELD.has_default_value = false
PACKET_PAYLOAD_FIELD.default_value = ""
PACKET_PAYLOAD_FIELD.type = 12
PACKET_PAYLOAD_FIELD.cpp_type = 9

PACKET_TIMESTAMP_FIELD.name = "timestamp"
PACKET_TIMESTAMP_FIELD.full_name = ".pb.Packet.timestamp"
PACKET_TIMESTAMP_FIELD.number = 3
PACKET_TIMESTAMP_FIELD.index = 2
PACKET_TIMESTAMP_FIELD.label = 1
PACKET_TIMESTAMP_FIELD.has_default_value = false
PACKET_TIMESTAMP_FIELD.default_value = 0
PACKET_TIMESTAMP_FIELD.type = 3
PACKET_TIMESTAMP_FIELD.cpp_type = 2

PACKET.name = "Packet"
PACKET.full_name = ".pb.Packet"
PACKET.nested_types = {}
PACKET.enum_types = {}
PACKET.fields = {PACKET_TYPE_FIELD, PACKET_PAYLOAD_FIELD, PACKET_TIMESTAMP_FIELD}
PACKET.is_extendable = false
PACKET.extensions = {}

Packet = protobuf.Message(PACKET)

