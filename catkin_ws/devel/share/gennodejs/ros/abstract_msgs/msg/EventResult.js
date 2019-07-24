// Auto-generated. Do not edit!

// (in-package abstract_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let UnifiedData = require('./UnifiedData.js');

//-----------------------------------------------------------

class EventResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.senderID = null;
      this.receiverID = null;
      this.layerName = null;
      this.sceneName = null;
      this.data = null;
      this.eventCount = null;
    }
    else {
      if (initObj.hasOwnProperty('senderID')) {
        this.senderID = initObj.senderID
      }
      else {
        this.senderID = 0;
      }
      if (initObj.hasOwnProperty('receiverID')) {
        this.receiverID = initObj.receiverID
      }
      else {
        this.receiverID = 0;
      }
      if (initObj.hasOwnProperty('layerName')) {
        this.layerName = initObj.layerName
      }
      else {
        this.layerName = '';
      }
      if (initObj.hasOwnProperty('sceneName')) {
        this.sceneName = initObj.sceneName
      }
      else {
        this.sceneName = '';
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = new UnifiedData();
      }
      if (initObj.hasOwnProperty('eventCount')) {
        this.eventCount = initObj.eventCount
      }
      else {
        this.eventCount = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EventResult
    // Serialize message field [senderID]
    bufferOffset = _serializer.int32(obj.senderID, buffer, bufferOffset);
    // Serialize message field [receiverID]
    bufferOffset = _serializer.int32(obj.receiverID, buffer, bufferOffset);
    // Serialize message field [layerName]
    bufferOffset = _serializer.string(obj.layerName, buffer, bufferOffset);
    // Serialize message field [sceneName]
    bufferOffset = _serializer.string(obj.sceneName, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = UnifiedData.serialize(obj.data, buffer, bufferOffset);
    // Serialize message field [eventCount]
    bufferOffset = _serializer.int32(obj.eventCount, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EventResult
    let len;
    let data = new EventResult(null);
    // Deserialize message field [senderID]
    data.senderID = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [receiverID]
    data.receiverID = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [layerName]
    data.layerName = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [sceneName]
    data.sceneName = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = UnifiedData.deserialize(buffer, bufferOffset);
    // Deserialize message field [eventCount]
    data.eventCount = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.layerName.length;
    length += object.sceneName.length;
    length += UnifiedData.getMessageSize(object.data);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'abstract_msgs/EventResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cc2ad38104a65a7df727d5b4baeb7e4a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 senderID
    int32 receiverID
    string layerName
    string sceneName
    abstract_msgs/UnifiedData data
    
    int32 eventCount
    ================================================================================
    MSG: abstract_msgs/UnifiedData
    int32 swarmID
    string taskName
    string actorName
    int32 robotID
    string timeStamp
    geometry_msgs/Pose robotPose
    geometry_msgs/Pose sensorPose
    string dataType
    uint8[] data
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
    const resolved = new EventResult(null);
    if (msg.senderID !== undefined) {
      resolved.senderID = msg.senderID;
    }
    else {
      resolved.senderID = 0
    }

    if (msg.receiverID !== undefined) {
      resolved.receiverID = msg.receiverID;
    }
    else {
      resolved.receiverID = 0
    }

    if (msg.layerName !== undefined) {
      resolved.layerName = msg.layerName;
    }
    else {
      resolved.layerName = ''
    }

    if (msg.sceneName !== undefined) {
      resolved.sceneName = msg.sceneName;
    }
    else {
      resolved.sceneName = ''
    }

    if (msg.data !== undefined) {
      resolved.data = UnifiedData.Resolve(msg.data)
    }
    else {
      resolved.data = new UnifiedData()
    }

    if (msg.eventCount !== undefined) {
      resolved.eventCount = msg.eventCount;
    }
    else {
      resolved.eventCount = 0
    }

    return resolved;
    }
};

module.exports = EventResult;
