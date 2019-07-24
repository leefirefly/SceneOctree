# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from abstract_msgs/QueryResult.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import abstract_msgs.msg

class QueryResult(genpy.Message):
  _md5sum = "70f9ebe3b3f848562f53b546def58afa"
  _type = "abstract_msgs/QueryResult"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int32 senderID
int32 receiverID
string layerName
string sceneName
abstract_msgs/UnifiedData data

int32 count

================================================================================
MSG: abstract_msgs/UnifiedData
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
"""
  __slots__ = ['senderID','receiverID','layerName','sceneName','data','count']
  _slot_types = ['int32','int32','string','string','abstract_msgs/UnifiedData','int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       senderID,receiverID,layerName,sceneName,data,count

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(QueryResult, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.senderID is None:
        self.senderID = 0
      if self.receiverID is None:
        self.receiverID = 0
      if self.layerName is None:
        self.layerName = ''
      if self.sceneName is None:
        self.sceneName = ''
      if self.data is None:
        self.data = abstract_msgs.msg.UnifiedData()
      if self.count is None:
        self.count = 0
    else:
      self.senderID = 0
      self.receiverID = 0
      self.layerName = ''
      self.sceneName = ''
      self.data = abstract_msgs.msg.UnifiedData()
      self.count = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_2i().pack(_x.senderID, _x.receiverID))
      _x = self.layerName
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.sceneName
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_get_struct_i().pack(self.data.swarmID))
      _x = self.data.taskName
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.data.actorName
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_get_struct_i().pack(self.data.robotID))
      _x = self.data.timeStamp
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_14d().pack(_x.data.robotPose.position.x, _x.data.robotPose.position.y, _x.data.robotPose.position.z, _x.data.robotPose.orientation.x, _x.data.robotPose.orientation.y, _x.data.robotPose.orientation.z, _x.data.robotPose.orientation.w, _x.data.sensorPose.position.x, _x.data.sensorPose.position.y, _x.data.sensorPose.position.z, _x.data.sensorPose.orientation.x, _x.data.sensorPose.orientation.y, _x.data.sensorPose.orientation.z, _x.data.sensorPose.orientation.w))
      _x = self.data.dataType
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.data.data
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_get_struct_i().pack(self.count))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.data is None:
        self.data = abstract_msgs.msg.UnifiedData()
      end = 0
      _x = self
      start = end
      end += 8
      (_x.senderID, _x.receiverID,) = _get_struct_2i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.layerName = str[start:end].decode('utf-8')
      else:
        self.layerName = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.sceneName = str[start:end].decode('utf-8')
      else:
        self.sceneName = str[start:end]
      start = end
      end += 4
      (self.data.swarmID,) = _get_struct_i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.data.taskName = str[start:end].decode('utf-8')
      else:
        self.data.taskName = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.data.actorName = str[start:end].decode('utf-8')
      else:
        self.data.actorName = str[start:end]
      start = end
      end += 4
      (self.data.robotID,) = _get_struct_i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.data.timeStamp = str[start:end].decode('utf-8')
      else:
        self.data.timeStamp = str[start:end]
      _x = self
      start = end
      end += 112
      (_x.data.robotPose.position.x, _x.data.robotPose.position.y, _x.data.robotPose.position.z, _x.data.robotPose.orientation.x, _x.data.robotPose.orientation.y, _x.data.robotPose.orientation.z, _x.data.robotPose.orientation.w, _x.data.sensorPose.position.x, _x.data.sensorPose.position.y, _x.data.sensorPose.position.z, _x.data.sensorPose.orientation.x, _x.data.sensorPose.orientation.y, _x.data.sensorPose.orientation.z, _x.data.sensorPose.orientation.w,) = _get_struct_14d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.data.dataType = str[start:end].decode('utf-8')
      else:
        self.data.dataType = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.data.data = str[start:end]
      start = end
      end += 4
      (self.count,) = _get_struct_i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_2i().pack(_x.senderID, _x.receiverID))
      _x = self.layerName
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.sceneName
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_get_struct_i().pack(self.data.swarmID))
      _x = self.data.taskName
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.data.actorName
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_get_struct_i().pack(self.data.robotID))
      _x = self.data.timeStamp
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_14d().pack(_x.data.robotPose.position.x, _x.data.robotPose.position.y, _x.data.robotPose.position.z, _x.data.robotPose.orientation.x, _x.data.robotPose.orientation.y, _x.data.robotPose.orientation.z, _x.data.robotPose.orientation.w, _x.data.sensorPose.position.x, _x.data.sensorPose.position.y, _x.data.sensorPose.position.z, _x.data.sensorPose.orientation.x, _x.data.sensorPose.orientation.y, _x.data.sensorPose.orientation.z, _x.data.sensorPose.orientation.w))
      _x = self.data.dataType
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.data.data
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_get_struct_i().pack(self.count))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.data is None:
        self.data = abstract_msgs.msg.UnifiedData()
      end = 0
      _x = self
      start = end
      end += 8
      (_x.senderID, _x.receiverID,) = _get_struct_2i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.layerName = str[start:end].decode('utf-8')
      else:
        self.layerName = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.sceneName = str[start:end].decode('utf-8')
      else:
        self.sceneName = str[start:end]
      start = end
      end += 4
      (self.data.swarmID,) = _get_struct_i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.data.taskName = str[start:end].decode('utf-8')
      else:
        self.data.taskName = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.data.actorName = str[start:end].decode('utf-8')
      else:
        self.data.actorName = str[start:end]
      start = end
      end += 4
      (self.data.robotID,) = _get_struct_i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.data.timeStamp = str[start:end].decode('utf-8')
      else:
        self.data.timeStamp = str[start:end]
      _x = self
      start = end
      end += 112
      (_x.data.robotPose.position.x, _x.data.robotPose.position.y, _x.data.robotPose.position.z, _x.data.robotPose.orientation.x, _x.data.robotPose.orientation.y, _x.data.robotPose.orientation.z, _x.data.robotPose.orientation.w, _x.data.sensorPose.position.x, _x.data.sensorPose.position.y, _x.data.sensorPose.position.z, _x.data.sensorPose.orientation.x, _x.data.sensorPose.orientation.y, _x.data.sensorPose.orientation.z, _x.data.sensorPose.orientation.w,) = _get_struct_14d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.data.dataType = str[start:end].decode('utf-8')
      else:
        self.data.dataType = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.data.data = str[start:end]
      start = end
      end += 4
      (self.count,) = _get_struct_i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_i = None
def _get_struct_i():
    global _struct_i
    if _struct_i is None:
        _struct_i = struct.Struct("<i")
    return _struct_i
_struct_14d = None
def _get_struct_14d():
    global _struct_14d
    if _struct_14d is None:
        _struct_14d = struct.Struct("<14d")
    return _struct_14d
_struct_2i = None
def _get_struct_2i():
    global _struct_2i
    if _struct_2i is None:
        _struct_2i = struct.Struct("<2i")
    return _struct_2i
