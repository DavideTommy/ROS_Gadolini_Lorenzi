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

class custom_msg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.latitude = null;
      this.longitude = null;
      this.altitude = null;
      this.vehicleType = null;
    }
    else {
      if (initObj.hasOwnProperty('latitude')) {
        this.latitude = initObj.latitude
      }
      else {
        this.latitude = 0.0;
      }
      if (initObj.hasOwnProperty('longitude')) {
        this.longitude = initObj.longitude
      }
      else {
        this.longitude = 0.0;
      }
      if (initObj.hasOwnProperty('altitude')) {
        this.altitude = initObj.altitude
      }
      else {
        this.altitude = 0.0;
      }
      if (initObj.hasOwnProperty('vehicleType')) {
        this.vehicleType = initObj.vehicleType
      }
      else {
        this.vehicleType = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type custom_msg
    // Serialize message field [latitude]
    bufferOffset = _serializer.float32(obj.latitude, buffer, bufferOffset);
    // Serialize message field [longitude]
    bufferOffset = _serializer.float32(obj.longitude, buffer, bufferOffset);
    // Serialize message field [altitude]
    bufferOffset = _serializer.float32(obj.altitude, buffer, bufferOffset);
    // Serialize message field [vehicleType]
    bufferOffset = _serializer.string(obj.vehicleType, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type custom_msg
    let len;
    let data = new custom_msg(null);
    // Deserialize message field [latitude]
    data.latitude = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [longitude]
    data.longitude = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [altitude]
    data.altitude = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vehicleType]
    data.vehicleType = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.vehicleType.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_proj/custom_msg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b7b02c3dfba0b2b08c53eb019d9e8b34';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 latitude
    float32 longitude
    float32 altitude
    string vehicleType
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new custom_msg(null);
    if (msg.latitude !== undefined) {
      resolved.latitude = msg.latitude;
    }
    else {
      resolved.latitude = 0.0
    }

    if (msg.longitude !== undefined) {
      resolved.longitude = msg.longitude;
    }
    else {
      resolved.longitude = 0.0
    }

    if (msg.altitude !== undefined) {
      resolved.altitude = msg.altitude;
    }
    else {
      resolved.altitude = 0.0
    }

    if (msg.vehicleType !== undefined) {
      resolved.vehicleType = msg.vehicleType;
    }
    else {
      resolved.vehicleType = ''
    }

    return resolved;
    }
};

module.exports = custom_msg;
