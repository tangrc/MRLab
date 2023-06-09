# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: easy_rec/python/protos/deepfm.proto

import sys
_b=sys.version_info[0]<3 and (lambda x:x) or (lambda x:x.encode('latin1'))
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from google.protobuf import reflection as _reflection
from google.protobuf import symbol_database as _symbol_database
from google.protobuf import descriptor_pb2
# @@protoc_insertion_point(imports)

_sym_db = _symbol_database.Default()


from easy_rec.python.protos import dnn_pb2 as easy__rec_dot_python_dot_protos_dot_dnn__pb2


DESCRIPTOR = _descriptor.FileDescriptor(
  name='easy_rec/python/protos/deepfm.proto',
  package='protos',
  syntax='proto2',
  serialized_pb=_b('\n#easy_rec/python/protos/deepfm.proto\x12\x06protos\x1a easy_rec/python/protos/dnn.proto\"\xcc\x01\n\x06\x44\x65\x65pFM\x12\x18\n\x03\x64nn\x18\x01 \x02(\x0b\x32\x0b.protos.DNN\x12\x1e\n\tfinal_dnn\x18\x02 \x01(\x0b\x32\x0b.protos.DNN\x12\x1a\n\x0fwide_output_dim\x18\x03 \x01(\r:\x01\x31\x12#\n\x13wide_regularization\x18\x04 \x01(\x02:\x06\x30.0001\x12$\n\x14\x64\x65nse_regularization\x18\x05 \x01(\x02:\x06\x30.0001\x12!\n\x11l2_regularization\x18\x06 \x01(\x02:\x06\x30.0001')
  ,
  dependencies=[easy__rec_dot_python_dot_protos_dot_dnn__pb2.DESCRIPTOR,])




_DEEPFM = _descriptor.Descriptor(
  name='DeepFM',
  full_name='protos.DeepFM',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  fields=[
    _descriptor.FieldDescriptor(
      name='dnn', full_name='protos.DeepFM.dnn', index=0,
      number=1, type=11, cpp_type=10, label=2,
      has_default_value=False, default_value=None,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='final_dnn', full_name='protos.DeepFM.final_dnn', index=1,
      number=2, type=11, cpp_type=10, label=1,
      has_default_value=False, default_value=None,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='wide_output_dim', full_name='protos.DeepFM.wide_output_dim', index=2,
      number=3, type=13, cpp_type=3, label=1,
      has_default_value=True, default_value=1,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='wide_regularization', full_name='protos.DeepFM.wide_regularization', index=3,
      number=4, type=2, cpp_type=6, label=1,
      has_default_value=True, default_value=float(0.0001),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='dense_regularization', full_name='protos.DeepFM.dense_regularization', index=4,
      number=5, type=2, cpp_type=6, label=1,
      has_default_value=True, default_value=float(0.0001),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='l2_regularization', full_name='protos.DeepFM.l2_regularization', index=5,
      number=6, type=2, cpp_type=6, label=1,
      has_default_value=True, default_value=float(0.0001),
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
  serialized_start=82,
  serialized_end=286,
)

_DEEPFM.fields_by_name['dnn'].message_type = easy__rec_dot_python_dot_protos_dot_dnn__pb2._DNN
_DEEPFM.fields_by_name['final_dnn'].message_type = easy__rec_dot_python_dot_protos_dot_dnn__pb2._DNN
DESCRIPTOR.message_types_by_name['DeepFM'] = _DEEPFM
_sym_db.RegisterFileDescriptor(DESCRIPTOR)

DeepFM = _reflection.GeneratedProtocolMessageType('DeepFM', (_message.Message,), dict(
  DESCRIPTOR = _DEEPFM,
  __module__ = 'easy_rec.python.protos.deepfm_pb2'
  # @@protoc_insertion_point(class_scope:protos.DeepFM)
  ))
_sym_db.RegisterMessage(DeepFM)


# @@protoc_insertion_point(module_scope)
