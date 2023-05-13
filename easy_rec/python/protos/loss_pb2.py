# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: easy_rec/python/protos/loss.proto

import sys
_b=sys.version_info[0]<3 and (lambda x:x) or (lambda x:x.encode('latin1'))
from google.protobuf.internal import enum_type_wrapper
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from google.protobuf import reflection as _reflection
from google.protobuf import symbol_database as _symbol_database
from google.protobuf import descriptor_pb2
# @@protoc_insertion_point(imports)

_sym_db = _symbol_database.Default()




DESCRIPTOR = _descriptor.FileDescriptor(
  name='easy_rec/python/protos/loss.proto',
  package='protos',
  syntax='proto2',
  serialized_pb=_b('\n!easy_rec/python/protos/loss.proto\x12\x06protos\"\xe6\x04\n\x04Loss\x12#\n\tloss_type\x18\x01 \x02(\x0e\x32\x10.protos.LossType\x12\x11\n\x06weight\x18\x02 \x01(\x02:\x01\x31\x12\x11\n\tloss_name\x18\x03 \x01(\t\x12 \n\x11learn_loss_weight\x18\x04 \x01(\x08:\x05\x66\x61lse\x12\x35\n\x12\x66\x31_reweighted_loss\x18\x65 \x01(\x0b\x32\x17.protos.F1ReweighedLossH\x00\x12\x45\n\x0csoftmax_loss\x18\x66 \x01(\x0b\x32-.protos.SoftmaxCrossEntropyWithNegativeMiningH\x00\x12)\n\x0b\x63ircle_loss\x18g \x01(\x0b\x32\x12.protos.CircleLossH\x00\x12\x36\n\x0fmulti_simi_loss\x18h \x01(\x0b\x32\x1b.protos.MultiSimilarityLossH\x00\x12\x34\n\x11\x62inary_focal_loss\x18i \x01(\x0b\x32\x17.protos.BinaryFocalLossH\x00\x12-\n\rpairwise_loss\x18j \x01(\x0b\x32\x14.protos.PairwiseLossH\x00\x12\x38\n\x13pairwise_focal_loss\x18k \x01(\x0b\x32\x19.protos.PairwiseFocalLossH\x00\x12>\n\x16pairwise_logistic_loss\x18l \x01(\x0b\x32\x1c.protos.PairwiseLogisticLossH\x00\x12#\n\x08jrc_loss\x18m \x01(\x0b\x32\x0f.protos.JRCLossH\x00\x42\x0c\n\nloss_param\"\x94\x01\n%SoftmaxCrossEntropyWithNegativeMining\x12\x1c\n\x14num_negative_samples\x18\x01 \x02(\r\x12\x11\n\x06margin\x18\x02 \x02(\x02:\x01\x30\x12\x10\n\x05gamma\x18\x03 \x02(\x02:\x01\x31\x12(\n\x1d\x63oefficient_of_support_vector\x18\x04 \x02(\x02:\x01\x31\"5\n\nCircleLoss\x12\x14\n\x06margin\x18\x01 \x02(\x02:\x04\x30.25\x12\x11\n\x05gamma\x18\x02 \x02(\x02:\x02\x33\x32\"\\\n\x13MultiSimilarityLoss\x12\x10\n\x05\x61lpha\x18\x01 \x02(\x02:\x01\x32\x12\x10\n\x04\x62\x65ta\x18\x02 \x02(\x02:\x02\x35\x30\x12\x0f\n\x04lamb\x18\x03 \x02(\x02:\x01\x31\x12\x10\n\x03\x65ps\x18\x04 \x02(\x02:\x03\x30.1\"H\n\x0f\x46\x31ReweighedLoss\x12\x19\n\x0e\x66\x31_beta_square\x18\x01 \x02(\x02:\x01\x31\x12\x1a\n\x0flabel_smoothing\x18\x02 \x02(\x02:\x01\x30\"e\n\x0f\x42inaryFocalLoss\x12\x10\n\x05gamma\x18\x01 \x02(\x02:\x01\x32\x12\r\n\x05\x61lpha\x18\x02 \x01(\x02\x12\x15\n\nohem_ratio\x18\x03 \x01(\x02:\x01\x31\x12\x1a\n\x0flabel_smoothing\x18\x04 \x01(\x02:\x01\x30\"O\n\x0cPairwiseLoss\x12\x11\n\x06margin\x18\x01 \x02(\x02:\x01\x30\x12\x14\n\x0csession_name\x18\x02 \x01(\t\x12\x16\n\x0btemperature\x18\x03 \x01(\x02:\x01\x31\"\x92\x01\n\x11PairwiseFocalLoss\x12\x10\n\x05gamma\x18\x01 \x02(\x02:\x01\x32\x12\r\n\x05\x61lpha\x18\x02 \x01(\x02\x12\x17\n\x0chinge_margin\x18\x03 \x01(\x02:\x01\x31\x12\x14\n\x0csession_name\x18\x04 \x01(\t\x12\x15\n\nohem_ratio\x18\x05 \x01(\x02:\x01\x31\x12\x16\n\x0btemperature\x18\x06 \x01(\x02:\x01\x31\"t\n\x14PairwiseLogisticLoss\x12\x16\n\x0btemperature\x18\x01 \x02(\x02:\x01\x31\x12\x14\n\x0csession_name\x18\x02 \x01(\t\x12\x17\n\x0chinge_margin\x18\x03 \x01(\x02:\x01\x31\x12\x15\n\nohem_ratio\x18\x04 \x01(\x02:\x01\x31\"3\n\x07JRCLoss\x12\x14\n\x0csession_name\x18\x01 \x02(\t\x12\x12\n\x05\x61lpha\x18\x02 \x01(\x02:\x03\x30.5*\xd5\x02\n\x08LossType\x12\x12\n\x0e\x43LASSIFICATION\x10\x00\x12\x0b\n\x07L2_LOSS\x10\x01\x12\x13\n\x0fSIGMOID_L2_LOSS\x10\x02\x12\x16\n\x12\x43ROSS_ENTROPY_LOSS\x10\x03\x12\x19\n\x15SOFTMAX_CROSS_ENTROPY\x10\x04\x12\x0f\n\x0b\x43IRCLE_LOSS\x10\x05\x12\x19\n\x15MULTI_SIMILARITY_LOSS\x10\x06\x12.\n*SOFTMAX_CROSS_ENTROPY_WITH_NEGATIVE_MINING\x10\x07\x12\x12\n\x0ePAIR_WISE_LOSS\x10\x08\x12\x16\n\x12\x46\x31_REWEIGHTED_LOSS\x10\t\x12\x15\n\x11\x42INARY_FOCAL_LOSS\x10\n\x12\x17\n\x13PAIRWISE_FOCAL_LOSS\x10\x0b\x12\x1a\n\x16PAIRWISE_LOGISTIC_LOSS\x10\x0c\x12\x0c\n\x08JRC_LOSS\x10\r')
)

_LOSSTYPE = _descriptor.EnumDescriptor(
  name='LossType',
  full_name='protos.LossType',
  filename=None,
  file=DESCRIPTOR,
  values=[
    _descriptor.EnumValueDescriptor(
      name='CLASSIFICATION', index=0, number=0,
      options=None,
      type=None),
    _descriptor.EnumValueDescriptor(
      name='L2_LOSS', index=1, number=1,
      options=None,
      type=None),
    _descriptor.EnumValueDescriptor(
      name='SIGMOID_L2_LOSS', index=2, number=2,
      options=None,
      type=None),
    _descriptor.EnumValueDescriptor(
      name='CROSS_ENTROPY_LOSS', index=3, number=3,
      options=None,
      type=None),
    _descriptor.EnumValueDescriptor(
      name='SOFTMAX_CROSS_ENTROPY', index=4, number=4,
      options=None,
      type=None),
    _descriptor.EnumValueDescriptor(
      name='CIRCLE_LOSS', index=5, number=5,
      options=None,
      type=None),
    _descriptor.EnumValueDescriptor(
      name='MULTI_SIMILARITY_LOSS', index=6, number=6,
      options=None,
      type=None),
    _descriptor.EnumValueDescriptor(
      name='SOFTMAX_CROSS_ENTROPY_WITH_NEGATIVE_MINING', index=7, number=7,
      options=None,
      type=None),
    _descriptor.EnumValueDescriptor(
      name='PAIR_WISE_LOSS', index=8, number=8,
      options=None,
      type=None),
    _descriptor.EnumValueDescriptor(
      name='F1_REWEIGHTED_LOSS', index=9, number=9,
      options=None,
      type=None),
    _descriptor.EnumValueDescriptor(
      name='BINARY_FOCAL_LOSS', index=10, number=10,
      options=None,
      type=None),
    _descriptor.EnumValueDescriptor(
      name='PAIRWISE_FOCAL_LOSS', index=11, number=11,
      options=None,
      type=None),
    _descriptor.EnumValueDescriptor(
      name='PAIRWISE_LOGISTIC_LOSS', index=12, number=12,
      options=None,
      type=None),
    _descriptor.EnumValueDescriptor(
      name='JRC_LOSS', index=13, number=13,
      options=None,
      type=None),
  ],
  containing_type=None,
  options=None,
  serialized_start=1541,
  serialized_end=1882,
)
_sym_db.RegisterEnumDescriptor(_LOSSTYPE)

LossType = enum_type_wrapper.EnumTypeWrapper(_LOSSTYPE)
CLASSIFICATION = 0
L2_LOSS = 1
SIGMOID_L2_LOSS = 2
CROSS_ENTROPY_LOSS = 3
SOFTMAX_CROSS_ENTROPY = 4
CIRCLE_LOSS = 5
MULTI_SIMILARITY_LOSS = 6
SOFTMAX_CROSS_ENTROPY_WITH_NEGATIVE_MINING = 7
PAIR_WISE_LOSS = 8
F1_REWEIGHTED_LOSS = 9
BINARY_FOCAL_LOSS = 10
PAIRWISE_FOCAL_LOSS = 11
PAIRWISE_LOGISTIC_LOSS = 12
JRC_LOSS = 13



_LOSS = _descriptor.Descriptor(
  name='Loss',
  full_name='protos.Loss',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  fields=[
    _descriptor.FieldDescriptor(
      name='loss_type', full_name='protos.Loss.loss_type', index=0,
      number=1, type=14, cpp_type=8, label=2,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='weight', full_name='protos.Loss.weight', index=1,
      number=2, type=2, cpp_type=6, label=1,
      has_default_value=True, default_value=float(1),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='loss_name', full_name='protos.Loss.loss_name', index=2,
      number=3, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=_b("").decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='learn_loss_weight', full_name='protos.Loss.learn_loss_weight', index=3,
      number=4, type=8, cpp_type=7, label=1,
      has_default_value=True, default_value=False,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='f1_reweighted_loss', full_name='protos.Loss.f1_reweighted_loss', index=4,
      number=101, type=11, cpp_type=10, label=1,
      has_default_value=False, default_value=None,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='softmax_loss', full_name='protos.Loss.softmax_loss', index=5,
      number=102, type=11, cpp_type=10, label=1,
      has_default_value=False, default_value=None,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='circle_loss', full_name='protos.Loss.circle_loss', index=6,
      number=103, type=11, cpp_type=10, label=1,
      has_default_value=False, default_value=None,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='multi_simi_loss', full_name='protos.Loss.multi_simi_loss', index=7,
      number=104, type=11, cpp_type=10, label=1,
      has_default_value=False, default_value=None,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='binary_focal_loss', full_name='protos.Loss.binary_focal_loss', index=8,
      number=105, type=11, cpp_type=10, label=1,
      has_default_value=False, default_value=None,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='pairwise_loss', full_name='protos.Loss.pairwise_loss', index=9,
      number=106, type=11, cpp_type=10, label=1,
      has_default_value=False, default_value=None,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='pairwise_focal_loss', full_name='protos.Loss.pairwise_focal_loss', index=10,
      number=107, type=11, cpp_type=10, label=1,
      has_default_value=False, default_value=None,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='pairwise_logistic_loss', full_name='protos.Loss.pairwise_logistic_loss', index=11,
      number=108, type=11, cpp_type=10, label=1,
      has_default_value=False, default_value=None,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='jrc_loss', full_name='protos.Loss.jrc_loss', index=12,
      number=109, type=11, cpp_type=10, label=1,
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
    _descriptor.OneofDescriptor(
      name='loss_param', full_name='protos.Loss.loss_param',
      index=0, containing_type=None, fields=[]),
  ],
  serialized_start=46,
  serialized_end=660,
)


_SOFTMAXCROSSENTROPYWITHNEGATIVEMINING = _descriptor.Descriptor(
  name='SoftmaxCrossEntropyWithNegativeMining',
  full_name='protos.SoftmaxCrossEntropyWithNegativeMining',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  fields=[
    _descriptor.FieldDescriptor(
      name='num_negative_samples', full_name='protos.SoftmaxCrossEntropyWithNegativeMining.num_negative_samples', index=0,
      number=1, type=13, cpp_type=3, label=2,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='margin', full_name='protos.SoftmaxCrossEntropyWithNegativeMining.margin', index=1,
      number=2, type=2, cpp_type=6, label=2,
      has_default_value=True, default_value=float(0),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='gamma', full_name='protos.SoftmaxCrossEntropyWithNegativeMining.gamma', index=2,
      number=3, type=2, cpp_type=6, label=2,
      has_default_value=True, default_value=float(1),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='coefficient_of_support_vector', full_name='protos.SoftmaxCrossEntropyWithNegativeMining.coefficient_of_support_vector', index=3,
      number=4, type=2, cpp_type=6, label=2,
      has_default_value=True, default_value=float(1),
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
  serialized_start=663,
  serialized_end=811,
)


_CIRCLELOSS = _descriptor.Descriptor(
  name='CircleLoss',
  full_name='protos.CircleLoss',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  fields=[
    _descriptor.FieldDescriptor(
      name='margin', full_name='protos.CircleLoss.margin', index=0,
      number=1, type=2, cpp_type=6, label=2,
      has_default_value=True, default_value=float(0.25),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='gamma', full_name='protos.CircleLoss.gamma', index=1,
      number=2, type=2, cpp_type=6, label=2,
      has_default_value=True, default_value=float(32),
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
  serialized_start=813,
  serialized_end=866,
)


_MULTISIMILARITYLOSS = _descriptor.Descriptor(
  name='MultiSimilarityLoss',
  full_name='protos.MultiSimilarityLoss',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  fields=[
    _descriptor.FieldDescriptor(
      name='alpha', full_name='protos.MultiSimilarityLoss.alpha', index=0,
      number=1, type=2, cpp_type=6, label=2,
      has_default_value=True, default_value=float(2),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='beta', full_name='protos.MultiSimilarityLoss.beta', index=1,
      number=2, type=2, cpp_type=6, label=2,
      has_default_value=True, default_value=float(50),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='lamb', full_name='protos.MultiSimilarityLoss.lamb', index=2,
      number=3, type=2, cpp_type=6, label=2,
      has_default_value=True, default_value=float(1),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='eps', full_name='protos.MultiSimilarityLoss.eps', index=3,
      number=4, type=2, cpp_type=6, label=2,
      has_default_value=True, default_value=float(0.1),
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
  serialized_start=868,
  serialized_end=960,
)


_F1REWEIGHEDLOSS = _descriptor.Descriptor(
  name='F1ReweighedLoss',
  full_name='protos.F1ReweighedLoss',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  fields=[
    _descriptor.FieldDescriptor(
      name='f1_beta_square', full_name='protos.F1ReweighedLoss.f1_beta_square', index=0,
      number=1, type=2, cpp_type=6, label=2,
      has_default_value=True, default_value=float(1),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='label_smoothing', full_name='protos.F1ReweighedLoss.label_smoothing', index=1,
      number=2, type=2, cpp_type=6, label=2,
      has_default_value=True, default_value=float(0),
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
  serialized_start=962,
  serialized_end=1034,
)


_BINARYFOCALLOSS = _descriptor.Descriptor(
  name='BinaryFocalLoss',
  full_name='protos.BinaryFocalLoss',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  fields=[
    _descriptor.FieldDescriptor(
      name='gamma', full_name='protos.BinaryFocalLoss.gamma', index=0,
      number=1, type=2, cpp_type=6, label=2,
      has_default_value=True, default_value=float(2),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='alpha', full_name='protos.BinaryFocalLoss.alpha', index=1,
      number=2, type=2, cpp_type=6, label=1,
      has_default_value=False, default_value=float(0),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='ohem_ratio', full_name='protos.BinaryFocalLoss.ohem_ratio', index=2,
      number=3, type=2, cpp_type=6, label=1,
      has_default_value=True, default_value=float(1),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='label_smoothing', full_name='protos.BinaryFocalLoss.label_smoothing', index=3,
      number=4, type=2, cpp_type=6, label=1,
      has_default_value=True, default_value=float(0),
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
  serialized_start=1036,
  serialized_end=1137,
)


_PAIRWISELOSS = _descriptor.Descriptor(
  name='PairwiseLoss',
  full_name='protos.PairwiseLoss',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  fields=[
    _descriptor.FieldDescriptor(
      name='margin', full_name='protos.PairwiseLoss.margin', index=0,
      number=1, type=2, cpp_type=6, label=2,
      has_default_value=True, default_value=float(0),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='session_name', full_name='protos.PairwiseLoss.session_name', index=1,
      number=2, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=_b("").decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='temperature', full_name='protos.PairwiseLoss.temperature', index=2,
      number=3, type=2, cpp_type=6, label=1,
      has_default_value=True, default_value=float(1),
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
  serialized_start=1139,
  serialized_end=1218,
)


_PAIRWISEFOCALLOSS = _descriptor.Descriptor(
  name='PairwiseFocalLoss',
  full_name='protos.PairwiseFocalLoss',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  fields=[
    _descriptor.FieldDescriptor(
      name='gamma', full_name='protos.PairwiseFocalLoss.gamma', index=0,
      number=1, type=2, cpp_type=6, label=2,
      has_default_value=True, default_value=float(2),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='alpha', full_name='protos.PairwiseFocalLoss.alpha', index=1,
      number=2, type=2, cpp_type=6, label=1,
      has_default_value=False, default_value=float(0),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='hinge_margin', full_name='protos.PairwiseFocalLoss.hinge_margin', index=2,
      number=3, type=2, cpp_type=6, label=1,
      has_default_value=True, default_value=float(1),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='session_name', full_name='protos.PairwiseFocalLoss.session_name', index=3,
      number=4, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=_b("").decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='ohem_ratio', full_name='protos.PairwiseFocalLoss.ohem_ratio', index=4,
      number=5, type=2, cpp_type=6, label=1,
      has_default_value=True, default_value=float(1),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='temperature', full_name='protos.PairwiseFocalLoss.temperature', index=5,
      number=6, type=2, cpp_type=6, label=1,
      has_default_value=True, default_value=float(1),
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
  serialized_start=1221,
  serialized_end=1367,
)


_PAIRWISELOGISTICLOSS = _descriptor.Descriptor(
  name='PairwiseLogisticLoss',
  full_name='protos.PairwiseLogisticLoss',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  fields=[
    _descriptor.FieldDescriptor(
      name='temperature', full_name='protos.PairwiseLogisticLoss.temperature', index=0,
      number=1, type=2, cpp_type=6, label=2,
      has_default_value=True, default_value=float(1),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='session_name', full_name='protos.PairwiseLogisticLoss.session_name', index=1,
      number=2, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=_b("").decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='hinge_margin', full_name='protos.PairwiseLogisticLoss.hinge_margin', index=2,
      number=3, type=2, cpp_type=6, label=1,
      has_default_value=True, default_value=float(1),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='ohem_ratio', full_name='protos.PairwiseLogisticLoss.ohem_ratio', index=3,
      number=4, type=2, cpp_type=6, label=1,
      has_default_value=True, default_value=float(1),
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
  serialized_start=1369,
  serialized_end=1485,
)


_JRCLOSS = _descriptor.Descriptor(
  name='JRCLoss',
  full_name='protos.JRCLoss',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  fields=[
    _descriptor.FieldDescriptor(
      name='session_name', full_name='protos.JRCLoss.session_name', index=0,
      number=1, type=9, cpp_type=9, label=2,
      has_default_value=False, default_value=_b("").decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='alpha', full_name='protos.JRCLoss.alpha', index=1,
      number=2, type=2, cpp_type=6, label=1,
      has_default_value=True, default_value=float(0.5),
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
  serialized_start=1487,
  serialized_end=1538,
)

_LOSS.fields_by_name['loss_type'].enum_type = _LOSSTYPE
_LOSS.fields_by_name['f1_reweighted_loss'].message_type = _F1REWEIGHEDLOSS
_LOSS.fields_by_name['softmax_loss'].message_type = _SOFTMAXCROSSENTROPYWITHNEGATIVEMINING
_LOSS.fields_by_name['circle_loss'].message_type = _CIRCLELOSS
_LOSS.fields_by_name['multi_simi_loss'].message_type = _MULTISIMILARITYLOSS
_LOSS.fields_by_name['binary_focal_loss'].message_type = _BINARYFOCALLOSS
_LOSS.fields_by_name['pairwise_loss'].message_type = _PAIRWISELOSS
_LOSS.fields_by_name['pairwise_focal_loss'].message_type = _PAIRWISEFOCALLOSS
_LOSS.fields_by_name['pairwise_logistic_loss'].message_type = _PAIRWISELOGISTICLOSS
_LOSS.fields_by_name['jrc_loss'].message_type = _JRCLOSS
_LOSS.oneofs_by_name['loss_param'].fields.append(
  _LOSS.fields_by_name['f1_reweighted_loss'])
_LOSS.fields_by_name['f1_reweighted_loss'].containing_oneof = _LOSS.oneofs_by_name['loss_param']
_LOSS.oneofs_by_name['loss_param'].fields.append(
  _LOSS.fields_by_name['softmax_loss'])
_LOSS.fields_by_name['softmax_loss'].containing_oneof = _LOSS.oneofs_by_name['loss_param']
_LOSS.oneofs_by_name['loss_param'].fields.append(
  _LOSS.fields_by_name['circle_loss'])
_LOSS.fields_by_name['circle_loss'].containing_oneof = _LOSS.oneofs_by_name['loss_param']
_LOSS.oneofs_by_name['loss_param'].fields.append(
  _LOSS.fields_by_name['multi_simi_loss'])
_LOSS.fields_by_name['multi_simi_loss'].containing_oneof = _LOSS.oneofs_by_name['loss_param']
_LOSS.oneofs_by_name['loss_param'].fields.append(
  _LOSS.fields_by_name['binary_focal_loss'])
_LOSS.fields_by_name['binary_focal_loss'].containing_oneof = _LOSS.oneofs_by_name['loss_param']
_LOSS.oneofs_by_name['loss_param'].fields.append(
  _LOSS.fields_by_name['pairwise_loss'])
_LOSS.fields_by_name['pairwise_loss'].containing_oneof = _LOSS.oneofs_by_name['loss_param']
_LOSS.oneofs_by_name['loss_param'].fields.append(
  _LOSS.fields_by_name['pairwise_focal_loss'])
_LOSS.fields_by_name['pairwise_focal_loss'].containing_oneof = _LOSS.oneofs_by_name['loss_param']
_LOSS.oneofs_by_name['loss_param'].fields.append(
  _LOSS.fields_by_name['pairwise_logistic_loss'])
_LOSS.fields_by_name['pairwise_logistic_loss'].containing_oneof = _LOSS.oneofs_by_name['loss_param']
_LOSS.oneofs_by_name['loss_param'].fields.append(
  _LOSS.fields_by_name['jrc_loss'])
_LOSS.fields_by_name['jrc_loss'].containing_oneof = _LOSS.oneofs_by_name['loss_param']
DESCRIPTOR.message_types_by_name['Loss'] = _LOSS
DESCRIPTOR.message_types_by_name['SoftmaxCrossEntropyWithNegativeMining'] = _SOFTMAXCROSSENTROPYWITHNEGATIVEMINING
DESCRIPTOR.message_types_by_name['CircleLoss'] = _CIRCLELOSS
DESCRIPTOR.message_types_by_name['MultiSimilarityLoss'] = _MULTISIMILARITYLOSS
DESCRIPTOR.message_types_by_name['F1ReweighedLoss'] = _F1REWEIGHEDLOSS
DESCRIPTOR.message_types_by_name['BinaryFocalLoss'] = _BINARYFOCALLOSS
DESCRIPTOR.message_types_by_name['PairwiseLoss'] = _PAIRWISELOSS
DESCRIPTOR.message_types_by_name['PairwiseFocalLoss'] = _PAIRWISEFOCALLOSS
DESCRIPTOR.message_types_by_name['PairwiseLogisticLoss'] = _PAIRWISELOGISTICLOSS
DESCRIPTOR.message_types_by_name['JRCLoss'] = _JRCLOSS
DESCRIPTOR.enum_types_by_name['LossType'] = _LOSSTYPE
_sym_db.RegisterFileDescriptor(DESCRIPTOR)

Loss = _reflection.GeneratedProtocolMessageType('Loss', (_message.Message,), dict(
  DESCRIPTOR = _LOSS,
  __module__ = 'easy_rec.python.protos.loss_pb2'
  # @@protoc_insertion_point(class_scope:protos.Loss)
  ))
_sym_db.RegisterMessage(Loss)

SoftmaxCrossEntropyWithNegativeMining = _reflection.GeneratedProtocolMessageType('SoftmaxCrossEntropyWithNegativeMining', (_message.Message,), dict(
  DESCRIPTOR = _SOFTMAXCROSSENTROPYWITHNEGATIVEMINING,
  __module__ = 'easy_rec.python.protos.loss_pb2'
  # @@protoc_insertion_point(class_scope:protos.SoftmaxCrossEntropyWithNegativeMining)
  ))
_sym_db.RegisterMessage(SoftmaxCrossEntropyWithNegativeMining)

CircleLoss = _reflection.GeneratedProtocolMessageType('CircleLoss', (_message.Message,), dict(
  DESCRIPTOR = _CIRCLELOSS,
  __module__ = 'easy_rec.python.protos.loss_pb2'
  # @@protoc_insertion_point(class_scope:protos.CircleLoss)
  ))
_sym_db.RegisterMessage(CircleLoss)

MultiSimilarityLoss = _reflection.GeneratedProtocolMessageType('MultiSimilarityLoss', (_message.Message,), dict(
  DESCRIPTOR = _MULTISIMILARITYLOSS,
  __module__ = 'easy_rec.python.protos.loss_pb2'
  # @@protoc_insertion_point(class_scope:protos.MultiSimilarityLoss)
  ))
_sym_db.RegisterMessage(MultiSimilarityLoss)

F1ReweighedLoss = _reflection.GeneratedProtocolMessageType('F1ReweighedLoss', (_message.Message,), dict(
  DESCRIPTOR = _F1REWEIGHEDLOSS,
  __module__ = 'easy_rec.python.protos.loss_pb2'
  # @@protoc_insertion_point(class_scope:protos.F1ReweighedLoss)
  ))
_sym_db.RegisterMessage(F1ReweighedLoss)

BinaryFocalLoss = _reflection.GeneratedProtocolMessageType('BinaryFocalLoss', (_message.Message,), dict(
  DESCRIPTOR = _BINARYFOCALLOSS,
  __module__ = 'easy_rec.python.protos.loss_pb2'
  # @@protoc_insertion_point(class_scope:protos.BinaryFocalLoss)
  ))
_sym_db.RegisterMessage(BinaryFocalLoss)

PairwiseLoss = _reflection.GeneratedProtocolMessageType('PairwiseLoss', (_message.Message,), dict(
  DESCRIPTOR = _PAIRWISELOSS,
  __module__ = 'easy_rec.python.protos.loss_pb2'
  # @@protoc_insertion_point(class_scope:protos.PairwiseLoss)
  ))
_sym_db.RegisterMessage(PairwiseLoss)

PairwiseFocalLoss = _reflection.GeneratedProtocolMessageType('PairwiseFocalLoss', (_message.Message,), dict(
  DESCRIPTOR = _PAIRWISEFOCALLOSS,
  __module__ = 'easy_rec.python.protos.loss_pb2'
  # @@protoc_insertion_point(class_scope:protos.PairwiseFocalLoss)
  ))
_sym_db.RegisterMessage(PairwiseFocalLoss)

PairwiseLogisticLoss = _reflection.GeneratedProtocolMessageType('PairwiseLogisticLoss', (_message.Message,), dict(
  DESCRIPTOR = _PAIRWISELOGISTICLOSS,
  __module__ = 'easy_rec.python.protos.loss_pb2'
  # @@protoc_insertion_point(class_scope:protos.PairwiseLogisticLoss)
  ))
_sym_db.RegisterMessage(PairwiseLogisticLoss)

JRCLoss = _reflection.GeneratedProtocolMessageType('JRCLoss', (_message.Message,), dict(
  DESCRIPTOR = _JRCLOSS,
  __module__ = 'easy_rec.python.protos.loss_pb2'
  # @@protoc_insertion_point(class_scope:protos.JRCLoss)
  ))
_sym_db.RegisterMessage(JRCLoss)


# @@protoc_insertion_point(module_scope)