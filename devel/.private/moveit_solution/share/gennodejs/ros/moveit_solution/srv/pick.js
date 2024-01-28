// Auto-generated. Do not edit!

// (in-package moveit_solution.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class pickRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.grasp_point = null;
    }
    else {
      if (initObj.hasOwnProperty('grasp_point')) {
        this.grasp_point = initObj.grasp_point
      }
      else {
        this.grasp_point = new geometry_msgs.msg.Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type pickRequest
    // Serialize message field [grasp_point]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.grasp_point, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type pickRequest
    let len;
    let data = new pickRequest(null);
    // Deserialize message field [grasp_point]
    data.grasp_point = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'moveit_solution/pickRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd93662c5e0ca355997429f17104dddc8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point grasp_point
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new pickRequest(null);
    if (msg.grasp_point !== undefined) {
      resolved.grasp_point = geometry_msgs.msg.Point.Resolve(msg.grasp_point)
    }
    else {
      resolved.grasp_point = new geometry_msgs.msg.Point()
    }

    return resolved;
    }
};

class pickResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type pickResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type pickResponse
    let len;
    let data = new pickResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'moveit_solution/pickResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new pickResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: pickRequest,
  Response: pickResponse,
  md5sum() { return '24f5679e0a52d4e75d20787acf70c895'; },
  datatype() { return 'moveit_solution/pick'; }
};
