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

class EventQuery {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.event = null;
      this.sceneName = null;
      this.layerName = null;
      this.receiverID = null;
      this.spaceConstraint = null;
      this.xMin = null;
      this.xMax = null;
      this.yMin = null;
      this.yMax = null;
      this.zMin = null;
      this.zMax = null;
      this.isStop = null;
    }
    else {
      if (initObj.hasOwnProperty('event')) {
        this.event = initObj.event
      }
      else {
        this.event = '';
      }
      if (initObj.hasOwnProperty('sceneName')) {
        this.sceneName = initObj.sceneName
      }
      else {
        this.sceneName = '';
      }
      if (initObj.hasOwnProperty('layerName')) {
        this.layerName = initObj.layerName
      }
      else {
        this.layerName = '';
      }
      if (initObj.hasOwnProperty('receiverID')) {
        this.receiverID = initObj.receiverID
      }
      else {
        this.receiverID = 0;
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
      if (initObj.hasOwnProperty('isStop')) {
        this.isStop = initObj.isStop
      }
      else {
        this.isStop = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EventQuery
    // Serialize message field [event]
    bufferOffset = _serializer.string(obj.event, buffer, bufferOffset);
    // Serialize message field [sceneName]
    bufferOffset = _serializer.string(obj.sceneName, buffer, bufferOffset);
    // Serialize message field [layerName]
    bufferOffset = _serializer.string(obj.layerName, buffer, bufferOffset);
    // Serialize message field [receiverID]
    bufferOffset = _serializer.int32(obj.receiverID, buffer, bufferOffset);
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
    // Serialize message field [isStop]
    bufferOffset = _serializer.bool(obj.isStop, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EventQuery
    let len;
    let data = new EventQuery(null);
    // Deserialize message field [event]
    data.event = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [sceneName]
    data.sceneName = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [layerName]
    data.layerName = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [receiverID]
    data.receiverID = _deserializer.int32(buffer, bufferOffset);
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
    // Deserialize message field [isStop]
    data.isStop = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.event.length;
    length += object.sceneName.length;
    length += object.layerName.length;
    return length + 66;
  }

  static datatype() {
    // Returns string type for a message object
    return 'abstract_msgs/EventQuery';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9059fc23f354e330ff575a1940e2342c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string event
    string sceneName
    string layerName
    int32 receiverID
    
    bool spaceConstraint
    float64 xMin
    float64 xMax
    float64 yMin
    float64 yMax
    float64 zMin
    float64 zMax
    
    bool isStop
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EventQuery(null);
    if (msg.event !== undefined) {
      resolved.event = msg.event;
    }
    else {
      resolved.event = ''
    }

    if (msg.sceneName !== undefined) {
      resolved.sceneName = msg.sceneName;
    }
    else {
      resolved.sceneName = ''
    }

    if (msg.layerName !== undefined) {
      resolved.layerName = msg.layerName;
    }
    else {
      resolved.layerName = ''
    }

    if (msg.receiverID !== undefined) {
      resolved.receiverID = msg.receiverID;
    }
    else {
      resolved.receiverID = 0
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

    if (msg.isStop !== undefined) {
      resolved.isStop = msg.isStop;
    }
    else {
      resolved.isStop = false
    }

    return resolved;
    }
};

module.exports = EventQuery;
