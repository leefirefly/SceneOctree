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

class ActorQuery {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.swarmID = null;
      this.taskName = null;
      this.actorName = null;
      this.robotID = null;
      this.dataTypeVec = null;
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
      if (initObj.hasOwnProperty('dataTypeVec')) {
        this.dataTypeVec = initObj.dataTypeVec
      }
      else {
        this.dataTypeVec = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ActorQuery
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
    //deserializes a message object of type ActorQuery
    let len;
    let data = new ActorQuery(null);
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
    length += object.taskName.length;
    length += object.actorName.length;
    object.dataTypeVec.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'abstract_msgs/ActorQuery';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a01d38376bdfcaa1a71265cfaf842128';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new ActorQuery(null);
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

module.exports = ActorQuery;
