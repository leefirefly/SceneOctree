// Auto-generated. Do not edit!

// (in-package abstract_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ActorQuery = require('./ActorQuery.js');

//-----------------------------------------------------------

class LayerQuery {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.layerName = null;
      this.actorVec = null;
      this.spaceConstraint = null;
      this.xMin = null;
      this.xMax = null;
      this.yMin = null;
      this.yMax = null;
      this.zMin = null;
      this.zMax = null;
      this.layerType = null;
      this.timeStart = null;
      this.timeEnd = null;
      this.frequency = null;
      this.eventMsgVec = null;
      this.isStop = null;
    }
    else {
      if (initObj.hasOwnProperty('layerName')) {
        this.layerName = initObj.layerName
      }
      else {
        this.layerName = '';
      }
      if (initObj.hasOwnProperty('actorVec')) {
        this.actorVec = initObj.actorVec
      }
      else {
        this.actorVec = [];
      }
      if (initObj.hasOwnProperty('spaceConstraint')) {
        this.spaceConstraint = initObj.spaceConstraint
      }
      else {
        this.spaceConstraint = false;
      }
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
      if (initObj.hasOwnProperty('layerType')) {
        this.layerType = initObj.layerType
      }
      else {
        this.layerType = 0;
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
      if (initObj.hasOwnProperty('eventMsgVec')) {
        this.eventMsgVec = initObj.eventMsgVec
      }
      else {
        this.eventMsgVec = [];
      }
      if (initObj.hasOwnProperty('isStop')) {
        this.isStop = initObj.isStop
      }
      else {
        this.isStop = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LayerQuery
    // Serialize message field [layerName]
    bufferOffset = _serializer.string(obj.layerName, buffer, bufferOffset);
    // Serialize message field [actorVec]
    // Serialize the length for message field [actorVec]
    bufferOffset = _serializer.uint32(obj.actorVec.length, buffer, bufferOffset);
    obj.actorVec.forEach((val) => {
      bufferOffset = ActorQuery.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [spaceConstraint]
    bufferOffset = _serializer.bool(obj.spaceConstraint, buffer, bufferOffset);
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
    // Serialize message field [layerType]
    bufferOffset = _serializer.int32(obj.layerType, buffer, bufferOffset);
    // Serialize message field [timeStart]
    bufferOffset = _serializer.string(obj.timeStart, buffer, bufferOffset);
    // Serialize message field [timeEnd]
    bufferOffset = _serializer.string(obj.timeEnd, buffer, bufferOffset);
    // Serialize message field [frequency]
    bufferOffset = _serializer.int32(obj.frequency, buffer, bufferOffset);
    // Serialize message field [eventMsgVec]
    bufferOffset = _arraySerializer.string(obj.eventMsgVec, buffer, bufferOffset, null);
    // Serialize message field [isStop]
    bufferOffset = _serializer.bool(obj.isStop, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LayerQuery
    let len;
    let data = new LayerQuery(null);
    // Deserialize message field [layerName]
    data.layerName = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [actorVec]
    // Deserialize array length for message field [actorVec]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.actorVec = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.actorVec[i] = ActorQuery.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [spaceConstraint]
    data.spaceConstraint = _deserializer.bool(buffer, bufferOffset);
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
    // Deserialize message field [layerType]
    data.layerType = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [timeStart]
    data.timeStart = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [timeEnd]
    data.timeEnd = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [frequency]
    data.frequency = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [eventMsgVec]
    data.eventMsgVec = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [isStop]
    data.isStop = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.layerName.length;
    object.actorVec.forEach((val) => {
      length += ActorQuery.getMessageSize(val);
    });
    length += object.timeStart.length;
    length += object.timeEnd.length;
    object.eventMsgVec.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 78;
  }

  static datatype() {
    // Returns string type for a message object
    return 'abstract_msgs/LayerQuery';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f055341a31be956bd0e168a756124afc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string layerName
    
    ActorQuery[] actorVec
    
    bool spaceConstraint
    float64 xMin
    float64 xMax
    float64 yMin
    float64 yMax
    float64 zMin
    float64 zMax
    
    int32 layerType
    
    string timeStart
    string timeEnd
    
    int32 frequency
    
    string[] eventMsgVec
    
    bool isStop
    ================================================================================
    MSG: abstract_msgs/ActorQuery
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
    const resolved = new LayerQuery(null);
    if (msg.layerName !== undefined) {
      resolved.layerName = msg.layerName;
    }
    else {
      resolved.layerName = ''
    }

    if (msg.actorVec !== undefined) {
      resolved.actorVec = new Array(msg.actorVec.length);
      for (let i = 0; i < resolved.actorVec.length; ++i) {
        resolved.actorVec[i] = ActorQuery.Resolve(msg.actorVec[i]);
      }
    }
    else {
      resolved.actorVec = []
    }

    if (msg.spaceConstraint !== undefined) {
      resolved.spaceConstraint = msg.spaceConstraint;
    }
    else {
      resolved.spaceConstraint = false
    }

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

    if (msg.layerType !== undefined) {
      resolved.layerType = msg.layerType;
    }
    else {
      resolved.layerType = 0
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

    if (msg.eventMsgVec !== undefined) {
      resolved.eventMsgVec = msg.eventMsgVec;
    }
    else {
      resolved.eventMsgVec = []
    }

    if (msg.isStop !== undefined) {
      resolved.isStop = msg.isStop;
    }
    else {
      resolved.isStop = false
    }

    return resolved;
    }
};

module.exports = LayerQuery;
