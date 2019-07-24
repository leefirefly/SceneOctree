// Auto-generated. Do not edit!

// (in-package abstract_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Query {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.xMin = null;
      this.xMax = null;
      this.yMin = null;
      this.yMax = null;
      this.zMin = null;
      this.zMax = null;
      this.timeStart = null;
      this.timeEnd = null;
      this.frequency = null;
      this.swarmID = null;
      this.taskName = null;
      this.actorName = null;
      this.robotID = null;
      this.dataTypeVec = null;
    }
    else {
      if (initObj.hasOwnProperty('xMin')) {
        this.xMin = initObj.xMin
      }
      else {
        this.xMin = 0.0;
      }
      if (initObj.hasOwnProperty('xMax')) {
        this.xMax = initObj.xMax
      }
      else {
        this.xMax = 0.0;
      }
      if (initObj.hasOwnProperty('yMin')) {
        this.yMin = initObj.yMin
      }
      else {
        this.yMin = 0.0;
      }
      if (initObj.hasOwnProperty('yMax')) {
        this.yMax = initObj.yMax
      }
      else {
        this.yMax = 0.0;
      }
      if (initObj.hasOwnProperty('zMin')) {
        this.zMin = initObj.zMin
      }
      else {
        this.zMin = 0.0;
      }
      if (initObj.hasOwnProperty('zMax')) {
        this.zMax = initObj.zMax
      }
      else {
        this.zMax = 0.0;
      }
      if (initObj.hasOwnProperty('timeStart')) {
        this.timeStart = initObj.timeStart
      }
      else {
        this.timeStart = '';
      }
      if (initObj.hasOwnProperty('timeEnd')) {
        this.timeEnd = initObj.timeEnd
      }
      else {
        this.timeEnd = '';
      }
      if (initObj.hasOwnProperty('frequency')) {
        this.frequency = initObj.frequency
      }
      else {
        this.frequency = 0;
      }
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
      if (initObj.hasOwnProperty('dataTypeVec')) {
        this.dataTypeVec = initObj.dataTypeVec
      }
      else {
        this.dataTypeVec = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Query
    // Serialize message field [xMin]
    bufferOffset = _serializer.float64(obj.xMin, buffer, bufferOffset);
    // Serialize message field [xMax]
    bufferOffset = _serializer.float64(obj.xMax, buffer, bufferOffset);
    // Serialize message field [yMin]
    bufferOffset = _serializer.float64(obj.yMin, buffer, bufferOffset);
    // Serialize message field [yMax]
    bufferOffset = _serializer.float64(obj.yMax, buffer, bufferOffset);
    // Serialize message field [zMin]
    bufferOffset = _serializer.float64(obj.zMin, buffer, bufferOffset);
    // Serialize message field [zMax]
    bufferOffset = _serializer.float64(obj.zMax, buffer, bufferOffset);
    // Serialize message field [timeStart]
    bufferOffset = _serializer.string(obj.timeStart, buffer, bufferOffset);
    // Serialize message field [timeEnd]
    bufferOffset = _serializer.string(obj.timeEnd, buffer, bufferOffset);
    // Serialize message field [frequency]
    bufferOffset = _serializer.int32(obj.frequency, buffer, bufferOffset);
    // Serialize message field [swarmID]
    bufferOffset = _serializer.int32(obj.swarmID, buffer, bufferOffset);
    // Serialize message field [taskName]
    bufferOffset = _serializer.string(obj.taskName, buffer, bufferOffset);
    // Serialize message field [actorName]
    bufferOffset = _serializer.string(obj.actorName, buffer, bufferOffset);
    // Serialize message field [robotID]
    bufferOffset = _serializer.int32(obj.robotID, buffer, bufferOffset);
    // Serialize message field [dataTypeVec]
    bufferOffset = _arraySerializer.string(obj.dataTypeVec, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Query
    let len;
    let data = new Query(null);
    // Deserialize message field [xMin]
    data.xMin = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [xMax]
    data.xMax = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yMin]
    data.yMin = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yMax]
    data.yMax = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [zMin]
    data.zMin = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [zMax]
    data.zMax = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [timeStart]
    data.timeStart = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [timeEnd]
    data.timeEnd = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [frequency]
    data.frequency = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [swarmID]
    data.swarmID = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [taskName]
    data.taskName = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [actorName]
    data.actorName = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [robotID]
    data.robotID = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [dataTypeVec]
    data.dataTypeVec = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.timeStart.length;
    length += object.timeEnd.length;
    length += object.taskName.length;
    length += object.actorName.length;
    object.dataTypeVec.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 80;
  }

  static datatype() {
    // Returns string type for a message object
    return 'abstract_msgs/Query';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '708be305c5f963a9c77602e531dba1e3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 xMin
    float64 xMax
    float64 yMin
    float64 yMax
    float64 zMin
    float64 zMax
    
    string timeStart
    string timeEnd
    
    int32 frequency
    
    int32 swarmID
    string taskName
    string actorName
    int32 robotID
    string[] dataTypeVec
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Query(null);
    if (msg.xMin !== undefined) {
      resolved.xMin = msg.xMin;
    }
    else {
      resolved.xMin = 0.0
    }

    if (msg.xMax !== undefined) {
      resolved.xMax = msg.xMax;
    }
    else {
      resolved.xMax = 0.0
    }

    if (msg.yMin !== undefined) {
      resolved.yMin = msg.yMin;
    }
    else {
      resolved.yMin = 0.0
    }

    if (msg.yMax !== undefined) {
      resolved.yMax = msg.yMax;
    }
    else {
      resolved.yMax = 0.0
    }

    if (msg.zMin !== undefined) {
      resolved.zMin = msg.zMin;
    }
    else {
      resolved.zMin = 0.0
    }

    if (msg.zMax !== undefined) {
      resolved.zMax = msg.zMax;
    }
    else {
      resolved.zMax = 0.0
    }

    if (msg.timeStart !== undefined) {
      resolved.timeStart = msg.timeStart;
    }
    else {
      resolved.timeStart = ''
    }

    if (msg.timeEnd !== undefined) {
      resolved.timeEnd = msg.timeEnd;
    }
    else {
      resolved.timeEnd = ''
    }

    if (msg.frequency !== undefined) {
      resolved.frequency = msg.frequency;
    }
    else {
      resolved.frequency = 0
    }

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

    if (msg.dataTypeVec !== undefined) {
      resolved.dataTypeVec = msg.dataTypeVec;
    }
    else {
      resolved.dataTypeVec = []
    }

    return resolved;
    }
};

module.exports = Query;
