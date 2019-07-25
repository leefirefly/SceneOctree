// Auto-generated. Do not edit!

// (in-package abstract_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let EventQuery = require('./EventQuery.js');

//-----------------------------------------------------------

class EventSceneMap {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.event = null;
      this.eventVec = null;
    }
    else {
      if (initObj.hasOwnProperty('event')) {
        this.event = initObj.event
      }
      else {
        this.event = '';
      }
      if (initObj.hasOwnProperty('eventVec')) {
        this.eventVec = initObj.eventVec
      }
      else {
        this.eventVec = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EventSceneMap
    // Serialize message field [event]
    bufferOffset = _serializer.string(obj.event, buffer, bufferOffset);
    // Serialize message field [eventVec]
    // Serialize the length for message field [eventVec]
    bufferOffset = _serializer.uint32(obj.eventVec.length, buffer, bufferOffset);
    obj.eventVec.forEach((val) => {
      bufferOffset = EventQuery.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EventSceneMap
    let len;
    let data = new EventSceneMap(null);
    // Deserialize message field [event]
    data.event = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [eventVec]
    // Deserialize array length for message field [eventVec]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.eventVec = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.eventVec[i] = EventQuery.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.event.length;
    object.eventVec.forEach((val) => {
      length += EventQuery.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'abstract_msgs/EventSceneMap';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f2becf816840a945292dcaa58be0823d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string event
    #string[] sceneName
    #string[] layerName
    #int32[] receiverID
    
    EventQuery[] eventVec
    ================================================================================
    MSG: abstract_msgs/EventQuery
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
    const resolved = new EventSceneMap(null);
    if (msg.event !== undefined) {
      resolved.event = msg.event;
    }
    else {
      resolved.event = ''
    }

    if (msg.eventVec !== undefined) {
      resolved.eventVec = new Array(msg.eventVec.length);
      for (let i = 0; i < resolved.eventVec.length; ++i) {
        resolved.eventVec[i] = EventQuery.Resolve(msg.eventVec[i]);
      }
    }
    else {
      resolved.eventVec = []
    }

    return resolved;
    }
};

module.exports = EventSceneMap;
