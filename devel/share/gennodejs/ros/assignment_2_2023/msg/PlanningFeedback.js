// Auto-generated. Do not edit!

// (in-package assignment_2_2023.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class PlanningFeedback {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.actual_pose = null;
      this.stat = null;
    }
    else {
      if (initObj.hasOwnProperty('actual_pose')) {
        this.actual_pose = initObj.actual_pose
      }
      else {
        this.actual_pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('stat')) {
        this.stat = initObj.stat
      }
      else {
        this.stat = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlanningFeedback
    // Serialize message field [actual_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.actual_pose, buffer, bufferOffset);
    // Serialize message field [stat]
    bufferOffset = _serializer.string(obj.stat, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlanningFeedback
    let len;
    let data = new PlanningFeedback(null);
    // Deserialize message field [actual_pose]
    data.actual_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [stat]
    data.stat = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.stat);
    return length + 60;
  }

  static datatype() {
    // Returns string type for a message object
    return 'assignment_2_2023/PlanningFeedback';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3b47324e0baca3583911e643e2a32dcf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    geometry_msgs/Pose actual_pose
    string stat
    
    
    
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PlanningFeedback(null);
    if (msg.actual_pose !== undefined) {
      resolved.actual_pose = geometry_msgs.msg.Pose.Resolve(msg.actual_pose)
    }
    else {
      resolved.actual_pose = new geometry_msgs.msg.Pose()
    }

    if (msg.stat !== undefined) {
      resolved.stat = msg.stat;
    }
    else {
      resolved.stat = ''
    }

    return resolved;
    }
};

module.exports = PlanningFeedback;
