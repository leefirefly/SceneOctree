// Auto-generated. Do not edit!

// (in-package abstract_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class UnifiedData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.swarmID = null;
      this.taskName = null;
      this.actorName = null;
      this.robotID = null;
      this.timeStamp = null;
      this.robotPose = null;
      this.sensorPose = null;
      this.dataType = null;
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('swarmID')) {
        this.swarmID = initObj.swarmID
      }
      else {
        this.swarmID = 0;
      }
      if (initObj.hasOwnProperty('taskName')) {
        this.taskName = initObj.taskName
      }
      else {
        this.taskName = '';
      }
      if (initObj.hasOwnProperty('actorName')) {
        this.actorName = initObj.actorName
      }
      else {
        this.actorName = '';
      }
      if (initObj.hasOwnProperty('robotID')) {
        this.robotID = initObj.robotID
      }
      else {
        this.robotID = 0;
      }
      if (initObj.hasOwnProperty('timeStamp')) {
        this.timeStamp = initObj.timeStamp
      }
      else {
        this.timeStamp = '';
      }
      if (initObj.hasOwnProperty('robotPose')) {
        this.robotPose = initObj.robotPose
      }
      else {
        this.robotPose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('sensorPose')) {
        this.sensorPose = initObj.sensorPose
      }
      else {
        this.sensorPose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('dataType')) {
        this.dataType = initObj.dataType
      }
      else {
        this.dataType = '';
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UnifiedData
    // Serialize message field [swarmID]
    bufferOffset = _serializer.int32(obj.swarmID, buffer, bufferOffset);
    // Serialize message field [taskName]
    bufferOffset = _serializer.string(obj.taskName, buffer, bufferOffset);
    // Serialize message field [actorName]
    bufferOffset = _serializer.string(obj.actorName, buffer, bufferOffset);
    // Serialize message field [robotID]
    bufferOffset = _serializer.int32(obj.robotID, buffer, bufferOffset);
    // Serialize message field [timeStamp]
    bufferOffset = _serializer.string(obj.timeStamp, buffer, bufferOffset);
    // Serialize message field [robotPose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.robotPose, buffer, bufferOffset);
    // Serialize message field [sensorPose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.sensorPose, buffer, bufferOffset);
    // Serialize message field [dataType]
    bufferOffset = _serializer.string(obj.dataType, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = _arraySerializer.uint8(obj.data, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UnifiedData
    let len;
    let data = new UnifiedData(null);
    // Deserialize message field [swarmID]
    data.swarmID = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [taskName]
    data.taskName = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [actorName]
    data.actorName = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [robotID]
    data.robotID = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [timeStamp]
    data.timeStamp = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [robotPose]
    data.robotPose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [sensorPose]
    data.sensorPose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [dataType]
    data.dataType = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.taskName.length;
    length += object.actorName.length;
    length += object.timeStamp.length;
    length += object.dataType.length;
    length += object.data.length;
    return length + 140;
  }

  static datatype() {
    // Returns string type for a message object
    return 'abstract_msgs/UnifiedData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '48cec9a0486f5d717da700cd21865426';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new UnifiedData(null);
    if (msg.swarmID !== undefined) {
      resolved.swarmID = msg.swarmID;
    }
    else {
      resolved.swarmID = 0
    }

    if (msg.taskName !== undefined) {
      resolved.taskName = msg.taskName;
    }
    else {
      resolved.taskName = ''
    }

    if (msg.actorName !== undefined) {
      resolved.actorName = msg.actorName;
    }
    else {
      resolved.actorName = ''
    }

    if (msg.robotID !== undefined) {
      resolved.robotID = msg.robotID;
    }
    else {
      resolved.robotID = 0
    }

    if (msg.timeStamp !== undefined) {
      resolved.timeStamp = msg.timeStamp;
    }
    else {
      resolved.timeStamp = ''
    }

    if (msg.robotPose !== undefined) {
      resolved.robotPose = geometry_msgs.msg.Pose.Resolve(msg.robotPose)
    }
    else {
      resolved.robotPose = new geometry_msgs.msg.Pose()
    }

    if (msg.sensorPose !== undefined) {
      resolved.sensorPose = geometry_msgs.msg.Pose.Resolve(msg.sensorPose)
    }
    else {
      resolved.sensorPose = new geometry_msgs.msg.Pose()
    }

    if (msg.dataType !== undefined) {
      resolved.dataType = msg.dataType;
    }
    else {
      resolved.dataType = ''
    }

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = []
    }

    return resolved;
    }
};

module.exports = UnifiedData;
