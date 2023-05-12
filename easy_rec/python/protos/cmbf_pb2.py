# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: easy_rec/python/protos/cmbf.proto

import sys
_b=sys.version_info[0]<3 and (lambda x:x) or (lambda x:x.encode('latin1'))
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from google.protobuf import reflection as _reflection
from google.protobuf import symbol_database as _symbol_database
from google.protobuf import descriptor_pb2
# @@protoc_insertion_point(imports)

_sym_db = _symbol_database.Default()


from easy_rec.python.protos import layer_pb2 as easy__rec_dot_python_dot_protos_dot_layer__pb2
from easy_rec.python.protos import dnn_pb2 as easy__rec_dot_python_dot_protos_dot_dnn__pb2


DESCRIPTOR = _descriptor.FileDescriptor(
  name='easy_rec/python/protos/cmbf.proto',
  package='protos',
  syntax='proto2',
  serialized_pb=_b('\n!easy_rec/python/protos/cmbf.proto\x12\x06protos\x1a\"easy_rec/python/protos/layer.proto\x1a easy_rec/python/protos/dnn.proto\"I\n\x04\x43MBF\x12!\n\x06\x63onfig\x18\x01 \x02(\x0b\x32\x11.protos.CMBFTower\x12\x1e\n\tfinal_dnn\x18\x02 \x02(\x0b\x32\x0b.protos.DNN')
  ,
  dependencies=[easy__rec_dot_python_dot_protos_dot_layer__pb2.DESCRIPTOR,easy__rec_dot_python_dot_protos_dot_dnn__pb2.DESCRIPTOR,])




_CMBF = _descriptor.Descriptor(
  name='CMBF',
  full_name='protos.CMBF',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  fields=[
    _descriptor.FieldDescriptor(
      name='config', full_name='protos.CMBF.config', index=0,
      number=1, type=11, cpp_type=10, label=2,
      has_default_value=False, default_value=None,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='final_dnn', full_name='protos.CMBF.final_dnn', index=1,
      number=2, type=11, cpp_type=10, label=2,
      has_default_value=False, default_value=None,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
  ],
  extensions=[
  ],
  nested_types=[],
  enum_types=[
  ],
  options=None,
  is_extendable=False,
  syntax='proto2',
  extension_ranges=[],
  oneofs=[
  ],
  serialized_start=115,
  serialized_end=188,
)

_CMBF.fields_by_name['config'].message_type = easy__rec_dot_python_dot_protos_dot_layer__pb2._CMBFTOWER
_CMBF.fields_by_name['final_dnn'].message_type = easy__rec_dot_python_dot_protos_dot_dnn__pb2._DNN
DESCRIPTOR.message_types_by_name['CMBF'] = _CMBF
_sym_db.RegisterFileDescriptor(DESCRIPTOR)

CMBF = _reflection.GeneratedProtocolMessageType('CMBF', (_message.Message,), dict(
  DESCRIPTOR = _CMBF,
  __module__ = 'easy_rec.python.protos.cmbf_pb2'
  # @@protoc_insertion_point(class_scope:protos.CMBF)
  ))
_sym_db.RegisterMessage(CMBF)


# @@protoc_insertion_point(module_scope)
