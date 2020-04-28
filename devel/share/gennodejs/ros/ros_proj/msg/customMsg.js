// Auto-generated. Do not edit!

// (in-package ros_proj.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class customMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.E = null;
      this.N = null;
      this.Up = null;
      this.topic = null;
    }
    else {
      if (initObj.hasOwnProperty('E')) {
        this.E = initObj.E
      }
      else {
        this.E = 0.0;
      }
      if (initObj.hasOwnProperty('N')) {
        this.N = initObj.N
      }
      else {
        this.N = 0.0;
      }
      if (initObj.hasOwnProperty('Up')) {
        this.Up = initObj.Up
      }
      else {
        this.Up = 0.0;
      }
      if (initObj.hasOwnProperty('topic')) {
        this.topic = initObj.topic
      }
      else {
        this.topic = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type customMsg
    // Serialize message field [E]
    bufferOffset = _serializer.float32(obj.E, buffer, bufferOffset);
    // Serialize message field [N]
    bufferOffset = _serializer.float32(obj.N, buffer, bufferOffset);
    // Serialize message field [Up]
    bufferOffset = _serializer.float32(obj.Up, buffer, bufferOffset);
    // Serialize message field [topic]
    bufferOffset = _serializer.string(obj.topic, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type customMsg
    let len;
    let data = new customMsg(null);
    // Deserialize message field [E]
    data.E = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [N]
    data.N = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Up]
    data.Up = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [topic]
    data.topic = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.topic.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_proj/customMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bec7a41a11f3982d277a0af26541e251';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 E
    float32 N
    float32 Up
    string topic
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new customMsg(null);
    if (msg.E !== undefined) {
      resolved.E = msg.E;
    }
    else {
      resolved.E = 0.0
    }

    if (msg.N !== undefined) {
      resolved.N = msg.N;
    }
    else {
      resolved.N = 0.0
    }

    if (msg.Up !== undefined) {
      resolved.Up = msg.Up;
    }
    else {
      resolved.Up = 0.0
    }

    if (msg.topic !== undefined) {
      resolved.topic = msg.topic;
    }
    else {
      resolved.topic = ''
    }

    return resolved;
    }
};

module.exports = customMsg;
