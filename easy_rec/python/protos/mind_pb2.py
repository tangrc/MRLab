# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: easy_rec/python/protos/mind.proto

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
from easy_rec.python.protos import simi_pb2 as easy__rec_dot_python_dot_protos_dot_simi__pb2


DESCRIPTOR = _descriptor.FileDescriptor(
  name='easy_rec/python/protos/mind.proto',
  package='protos',
  syntax='proto2',
  serialized_pb=_b('\n!easy_rec/python/protos/mind.proto\x12\x06protos\x1a easy_rec/python/protos/dnn.proto\x1a!easy_rec/python/protos/simi.proto\"\xea\x01\n\x07\x43\x61psule\x12\x10\n\x05max_k\x18\x01 \x01(\r:\x01\x35\x12\x13\n\x0bmax_seq_len\x18\x02 \x02(\r\x12\x10\n\x08high_dim\x18\x03 \x02(\r\x12\x14\n\tnum_iters\x18\x04 \x01(\r:\x01\x33\x12 \n\x14routing_logits_scale\x18\x05 \x01(\x02:\x02\x32\x30\x12 \n\x15routing_logits_stddev\x18\x06 \x01(\x02:\x01\x31\x12\x15\n\nsquash_pow\x18\x07 \x01(\x02:\x01\x31\x12\x16\n\x0bscale_ratio\x18\x08 \x01(\x02:\x01\x31\x12\x1d\n\x0e\x63onst_caps_num\x18\t \x01(\x08:\x05\x66\x61lse\"\x92\x04\n\x04MIND\x12$\n\x0fpre_capsule_dnn\x18\x65 \x01(\x0b\x32\x0b.protos.DNN\x12\x1d\n\x08user_dnn\x18\x66 \x02(\x0b\x32\x0b.protos.DNN\x12\x1f\n\nconcat_dnn\x18g \x02(\x0b\x32\x0b.protos.DNN\x12@\n\x10user_seq_combine\x18h \x01(\x0e\x32!.protos.MIND.UserSeqCombineMethod:\x03SUM\x12\x1d\n\x08item_dnn\x18\x02 \x02(\x0b\x32\x0b.protos.DNN\x12\'\n\x0e\x63\x61psule_config\x18\x03 \x02(\x0b\x32\x0f.protos.Capsule\x12\x14\n\x08simi_pow\x18\x04 \x01(\x02:\x02\x31\x30\x12-\n\tsimi_func\x18\x05 \x01(\x0e\x32\x12.protos.Similarity:\x06\x43OSINE\x12\x18\n\nscale_simi\x18\x06 \x01(\x08:\x04true\x12!\n\x11l2_regularization\x18\x07 \x02(\x02:\x06\x30.0001\x12\x13\n\x0btime_id_fea\x18\x08 \x01(\t\x12\x0f\n\x07item_id\x18\t \x01(\t\x12&\n\x17ignore_in_batch_neg_sam\x18\n \x01(\x08:\x05\x66\x61lse\x12\x1d\n\x12max_interests_simi\x18\x0b \x01(\x02:\x01\x31\"+\n\x14UserSeqCombineMethod\x12\n\n\x06\x43ONCAT\x10\x00\x12\x07\n\x03SUM\x10\x01')
  ,
  dependencies=[easy__rec_dot_python_dot_protos_dot_dnn__pb2.DESCRIPTOR,easy__rec_dot_python_dot_protos_dot_simi__pb2.DESCRIPTOR,])



_MIND_USERSEQCOMBINEMETHOD = _descriptor.EnumDescriptor(
  name='UserSeqCombineMethod',
  full_name='protos.MIND.UserSeqCombineMethod',
  filename=None,
  file=DESCRIPTOR,
  values=[
    _descriptor.EnumValueDescriptor(
      name='CONCAT', index=0, number=0,
      options=None,
      type=None),
    _descriptor.EnumValueDescriptor(
      name='SUM', index=1, number=1,
      options=None,
      type=None),
  ],
  containing_type=None,
  options=None,
  serialized_start=839,
  serialized_end=882,
)
_sym_db.RegisterEnumDescriptor(_MIND_USERSEQCOMBINEMETHOD)


_CAPSULE = _descriptor.Descriptor(
  name='Capsule',
  full_name='protos.Capsule',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  fields=[
    _descriptor.FieldDescriptor(
      name='max_k', full_name='protos.Capsule.max_k', index=0,
      number=1, type=13, cpp_type=3, label=1,
      has_default_value=True, default_value=5,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='max_seq_len', full_name='protos.Capsule.max_seq_len', index=1,
      number=2, type=13, cpp_type=3, label=2,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='high_dim', full_name='protos.Capsule.high_dim', index=2,
      number=3, type=13, cpp_type=3, label=2,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='num_iters', full_name='protos.Capsule.num_iters', index=3,
      number=4, type=13, cpp_type=3, label=1,
      has_default_value=True, default_value=3,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='routing_logits_scale', full_name='protos.Capsule.routing_logits_scale', index=4,
      number=5, type=2, cpp_type=6, label=1,
      has_default_value=True, default_value=float(20),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='routing_logits_stddev', full_name='protos.Capsule.routing_logits_stddev', index=5,
      number=6, type=2, cpp_type=6, label=1,
      has_default_value=True, default_value=float(1),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='squash_pow', full_name='protos.Capsule.squash_pow', index=6,
      number=7, type=2, cpp_type=6, label=1,
      has_default_value=True, default_value=float(1),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='scale_ratio', full_name='protos.Capsule.scale_ratio', index=7,
      number=8, type=2, cpp_type=6, label=1,
      has_default_value=True, default_value=float(1),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='const_caps_num', full_name='protos.Capsule.const_caps_num', index=8,
      number=9, type=8, cpp_type=7, label=1,
      has_default_value=True, default_value=False,
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
  serialized_end=349,
)


_MIND = _descriptor.Descriptor(
  name='MIND',
  full_name='protos.MIND',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  fields=[
    _descriptor.FieldDescriptor(
      name='pre_capsule_dnn', full_name='protos.MIND.pre_capsule_dnn', index=0,
      number=101, type=11, cpp_type=10, label=1,
      has_default_value=False, default_value=None,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='user_dnn', full_name='protos.MIND.user_dnn', index=1,
      number=102, type=11, cpp_type=10, label=2,
      has_default_value=False, default_value=None,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='concat_dnn', full_name='protos.MIND.concat_dnn', index=2,
      number=103, type=11, cpp_type=10, label=2,
      has_default_value=False, default_value=None,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='user_seq_combine', full_name='protos.MIND.user_seq_combine', index=3,
      number=104, type=14, cpp_type=8, label=1,
      has_default_value=True, default_value=1,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='item_dnn', full_name='protos.MIND.item_dnn', index=4,
      number=2, type=11, cpp_type=10, label=2,
      has_default_value=False, default_value=None,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='capsule_config', full_name='protos.MIND.capsule_config', index=5,
      number=3, type=11, cpp_type=10, label=2,
      has_default_value=False, default_value=None,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='simi_pow', full_name='protos.MIND.simi_pow', index=6,
      number=4, type=2, cpp_type=6, label=1,
      has_default_value=True, default_value=float(10),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='simi_func', full_name='protos.MIND.simi_func', index=7,
      number=5, type=14, cpp_type=8, label=1,
      has_default_value=True, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='scale_simi', full_name='protos.MIND.scale_simi', index=8,
      number=6, type=8, cpp_type=7, label=1,
      has_default_value=True, default_value=True,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='l2_regularization', full_name='protos.MIND.l2_regularization', index=9,
      number=7, type=2, cpp_type=6, label=2,
      has_default_value=True, default_value=float(0.0001),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='time_id_fea', full_name='protos.MIND.time_id_fea', index=10,
      number=8, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=_b("").decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='item_id', full_name='protos.MIND.item_id', index=11,
      number=9, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=_b("").decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='ignore_in_batch_neg_sam', full_name='protos.MIND.ignore_in_batch_neg_sam', index=12,
      number=10, type=8, cpp_type=7, label=1,
      has_default_value=True, default_value=False,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='max_interests_simi', full_name='protos.MIND.max_interests_simi', index=13,
      number=11, type=2, cpp_type=6, label=1,
      has_default_value=True, default_value=float(1),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
  ],
  extensions=[
  ],
  nested_types=[],
  enum_types=[
    _MIND_USERSEQCOMBINEMETHOD,
  ],
  options=None,
  is_extendable=False,
  syntax='proto2',
  extension_ranges=[],
  oneofs=[
  ],
  serialized_start=352,
  serialized_end=882,
)

_MIND.fields_by_name['pre_capsule_dnn'].message_type = easy__rec_dot_python_dot_protos_dot_dnn__pb2._DNN
_MIND.fields_by_name['user_dnn'].message_type = easy__rec_dot_python_dot_protos_dot_dnn__pb2._DNN
_MIND.fields_by_name['concat_dnn'].message_type = easy__rec_dot_python_dot_protos_dot_dnn__pb2._DNN
_MIND.fields_by_name['user_seq_combine'].enum_type = _MIND_USERSEQCOMBINEMETHOD
_MIND.fields_by_name['item_dnn'].message_type = easy__rec_dot_python_dot_protos_dot_dnn__pb2._DNN
_MIND.fields_by_name['capsule_config'].message_type = _CAPSULE
_MIND.fields_by_name['simi_func'].enum_type = easy__rec_dot_python_dot_protos_dot_simi__pb2._SIMILARITY
_MIND_USERSEQCOMBINEMETHOD.containing_type = _MIND
DESCRIPTOR.message_types_by_name['Capsule'] = _CAPSULE
DESCRIPTOR.message_types_by_name['MIND'] = _MIND
_sym_db.RegisterFileDescriptor(DESCRIPTOR)

Capsule = _reflection.GeneratedProtocolMessageType('Capsule', (_message.Message,), dict(
  DESCRIPTOR = _CAPSULE,
  __module__ = 'easy_rec.python.protos.mind_pb2'
  # @@protoc_insertion_point(class_scope:protos.Capsule)
  ))
_sym_db.RegisterMessage(Capsule)

MIND = _reflection.GeneratedProtocolMessageType('MIND', (_message.Message,), dict(
  DESCRIPTOR = _MIND,
  __module__ = 'easy_rec.python.protos.mind_pb2'
  # @@protoc_insertion_point(class_scope:protos.MIND)
  ))
_sym_db.RegisterMessage(MIND)


# @@protoc_insertion_point(module_scope)
