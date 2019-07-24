// Auto-generated. Do not edit!

// (in-package abstract_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LayerQuery = require('./LayerQuery.js');

//-----------------------------------------------------------

class SceneQuery {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sceneName = null;
      this.layerVec = null;
      this.senderID = null;
      this.isHeartbeat = null;
      this.isStop = null;
    }
    else {
      if (initObj.hasOwnProperty('sceneName')) {
        this.sceneName = initObj.sceneName
      }
      else {
        this.sceneName = '';
      }
      if (initObj.hasOwnProperty('layerVec')) {
        this.layerVec = initObj.layerVec
      }
      else {
        this.layerVec = [];
      }
      if (initObj.hasOwnProperty('senderID')) {
        this.senderID = initObj.senderID
      }
      else {
        this.senderID = 0;
      }
      if (initObj.hasOwnProperty('isHeartbeat')) {
        this.isHeartbeat = initObj.isHeartbeat
      }
      else {
        this.isHeartbeat = false;
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
    // Serializes a message object of type SceneQuery
    // Serialize message field [sceneName]
    bufferOffset = _serializer.string(obj.sceneName, buffer, bufferOffset);
    // Serialize message field [layerVec]
    // Serialize the length for message field [layerVec]
    bufferOffset = _serializer.uint32(obj.layerVec.length, buffer, bufferOffset);
    obj.layerVec.forEach((val) => {
      bufferOffset = LayerQuery.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [senderID]
    bufferOffset = _serializer.int32(obj.senderID, buffer, bufferOffset);
    // Serialize message field [isHeartbeat]
    bufferOffset = _serializer.bool(obj.isHeartbeat, buffer, bufferOffset);
    // Serialize message field [isStop]
    bufferOffset = _serializer.bool(obj.isStop, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SceneQuery
    let len;
    let data = new SceneQuery(null);
    // Deserialize message field [sceneName]
    data.sceneName = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [layerVec]
    // Deserialize array length for message field [layerVec]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.layerVec = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.layerVec[i] = LayerQuery.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [senderID]
    data.senderID = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [isHeartbeat]
    data.isHeartbeat = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [isStop]
    data.isStop = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.sceneName.length;
    object.layerVec.forEach((val) => {
      length += LayerQuery.getMessageSize(val);
    });
    return length + 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'abstract_msgs/SceneQuery';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '77e12209bfa06f6dc3b213463f217e9b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string sceneName
    LayerQuery[] layerVec
    int32 senderID
    bool isHeartbeat
    bool isStop
    ================================================================================
    MSG: abstract_msgs/LayerQuery
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
    const resolved = new SceneQuery(null);
    if (msg.sceneName !== undefined) {
      resolved.sceneName = msg.sceneName;
    }
    else {
      resolved.sceneName = ''
    }

    if (msg.layerVec !== undefined) {
      resolved.layerVec = new Array(msg.layerVec.length);
      for (let i = 0; i < resolved.layerVec.length; ++i) {
        resolved.layerVec[i] = LayerQuery.Resolve(msg.layerVec[i]);
      }
    }
    else {
      resolved.layerVec = []
    }

    if (msg.senderID !== undefined) {
      resolved.senderID = msg.senderID;
    }
    else {
      resolved.senderID = 0
    }

    if (msg.isHeartbeat !== undefined) {
      resolved.isHeartbeat = msg.isHeartbeat;
    }
    else {
      resolved.isHeartbeat = false
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

module.exports = SceneQuery;
