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

class LastStatusRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LastStatusRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LastStatusRequest
    let len;
    let data = new LastStatusRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'assignment_2_2023/LastStatusRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # LastStatus.srv
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LastStatusRequest(null);
    return resolved;
    }
};

class LastStatusResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.distance_to_target = null;
      this.average_speed = null;
    }
    else {
      if (initObj.hasOwnProperty('distance_to_target')) {
        this.distance_to_target = initObj.distance_to_target
      }
      else {
        this.distance_to_target = 0.0;
      }
      if (initObj.hasOwnProperty('average_speed')) {
        this.average_speed = initObj.average_speed
      }
      else {
        this.average_speed = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LastStatusResponse
    // Serialize message field [distance_to_target]
    bufferOffset = _serializer.float64(obj.distance_to_target, buffer, bufferOffset);
    // Serialize message field [average_speed]
    bufferOffset = _serializer.float64(obj.average_speed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LastStatusResponse
    let len;
    let data = new LastStatusResponse(null);
    // Deserialize message field [distance_to_target]
    data.distance_to_target = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [average_speed]
    data.average_speed = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'assignment_2_2023/LastStatusResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f6cfeb7770557ec0e7e7227af7085b94';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 distance_to_target
    float64 average_speed
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LastStatusResponse(null);
    if (msg.distance_to_target !== undefined) {
      resolved.distance_to_target = msg.distance_to_target;
    }
    else {
      resolved.distance_to_target = 0.0
    }

    if (msg.average_speed !== undefined) {
      resolved.average_speed = msg.average_speed;
    }
    else {
      resolved.average_speed = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: LastStatusRequest,
  Response: LastStatusResponse,
  md5sum() { return 'f6cfeb7770557ec0e7e7227af7085b94'; },
  datatype() { return 'assignment_2_2023/LastStatus'; }
};
