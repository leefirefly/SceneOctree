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

class AreaVertex {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vertex = null;
    }
    else {
      if (initObj.hasOwnProperty('vertex')) {
        this.vertex = initObj.vertex
      }
      else {
        this.vertex = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AreaVertex
    // Serialize message field [vertex]
    // Serialize the length for message field [vertex]
    bufferOffset = _serializer.uint32(obj.vertex.length, buffer, bufferOffset);
    obj.vertex.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point32.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AreaVertex
    let len;
    let data = new AreaVertex(null);
    // Deserialize message field [vertex]
    // Deserialize array length for message field [vertex]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.vertex = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.vertex[i] = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 12 * object.vertex.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rosplane_msgs/AreaVertex';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '14cd74da022c4112a0d5026e4bbe427c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    geometry_msgs/Point32[] vertex
    
    
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
    const resolved = new AreaVertex(null);
    if (msg.vertex !== undefined) {
      resolved.vertex = new Array(msg.vertex.length);
      for (let i = 0; i < resolved.vertex.length; ++i) {
        resolved.vertex[i] = geometry_msgs.msg.Point32.Resolve(msg.vertex[i]);
      }
    }
    else {
      resolved.vertex = []
    }

    return resolved;
    }
};

module.exports = AreaVertex;
