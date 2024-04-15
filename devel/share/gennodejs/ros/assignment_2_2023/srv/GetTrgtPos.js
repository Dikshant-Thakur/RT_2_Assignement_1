// Auto-generated. Do not edit!

// (in-package assignment_2_2023.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class GetTrgtPosRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetTrgtPosRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetTrgtPosRequest
    let len;
    let data = new GetTrgtPosRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'assignment_2_2023/GetTrgtPosRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # GetTrgtPos.srv
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetTrgtPosRequest(null);
    return resolved;
    }
};

class GetTrgtPosResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.target_x = null;
      this.target_y = null;
    }
    else {
      if (initObj.hasOwnProperty('target_x')) {
        this.target_x = initObj.target_x
      }
      else {
        this.target_x = 0.0;
      }
      if (initObj.hasOwnProperty('target_y')) {
        this.target_y = initObj.target_y
      }
      else {
        this.target_y = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetTrgtPosResponse
    // Serialize message field [target_x]
    bufferOffset = _serializer.float64(obj.target_x, buffer, bufferOffset);
    // Serialize message field [target_y]
    bufferOffset = _serializer.float64(obj.target_y, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetTrgtPosResponse
    let len;
    let data = new GetTrgtPosResponse(null);
    // Deserialize message field [target_x]
    data.target_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [target_y]
    data.target_y = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'assignment_2_2023/GetTrgtPosResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '69bccf2d816940d53024849772a83192';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 target_x
    float64 target_y
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetTrgtPosResponse(null);
    if (msg.target_x !== undefined) {
      resolved.target_x = msg.target_x;
    }
    else {
      resolved.target_x = 0.0
    }

    if (msg.target_y !== undefined) {
      resolved.target_y = msg.target_y;
    }
    else {
      resolved.target_y = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: GetTrgtPosRequest,
  Response: GetTrgtPosResponse,
  md5sum() { return '69bccf2d816940d53024849772a83192'; },
  datatype() { return 'assignment_2_2023/GetTrgtPos'; }
};
