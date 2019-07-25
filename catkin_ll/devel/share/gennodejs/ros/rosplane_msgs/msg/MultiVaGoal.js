// Auto-generated. Do not edit!

// (in-package rosplane_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class MultiVaGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.goal = null;
    }
    else {
      if (initObj.hasOwnProperty('goal')) {
        this.goal = initObj.goal
      }
      else {
        this.goal = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MultiVaGoal
    // Serialize message field [goal]
    // Serialize the length for message field [goal]
    bufferOffset = _serializer.uint32(obj.goal.length, buffer, bufferOffset);
    obj.goal.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point32.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MultiVaGoal
    let len;
    let data = new MultiVaGoal(null);
    // Deserialize message field [goal]
    // Deserialize array length for message field [goal]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.goal = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.goal[i] = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 12 * object.goal.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rosplane_msgs/MultiVaGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'db43ffa02e592166bb4af6702f58b8c3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    geometry_msgs/Point32[] goal
    
    
    ================================================================================
    MSG: geometry_msgs/Point32
    # This contains the position of a point in free space(with 32 bits of precision).
    # It is recommeded to use Point wherever possible instead of Point32.  
    # 
    # This recommendation is to promote interoperability.  
    #
    # This message is designed to take up less space when sending
    # lots of points at once, as in the case of a PointCloud.  
    
    float32 x
    float32 y
    float32 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MultiVaGoal(null);
    if (msg.goal !== undefined) {
      resolved.goal = new Array(msg.goal.length);
      for (let i = 0; i < resolved.goal.length; ++i) {
        resolved.goal[i] = geometry_msgs.msg.Point32.Resolve(msg.goal[i]);
      }
    }
    else {
      resolved.goal = []
    }

    return resolved;
    }
};

module.exports = MultiVaGoal;
