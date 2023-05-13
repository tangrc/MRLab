# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: easy_rec/python/protos/layer.proto

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
  name='easy_rec/python/protos/layer.proto',
  package='protos',
  syntax='proto2',
  serialized_pb=_b('\n\"easy_rec/python/protos/layer.proto\x12\x06protos\x1a easy_rec/python/protos/dnn.proto\"/\n\x0cHighWayTower\x12\r\n\x05input\x18\x01 \x02(\t\x12\x10\n\x08\x65mb_size\x18\x02 \x02(\r\"\x95\x05\n\tCMBFTower\x12\x19\n\x0emulti_head_num\x18\x01 \x02(\r:\x01\x31\x12\x1f\n\x14image_multi_head_num\x18\x65 \x02(\r:\x01\x31\x12\x1e\n\x13text_multi_head_num\x18\x66 \x02(\r:\x01\x31\x12\x16\n\x0etext_head_size\x18\x02 \x02(\r\x12\x1b\n\x0fimage_head_size\x18\x03 \x02(\r:\x02\x36\x34\x12\"\n\x17image_feature_patch_num\x18\x04 \x02(\r:\x01\x31\x12\x1c\n\x11image_feature_dim\x18\x05 \x02(\r:\x01\x30\x12)\n\x1eimage_self_attention_layer_num\x18\x06 \x02(\r:\x01\x30\x12(\n\x1dtext_self_attention_layer_num\x18\x07 \x02(\r:\x01\x31\x12 \n\x15\x63ross_modal_layer_num\x18\x08 \x02(\r:\x01\x31\x12\x1d\n\x15image_cross_head_size\x18\t \x02(\r\x12\x1c\n\x14text_cross_head_size\x18\n \x02(\r\x12\x1e\n\x13hidden_dropout_prob\x18\x0b \x02(\x02:\x01\x30\x12\'\n\x1c\x61ttention_probs_dropout_prob\x18\x0c \x02(\x02:\x01\x30\x12\x1d\n\x0euse_token_type\x18\r \x02(\x08:\x05\x66\x61lse\x12%\n\x17use_position_embeddings\x18\x0e \x02(\x08:\x04true\x12\"\n\x17max_position_embeddings\x18\x0f \x02(\r:\x01\x30\x12&\n\x19text_seq_emb_dropout_prob\x18\x10 \x02(\x02:\x03\x30.1\x12&\n\x11other_feature_dnn\x18\x11 \x01(\x0b\x32\x0b.protos.DNN\"\xf2\x02\n\x0bUniterTower\x12\x13\n\x0bhidden_size\x18\x01 \x02(\r\x12\x19\n\x11num_hidden_layers\x18\x02 \x02(\r\x12\x1b\n\x13num_attention_heads\x18\x03 \x02(\r\x12\x19\n\x11intermediate_size\x18\x04 \x02(\r\x12\x18\n\nhidden_act\x18\x05 \x02(\t:\x04gelu\x12 \n\x13hidden_dropout_prob\x18\x06 \x02(\x02:\x03\x30.1\x12)\n\x1c\x61ttention_probs_dropout_prob\x18\x07 \x02(\x02:\x03\x30.1\x12$\n\x17max_position_embeddings\x18\x08 \x02(\r:\x03\x35\x31\x32\x12%\n\x17use_position_embeddings\x18\t \x02(\x08:\x04true\x12\x1f\n\x11initializer_range\x18\n \x02(\x02:\x04\x30.02\x12&\n\x11other_feature_dnn\x18\x0b \x01(\x0b\x32\x0b.protos.DNN')
  ,
  dependencies=[easy__rec_dot_python_dot_protos_dot_dnn__pb2.DESCRIPTOR,])




_HIGHWAYTOWER = _descriptor.Descriptor(
  name='HighWayTower',
  full_name='protos.HighWayTower',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  fields=[
    _descriptor.FieldDescriptor(
      name='input', full_name='protos.HighWayTower.input', index=0,
      number=1, type=9, cpp_type=9, label=2,
      has_default_value=False, default_value=_b("").decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='emb_size', full_name='protos.HighWayTower.emb_size', index=1,
      number=2, type=13, cpp_type=3, label=2,
      has_default_value=False, default_value=0,
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
  serialized_start=80,
  serialized_end=127,
)


_CMBFTOWER = _descriptor.Descriptor(
  name='CMBFTower',
  full_name='protos.CMBFTower',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  fields=[
    _descriptor.FieldDescriptor(
      name='multi_head_num', full_name='protos.CMBFTower.multi_head_num', index=0,
      number=1, type=13, cpp_type=3, label=2,
      has_default_value=True, default_value=1,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='image_multi_head_num', full_name='protos.CMBFTower.image_multi_head_num', index=1,
      number=101, type=13, cpp_type=3, label=2,
      has_default_value=True, default_value=1,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='text_multi_head_num', full_name='protos.CMBFTower.text_multi_head_num', index=2,
      number=102, type=13, cpp_type=3, label=2,
      has_default_value=True, default_value=1,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='text_head_size', full_name='protos.CMBFTower.text_head_size', index=3,
      number=2, type=13, cpp_type=3, label=2,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='image_head_size', full_name='protos.CMBFTower.image_head_size', index=4,
      number=3, type=13, cpp_type=3, label=2,
      has_default_value=True, default_value=64,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='image_feature_patch_num', full_name='protos.CMBFTower.image_feature_patch_num', index=5,
      number=4, type=13, cpp_type=3, label=2,
      has_default_value=True, default_value=1,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='image_feature_dim', full_name='protos.CMBFTower.image_feature_dim', index=6,
      number=5, type=13, cpp_type=3, label=2,
      has_default_value=True, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='image_self_attention_layer_num', full_name='protos.CMBFTower.image_self_attention_layer_num', index=7,
      number=6, type=13, cpp_type=3, label=2,
      has_default_value=True, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='text_self_attention_layer_num', full_name='protos.CMBFTower.text_self_attention_layer_num', index=8,
      number=7, type=13, cpp_type=3, label=2,
      has_default_value=True, default_value=1,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='cross_modal_layer_num', full_name='protos.CMBFTower.cross_modal_layer_num', index=9,
      number=8, type=13, cpp_type=3, label=2,
      has_default_value=True, default_value=1,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='image_cross_head_size', full_name='protos.CMBFTower.image_cross_head_size', index=10,
      number=9, type=13, cpp_type=3, label=2,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='text_cross_head_size', full_name='protos.CMBFTower.text_cross_head_size', index=11,
      number=10, type=13, cpp_type=3, label=2,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='hidden_dropout_prob', full_name='protos.CMBFTower.hidden_dropout_prob', index=12,
      number=11, type=2, cpp_type=6, label=2,
      has_default_value=True, default_value=float(0),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='attention_probs_dropout_prob', full_name='protos.CMBFTower.attention_probs_dropout_prob', index=13,
      number=12, type=2, cpp_type=6, label=2,
      has_default_value=True, default_value=float(0),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='use_token_type', full_name='protos.CMBFTower.use_token_type', index=14,
      number=13, type=8, cpp_type=7, label=2,
      has_default_value=True, default_value=False,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='use_position_embeddings', full_name='protos.CMBFTower.use_position_embeddings', index=15,
      number=14, type=8, cpp_type=7, label=2,
      has_default_value=True, default_value=True,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='max_position_embeddings', full_name='protos.CMBFTower.max_position_embeddings', index=16,
      number=15, type=13, cpp_type=3, label=2,
      has_default_value=True, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='text_seq_emb_dropout_prob', full_name='protos.CMBFTower.text_seq_emb_dropout_prob', index=17,
      number=16, type=2, cpp_type=6, label=2,
      has_default_value=True, default_value=float(0.1),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='other_feature_dnn', full_name='protos.CMBFTower.other_feature_dnn', index=18,
      number=17, type=11, cpp_type=10, label=1,
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
  serialized_start=130,
  serialized_end=791,
)


_UNITERTOWER = _descriptor.Descriptor(
  name='UniterTower',
  full_name='protos.UniterTower',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  fields=[
    _descriptor.FieldDescriptor(
      name='hidden_size', full_name='protos.UniterTower.hidden_size', index=0,
      number=1, type=13, cpp_type=3, label=2,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='num_hidden_layers', full_name='protos.UniterTower.num_hidden_layers', index=1,
      number=2, type=13, cpp_type=3, label=2,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='num_attention_heads', full_name='protos.UniterTower.num_attention_heads', index=2,
      number=3, type=13, cpp_type=3, label=2,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='intermediate_size', full_name='protos.UniterTower.intermediate_size', index=3,
      number=4, type=13, cpp_type=3, label=2,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='hidden_act', full_name='protos.UniterTower.hidden_act', index=4,
      number=5, type=9, cpp_type=9, label=2,
      has_default_value=True, default_value=_b("gelu").decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='hidden_dropout_prob', full_name='protos.UniterTower.hidden_dropout_prob', index=5,
      number=6, type=2, cpp_type=6, label=2,
      has_default_value=True, default_value=float(0.1),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='attention_probs_dropout_prob', full_name='protos.UniterTower.attention_probs_dropout_prob', index=6,
      number=7, type=2, cpp_type=6, label=2,
      has_default_value=True, default_value=float(0.1),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='max_position_embeddings', full_name='protos.UniterTower.max_position_embeddings', index=7,
      number=8, type=13, cpp_type=3, label=2,
      has_default_value=True, default_value=512,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='use_position_embeddings', full_name='protos.UniterTower.use_position_embeddings', index=8,
      number=9, type=8, cpp_type=7, label=2,
      has_default_value=True, default_value=True,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='initializer_range', full_name='protos.UniterTower.initializer_range', index=9,
      number=10, type=2, cpp_type=6, label=2,
      has_default_value=True, default_value=float(0.02),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='other_feature_dnn', full_name='protos.UniterTower.other_feature_dnn', index=10,
      number=11, type=11, cpp_type=10, label=1,
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
  serialized_start=794,
  serialized_end=1164,
)

_CMBFTOWER.fields_by_name['other_feature_dnn'].message_type = easy__rec_dot_python_dot_protos_dot_dnn__pb2._DNN
_UNITERTOWER.fields_by_name['other_feature_dnn'].message_type = easy__rec_dot_python_dot_protos_dot_dnn__pb2._DNN
DESCRIPTOR.message_types_by_name['HighWayTower'] = _HIGHWAYTOWER
DESCRIPTOR.message_types_by_name['CMBFTower'] = _CMBFTOWER
DESCRIPTOR.message_types_by_name['UniterTower'] = _UNITERTOWER
_sym_db.RegisterFileDescriptor(DESCRIPTOR)

HighWayTower = _reflection.GeneratedProtocolMessageType('HighWayTower', (_message.Message,), dict(
  DESCRIPTOR = _HIGHWAYTOWER,
  __module__ = 'easy_rec.python.protos.layer_pb2'
  # @@protoc_insertion_point(class_scope:protos.HighWayTower)
  ))
_sym_db.RegisterMessage(HighWayTower)

CMBFTower = _reflection.GeneratedProtocolMessageType('CMBFTower', (_message.Message,), dict(
  DESCRIPTOR = _CMBFTOWER,
  __module__ = 'easy_rec.python.protos.layer_pb2'
  # @@protoc_insertion_point(class_scope:protos.CMBFTower)
  ))
_sym_db.RegisterMessage(CMBFTower)

UniterTower = _reflection.GeneratedProtocolMessageType('UniterTower', (_message.Message,), dict(
  DESCRIPTOR = _UNITERTOWER,
  __module__ = 'easy_rec.python.protos.layer_pb2'
  # @@protoc_insertion_point(class_scope:protos.UniterTower)
  ))
_sym_db.RegisterMessage(UniterTower)


# @@protoc_insertion_point(module_scope)
