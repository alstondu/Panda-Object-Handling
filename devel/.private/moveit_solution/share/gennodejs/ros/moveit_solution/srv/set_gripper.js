// Auto-generated. Do not edit!

// (in-package moveit_solution.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class set_gripperRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.finger_distance = null;
    }
    else {
      if (initObj.hasOwnProperty('finger_distance')) {
        this.finger_distance = initObj.finger_distance
      }
      else {
        this.finger_distance = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type set_gripperRequest
    // Serialize message field [finger_distance]
    bufferOffset = _serializer.float64(obj.finger_distance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type set_gripperRequest
    let len;
    let data = new set_gripperRequest(null);
    // Deserialize message field [finger_distance]
    data.finger_distance = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'moveit_solution/set_gripperRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ac00d77bd1463b7cd29c5d40226dac06';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 finger_distance
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new set_gripperRequest(null);
    if (msg.finger_distance !== undefined) {
      resolved.finger_distance = msg.finger_distance;
    }
    else {
      resolved.finger_distance = 0.0
    }

    return resolved;
    }
};

class set_gripperResponse {
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
    // Serializes a message object of type set_gripperResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type set_gripperResponse
    let len;
    let data = new set_gripperResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'moveit_solution/set_gripperResponse';
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
    const resolved = new set_gripperResponse(null);
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
  Request: set_gripperRequest,
  Response: set_gripperResponse,
  md5sum() { return 'a328c0db6d1f73db097d15f13b92a27a'; },
  datatype() { return 'moveit_solution/set_gripper'; }
};
