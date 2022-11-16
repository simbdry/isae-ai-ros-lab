// Auto-generated. Do not edit!

// (in-package ai_robotics_lab.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class FFSolveRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.domain = null;
      this.problem = null;
    }
    else {
      if (initObj.hasOwnProperty('domain')) {
        this.domain = initObj.domain
      }
      else {
        this.domain = '';
      }
      if (initObj.hasOwnProperty('problem')) {
        this.problem = initObj.problem
      }
      else {
        this.problem = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FFSolveRequest
    // Serialize message field [domain]
    bufferOffset = _serializer.string(obj.domain, buffer, bufferOffset);
    // Serialize message field [problem]
    bufferOffset = _serializer.string(obj.problem, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FFSolveRequest
    let len;
    let data = new FFSolveRequest(null);
    // Deserialize message field [domain]
    data.domain = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [problem]
    data.problem = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.domain.length;
    length += object.problem.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ai_robotics_lab/FFSolveRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1f5ca2d1d81cd59b21f5124dc8550b58';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string domain
    string problem
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FFSolveRequest(null);
    if (msg.domain !== undefined) {
      resolved.domain = msg.domain;
    }
    else {
      resolved.domain = ''
    }

    if (msg.problem !== undefined) {
      resolved.problem = msg.problem;
    }
    else {
      resolved.problem = ''
    }

    return resolved;
    }
};

class FFSolveResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.solution = null;
    }
    else {
      if (initObj.hasOwnProperty('solution')) {
        this.solution = initObj.solution
      }
      else {
        this.solution = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FFSolveResponse
    // Serialize message field [solution]
    bufferOffset = _serializer.string(obj.solution, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FFSolveResponse
    let len;
    let data = new FFSolveResponse(null);
    // Deserialize message field [solution]
    data.solution = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.solution.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ai_robotics_lab/FFSolveResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cf4c8455c11ed8d4780c2f56f64948d0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string solution
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FFSolveResponse(null);
    if (msg.solution !== undefined) {
      resolved.solution = msg.solution;
    }
    else {
      resolved.solution = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: FFSolveRequest,
  Response: FFSolveResponse,
  md5sum() { return 'd96a9b13dd37d100fa5867634e70f142'; },
  datatype() { return 'ai_robotics_lab/FFSolve'; }
};
