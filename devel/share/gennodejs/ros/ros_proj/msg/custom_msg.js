// Auto-generated. Do not edit!

// (in-package ros_proj.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class custom_msg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.custom_msg = null;
      this.latitude = null;
      this.longitude = null;
      this.altitude = null;
      this.vehicleType = null;
    }
    else {
      if (initObj.hasOwnProperty('custom_msg')) {
        this.custom_msg = initObj.custom_msg
      }
      else {
        this.custom_msg = new std_msgs.msg.Header();
      }
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
    // Serialize message field [custom_msg]
    bufferOffset = std_msgs.msg.Header.serialize(obj.custom_msg, buffer, bufferOffset);
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
    // Deserialize message field [custom_msg]
    data.custom_msg = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
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
    length += std_msgs.msg.Header.getMessageSize(object.custom_msg);
    length += object.vehicleType.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_proj/custom_msg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3539ef97bcaedc9ae34172e0c5780202';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header custom_msg
    float32 latitude
    float32 longitude
    float32 altitude
    string vehicleType
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new custom_msg(null);
    if (msg.custom_msg !== undefined) {
      resolved.custom_msg = std_msgs.msg.Header.Resolve(msg.custom_msg)
    }
    else {
      resolved.custom_msg = new std_msgs.msg.Header()
    }

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
