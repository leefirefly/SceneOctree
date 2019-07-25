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

class ActiveActors {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.swarmName = null;
      this.activeActorNames = null;
    }
    else {
      if (initObj.hasOwnProperty('swarmName')) {
        this.swarmName = initObj.swarmName
      }
      else {
        this.swarmName = '';
      }
      if (initObj.hasOwnProperty('activeActorNames')) {
        this.activeActorNames = initObj.activeActorNames
      }
      else {
        this.activeActorNames = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ActiveActors
    // Serialize message field [swarmName]
    bufferOffset = _serializer.string(obj.swarmName, buffer, bufferOffset);
    // Serialize message field [activeActorNames]
    bufferOffset = _arraySerializer.string(obj.activeActorNames, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ActiveActors
    let len;
    let data = new ActiveActors(null);
    // Deserialize message field [swarmName]
    data.swarmName = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [activeActorNames]
    data.activeActorNames = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.swarmName.length;
    object.activeActorNames.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'abstract_msgs/ActiveActors';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '990553788e8fb33cf6c4579f7fbf2a45';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string swarmName
    string[] activeActorNames
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ActiveActors(null);
    if (msg.swarmName !== undefined) {
      resolved.swarmName = msg.swarmName;
    }
    else {
      resolved.swarmName = ''
    }

    if (msg.activeActorNames !== undefined) {
      resolved.activeActorNames = msg.activeActorNames;
    }
    else {
      resolved.activeActorNames = []
    }

    return resolved;
    }
};

module.exports = ActiveActors;
