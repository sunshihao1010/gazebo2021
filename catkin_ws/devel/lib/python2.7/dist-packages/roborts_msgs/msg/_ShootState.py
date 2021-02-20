# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from roborts_msgs/ShootState.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class ShootState(genpy.Message):
  _md5sum = "36f858c917904d9229bf553ee5e21890"
  _type = "roborts_msgs/ShootState"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """int32 single_shoot
int32 continue_shoot
int32 run_friction_whell
int32 friction_whell_speed"""
  __slots__ = ['single_shoot','continue_shoot','run_friction_whell','friction_whell_speed']
  _slot_types = ['int32','int32','int32','int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       single_shoot,continue_shoot,run_friction_whell,friction_whell_speed

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ShootState, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.single_shoot is None:
        self.single_shoot = 0
      if self.continue_shoot is None:
        self.continue_shoot = 0
      if self.run_friction_whell is None:
        self.run_friction_whell = 0
      if self.friction_whell_speed is None:
        self.friction_whell_speed = 0
    else:
      self.single_shoot = 0
      self.continue_shoot = 0
      self.run_friction_whell = 0
      self.friction_whell_speed = 0

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
      buff.write(_get_struct_4i().pack(_x.single_shoot, _x.continue_shoot, _x.run_friction_whell, _x.friction_whell_speed))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 16
      (_x.single_shoot, _x.continue_shoot, _x.run_friction_whell, _x.friction_whell_speed,) = _get_struct_4i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_4i().pack(_x.single_shoot, _x.continue_shoot, _x.run_friction_whell, _x.friction_whell_speed))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 16
      (_x.single_shoot, _x.continue_shoot, _x.run_friction_whell, _x.friction_whell_speed,) = _get_struct_4i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_4i = None
def _get_struct_4i():
    global _struct_4i
    if _struct_4i is None:
        _struct_4i = struct.Struct("<4i")
    return _struct_4i
