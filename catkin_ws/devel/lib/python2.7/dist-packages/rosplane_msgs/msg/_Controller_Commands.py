# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from rosplane_msgs/Controller_Commands.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class Controller_Commands(genpy.Message):
  _md5sum = "2242ac5d9a5537c1d78c4a86d109cd82"
  _type = "rosplane_msgs/Controller_Commands"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# Controller commands output from the path follower, input to autopilot controller

# @warning Va_c, h_c and chi_c have always to be valid, the aux array is optional
float32 Va_c		# Commanded airspeed (m/s)
float32 h_c		# Commanded altitude (m)
float32 chi_c		# Commanded course (rad)
float32 phi_ff		# feed forward command for orbits (rad)
float32[4] aux		# Optional auxiliary commands
bool aux_valid		# Auxiliary commands valid

bool landing	   #added by zhaolin
"""
  __slots__ = ['Va_c','h_c','chi_c','phi_ff','aux','aux_valid','landing']
  _slot_types = ['float32','float32','float32','float32','float32[4]','bool','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       Va_c,h_c,chi_c,phi_ff,aux,aux_valid,landing

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Controller_Commands, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.Va_c is None:
        self.Va_c = 0.
      if self.h_c is None:
        self.h_c = 0.
      if self.chi_c is None:
        self.chi_c = 0.
      if self.phi_ff is None:
        self.phi_ff = 0.
      if self.aux is None:
        self.aux = [0.] * 4
      if self.aux_valid is None:
        self.aux_valid = False
      if self.landing is None:
        self.landing = False
    else:
      self.Va_c = 0.
      self.h_c = 0.
      self.chi_c = 0.
      self.phi_ff = 0.
      self.aux = [0.] * 4
      self.aux_valid = False
      self.landing = False

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
      buff.write(_get_struct_4f().pack(_x.Va_c, _x.h_c, _x.chi_c, _x.phi_ff))
      buff.write(_get_struct_4f().pack(*self.aux))
      _x = self
      buff.write(_get_struct_2B().pack(_x.aux_valid, _x.landing))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 16
      (_x.Va_c, _x.h_c, _x.chi_c, _x.phi_ff,) = _get_struct_4f().unpack(str[start:end])
      start = end
      end += 16
      self.aux = _get_struct_4f().unpack(str[start:end])
      _x = self
      start = end
      end += 2
      (_x.aux_valid, _x.landing,) = _get_struct_2B().unpack(str[start:end])
      self.aux_valid = bool(self.aux_valid)
      self.landing = bool(self.landing)
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
      buff.write(_get_struct_4f().pack(_x.Va_c, _x.h_c, _x.chi_c, _x.phi_ff))
      buff.write(self.aux.tostring())
      _x = self
      buff.write(_get_struct_2B().pack(_x.aux_valid, _x.landing))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 16
      (_x.Va_c, _x.h_c, _x.chi_c, _x.phi_ff,) = _get_struct_4f().unpack(str[start:end])
      start = end
      end += 16
      self.aux = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=4)
      _x = self
      start = end
      end += 2
      (_x.aux_valid, _x.landing,) = _get_struct_2B().unpack(str[start:end])
      self.aux_valid = bool(self.aux_valid)
      self.landing = bool(self.landing)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_4f = None
def _get_struct_4f():
    global _struct_4f
    if _struct_4f is None:
        _struct_4f = struct.Struct("<4f")
    return _struct_4f
_struct_2B = None
def _get_struct_2B():
    global _struct_2B
    if _struct_2B is None:
        _struct_2B = struct.Struct("<2B")
    return _struct_2B
