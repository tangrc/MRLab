# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: easy_rec/python/protos/ple.proto

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
from easy_rec.python.protos import tower_pb2 as easy__rec_dot_python_dot_protos_dot_tower__pb2


DESCRIPTOR = _descriptor.FileDescriptor(
  name='easy_rec/python/protos/ple.proto',
  package='protos',
  syntax='proto2',
  serialized_pb=_b('\n easy_rec/python/protos/ple.proto\x12\x06protos\x1a easy_rec/python/protos/dnn.proto\x1a\"easy_rec/python/protos/tower.proto\"\xa6\x01\n\x11\x45xtractionNetwork\x12\x14\n\x0cnetwork_name\x18\x01 \x02(\t\x12\x1b\n\x13\x65xpert_num_per_task\x18\x02 \x02(\r\x12\x11\n\tshare_num\x18\x03 \x01(\r\x12$\n\x0ftask_expert_net\x18\x04 \x02(\x0b\x32\x0b.protos.DNN\x12%\n\x10share_expert_net\x18\x05 \x01(\x0b\x32\x0b.protos.DNN\"\x88\x01\n\x03PLE\x12\x36\n\x13\x65xtraction_networks\x18\x01 \x03(\x0b\x32\x19.protos.ExtractionNetwork\x12&\n\x0btask_towers\x18\x02 \x03(\x0b\x32\x11.protos.TaskTower\x12!\n\x11l2_regularization\x18\x03 \x01(\x02:\x06\x30.0001')
  ,
  dependencies=[easy__rec_dot_python_dot_protos_dot_dnn__pb2.DESCRIPTOR,easy__rec_dot_python_dot_protos_dot_tower__pb2.DESCRIPTOR,])




_EXTRACTIONNETWORK = _descriptor.Descriptor(
  name='ExtractionNetwork',
  full_name='protos.ExtractionNetwork',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  fields=[
    _descriptor.FieldDescriptor(
      name='network_name', full_name='protos.ExtractionNetwork.network_name', index=0,
      number=1, type=9, cpp_type=9, label=2,
      has_default_value=False, default_value=_b("").decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='expert_num_per_task', full_name='protos.ExtractionNetwork.expert_num_per_task', index=1,
      number=2, type=13, cpp_type=3, label=2,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='share_num', full_name='protos.ExtractionNetwork.share_num', index=2,
      number=3, type=13, cpp_type=3, label=1,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='task_expert_net', full_name='protos.ExtractionNetwork.task_expert_net', index=3,
      number=4, type=11, cpp_type=10, label=2,
      has_default_value=False, default_value=None,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='share_expert_net', full_name='protos.ExtractionNetwork.share_expert_net', index=4,
      number=5, type=11, cpp_type=10, label=1,
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
  serialized_end=281,
)


_PLE = _descriptor.Descriptor(
  name='PLE',
  full_name='protos.PLE',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  fields=[
    _descriptor.FieldDescriptor(
      name='extraction_networks', full_name='protos.PLE.extraction_networks', index=0,
      number=1, type=11, cpp_type=10, label=3,
      has_default_value=False, default_value=[],
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='task_towers', full_name='protos.PLE.task_towers', index=1,
      number=2, type=11, cpp_type=10, label=3,
      has_default_value=False, default_value=[],
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='l2_regularization', full_name='protos.PLE.l2_regularization', index=2,
      number=3, type=2, cpp_type=6, label=1,
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
  serialized_start=284,
  serialized_end=420,
)

_EXTRACTIONNETWORK.fields_by_name['task_expert_net'].message_type = easy__rec_dot_python_dot_protos_dot_dnn__pb2._DNN
_EXTRACTIONNETWORK.fields_by_name['share_expert_net'].message_type = easy__rec_dot_python_dot_protos_dot_dnn__pb2._DNN
_PLE.fields_by_name['extraction_networks'].message_type = _EXTRACTIONNETWORK
_PLE.fields_by_name['task_towers'].message_type = easy__rec_dot_python_dot_protos_dot_tower__pb2._TASKTOWER
DESCRIPTOR.message_types_by_name['ExtractionNetwork'] = _EXTRACTIONNETWORK
DESCRIPTOR.message_types_by_name['PLE'] = _PLE
_sym_db.RegisterFileDescriptor(DESCRIPTOR)

ExtractionNetwork = _reflection.GeneratedProtocolMessageType('ExtractionNetwork', (_message.Message,), dict(
  DESCRIPTOR = _EXTRACTIONNETWORK,
  __module__ = 'easy_rec.python.protos.ple_pb2'
  # @@protoc_insertion_point(class_scope:protos.ExtractionNetwork)
  ))
_sym_db.RegisterMessage(ExtractionNetwork)

PLE = _reflection.GeneratedProtocolMessageType('PLE', (_message.Message,), dict(
  DESCRIPTOR = _PLE,
  __module__ = 'easy_rec.python.protos.ple_pb2'
  # @@protoc_insertion_point(class_scope:protos.PLE)
  ))
_sym_db.RegisterMessage(PLE)


# @@protoc_insertion_point(module_scope)
