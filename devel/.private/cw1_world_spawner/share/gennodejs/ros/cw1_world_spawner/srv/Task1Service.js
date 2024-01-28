// Auto-generated. Do not edit!

// (in-package cw1_world_spawner.srv)


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

class Task1ServiceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.object_loc = null;
      this.goal_loc = null;
    }
    else {
      if (initObj.hasOwnProperty('object_loc')) {
        this.object_loc = initObj.object_loc
      }
      else {
        this.object_loc = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('goal_loc')) {
        this.goal_loc = initObj.goal_loc
      }
      else {
        this.goal_loc = new geometry_msgs.msg.PointStamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Task1ServiceRequest
    // Serialize message field [object_loc]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.object_loc, buffer, bufferOffset);
    // Serialize message field [goal_loc]
    bufferOffset = geometry_msgs.msg.PointStamped.serialize(obj.goal_loc, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Task1ServiceRequest
    let len;
    let data = new Task1ServiceRequest(null);
    // Deserialize message field [object_loc]
    data.object_loc = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [goal_loc]
    data.goal_loc = geometry_msgs.msg.PointStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.object_loc);
    length += geometry_msgs.msg.PointStamped.getMessageSize(object.goal_loc);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cw1_world_spawner/Task1ServiceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f2ce7f945836acb742f2f7bc16c06e3c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/PoseStamped object_loc
    geometry_msgs/PointStamped goal_loc
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
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
    
    ================================================================================
    MSG: geometry_msgs/PointStamped
    # This represents a Point with reference coordinate frame and timestamp
    Header header
    Point point
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Task1ServiceRequest(null);
    if (msg.object_loc !== undefined) {
      resolved.object_loc = geometry_msgs.msg.PoseStamped.Resolve(msg.object_loc)
    }
    else {
      resolved.object_loc = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.goal_loc !== undefined) {
      resolved.goal_loc = geometry_msgs.msg.PointStamped.Resolve(msg.goal_loc)
    }
    else {
      resolved.goal_loc = new geometry_msgs.msg.PointStamped()
    }

    return resolved;
    }
};

class Task1ServiceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Task1ServiceResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Task1ServiceResponse
    let len;
    let data = new Task1ServiceResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cw1_world_spawner/Task1ServiceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Task1ServiceResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: Task1ServiceRequest,
  Response: Task1ServiceResponse,
  md5sum() { return 'f2ce7f945836acb742f2f7bc16c06e3c'; },
  datatype() { return 'cw1_world_spawner/Task1Service'; }
};
