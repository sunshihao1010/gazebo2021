// Auto-generated. Do not edit!

// (in-package roborts_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class ArmorDetectionFeedback {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.detected = null;
      this.error_code = null;
      this.error_msg = null;
      this.enemy_pos = null;
    }
    else {
      if (initObj.hasOwnProperty('detected')) {
        this.detected = initObj.detected
      }
      else {
        this.detected = false;
      }
      if (initObj.hasOwnProperty('error_code')) {
        this.error_code = initObj.error_code
      }
      else {
        this.error_code = 0;
      }
      if (initObj.hasOwnProperty('error_msg')) {
        this.error_msg = initObj.error_msg
      }
      else {
        this.error_msg = '';
      }
      if (initObj.hasOwnProperty('enemy_pos')) {
        this.enemy_pos = initObj.enemy_pos
      }
      else {
        this.enemy_pos = new geometry_msgs.msg.PoseStamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ArmorDetectionFeedback
    // Serialize message field [detected]
    bufferOffset = _serializer.bool(obj.detected, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.int32(obj.error_code, buffer, bufferOffset);
    // Serialize message field [error_msg]
    bufferOffset = _serializer.string(obj.error_msg, buffer, bufferOffset);
    // Serialize message field [enemy_pos]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.enemy_pos, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ArmorDetectionFeedback
    let len;
    let data = new ArmorDetectionFeedback(null);
    // Deserialize message field [detected]
    data.detected = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [error_msg]
    data.error_msg = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [enemy_pos]
    data.enemy_pos = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.error_msg.length;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.enemy_pos);
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roborts_msgs/ArmorDetectionFeedback';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8d02f36059a79608a4dff667f988ef60';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #feedback
    bool detected
    int32  error_code
    string error_msg
    geometry_msgs/PoseStamped enemy_pos
    
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
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
    const resolved = new ArmorDetectionFeedback(null);
    if (msg.detected !== undefined) {
      resolved.detected = msg.detected;
    }
    else {
      resolved.detected = false
    }

    if (msg.error_code !== undefined) {
      resolved.error_code = msg.error_code;
    }
    else {
      resolved.error_code = 0
    }

    if (msg.error_msg !== undefined) {
      resolved.error_msg = msg.error_msg;
    }
    else {
      resolved.error_msg = ''
    }

    if (msg.enemy_pos !== undefined) {
      resolved.enemy_pos = geometry_msgs.msg.PoseStamped.Resolve(msg.enemy_pos)
    }
    else {
      resolved.enemy_pos = new geometry_msgs.msg.PoseStamped()
    }

    return resolved;
    }
};

module.exports = ArmorDetectionFeedback;
