// Auto-generated. Do not edit!

// (in-package assignment_2_2023.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Pos_Vel {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robpos_x = null;
      this.robpos_y = null;
      this.robvel_x = null;
      this.robvel_y = null;
    }
    else {
      if (initObj.hasOwnProperty('robpos_x')) {
        this.robpos_x = initObj.robpos_x
      }
      else {
        this.robpos_x = 0.0;
      }
      if (initObj.hasOwnProperty('robpos_y')) {
        this.robpos_y = initObj.robpos_y
      }
      else {
        this.robpos_y = 0.0;
      }
      if (initObj.hasOwnProperty('robvel_x')) {
        this.robvel_x = initObj.robvel_x
      }
      else {
        this.robvel_x = 0.0;
      }
      if (initObj.hasOwnProperty('robvel_y')) {
        this.robvel_y = initObj.robvel_y
      }
      else {
        this.robvel_y = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Pos_Vel
    // Serialize message field [robpos_x]
    bufferOffset = _serializer.float64(obj.robpos_x, buffer, bufferOffset);
    // Serialize message field [robpos_y]
    bufferOffset = _serializer.float64(obj.robpos_y, buffer, bufferOffset);
    // Serialize message field [robvel_x]
    bufferOffset = _serializer.float64(obj.robvel_x, buffer, bufferOffset);
    // Serialize message field [robvel_y]
    bufferOffset = _serializer.float64(obj.robvel_y, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Pos_Vel
    let len;
    let data = new Pos_Vel(null);
    // Deserialize message field [robpos_x]
    data.robpos_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [robpos_y]
    data.robpos_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [robvel_x]
    data.robvel_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [robvel_y]
    data.robvel_y = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'assignment_2_2023/Pos_Vel';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '02c2eea77b57a6515b01afba1c028320';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # custom.msg
    float64 robpos_x
    float64 robpos_y
    float64 robvel_x
    float64 robvel_y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Pos_Vel(null);
    if (msg.robpos_x !== undefined) {
      resolved.robpos_x = msg.robpos_x;
    }
    else {
      resolved.robpos_x = 0.0
    }

    if (msg.robpos_y !== undefined) {
      resolved.robpos_y = msg.robpos_y;
    }
    else {
      resolved.robpos_y = 0.0
    }

    if (msg.robvel_x !== undefined) {
      resolved.robvel_x = msg.robvel_x;
    }
    else {
      resolved.robvel_x = 0.0
    }

    if (msg.robvel_y !== undefined) {
      resolved.robvel_y = msg.robvel_y;
    }
    else {
      resolved.robvel_y = 0.0
    }

    return resolved;
    }
};

module.exports = Pos_Vel;
