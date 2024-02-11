// Auto-generated. Do not edit!

// (in-package panda_world_spawner.srv)


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

class Task2ServiceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.basket_locs = null;
    }
    else {
      if (initObj.hasOwnProperty('basket_locs')) {
        this.basket_locs = initObj.basket_locs
      }
      else {
        this.basket_locs = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Task2ServiceRequest
    // Serialize message field [basket_locs]
    // Serialize the length for message field [basket_locs]
    bufferOffset = _serializer.uint32(obj.basket_locs.length, buffer, bufferOffset);
    obj.basket_locs.forEach((val) => {
      bufferOffset = geometry_msgs.msg.PointStamped.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Task2ServiceRequest
    let len;
    let data = new Task2ServiceRequest(null);
    // Deserialize message field [basket_locs]
    // Deserialize array length for message field [basket_locs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.basket_locs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.basket_locs[i] = geometry_msgs.msg.PointStamped.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.basket_locs.forEach((val) => {
      length += geometry_msgs.msg.PointStamped.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'panda_world_spawner/Task2ServiceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3e66144401ea119f3c53b4b38229a003';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/PointStamped[] basket_locs
    
    ================================================================================
    MSG: geometry_msgs/PointStamped
    # This represents a Point with reference coordinate frame and timestamp
    Header header
    Point point
    
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
    const resolved = new Task2ServiceRequest(null);
    if (msg.basket_locs !== undefined) {
      resolved.basket_locs = new Array(msg.basket_locs.length);
      for (let i = 0; i < resolved.basket_locs.length; ++i) {
        resolved.basket_locs[i] = geometry_msgs.msg.PointStamped.Resolve(msg.basket_locs[i]);
      }
    }
    else {
      resolved.basket_locs = []
    }

    return resolved;
    }
};

class Task2ServiceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.basket_colours = null;
    }
    else {
      if (initObj.hasOwnProperty('basket_colours')) {
        this.basket_colours = initObj.basket_colours
      }
      else {
        this.basket_colours = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Task2ServiceResponse
    // Serialize message field [basket_colours]
    bufferOffset = _arraySerializer.string(obj.basket_colours, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Task2ServiceResponse
    let len;
    let data = new Task2ServiceResponse(null);
    // Deserialize message field [basket_colours]
    data.basket_colours = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.basket_colours.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'panda_world_spawner/Task2ServiceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '59b344007468b6fcbc96439ba236c68a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] basket_colours
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Task2ServiceResponse(null);
    if (msg.basket_colours !== undefined) {
      resolved.basket_colours = msg.basket_colours;
    }
    else {
      resolved.basket_colours = []
    }

    return resolved;
    }
};

module.exports = {
  Request: Task2ServiceRequest,
  Response: Task2ServiceResponse,
  md5sum() { return 'a7aedf2afa2ac40fff84a9dc873ab94d'; },
  datatype() { return 'panda_world_spawner/Task2Service'; }
};
