б▄#
є%╓%
:
Add
x"T
y"T
z"T"
Ttype:
2	
x
Assign
ref"TА

value"T

output_ref"TА"	
Ttype"
validate_shapebool("
use_lockingbool(Ш
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
q
DynamicPartition	
data"T

partitions
outputs"T*num_partitions"
num_partitionsint(0"	
Ttype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
9
FloorMod
x"T
y"T
z"T"
Ttype:

2	
н
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
2
L2Loss
t"T
output"T"
Ttype:
2
:
Less
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
8
Maximum
x"T
y"T
z"T"
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
[
ParallelDynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
Н
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
╖
SparseFillEmptyRows
indices	
values"T
dense_shape	
default_value"T
output_indices	
output_values"T
empty_row_indicator

reverse_index_map	"	
Ttype
h
SparseReshape
input_indices	
input_shape	
	new_shape	
output_indices	
output_shape	
z
SparseSegmentMean	
data"T
indices"Tidx
segment_ids
output"T"
Ttype:
2"
Tidxtype0:
2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
Ў
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
c
StringSplit	
input
	delimiter
indices	

values	
shape	"

skip_emptybool(
G
StringToHashBucketFast	
input

output	"
num_bucketsint(0
:
Sub
x"T
y"T
z"T"
Ttype:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
А
TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
P
Unique
x"T
y"T
idx"out_idx"	
Ttype"
out_idxtype0:
2	
s

VariableV2
ref"dtypeА"
shapeshape"
dtypetype"
	containerstring "
shared_namestring И
E
Where

input"T	
index	"%
Ttype0
:
2	

&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.14.02unknown8╬∙

global_step/Initializer/zerosConst*
value	B	 R *
_class
loc:@global_step*
_output_shapes
: *
dtype0	
k
global_step
VariableV2*
shape: *
_class
loc:@global_step*
_output_shapes
: *
dtype0	
Й
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
_class
loc:@global_step*
T0	*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
_class
loc:@global_step*
T0	*
_output_shapes
: 
b
input_1Placeholder*#
_output_shapes
:         *
dtype0*
shape:         
b
input_2Placeholder*
dtype0*
shape:         *#
_output_shapes
:         
b
input_3Placeholder*#
_output_shapes
:         *
dtype0*
shape:         
b
input_4Placeholder*#
_output_shapes
:         *
shape:         *
dtype0
b
input_5Placeholder*
shape:         *
dtype0*#
_output_shapes
:         
b
input_6Placeholder*
shape:         *#
_output_shapes
:         *
dtype0
b
input_7Placeholder*#
_output_shapes
:         *
dtype0*
shape:         
b
input_8Placeholder*
shape:         *#
_output_shapes
:         *
dtype0
b
input_9Placeholder*
dtype0*#
_output_shapes
:         *
shape:         
c
input_10Placeholder*#
_output_shapes
:         *
shape:         *
dtype0
c
input_11Placeholder*
dtype0*#
_output_shapes
:         *
shape:         
c
input_12Placeholder*
dtype0*#
_output_shapes
:         *
shape:         
c
input_13Placeholder*
shape:         *
dtype0*#
_output_shapes
:         
c
input_14Placeholder*
dtype0*#
_output_shapes
:         *
shape:         
c
input_15Placeholder*
dtype0*#
_output_shapes
:         *
shape:         
c
input_16Placeholder*
shape:         *
dtype0*#
_output_shapes
:         
c
input_17Placeholder*#
_output_shapes
:         *
shape:         *
dtype0
c
input_18Placeholder*
dtype0*#
_output_shapes
:         *
shape:         
S
StringSplit/ConstConst*
dtype0*
value	B B*
_output_shapes
: 
А
StringSplit/StringSplitStringSplitinput_1StringSplit/Const*<
_output_shapes*
(:         :         :
U
StringSplit_1/ConstConst*
dtype0*
value	B B*
_output_shapes
: 
Д
StringSplit_1/StringSplitStringSplitinput_2StringSplit_1/Const*<
_output_shapes*
(:         :         :
U
StringSplit_2/ConstConst*
dtype0*
value	B B*
_output_shapes
: 
Д
StringSplit_2/StringSplitStringSplitinput_3StringSplit_2/Const*<
_output_shapes*
(:         :         :
U
StringSplit_3/ConstConst*
dtype0*
_output_shapes
: *
value	B B
Д
StringSplit_3/StringSplitStringSplitinput_4StringSplit_3/Const*<
_output_shapes*
(:         :         :
U
StringSplit_4/ConstConst*
_output_shapes
: *
value	B B*
dtype0
Д
StringSplit_4/StringSplitStringSplitinput_5StringSplit_4/Const*<
_output_shapes*
(:         :         :
U
StringSplit_5/ConstConst*
value	B B*
_output_shapes
: *
dtype0
Д
StringSplit_5/StringSplitStringSplitinput_6StringSplit_5/Const*<
_output_shapes*
(:         :         :
U
StringSplit_6/ConstConst*
dtype0*
value	B B*
_output_shapes
: 
Д
StringSplit_6/StringSplitStringSplitinput_7StringSplit_6/Const*<
_output_shapes*
(:         :         :
U
StringSplit_7/ConstConst*
value	B B*
dtype0*
_output_shapes
: 
Д
StringSplit_7/StringSplitStringSplitinput_8StringSplit_7/Const*<
_output_shapes*
(:         :         :
U
StringSplit_8/ConstConst*
dtype0*
_output_shapes
: *
value	B B
Д
StringSplit_8/StringSplitStringSplitinput_9StringSplit_8/Const*<
_output_shapes*
(:         :         :
U
StringSplit_9/ConstConst*
_output_shapes
: *
dtype0*
value	B B
Е
StringSplit_9/StringSplitStringSplitinput_10StringSplit_9/Const*<
_output_shapes*
(:         :         :
V
StringSplit_10/ConstConst*
dtype0*
_output_shapes
: *
value	B B
З
StringSplit_10/StringSplitStringSplitinput_11StringSplit_10/Const*<
_output_shapes*
(:         :         :
V
StringSplit_11/ConstConst*
_output_shapes
: *
dtype0*
value	B B
З
StringSplit_11/StringSplitStringSplitinput_12StringSplit_11/Const*<
_output_shapes*
(:         :         :
V
StringSplit_12/ConstConst*
value	B B*
dtype0*
_output_shapes
: 
З
StringSplit_12/StringSplitStringSplitinput_13StringSplit_12/Const*<
_output_shapes*
(:         :         :
V
ToFloatCastinput_14*#
_output_shapes
:         *

DstT0*

SrcT0
<
ShapeShapeToFloat*
T0*
_output_shapes
:
]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
_
strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
н
strided_sliceStridedSliceShapestrided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
Index0*
shrink_axis_mask*
T0*
_output_shapes
: 
N
ToInt64Caststrided_slice*
_output_shapes
: *

SrcT0*

DstT0	
M
range/startConst*
value	B	 R *
dtype0	*
_output_shapes
: 
M
range/deltaConst*
_output_shapes
: *
value	B	 R*
dtype0	
b
rangeRangerange/startToInt64range/delta*

Tidx0	*#
_output_shapes
:         
O
range_1/startConst*
_output_shapes
: *
value	B	 R *
dtype0	
O
range_1/limitConst*
value	B	 R*
_output_shapes
: *
dtype0	
O
range_1/deltaConst*
_output_shapes
: *
value	B	 R*
dtype0	
e
range_1Rangerange_1/startrange_1/limitrange_1/delta*

Tidx0	*
_output_shapes
:
f
strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB"        
h
strided_slice_1/stack_1Const*
_output_shapes
:*
valueB"        *
dtype0
h
strided_slice_1/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
х
strided_slice_1StridedSlicerangestrided_slice_1/stackstrided_slice_1/stack_1strided_slice_1/stack_2*

begin_mask*
Index0*'
_output_shapes
:         *
end_mask*
T0	*
new_axis_mask
f
strided_slice_2/stackConst*
dtype0*
valueB"        *
_output_shapes
:
h
strided_slice_2/stack_1Const*
valueB"        *
dtype0*
_output_shapes
:
h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
▐
strided_slice_2StridedSlicerange_1strided_slice_2/stackstrided_slice_2/stack_1strided_slice_2/stack_2*
Index0*

begin_mask*
T0	*
_output_shapes

:*
new_axis_mask*
end_mask
_
Tile/multiplesConst*
_output_shapes
:*
valueB"      *
dtype0
_
TileTilestrided_slice_1Tile/multiples*
T0	*'
_output_shapes
:         
L
Tile_1/CastCastToInt64*

SrcT0	*
_output_shapes
: *

DstT0
T
Tile_1/multiples/1Const*
value	B :*
_output_shapes
: *
dtype0
g
Tile_1/multiplesPackTile_1/CastTile_1/multiples/1*
N*
T0*
_output_shapes
:
c
Tile_1Tilestrided_slice_2Tile_1/multiples*
T0	*'
_output_shapes
:         
^
Reshape/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
Y
ReshapeReshapeTileReshape/shape*
T0	*'
_output_shapes
:         
`
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"       
_
	Reshape_1ReshapeTile_1Reshape_1/shape*
T0	*'
_output_shapes
:         
M
concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
n
concatConcatV2Reshape	Reshape_1concat/axis*
N*
T0	*'
_output_shapes
:         
f
strided_slice_3/stackConst*
valueB"        *
dtype0*
_output_shapes
:
h
strided_slice_3/stack_1Const*
_output_shapes
:*
valueB"       *
dtype0
h
strided_slice_3/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
ш
strided_slice_3StridedSlice	Reshape_1strided_slice_3/stackstrided_slice_3/stack_1strided_slice_3/stack_2*
end_mask*#
_output_shapes
:         *
T0	*
shrink_axis_mask*

begin_mask*
Index0
\
SparseTensor/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
s
SparseTensor/dense_shapePackToInt64SparseTensor/dense_shape/1*
N*
_output_shapes
:*
T0	
b
Reshape_2/shapeConst*
valueB:
         *
_output_shapes
:*
dtype0
\
	Reshape_2ReshapeToFloatReshape_2/shape*#
_output_shapes
:         *
T0
^
SparseTensor_1/dense_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
w
SparseTensor_1/dense_shapePackToInt64SparseTensor_1/dense_shape/1*
N*
T0	*
_output_shapes
:
V
StringSplit_13/ConstConst*
_output_shapes
: *
value	B B*
dtype0
З
StringSplit_13/StringSplitStringSplitinput_15StringSplit_13/Const*<
_output_shapes*
(:         :         :
V
StringSplit_14/ConstConst*
dtype0*
value	B B*
_output_shapes
: 
З
StringSplit_14/StringSplitStringSplitinput_16StringSplit_14/Const*<
_output_shapes*
(:         :         :
V
StringSplit_15/ConstConst*
_output_shapes
: *
value	B B*
dtype0
З
StringSplit_15/StringSplitStringSplitinput_17StringSplit_15/Const*<
_output_shapes*
(:         :         :
V
StringSplit_16/ConstConst*
value	B B*
dtype0*
_output_shapes
: 
З
StringSplit_16/StringSplitStringSplitinput_18StringSplit_16/Const*<
_output_shapes*
(:         :         :
Ш
'input_layer/adgroup_id_embedding/lookupStringToHashBucketFastStringSplit_8/StringSplit:1*
num_bucketsаН*#
_output_shapes
:         
э
Uinput_layer/adgroup_id_embedding/embedding_weights/Initializer/truncated_normal/shapeConst*
valueB"аЖ    *
dtype0*
_output_shapes
:*E
_class;
97loc:@input_layer/adgroup_id_embedding/embedding_weights
р
Tinput_layer/adgroup_id_embedding/embedding_weights/Initializer/truncated_normal/meanConst*
dtype0*
valueB
 *    *E
_class;
97loc:@input_layer/adgroup_id_embedding/embedding_weights*
_output_shapes
: 
т
Vinput_layer/adgroup_id_embedding/embedding_weights/Initializer/truncated_normal/stddevConst*
_output_shapes
: *
valueB
 *
╫#;*E
_class;
97loc:@input_layer/adgroup_id_embedding/embedding_weights*
dtype0
╚
_input_layer/adgroup_id_embedding/embedding_weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalUinput_layer/adgroup_id_embedding/embedding_weights/Initializer/truncated_normal/shape*
dtype0*
T0* 
_output_shapes
:
аН*E
_class;
97loc:@input_layer/adgroup_id_embedding/embedding_weights
Е
Sinput_layer/adgroup_id_embedding/embedding_weights/Initializer/truncated_normal/mulMul_input_layer/adgroup_id_embedding/embedding_weights/Initializer/truncated_normal/TruncatedNormalVinput_layer/adgroup_id_embedding/embedding_weights/Initializer/truncated_normal/stddev* 
_output_shapes
:
аН*E
_class;
97loc:@input_layer/adgroup_id_embedding/embedding_weights*
T0
є
Oinput_layer/adgroup_id_embedding/embedding_weights/Initializer/truncated_normalAddSinput_layer/adgroup_id_embedding/embedding_weights/Initializer/truncated_normal/mulTinput_layer/adgroup_id_embedding/embedding_weights/Initializer/truncated_normal/mean* 
_output_shapes
:
аН*
T0*E
_class;
97loc:@input_layer/adgroup_id_embedding/embedding_weights
═
2input_layer/adgroup_id_embedding/embedding_weights
VariableV2* 
_output_shapes
:
аН*
dtype0*E
_class;
97loc:@input_layer/adgroup_id_embedding/embedding_weights*
shape:
аН
║
9input_layer/adgroup_id_embedding/embedding_weights/AssignAssign2input_layer/adgroup_id_embedding/embedding_weightsOinput_layer/adgroup_id_embedding/embedding_weights/Initializer/truncated_normal*
T0*E
_class;
97loc:@input_layer/adgroup_id_embedding/embedding_weights* 
_output_shapes
:
аН
щ
7input_layer/adgroup_id_embedding/embedding_weights/readIdentity2input_layer/adgroup_id_embedding/embedding_weights*
T0* 
_output_shapes
:
аН*E
_class;
97loc:@input_layer/adgroup_id_embedding/embedding_weights
У
Iinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
Т
Hinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/Slice/sizeConst*
dtype0*
_output_shapes
:*
valueB:
░
Cinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/SliceSliceStringSplit_8/StringSplit:2Iinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/Slice/beginHinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/Slice/size*
T0	*
_output_shapes
:*
Index0
Н
Cinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/ConstConst*
valueB: *
_output_shapes
:*
dtype0
ї
Binput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/ProdProdCinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/SliceCinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/Const*
T0	*
_output_shapes
: 
Р
Ninput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
value	B :*
dtype0
Н
Kinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/GatherV2/axisConst*
dtype0*
value	B : *
_output_shapes
: 
╨
Finput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/GatherV2GatherV2StringSplit_8/StringSplit:2Ninput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/GatherV2/indicesKinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/GatherV2/axis*
_output_shapes
: *
Tindices0*
Tparams0	*
Taxis0
Ж
Dinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/Cast/xPackBinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/ProdFinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/GatherV2*
N*
T0	*
_output_shapes
:
Й
Kinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/SparseReshapeSparseReshapeStringSplit_8/StringSplitStringSplit_8/StringSplit:2Dinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/Cast/x*-
_output_shapes
:         :
╖
Tinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/SparseReshape/IdentityIdentity'input_layer/adgroup_id_embedding/lookup*
T0	*#
_output_shapes
:         
О
Linput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/GreaterEqual/yConst*
dtype0	*
value	B	 R *
_output_shapes
: 
м
Jinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/GreaterEqualGreaterEqualTinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/SparseReshape/IdentityLinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/GreaterEqual/y*#
_output_shapes
:         *
T0	
┴
Cinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/WhereWhereJinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/GreaterEqual*'
_output_shapes
:         
Ю
Kinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
         
Р
Einput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/ReshapeReshapeCinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/WhereKinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/Reshape/shape*
T0	*#
_output_shapes
:         
П
Minput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/GatherV2_1/axisConst*
dtype0*
value	B : *
_output_shapes
: 
М
Hinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/GatherV2_1GatherV2Kinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/SparseReshapeEinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/ReshapeMinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/GatherV2_1/axis*'
_output_shapes
:         *
Tindices0	*
Tparams0	*
Taxis0
П
Minput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
value	B : *
dtype0
С
Hinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/GatherV2_2GatherV2Tinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/SparseReshape/IdentityEinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/ReshapeMinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/GatherV2_2/axis*
Tindices0	*
Tparams0	*
Taxis0*#
_output_shapes
:         
╞
Finput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/IdentityIdentityMinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/SparseReshape:1*
_output_shapes
:*
T0	
Щ
Winput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
Р
einput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsHinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/GatherV2_1Hinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/GatherV2_2Finput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/IdentityWinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:         :         :         :         
║
iinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB"        
╝
kinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
╝
kinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
Ф
cinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSliceeinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsiinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/embedding_lookup_sparse/strided_slice/stackkinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1kinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
shrink_axis_mask*#
_output_shapes
:         *

begin_mask*
end_mask*
T0	
Д
Zinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/embedding_lookup_sparse/CastCastcinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/embedding_lookup_sparse/strided_slice*

SrcT0	*#
_output_shapes
:         *

DstT0
М
\input_layer/adgroup_id_embedding/adgroup_id_embedding_weights/embedding_lookup_sparse/UniqueUniqueginput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:         :         *
T0	
Ї
kinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*
dtype0*
_output_shapes
: *E
_class;
97loc:@input_layer/adgroup_id_embedding/embedding_weights*
value	B : 
Т
finput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV27input_layer/adgroup_id_embedding/embedding_weights/read\input_layer/adgroup_id_embedding/adgroup_id_embedding_weights/embedding_lookup_sparse/Uniquekinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis*'
_output_shapes
:         *
Tparams0*
Taxis0*
Tindices0	*E
_class;
97loc:@input_layer/adgroup_id_embedding/embedding_weights
Х
oinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentityfinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/embedding_lookup_sparse/embedding_lookup*
T0*'
_output_shapes
:         
╔
Uinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/embedding_lookup_sparseSparseSegmentMeanoinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity^input_layer/adgroup_id_embedding/adgroup_id_embedding_weights/embedding_lookup_sparse/Unique:1Zinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/embedding_lookup_sparse/Cast*'
_output_shapes
:         *
T0
Ю
Minput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/Reshape_1/shapeConst*
valueB"       *
_output_shapes
:*
dtype0
╝
Ginput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/Reshape_1Reshapeginput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:2Minput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/Reshape_1/shape*
T0
*'
_output_shapes
:         
╚
Cinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/ShapeShapeUinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/embedding_lookup_sparse*
T0*
_output_shapes
:
Ы
Qinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
Э
Sinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Э
Sinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
у
Kinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/strided_sliceStridedSliceCinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/ShapeQinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/strided_slice/stackSinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/strided_slice/stack_1Sinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/strided_slice/stack_2*
shrink_axis_mask*
_output_shapes
: *
T0*
Index0
З
Einput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/stack/0Const*
_output_shapes
: *
value	B :*
dtype0
Н
Cinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/stackPackEinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/stack/0Kinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/strided_slice*
T0*
N*
_output_shapes
:
У
Binput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/TileTileGinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/Reshape_1Cinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/stack*0
_output_shapes
:                  *
T0

▐
Hinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/zeros_like	ZerosLikeUinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/embedding_lookup_sparse*'
_output_shapes
:         *
T0
▐
=input_layer/adgroup_id_embedding/adgroup_id_embedding_weightsSelectBinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/TileHinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/zeros_likeUinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/embedding_lookup_sparse*'
_output_shapes
:         *
T0
Э
Dinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/Cast_1CastStringSplit_8/StringSplit:2*

SrcT0	*

DstT0*
_output_shapes
:
Х
Kinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
Ф
Jinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
valueB:*
dtype0
▀
Einput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/Slice_1SliceDinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/Cast_1Kinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/Slice_1/beginJinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/Slice_1/size*
_output_shapes
:*
Index0*
T0
▓
Einput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/Shape_1Shape=input_layer/adgroup_id_embedding/adgroup_id_embedding_weights*
_output_shapes
:*
T0
Х
Kinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:
Э
Jinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
         
р
Einput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/Slice_2SliceEinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/Shape_1Kinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/Slice_2/beginJinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/Slice_2/size*
_output_shapes
:*
T0*
Index0
Л
Iinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
╫
Dinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/concatConcatV2Einput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/Slice_1Einput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/Slice_2Iinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/concat/axis*
N*
_output_shapes
:*
T0
Й
Ginput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/Reshape_2Reshape=input_layer/adgroup_id_embedding/adgroup_id_embedding_weightsDinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/concat*
T0*'
_output_shapes
:         
Э
&input_layer/adgroup_id_embedding/ShapeShapeGinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/Reshape_2*
_output_shapes
:*
T0
~
4input_layer/adgroup_id_embedding/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
А
6input_layer/adgroup_id_embedding/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
А
6input_layer/adgroup_id_embedding/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
╥
.input_layer/adgroup_id_embedding/strided_sliceStridedSlice&input_layer/adgroup_id_embedding/Shape4input_layer/adgroup_id_embedding/strided_slice/stack6input_layer/adgroup_id_embedding/strided_slice/stack_16input_layer/adgroup_id_embedding/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
r
0input_layer/adgroup_id_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
╞
.input_layer/adgroup_id_embedding/Reshape/shapePack.input_layer/adgroup_id_embedding/strided_slice0input_layer/adgroup_id_embedding/Reshape/shape/1*
N*
T0*
_output_shapes
:
▐
(input_layer/adgroup_id_embedding/ReshapeReshapeGinput_layer/adgroup_id_embedding/adgroup_id_embedding_weights/Reshape_2.input_layer/adgroup_id_embedding/Reshape/shape*'
_output_shapes
:         *
T0
Ф
"input_layer/brand_embedding/lookupStringToHashBucketFastStringSplit_12/StringSplit:1*
num_bucketsаН*#
_output_shapes
:         
у
Pinput_layer/brand_embedding/embedding_weights/Initializer/truncated_normal/shapeConst*
_output_shapes
:*
dtype0*@
_class6
42loc:@input_layer/brand_embedding/embedding_weights*
valueB"аЖ    
╓
Oinput_layer/brand_embedding/embedding_weights/Initializer/truncated_normal/meanConst*
dtype0*
valueB
 *    *
_output_shapes
: *@
_class6
42loc:@input_layer/brand_embedding/embedding_weights
╪
Qinput_layer/brand_embedding/embedding_weights/Initializer/truncated_normal/stddevConst*@
_class6
42loc:@input_layer/brand_embedding/embedding_weights*
valueB
 *
╫#;*
_output_shapes
: *
dtype0
╣
Zinput_layer/brand_embedding/embedding_weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalPinput_layer/brand_embedding/embedding_weights/Initializer/truncated_normal/shape*@
_class6
42loc:@input_layer/brand_embedding/embedding_weights*
dtype0*
T0* 
_output_shapes
:
аН
ё
Ninput_layer/brand_embedding/embedding_weights/Initializer/truncated_normal/mulMulZinput_layer/brand_embedding/embedding_weights/Initializer/truncated_normal/TruncatedNormalQinput_layer/brand_embedding/embedding_weights/Initializer/truncated_normal/stddev*
T0* 
_output_shapes
:
аН*@
_class6
42loc:@input_layer/brand_embedding/embedding_weights
▀
Jinput_layer/brand_embedding/embedding_weights/Initializer/truncated_normalAddNinput_layer/brand_embedding/embedding_weights/Initializer/truncated_normal/mulOinput_layer/brand_embedding/embedding_weights/Initializer/truncated_normal/mean*@
_class6
42loc:@input_layer/brand_embedding/embedding_weights*
T0* 
_output_shapes
:
аН
├
-input_layer/brand_embedding/embedding_weights
VariableV2* 
_output_shapes
:
аН*@
_class6
42loc:@input_layer/brand_embedding/embedding_weights*
dtype0*
shape:
аН
ж
4input_layer/brand_embedding/embedding_weights/AssignAssign-input_layer/brand_embedding/embedding_weightsJinput_layer/brand_embedding/embedding_weights/Initializer/truncated_normal*
T0*@
_class6
42loc:@input_layer/brand_embedding/embedding_weights* 
_output_shapes
:
аН
┌
2input_layer/brand_embedding/embedding_weights/readIdentity-input_layer/brand_embedding/embedding_weights*
T0* 
_output_shapes
:
аН*@
_class6
42loc:@input_layer/brand_embedding/embedding_weights
Й
?input_layer/brand_embedding/brand_embedding_weights/Slice/beginConst*
dtype0*
valueB: *
_output_shapes
:
И
>input_layer/brand_embedding/brand_embedding_weights/Slice/sizeConst*
valueB:*
_output_shapes
:*
dtype0
У
9input_layer/brand_embedding/brand_embedding_weights/SliceSliceStringSplit_12/StringSplit:2?input_layer/brand_embedding/brand_embedding_weights/Slice/begin>input_layer/brand_embedding/brand_embedding_weights/Slice/size*
T0	*
_output_shapes
:*
Index0
Г
9input_layer/brand_embedding/brand_embedding_weights/ConstConst*
_output_shapes
:*
valueB: *
dtype0
╫
8input_layer/brand_embedding/brand_embedding_weights/ProdProd9input_layer/brand_embedding/brand_embedding_weights/Slice9input_layer/brand_embedding/brand_embedding_weights/Const*
T0	*
_output_shapes
: 
Ж
Dinput_layer/brand_embedding/brand_embedding_weights/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
Г
Ainput_layer/brand_embedding/brand_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
│
<input_layer/brand_embedding/brand_embedding_weights/GatherV2GatherV2StringSplit_12/StringSplit:2Dinput_layer/brand_embedding/brand_embedding_weights/GatherV2/indicesAinput_layer/brand_embedding/brand_embedding_weights/GatherV2/axis*
Taxis0*
Tindices0*
_output_shapes
: *
Tparams0	
ш
:input_layer/brand_embedding/brand_embedding_weights/Cast/xPack8input_layer/brand_embedding/brand_embedding_weights/Prod<input_layer/brand_embedding/brand_embedding_weights/GatherV2*
T0	*
_output_shapes
:*
N
ў
Ainput_layer/brand_embedding/brand_embedding_weights/SparseReshapeSparseReshapeStringSplit_12/StringSplitStringSplit_12/StringSplit:2:input_layer/brand_embedding/brand_embedding_weights/Cast/x*-
_output_shapes
:         :
и
Jinput_layer/brand_embedding/brand_embedding_weights/SparseReshape/IdentityIdentity"input_layer/brand_embedding/lookup*#
_output_shapes
:         *
T0	
Д
Binput_layer/brand_embedding/brand_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 
О
@input_layer/brand_embedding/brand_embedding_weights/GreaterEqualGreaterEqualJinput_layer/brand_embedding/brand_embedding_weights/SparseReshape/IdentityBinput_layer/brand_embedding/brand_embedding_weights/GreaterEqual/y*
T0	*#
_output_shapes
:         
н
9input_layer/brand_embedding/brand_embedding_weights/WhereWhere@input_layer/brand_embedding/brand_embedding_weights/GreaterEqual*'
_output_shapes
:         
Ф
Ainput_layer/brand_embedding/brand_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
valueB:
         *
dtype0
Є
;input_layer/brand_embedding/brand_embedding_weights/ReshapeReshape9input_layer/brand_embedding/brand_embedding_weights/WhereAinput_layer/brand_embedding/brand_embedding_weights/Reshape/shape*#
_output_shapes
:         *
T0	
Е
Cinput_layer/brand_embedding/brand_embedding_weights/GatherV2_1/axisConst*
dtype0*
value	B : *
_output_shapes
: 
ф
>input_layer/brand_embedding/brand_embedding_weights/GatherV2_1GatherV2Ainput_layer/brand_embedding/brand_embedding_weights/SparseReshape;input_layer/brand_embedding/brand_embedding_weights/ReshapeCinput_layer/brand_embedding/brand_embedding_weights/GatherV2_1/axis*
Taxis0*
Tindices0	*'
_output_shapes
:         *
Tparams0	
Е
Cinput_layer/brand_embedding/brand_embedding_weights/GatherV2_2/axisConst*
dtype0*
value	B : *
_output_shapes
: 
щ
>input_layer/brand_embedding/brand_embedding_weights/GatherV2_2GatherV2Jinput_layer/brand_embedding/brand_embedding_weights/SparseReshape/Identity;input_layer/brand_embedding/brand_embedding_weights/ReshapeCinput_layer/brand_embedding/brand_embedding_weights/GatherV2_2/axis*
Tindices0	*
Tparams0	*#
_output_shapes
:         *
Taxis0
▓
<input_layer/brand_embedding/brand_embedding_weights/IdentityIdentityCinput_layer/brand_embedding/brand_embedding_weights/SparseReshape:1*
T0	*
_output_shapes
:
П
Minput_layer/brand_embedding/brand_embedding_weights/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
▐
[input_layer/brand_embedding/brand_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows>input_layer/brand_embedding/brand_embedding_weights/GatherV2_1>input_layer/brand_embedding/brand_embedding_weights/GatherV2_2<input_layer/brand_embedding/brand_embedding_weights/IdentityMinput_layer/brand_embedding/brand_embedding_weights/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:         :         :         :         
░
_input_layer/brand_embedding/brand_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
▓
ainput_layer/brand_embedding/brand_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       
▓
ainput_layer/brand_embedding/brand_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
т
Yinput_layer/brand_embedding/brand_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlice[input_layer/brand_embedding/brand_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows_input_layer/brand_embedding/brand_embedding_weights/embedding_lookup_sparse/strided_slice/stackainput_layer/brand_embedding/brand_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1ainput_layer/brand_embedding/brand_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2*
T0	*

begin_mask*
Index0*#
_output_shapes
:         *
end_mask*
shrink_axis_mask
Ё
Pinput_layer/brand_embedding/brand_embedding_weights/embedding_lookup_sparse/CastCastYinput_layer/brand_embedding/brand_embedding_weights/embedding_lookup_sparse/strided_slice*#
_output_shapes
:         *

SrcT0	*

DstT0
°
Rinput_layer/brand_embedding/brand_embedding_weights/embedding_lookup_sparse/UniqueUnique]input_layer/brand_embedding/brand_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:         :         
х
ainput_layer/brand_embedding/brand_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*@
_class6
42loc:@input_layer/brand_embedding/embedding_weights*
_output_shapes
: *
dtype0*
value	B : 
ъ
\input_layer/brand_embedding/brand_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV22input_layer/brand_embedding/embedding_weights/readRinput_layer/brand_embedding/brand_embedding_weights/embedding_lookup_sparse/Uniqueainput_layer/brand_embedding/brand_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis*
Tindices0	*
Tparams0*
Taxis0*'
_output_shapes
:         *@
_class6
42loc:@input_layer/brand_embedding/embedding_weights
Б
einput_layer/brand_embedding/brand_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentity\input_layer/brand_embedding/brand_embedding_weights/embedding_lookup_sparse/embedding_lookup*
T0*'
_output_shapes
:         
б
Kinput_layer/brand_embedding/brand_embedding_weights/embedding_lookup_sparseSparseSegmentMeaneinput_layer/brand_embedding/brand_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityTinput_layer/brand_embedding/brand_embedding_weights/embedding_lookup_sparse/Unique:1Pinput_layer/brand_embedding/brand_embedding_weights/embedding_lookup_sparse/Cast*'
_output_shapes
:         *
T0
Ф
Cinput_layer/brand_embedding/brand_embedding_weights/Reshape_1/shapeConst*
dtype0*
valueB"       *
_output_shapes
:
Ю
=input_layer/brand_embedding/brand_embedding_weights/Reshape_1Reshape]input_layer/brand_embedding/brand_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:2Cinput_layer/brand_embedding/brand_embedding_weights/Reshape_1/shape*'
_output_shapes
:         *
T0

┤
9input_layer/brand_embedding/brand_embedding_weights/ShapeShapeKinput_layer/brand_embedding/brand_embedding_weights/embedding_lookup_sparse*
_output_shapes
:*
T0
С
Ginput_layer/brand_embedding/brand_embedding_weights/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
У
Iinput_layer/brand_embedding/brand_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
У
Iinput_layer/brand_embedding/brand_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
▒
Ainput_layer/brand_embedding/brand_embedding_weights/strided_sliceStridedSlice9input_layer/brand_embedding/brand_embedding_weights/ShapeGinput_layer/brand_embedding/brand_embedding_weights/strided_slice/stackIinput_layer/brand_embedding/brand_embedding_weights/strided_slice/stack_1Iinput_layer/brand_embedding/brand_embedding_weights/strided_slice/stack_2*
Index0*
shrink_axis_mask*
_output_shapes
: *
T0
}
;input_layer/brand_embedding/brand_embedding_weights/stack/0Const*
dtype0*
value	B :*
_output_shapes
: 
я
9input_layer/brand_embedding/brand_embedding_weights/stackPack;input_layer/brand_embedding/brand_embedding_weights/stack/0Ainput_layer/brand_embedding/brand_embedding_weights/strided_slice*
T0*
N*
_output_shapes
:
ї
8input_layer/brand_embedding/brand_embedding_weights/TileTile=input_layer/brand_embedding/brand_embedding_weights/Reshape_19input_layer/brand_embedding/brand_embedding_weights/stack*0
_output_shapes
:                  *
T0

╩
>input_layer/brand_embedding/brand_embedding_weights/zeros_like	ZerosLikeKinput_layer/brand_embedding/brand_embedding_weights/embedding_lookup_sparse*'
_output_shapes
:         *
T0
╢
3input_layer/brand_embedding/brand_embedding_weightsSelect8input_layer/brand_embedding/brand_embedding_weights/Tile>input_layer/brand_embedding/brand_embedding_weights/zeros_likeKinput_layer/brand_embedding/brand_embedding_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:         
Ф
:input_layer/brand_embedding/brand_embedding_weights/Cast_1CastStringSplit_12/StringSplit:2*

DstT0*

SrcT0	*
_output_shapes
:
Л
Ainput_layer/brand_embedding/brand_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
valueB: *
dtype0
К
@input_layer/brand_embedding/brand_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
valueB:*
dtype0
╖
;input_layer/brand_embedding/brand_embedding_weights/Slice_1Slice:input_layer/brand_embedding/brand_embedding_weights/Cast_1Ainput_layer/brand_embedding/brand_embedding_weights/Slice_1/begin@input_layer/brand_embedding/brand_embedding_weights/Slice_1/size*
Index0*
T0*
_output_shapes
:
Ю
;input_layer/brand_embedding/brand_embedding_weights/Shape_1Shape3input_layer/brand_embedding/brand_embedding_weights*
_output_shapes
:*
T0
Л
Ainput_layer/brand_embedding/brand_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
valueB:*
dtype0
У
@input_layer/brand_embedding/brand_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
         
╕
;input_layer/brand_embedding/brand_embedding_weights/Slice_2Slice;input_layer/brand_embedding/brand_embedding_weights/Shape_1Ainput_layer/brand_embedding/brand_embedding_weights/Slice_2/begin@input_layer/brand_embedding/brand_embedding_weights/Slice_2/size*
Index0*
T0*
_output_shapes
:
Б
?input_layer/brand_embedding/brand_embedding_weights/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
п
:input_layer/brand_embedding/brand_embedding_weights/concatConcatV2;input_layer/brand_embedding/brand_embedding_weights/Slice_1;input_layer/brand_embedding/brand_embedding_weights/Slice_2?input_layer/brand_embedding/brand_embedding_weights/concat/axis*
N*
T0*
_output_shapes
:
ы
=input_layer/brand_embedding/brand_embedding_weights/Reshape_2Reshape3input_layer/brand_embedding/brand_embedding_weights:input_layer/brand_embedding/brand_embedding_weights/concat*'
_output_shapes
:         *
T0
О
!input_layer/brand_embedding/ShapeShape=input_layer/brand_embedding/brand_embedding_weights/Reshape_2*
_output_shapes
:*
T0
y
/input_layer/brand_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
{
1input_layer/brand_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
{
1input_layer/brand_embedding/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
╣
)input_layer/brand_embedding/strided_sliceStridedSlice!input_layer/brand_embedding/Shape/input_layer/brand_embedding/strided_slice/stack1input_layer/brand_embedding/strided_slice/stack_11input_layer/brand_embedding/strided_slice/stack_2*
Index0*
shrink_axis_mask*
T0*
_output_shapes
: 
m
+input_layer/brand_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
╖
)input_layer/brand_embedding/Reshape/shapePack)input_layer/brand_embedding/strided_slice+input_layer/brand_embedding/Reshape/shape/1*
T0*
_output_shapes
:*
N
╩
#input_layer/brand_embedding/ReshapeReshape=input_layer/brand_embedding/brand_embedding_weights/Reshape_2)input_layer/brand_embedding/Reshape/shape*'
_output_shapes
:         *
T0
Ъ
(input_layer/campaign_id_embedding/lookupStringToHashBucketFastStringSplit_10/StringSplit:1*#
_output_shapes
:         *
num_bucketsаН
я
Vinput_layer/campaign_id_embedding/embedding_weights/Initializer/truncated_normal/shapeConst*
valueB"аЖ    *
dtype0*F
_class<
:8loc:@input_layer/campaign_id_embedding/embedding_weights*
_output_shapes
:
т
Uinput_layer/campaign_id_embedding/embedding_weights/Initializer/truncated_normal/meanConst*
_output_shapes
: *F
_class<
:8loc:@input_layer/campaign_id_embedding/embedding_weights*
dtype0*
valueB
 *    
ф
Winput_layer/campaign_id_embedding/embedding_weights/Initializer/truncated_normal/stddevConst*
dtype0*
valueB
 *
╫#;*
_output_shapes
: *F
_class<
:8loc:@input_layer/campaign_id_embedding/embedding_weights
╦
`input_layer/campaign_id_embedding/embedding_weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalVinput_layer/campaign_id_embedding/embedding_weights/Initializer/truncated_normal/shape* 
_output_shapes
:
аН*
T0*F
_class<
:8loc:@input_layer/campaign_id_embedding/embedding_weights*
dtype0
Й
Tinput_layer/campaign_id_embedding/embedding_weights/Initializer/truncated_normal/mulMul`input_layer/campaign_id_embedding/embedding_weights/Initializer/truncated_normal/TruncatedNormalWinput_layer/campaign_id_embedding/embedding_weights/Initializer/truncated_normal/stddev* 
_output_shapes
:
аН*F
_class<
:8loc:@input_layer/campaign_id_embedding/embedding_weights*
T0
ў
Pinput_layer/campaign_id_embedding/embedding_weights/Initializer/truncated_normalAddTinput_layer/campaign_id_embedding/embedding_weights/Initializer/truncated_normal/mulUinput_layer/campaign_id_embedding/embedding_weights/Initializer/truncated_normal/mean*
T0*F
_class<
:8loc:@input_layer/campaign_id_embedding/embedding_weights* 
_output_shapes
:
аН
╧
3input_layer/campaign_id_embedding/embedding_weights
VariableV2*
shape:
аН*F
_class<
:8loc:@input_layer/campaign_id_embedding/embedding_weights*
dtype0* 
_output_shapes
:
аН
╛
:input_layer/campaign_id_embedding/embedding_weights/AssignAssign3input_layer/campaign_id_embedding/embedding_weightsPinput_layer/campaign_id_embedding/embedding_weights/Initializer/truncated_normal* 
_output_shapes
:
аН*F
_class<
:8loc:@input_layer/campaign_id_embedding/embedding_weights*
T0
ь
8input_layer/campaign_id_embedding/embedding_weights/readIdentity3input_layer/campaign_id_embedding/embedding_weights*F
_class<
:8loc:@input_layer/campaign_id_embedding/embedding_weights*
T0* 
_output_shapes
:
аН
Х
Kinput_layer/campaign_id_embedding/campaign_id_embedding_weights/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
Ф
Jinput_layer/campaign_id_embedding/campaign_id_embedding_weights/Slice/sizeConst*
valueB:*
_output_shapes
:*
dtype0
╖
Einput_layer/campaign_id_embedding/campaign_id_embedding_weights/SliceSliceStringSplit_10/StringSplit:2Kinput_layer/campaign_id_embedding/campaign_id_embedding_weights/Slice/beginJinput_layer/campaign_id_embedding/campaign_id_embedding_weights/Slice/size*
_output_shapes
:*
Index0*
T0	
П
Einput_layer/campaign_id_embedding/campaign_id_embedding_weights/ConstConst*
valueB: *
dtype0*
_output_shapes
:
√
Dinput_layer/campaign_id_embedding/campaign_id_embedding_weights/ProdProdEinput_layer/campaign_id_embedding/campaign_id_embedding_weights/SliceEinput_layer/campaign_id_embedding/campaign_id_embedding_weights/Const*
T0	*
_output_shapes
: 
Т
Pinput_layer/campaign_id_embedding/campaign_id_embedding_weights/GatherV2/indicesConst*
dtype0*
_output_shapes
: *
value	B :
П
Minput_layer/campaign_id_embedding/campaign_id_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
value	B : *
dtype0
╫
Hinput_layer/campaign_id_embedding/campaign_id_embedding_weights/GatherV2GatherV2StringSplit_10/StringSplit:2Pinput_layer/campaign_id_embedding/campaign_id_embedding_weights/GatherV2/indicesMinput_layer/campaign_id_embedding/campaign_id_embedding_weights/GatherV2/axis*
Taxis0*
Tparams0	*
Tindices0*
_output_shapes
: 
М
Finput_layer/campaign_id_embedding/campaign_id_embedding_weights/Cast/xPackDinput_layer/campaign_id_embedding/campaign_id_embedding_weights/ProdHinput_layer/campaign_id_embedding/campaign_id_embedding_weights/GatherV2*
_output_shapes
:*
T0	*
N
П
Minput_layer/campaign_id_embedding/campaign_id_embedding_weights/SparseReshapeSparseReshapeStringSplit_10/StringSplitStringSplit_10/StringSplit:2Finput_layer/campaign_id_embedding/campaign_id_embedding_weights/Cast/x*-
_output_shapes
:         :
║
Vinput_layer/campaign_id_embedding/campaign_id_embedding_weights/SparseReshape/IdentityIdentity(input_layer/campaign_id_embedding/lookup*#
_output_shapes
:         *
T0	
Р
Ninput_layer/campaign_id_embedding/campaign_id_embedding_weights/GreaterEqual/yConst*
dtype0	*
value	B	 R *
_output_shapes
: 
▓
Linput_layer/campaign_id_embedding/campaign_id_embedding_weights/GreaterEqualGreaterEqualVinput_layer/campaign_id_embedding/campaign_id_embedding_weights/SparseReshape/IdentityNinput_layer/campaign_id_embedding/campaign_id_embedding_weights/GreaterEqual/y*#
_output_shapes
:         *
T0	
┼
Einput_layer/campaign_id_embedding/campaign_id_embedding_weights/WhereWhereLinput_layer/campaign_id_embedding/campaign_id_embedding_weights/GreaterEqual*'
_output_shapes
:         
а
Minput_layer/campaign_id_embedding/campaign_id_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
valueB:
         *
dtype0
Ц
Ginput_layer/campaign_id_embedding/campaign_id_embedding_weights/ReshapeReshapeEinput_layer/campaign_id_embedding/campaign_id_embedding_weights/WhereMinput_layer/campaign_id_embedding/campaign_id_embedding_weights/Reshape/shape*#
_output_shapes
:         *
T0	
С
Oinput_layer/campaign_id_embedding/campaign_id_embedding_weights/GatherV2_1/axisConst*
dtype0*
value	B : *
_output_shapes
: 
Ф
Jinput_layer/campaign_id_embedding/campaign_id_embedding_weights/GatherV2_1GatherV2Minput_layer/campaign_id_embedding/campaign_id_embedding_weights/SparseReshapeGinput_layer/campaign_id_embedding/campaign_id_embedding_weights/ReshapeOinput_layer/campaign_id_embedding/campaign_id_embedding_weights/GatherV2_1/axis*
Tindices0	*
Tparams0	*'
_output_shapes
:         *
Taxis0
С
Oinput_layer/campaign_id_embedding/campaign_id_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Щ
Jinput_layer/campaign_id_embedding/campaign_id_embedding_weights/GatherV2_2GatherV2Vinput_layer/campaign_id_embedding/campaign_id_embedding_weights/SparseReshape/IdentityGinput_layer/campaign_id_embedding/campaign_id_embedding_weights/ReshapeOinput_layer/campaign_id_embedding/campaign_id_embedding_weights/GatherV2_2/axis*
Taxis0*
Tparams0	*#
_output_shapes
:         *
Tindices0	
╩
Hinput_layer/campaign_id_embedding/campaign_id_embedding_weights/IdentityIdentityOinput_layer/campaign_id_embedding/campaign_id_embedding_weights/SparseReshape:1*
_output_shapes
:*
T0	
Ы
Yinput_layer/campaign_id_embedding/campaign_id_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Ъ
ginput_layer/campaign_id_embedding/campaign_id_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsJinput_layer/campaign_id_embedding/campaign_id_embedding_weights/GatherV2_1Jinput_layer/campaign_id_embedding/campaign_id_embedding_weights/GatherV2_2Hinput_layer/campaign_id_embedding/campaign_id_embedding_weights/IdentityYinput_layer/campaign_id_embedding/campaign_id_embedding_weights/SparseFillEmptyRows/Const*T
_output_shapesB
@:         :         :         :         *
T0	
╝
kinput_layer/campaign_id_embedding/campaign_id_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
╛
minput_layer/campaign_id_embedding/campaign_id_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
valueB"       *
dtype0
╛
minput_layer/campaign_id_embedding/campaign_id_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
Ю
einput_layer/campaign_id_embedding/campaign_id_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSliceginput_layer/campaign_id_embedding/campaign_id_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowskinput_layer/campaign_id_embedding/campaign_id_embedding_weights/embedding_lookup_sparse/strided_slice/stackminput_layer/campaign_id_embedding/campaign_id_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1minput_layer/campaign_id_embedding/campaign_id_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2*#
_output_shapes
:         *
shrink_axis_mask*

begin_mask*
end_mask*
T0	*
Index0
И
\input_layer/campaign_id_embedding/campaign_id_embedding_weights/embedding_lookup_sparse/CastCasteinput_layer/campaign_id_embedding/campaign_id_embedding_weights/embedding_lookup_sparse/strided_slice*

SrcT0	*#
_output_shapes
:         *

DstT0
Р
^input_layer/campaign_id_embedding/campaign_id_embedding_weights/embedding_lookup_sparse/UniqueUniqueiinput_layer/campaign_id_embedding/campaign_id_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:         :         
ў
minput_layer/campaign_id_embedding/campaign_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*F
_class<
:8loc:@input_layer/campaign_id_embedding/embedding_weights*
value	B : *
dtype0*
_output_shapes
: 
Ъ
hinput_layer/campaign_id_embedding/campaign_id_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV28input_layer/campaign_id_embedding/embedding_weights/read^input_layer/campaign_id_embedding/campaign_id_embedding_weights/embedding_lookup_sparse/Uniqueminput_layer/campaign_id_embedding/campaign_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis*
Tindices0	*
Taxis0*'
_output_shapes
:         *
Tparams0*F
_class<
:8loc:@input_layer/campaign_id_embedding/embedding_weights
Щ
qinput_layer/campaign_id_embedding/campaign_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentityhinput_layer/campaign_id_embedding/campaign_id_embedding_weights/embedding_lookup_sparse/embedding_lookup*'
_output_shapes
:         *
T0
╤
Winput_layer/campaign_id_embedding/campaign_id_embedding_weights/embedding_lookup_sparseSparseSegmentMeanqinput_layer/campaign_id_embedding/campaign_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity`input_layer/campaign_id_embedding/campaign_id_embedding_weights/embedding_lookup_sparse/Unique:1\input_layer/campaign_id_embedding/campaign_id_embedding_weights/embedding_lookup_sparse/Cast*'
_output_shapes
:         *
T0
а
Oinput_layer/campaign_id_embedding/campaign_id_embedding_weights/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB"       
┬
Iinput_layer/campaign_id_embedding/campaign_id_embedding_weights/Reshape_1Reshapeiinput_layer/campaign_id_embedding/campaign_id_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:2Oinput_layer/campaign_id_embedding/campaign_id_embedding_weights/Reshape_1/shape*'
_output_shapes
:         *
T0

╠
Einput_layer/campaign_id_embedding/campaign_id_embedding_weights/ShapeShapeWinput_layer/campaign_id_embedding/campaign_id_embedding_weights/embedding_lookup_sparse*
T0*
_output_shapes
:
Э
Sinput_layer/campaign_id_embedding/campaign_id_embedding_weights/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:
Я
Uinput_layer/campaign_id_embedding/campaign_id_embedding_weights/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Я
Uinput_layer/campaign_id_embedding/campaign_id_embedding_weights/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
э
Minput_layer/campaign_id_embedding/campaign_id_embedding_weights/strided_sliceStridedSliceEinput_layer/campaign_id_embedding/campaign_id_embedding_weights/ShapeSinput_layer/campaign_id_embedding/campaign_id_embedding_weights/strided_slice/stackUinput_layer/campaign_id_embedding/campaign_id_embedding_weights/strided_slice/stack_1Uinput_layer/campaign_id_embedding/campaign_id_embedding_weights/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Й
Ginput_layer/campaign_id_embedding/campaign_id_embedding_weights/stack/0Const*
value	B :*
_output_shapes
: *
dtype0
У
Einput_layer/campaign_id_embedding/campaign_id_embedding_weights/stackPackGinput_layer/campaign_id_embedding/campaign_id_embedding_weights/stack/0Minput_layer/campaign_id_embedding/campaign_id_embedding_weights/strided_slice*
T0*
N*
_output_shapes
:
Щ
Dinput_layer/campaign_id_embedding/campaign_id_embedding_weights/TileTileIinput_layer/campaign_id_embedding/campaign_id_embedding_weights/Reshape_1Einput_layer/campaign_id_embedding/campaign_id_embedding_weights/stack*
T0
*0
_output_shapes
:                  
т
Jinput_layer/campaign_id_embedding/campaign_id_embedding_weights/zeros_like	ZerosLikeWinput_layer/campaign_id_embedding/campaign_id_embedding_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:         
ц
?input_layer/campaign_id_embedding/campaign_id_embedding_weightsSelectDinput_layer/campaign_id_embedding/campaign_id_embedding_weights/TileJinput_layer/campaign_id_embedding/campaign_id_embedding_weights/zeros_likeWinput_layer/campaign_id_embedding/campaign_id_embedding_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:         
а
Finput_layer/campaign_id_embedding/campaign_id_embedding_weights/Cast_1CastStringSplit_10/StringSplit:2*
_output_shapes
:*

SrcT0	*

DstT0
Ч
Minput_layer/campaign_id_embedding/campaign_id_embedding_weights/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
Ц
Linput_layer/campaign_id_embedding/campaign_id_embedding_weights/Slice_1/sizeConst*
dtype0*
_output_shapes
:*
valueB:
ч
Ginput_layer/campaign_id_embedding/campaign_id_embedding_weights/Slice_1SliceFinput_layer/campaign_id_embedding/campaign_id_embedding_weights/Cast_1Minput_layer/campaign_id_embedding/campaign_id_embedding_weights/Slice_1/beginLinput_layer/campaign_id_embedding/campaign_id_embedding_weights/Slice_1/size*
T0*
_output_shapes
:*
Index0
╢
Ginput_layer/campaign_id_embedding/campaign_id_embedding_weights/Shape_1Shape?input_layer/campaign_id_embedding/campaign_id_embedding_weights*
_output_shapes
:*
T0
Ч
Minput_layer/campaign_id_embedding/campaign_id_embedding_weights/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
Я
Linput_layer/campaign_id_embedding/campaign_id_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
         
ш
Ginput_layer/campaign_id_embedding/campaign_id_embedding_weights/Slice_2SliceGinput_layer/campaign_id_embedding/campaign_id_embedding_weights/Shape_1Minput_layer/campaign_id_embedding/campaign_id_embedding_weights/Slice_2/beginLinput_layer/campaign_id_embedding/campaign_id_embedding_weights/Slice_2/size*
Index0*
_output_shapes
:*
T0
Н
Kinput_layer/campaign_id_embedding/campaign_id_embedding_weights/concat/axisConst*
_output_shapes
: *
value	B : *
dtype0
▀
Finput_layer/campaign_id_embedding/campaign_id_embedding_weights/concatConcatV2Ginput_layer/campaign_id_embedding/campaign_id_embedding_weights/Slice_1Ginput_layer/campaign_id_embedding/campaign_id_embedding_weights/Slice_2Kinput_layer/campaign_id_embedding/campaign_id_embedding_weights/concat/axis*
N*
_output_shapes
:*
T0
П
Iinput_layer/campaign_id_embedding/campaign_id_embedding_weights/Reshape_2Reshape?input_layer/campaign_id_embedding/campaign_id_embedding_weightsFinput_layer/campaign_id_embedding/campaign_id_embedding_weights/concat*'
_output_shapes
:         *
T0
а
'input_layer/campaign_id_embedding/ShapeShapeIinput_layer/campaign_id_embedding/campaign_id_embedding_weights/Reshape_2*
T0*
_output_shapes
:

5input_layer/campaign_id_embedding/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
Б
7input_layer/campaign_id_embedding/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
Б
7input_layer/campaign_id_embedding/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
╫
/input_layer/campaign_id_embedding/strided_sliceStridedSlice'input_layer/campaign_id_embedding/Shape5input_layer/campaign_id_embedding/strided_slice/stack7input_layer/campaign_id_embedding/strided_slice/stack_17input_layer/campaign_id_embedding/strided_slice/stack_2*
shrink_axis_mask*
_output_shapes
: *
Index0*
T0
s
1input_layer/campaign_id_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
╔
/input_layer/campaign_id_embedding/Reshape/shapePack/input_layer/campaign_id_embedding/strided_slice1input_layer/campaign_id_embedding/Reshape/shape/1*
_output_shapes
:*
T0*
N
т
)input_layer/campaign_id_embedding/ReshapeReshapeIinput_layer/campaign_id_embedding/campaign_id_embedding_weights/Reshape_2/input_layer/campaign_id_embedding/Reshape/shape*
T0*'
_output_shapes
:         
Х
$input_layer/cate_id_embedding/lookupStringToHashBucketFastStringSplit_9/StringSplit:1*#
_output_shapes
:         *
num_bucketsаН
ч
Rinput_layer/cate_id_embedding/embedding_weights/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*
valueB"аЖ    *B
_class8
64loc:@input_layer/cate_id_embedding/embedding_weights
┌
Qinput_layer/cate_id_embedding/embedding_weights/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *B
_class8
64loc:@input_layer/cate_id_embedding/embedding_weights*
valueB
 *    
▄
Sinput_layer/cate_id_embedding/embedding_weights/Initializer/truncated_normal/stddevConst*
dtype0*B
_class8
64loc:@input_layer/cate_id_embedding/embedding_weights*
valueB
 *
╫#;*
_output_shapes
: 
┐
\input_layer/cate_id_embedding/embedding_weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalRinput_layer/cate_id_embedding/embedding_weights/Initializer/truncated_normal/shape*
dtype0*B
_class8
64loc:@input_layer/cate_id_embedding/embedding_weights* 
_output_shapes
:
аН*
T0
∙
Pinput_layer/cate_id_embedding/embedding_weights/Initializer/truncated_normal/mulMul\input_layer/cate_id_embedding/embedding_weights/Initializer/truncated_normal/TruncatedNormalSinput_layer/cate_id_embedding/embedding_weights/Initializer/truncated_normal/stddev* 
_output_shapes
:
аН*
T0*B
_class8
64loc:@input_layer/cate_id_embedding/embedding_weights
ч
Linput_layer/cate_id_embedding/embedding_weights/Initializer/truncated_normalAddPinput_layer/cate_id_embedding/embedding_weights/Initializer/truncated_normal/mulQinput_layer/cate_id_embedding/embedding_weights/Initializer/truncated_normal/mean* 
_output_shapes
:
аН*
T0*B
_class8
64loc:@input_layer/cate_id_embedding/embedding_weights
╟
/input_layer/cate_id_embedding/embedding_weights
VariableV2*B
_class8
64loc:@input_layer/cate_id_embedding/embedding_weights*
shape:
аН*
dtype0* 
_output_shapes
:
аН
о
6input_layer/cate_id_embedding/embedding_weights/AssignAssign/input_layer/cate_id_embedding/embedding_weightsLinput_layer/cate_id_embedding/embedding_weights/Initializer/truncated_normal*B
_class8
64loc:@input_layer/cate_id_embedding/embedding_weights* 
_output_shapes
:
аН*
T0
р
4input_layer/cate_id_embedding/embedding_weights/readIdentity/input_layer/cate_id_embedding/embedding_weights*B
_class8
64loc:@input_layer/cate_id_embedding/embedding_weights*
T0* 
_output_shapes
:
аН
Н
Cinput_layer/cate_id_embedding/cate_id_embedding_weights/Slice/beginConst*
dtype0*
_output_shapes
:*
valueB: 
М
Binput_layer/cate_id_embedding/cate_id_embedding_weights/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:
Ю
=input_layer/cate_id_embedding/cate_id_embedding_weights/SliceSliceStringSplit_9/StringSplit:2Cinput_layer/cate_id_embedding/cate_id_embedding_weights/Slice/beginBinput_layer/cate_id_embedding/cate_id_embedding_weights/Slice/size*
_output_shapes
:*
Index0*
T0	
З
=input_layer/cate_id_embedding/cate_id_embedding_weights/ConstConst*
dtype0*
valueB: *
_output_shapes
:
у
<input_layer/cate_id_embedding/cate_id_embedding_weights/ProdProd=input_layer/cate_id_embedding/cate_id_embedding_weights/Slice=input_layer/cate_id_embedding/cate_id_embedding_weights/Const*
_output_shapes
: *
T0	
К
Hinput_layer/cate_id_embedding/cate_id_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
value	B :*
dtype0
З
Einput_layer/cate_id_embedding/cate_id_embedding_weights/GatherV2/axisConst*
dtype0*
value	B : *
_output_shapes
: 
╛
@input_layer/cate_id_embedding/cate_id_embedding_weights/GatherV2GatherV2StringSplit_9/StringSplit:2Hinput_layer/cate_id_embedding/cate_id_embedding_weights/GatherV2/indicesEinput_layer/cate_id_embedding/cate_id_embedding_weights/GatherV2/axis*
Tparams0	*
Taxis0*
_output_shapes
: *
Tindices0
Ї
>input_layer/cate_id_embedding/cate_id_embedding_weights/Cast/xPack<input_layer/cate_id_embedding/cate_id_embedding_weights/Prod@input_layer/cate_id_embedding/cate_id_embedding_weights/GatherV2*
N*
T0	*
_output_shapes
:
¤
Einput_layer/cate_id_embedding/cate_id_embedding_weights/SparseReshapeSparseReshapeStringSplit_9/StringSplitStringSplit_9/StringSplit:2>input_layer/cate_id_embedding/cate_id_embedding_weights/Cast/x*-
_output_shapes
:         :
о
Ninput_layer/cate_id_embedding/cate_id_embedding_weights/SparseReshape/IdentityIdentity$input_layer/cate_id_embedding/lookup*
T0	*#
_output_shapes
:         
И
Finput_layer/cate_id_embedding/cate_id_embedding_weights/GreaterEqual/yConst*
dtype0	*
value	B	 R *
_output_shapes
: 
Ъ
Dinput_layer/cate_id_embedding/cate_id_embedding_weights/GreaterEqualGreaterEqualNinput_layer/cate_id_embedding/cate_id_embedding_weights/SparseReshape/IdentityFinput_layer/cate_id_embedding/cate_id_embedding_weights/GreaterEqual/y*#
_output_shapes
:         *
T0	
╡
=input_layer/cate_id_embedding/cate_id_embedding_weights/WhereWhereDinput_layer/cate_id_embedding/cate_id_embedding_weights/GreaterEqual*'
_output_shapes
:         
Ш
Einput_layer/cate_id_embedding/cate_id_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
valueB:
         *
dtype0
■
?input_layer/cate_id_embedding/cate_id_embedding_weights/ReshapeReshape=input_layer/cate_id_embedding/cate_id_embedding_weights/WhereEinput_layer/cate_id_embedding/cate_id_embedding_weights/Reshape/shape*#
_output_shapes
:         *
T0	
Й
Ginput_layer/cate_id_embedding/cate_id_embedding_weights/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ї
Binput_layer/cate_id_embedding/cate_id_embedding_weights/GatherV2_1GatherV2Einput_layer/cate_id_embedding/cate_id_embedding_weights/SparseReshape?input_layer/cate_id_embedding/cate_id_embedding_weights/ReshapeGinput_layer/cate_id_embedding/cate_id_embedding_weights/GatherV2_1/axis*'
_output_shapes
:         *
Taxis0*
Tindices0	*
Tparams0	
Й
Ginput_layer/cate_id_embedding/cate_id_embedding_weights/GatherV2_2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
∙
Binput_layer/cate_id_embedding/cate_id_embedding_weights/GatherV2_2GatherV2Ninput_layer/cate_id_embedding/cate_id_embedding_weights/SparseReshape/Identity?input_layer/cate_id_embedding/cate_id_embedding_weights/ReshapeGinput_layer/cate_id_embedding/cate_id_embedding_weights/GatherV2_2/axis*
Tparams0	*#
_output_shapes
:         *
Tindices0	*
Taxis0
║
@input_layer/cate_id_embedding/cate_id_embedding_weights/IdentityIdentityGinput_layer/cate_id_embedding/cate_id_embedding_weights/SparseReshape:1*
T0	*
_output_shapes
:
У
Qinput_layer/cate_id_embedding/cate_id_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
value	B	 R *
dtype0	
Є
_input_layer/cate_id_embedding/cate_id_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsBinput_layer/cate_id_embedding/cate_id_embedding_weights/GatherV2_1Binput_layer/cate_id_embedding/cate_id_embedding_weights/GatherV2_2@input_layer/cate_id_embedding/cate_id_embedding_weights/IdentityQinput_layer/cate_id_embedding/cate_id_embedding_weights/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:         :         :         :         
┤
cinput_layer/cate_id_embedding/cate_id_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB"        
╢
einput_layer/cate_id_embedding/cate_id_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
╢
einput_layer/cate_id_embedding/cate_id_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
Ў
]input_layer/cate_id_embedding/cate_id_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlice_input_layer/cate_id_embedding/cate_id_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowscinput_layer/cate_id_embedding/cate_id_embedding_weights/embedding_lookup_sparse/strided_slice/stackeinput_layer/cate_id_embedding/cate_id_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1einput_layer/cate_id_embedding/cate_id_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2*
end_mask*#
_output_shapes
:         *
shrink_axis_mask*
T0	*

begin_mask*
Index0
°
Tinput_layer/cate_id_embedding/cate_id_embedding_weights/embedding_lookup_sparse/CastCast]input_layer/cate_id_embedding/cate_id_embedding_weights/embedding_lookup_sparse/strided_slice*

SrcT0	*

DstT0*#
_output_shapes
:         
А
Vinput_layer/cate_id_embedding/cate_id_embedding_weights/embedding_lookup_sparse/UniqueUniqueainput_layer/cate_id_embedding/cate_id_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:         :         
ы
einput_layer/cate_id_embedding/cate_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*
_output_shapes
: *
dtype0*
value	B : *B
_class8
64loc:@input_layer/cate_id_embedding/embedding_weights
·
`input_layer/cate_id_embedding/cate_id_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV24input_layer/cate_id_embedding/embedding_weights/readVinput_layer/cate_id_embedding/cate_id_embedding_weights/embedding_lookup_sparse/Uniqueeinput_layer/cate_id_embedding/cate_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis*
Taxis0*B
_class8
64loc:@input_layer/cate_id_embedding/embedding_weights*
Tparams0*
Tindices0	*'
_output_shapes
:         
Й
iinput_layer/cate_id_embedding/cate_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentity`input_layer/cate_id_embedding/cate_id_embedding_weights/embedding_lookup_sparse/embedding_lookup*'
_output_shapes
:         *
T0
▒
Oinput_layer/cate_id_embedding/cate_id_embedding_weights/embedding_lookup_sparseSparseSegmentMeaniinput_layer/cate_id_embedding/cate_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityXinput_layer/cate_id_embedding/cate_id_embedding_weights/embedding_lookup_sparse/Unique:1Tinput_layer/cate_id_embedding/cate_id_embedding_weights/embedding_lookup_sparse/Cast*'
_output_shapes
:         *
T0
Ш
Ginput_layer/cate_id_embedding/cate_id_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
valueB"       *
dtype0
к
Ainput_layer/cate_id_embedding/cate_id_embedding_weights/Reshape_1Reshapeainput_layer/cate_id_embedding/cate_id_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:2Ginput_layer/cate_id_embedding/cate_id_embedding_weights/Reshape_1/shape*
T0
*'
_output_shapes
:         
╝
=input_layer/cate_id_embedding/cate_id_embedding_weights/ShapeShapeOinput_layer/cate_id_embedding/cate_id_embedding_weights/embedding_lookup_sparse*
T0*
_output_shapes
:
Х
Kinput_layer/cate_id_embedding/cate_id_embedding_weights/strided_slice/stackConst*
dtype0*
valueB:*
_output_shapes
:
Ч
Minput_layer/cate_id_embedding/cate_id_embedding_weights/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Ч
Minput_layer/cate_id_embedding/cate_id_embedding_weights/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
┼
Einput_layer/cate_id_embedding/cate_id_embedding_weights/strided_sliceStridedSlice=input_layer/cate_id_embedding/cate_id_embedding_weights/ShapeKinput_layer/cate_id_embedding/cate_id_embedding_weights/strided_slice/stackMinput_layer/cate_id_embedding/cate_id_embedding_weights/strided_slice/stack_1Minput_layer/cate_id_embedding/cate_id_embedding_weights/strided_slice/stack_2*
T0*
shrink_axis_mask*
_output_shapes
: *
Index0
Б
?input_layer/cate_id_embedding/cate_id_embedding_weights/stack/0Const*
dtype0*
_output_shapes
: *
value	B :
√
=input_layer/cate_id_embedding/cate_id_embedding_weights/stackPack?input_layer/cate_id_embedding/cate_id_embedding_weights/stack/0Einput_layer/cate_id_embedding/cate_id_embedding_weights/strided_slice*
N*
_output_shapes
:*
T0
Б
<input_layer/cate_id_embedding/cate_id_embedding_weights/TileTileAinput_layer/cate_id_embedding/cate_id_embedding_weights/Reshape_1=input_layer/cate_id_embedding/cate_id_embedding_weights/stack*0
_output_shapes
:                  *
T0

╥
Binput_layer/cate_id_embedding/cate_id_embedding_weights/zeros_like	ZerosLikeOinput_layer/cate_id_embedding/cate_id_embedding_weights/embedding_lookup_sparse*'
_output_shapes
:         *
T0
╞
7input_layer/cate_id_embedding/cate_id_embedding_weightsSelect<input_layer/cate_id_embedding/cate_id_embedding_weights/TileBinput_layer/cate_id_embedding/cate_id_embedding_weights/zeros_likeOinput_layer/cate_id_embedding/cate_id_embedding_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:         
Ч
>input_layer/cate_id_embedding/cate_id_embedding_weights/Cast_1CastStringSplit_9/StringSplit:2*

DstT0*

SrcT0	*
_output_shapes
:
П
Einput_layer/cate_id_embedding/cate_id_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: 
О
Dinput_layer/cate_id_embedding/cate_id_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
valueB:*
dtype0
╟
?input_layer/cate_id_embedding/cate_id_embedding_weights/Slice_1Slice>input_layer/cate_id_embedding/cate_id_embedding_weights/Cast_1Einput_layer/cate_id_embedding/cate_id_embedding_weights/Slice_1/beginDinput_layer/cate_id_embedding/cate_id_embedding_weights/Slice_1/size*
_output_shapes
:*
Index0*
T0
ж
?input_layer/cate_id_embedding/cate_id_embedding_weights/Shape_1Shape7input_layer/cate_id_embedding/cate_id_embedding_weights*
T0*
_output_shapes
:
П
Einput_layer/cate_id_embedding/cate_id_embedding_weights/Slice_2/beginConst*
dtype0*
valueB:*
_output_shapes
:
Ч
Dinput_layer/cate_id_embedding/cate_id_embedding_weights/Slice_2/sizeConst*
dtype0*
valueB:
         *
_output_shapes
:
╚
?input_layer/cate_id_embedding/cate_id_embedding_weights/Slice_2Slice?input_layer/cate_id_embedding/cate_id_embedding_weights/Shape_1Einput_layer/cate_id_embedding/cate_id_embedding_weights/Slice_2/beginDinput_layer/cate_id_embedding/cate_id_embedding_weights/Slice_2/size*
T0*
Index0*
_output_shapes
:
Е
Cinput_layer/cate_id_embedding/cate_id_embedding_weights/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
┐
>input_layer/cate_id_embedding/cate_id_embedding_weights/concatConcatV2?input_layer/cate_id_embedding/cate_id_embedding_weights/Slice_1?input_layer/cate_id_embedding/cate_id_embedding_weights/Slice_2Cinput_layer/cate_id_embedding/cate_id_embedding_weights/concat/axis*
T0*
N*
_output_shapes
:
ў
Ainput_layer/cate_id_embedding/cate_id_embedding_weights/Reshape_2Reshape7input_layer/cate_id_embedding/cate_id_embedding_weights>input_layer/cate_id_embedding/cate_id_embedding_weights/concat*'
_output_shapes
:         *
T0
Ф
#input_layer/cate_id_embedding/ShapeShapeAinput_layer/cate_id_embedding/cate_id_embedding_weights/Reshape_2*
_output_shapes
:*
T0
{
1input_layer/cate_id_embedding/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
}
3input_layer/cate_id_embedding/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
}
3input_layer/cate_id_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
├
+input_layer/cate_id_embedding/strided_sliceStridedSlice#input_layer/cate_id_embedding/Shape1input_layer/cate_id_embedding/strided_slice/stack3input_layer/cate_id_embedding/strided_slice/stack_13input_layer/cate_id_embedding/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
_output_shapes
: 
o
-input_layer/cate_id_embedding/Reshape/shape/1Const*
dtype0*
value	B :*
_output_shapes
: 
╜
+input_layer/cate_id_embedding/Reshape/shapePack+input_layer/cate_id_embedding/strided_slice-input_layer/cate_id_embedding/Reshape/shape/1*
N*
T0*
_output_shapes
:
╥
%input_layer/cate_id_embedding/ReshapeReshapeAinput_layer/cate_id_embedding/cate_id_embedding_weights/Reshape_2+input_layer/cate_id_embedding/Reshape/shape*'
_output_shapes
:         *
T0
Ч
%input_layer/customer_embedding/lookupStringToHashBucketFastStringSplit_11/StringSplit:1*#
_output_shapes
:         *
num_bucketsаН
щ
Sinput_layer/customer_embedding/embedding_weights/Initializer/truncated_normal/shapeConst*
valueB"аЖ    *
dtype0*C
_class9
75loc:@input_layer/customer_embedding/embedding_weights*
_output_shapes
:
▄
Rinput_layer/customer_embedding/embedding_weights/Initializer/truncated_normal/meanConst*
_output_shapes
: *
valueB
 *    *
dtype0*C
_class9
75loc:@input_layer/customer_embedding/embedding_weights
▐
Tinput_layer/customer_embedding/embedding_weights/Initializer/truncated_normal/stddevConst*
valueB
 *
╫#;*C
_class9
75loc:@input_layer/customer_embedding/embedding_weights*
dtype0*
_output_shapes
: 
┬
]input_layer/customer_embedding/embedding_weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSinput_layer/customer_embedding/embedding_weights/Initializer/truncated_normal/shape*
dtype0*
T0* 
_output_shapes
:
аН*C
_class9
75loc:@input_layer/customer_embedding/embedding_weights
¤
Qinput_layer/customer_embedding/embedding_weights/Initializer/truncated_normal/mulMul]input_layer/customer_embedding/embedding_weights/Initializer/truncated_normal/TruncatedNormalTinput_layer/customer_embedding/embedding_weights/Initializer/truncated_normal/stddev* 
_output_shapes
:
аН*
T0*C
_class9
75loc:@input_layer/customer_embedding/embedding_weights
ы
Minput_layer/customer_embedding/embedding_weights/Initializer/truncated_normalAddQinput_layer/customer_embedding/embedding_weights/Initializer/truncated_normal/mulRinput_layer/customer_embedding/embedding_weights/Initializer/truncated_normal/mean* 
_output_shapes
:
аН*
T0*C
_class9
75loc:@input_layer/customer_embedding/embedding_weights
╔
0input_layer/customer_embedding/embedding_weights
VariableV2* 
_output_shapes
:
аН*
dtype0*
shape:
аН*C
_class9
75loc:@input_layer/customer_embedding/embedding_weights
▓
7input_layer/customer_embedding/embedding_weights/AssignAssign0input_layer/customer_embedding/embedding_weightsMinput_layer/customer_embedding/embedding_weights/Initializer/truncated_normal*
T0*C
_class9
75loc:@input_layer/customer_embedding/embedding_weights* 
_output_shapes
:
аН
у
5input_layer/customer_embedding/embedding_weights/readIdentity0input_layer/customer_embedding/embedding_weights* 
_output_shapes
:
аН*C
_class9
75loc:@input_layer/customer_embedding/embedding_weights*
T0
П
Einput_layer/customer_embedding/customer_embedding_weights/Slice/beginConst*
dtype0*
valueB: *
_output_shapes
:
О
Dinput_layer/customer_embedding/customer_embedding_weights/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:
е
?input_layer/customer_embedding/customer_embedding_weights/SliceSliceStringSplit_11/StringSplit:2Einput_layer/customer_embedding/customer_embedding_weights/Slice/beginDinput_layer/customer_embedding/customer_embedding_weights/Slice/size*
_output_shapes
:*
T0	*
Index0
Й
?input_layer/customer_embedding/customer_embedding_weights/ConstConst*
valueB: *
dtype0*
_output_shapes
:
щ
>input_layer/customer_embedding/customer_embedding_weights/ProdProd?input_layer/customer_embedding/customer_embedding_weights/Slice?input_layer/customer_embedding/customer_embedding_weights/Const*
_output_shapes
: *
T0	
М
Jinput_layer/customer_embedding/customer_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
value	B :*
dtype0
Й
Ginput_layer/customer_embedding/customer_embedding_weights/GatherV2/axisConst*
value	B : *
_output_shapes
: *
dtype0
┼
Binput_layer/customer_embedding/customer_embedding_weights/GatherV2GatherV2StringSplit_11/StringSplit:2Jinput_layer/customer_embedding/customer_embedding_weights/GatherV2/indicesGinput_layer/customer_embedding/customer_embedding_weights/GatherV2/axis*
_output_shapes
: *
Tparams0	*
Taxis0*
Tindices0
·
@input_layer/customer_embedding/customer_embedding_weights/Cast/xPack>input_layer/customer_embedding/customer_embedding_weights/ProdBinput_layer/customer_embedding/customer_embedding_weights/GatherV2*
N*
_output_shapes
:*
T0	
Г
Ginput_layer/customer_embedding/customer_embedding_weights/SparseReshapeSparseReshapeStringSplit_11/StringSplitStringSplit_11/StringSplit:2@input_layer/customer_embedding/customer_embedding_weights/Cast/x*-
_output_shapes
:         :
▒
Pinput_layer/customer_embedding/customer_embedding_weights/SparseReshape/IdentityIdentity%input_layer/customer_embedding/lookup*
T0	*#
_output_shapes
:         
К
Hinput_layer/customer_embedding/customer_embedding_weights/GreaterEqual/yConst*
dtype0	*
value	B	 R *
_output_shapes
: 
а
Finput_layer/customer_embedding/customer_embedding_weights/GreaterEqualGreaterEqualPinput_layer/customer_embedding/customer_embedding_weights/SparseReshape/IdentityHinput_layer/customer_embedding/customer_embedding_weights/GreaterEqual/y*#
_output_shapes
:         *
T0	
╣
?input_layer/customer_embedding/customer_embedding_weights/WhereWhereFinput_layer/customer_embedding/customer_embedding_weights/GreaterEqual*'
_output_shapes
:         
Ъ
Ginput_layer/customer_embedding/customer_embedding_weights/Reshape/shapeConst*
dtype0*
valueB:
         *
_output_shapes
:
Д
Ainput_layer/customer_embedding/customer_embedding_weights/ReshapeReshape?input_layer/customer_embedding/customer_embedding_weights/WhereGinput_layer/customer_embedding/customer_embedding_weights/Reshape/shape*#
_output_shapes
:         *
T0	
Л
Iinput_layer/customer_embedding/customer_embedding_weights/GatherV2_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 
№
Dinput_layer/customer_embedding/customer_embedding_weights/GatherV2_1GatherV2Ginput_layer/customer_embedding/customer_embedding_weights/SparseReshapeAinput_layer/customer_embedding/customer_embedding_weights/ReshapeIinput_layer/customer_embedding/customer_embedding_weights/GatherV2_1/axis*
Taxis0*
Tparams0	*
Tindices0	*'
_output_shapes
:         
Л
Iinput_layer/customer_embedding/customer_embedding_weights/GatherV2_2/axisConst*
value	B : *
_output_shapes
: *
dtype0
Б
Dinput_layer/customer_embedding/customer_embedding_weights/GatherV2_2GatherV2Pinput_layer/customer_embedding/customer_embedding_weights/SparseReshape/IdentityAinput_layer/customer_embedding/customer_embedding_weights/ReshapeIinput_layer/customer_embedding/customer_embedding_weights/GatherV2_2/axis*#
_output_shapes
:         *
Taxis0*
Tparams0	*
Tindices0	
╛
Binput_layer/customer_embedding/customer_embedding_weights/IdentityIdentityIinput_layer/customer_embedding/customer_embedding_weights/SparseReshape:1*
T0	*
_output_shapes
:
Х
Sinput_layer/customer_embedding/customer_embedding_weights/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
№
ainput_layer/customer_embedding/customer_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsDinput_layer/customer_embedding/customer_embedding_weights/GatherV2_1Dinput_layer/customer_embedding/customer_embedding_weights/GatherV2_2Binput_layer/customer_embedding/customer_embedding_weights/IdentitySinput_layer/customer_embedding/customer_embedding_weights/SparseFillEmptyRows/Const*T
_output_shapesB
@:         :         :         :         *
T0	
╢
einput_layer/customer_embedding/customer_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
╕
ginput_layer/customer_embedding/customer_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
valueB"       *
dtype0
╕
ginput_layer/customer_embedding/customer_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
А
_input_layer/customer_embedding/customer_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSliceainput_layer/customer_embedding/customer_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowseinput_layer/customer_embedding/customer_embedding_weights/embedding_lookup_sparse/strided_slice/stackginput_layer/customer_embedding/customer_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1ginput_layer/customer_embedding/customer_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2*
T0	*#
_output_shapes
:         *
shrink_axis_mask*
Index0*

begin_mask*
end_mask
№
Vinput_layer/customer_embedding/customer_embedding_weights/embedding_lookup_sparse/CastCast_input_layer/customer_embedding/customer_embedding_weights/embedding_lookup_sparse/strided_slice*

SrcT0	*#
_output_shapes
:         *

DstT0
Д
Xinput_layer/customer_embedding/customer_embedding_weights/embedding_lookup_sparse/UniqueUniquecinput_layer/customer_embedding/customer_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:         :         *
T0	
ю
ginput_layer/customer_embedding/customer_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*
_output_shapes
: *
dtype0*
value	B : *C
_class9
75loc:@input_layer/customer_embedding/embedding_weights
В
binput_layer/customer_embedding/customer_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV25input_layer/customer_embedding/embedding_weights/readXinput_layer/customer_embedding/customer_embedding_weights/embedding_lookup_sparse/Uniqueginput_layer/customer_embedding/customer_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis*C
_class9
75loc:@input_layer/customer_embedding/embedding_weights*
Tparams0*'
_output_shapes
:         *
Tindices0	*
Taxis0
Н
kinput_layer/customer_embedding/customer_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentitybinput_layer/customer_embedding/customer_embedding_weights/embedding_lookup_sparse/embedding_lookup*'
_output_shapes
:         *
T0
╣
Qinput_layer/customer_embedding/customer_embedding_weights/embedding_lookup_sparseSparseSegmentMeankinput_layer/customer_embedding/customer_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityZinput_layer/customer_embedding/customer_embedding_weights/embedding_lookup_sparse/Unique:1Vinput_layer/customer_embedding/customer_embedding_weights/embedding_lookup_sparse/Cast*'
_output_shapes
:         *
T0
Ъ
Iinput_layer/customer_embedding/customer_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
valueB"       *
dtype0
░
Cinput_layer/customer_embedding/customer_embedding_weights/Reshape_1Reshapecinput_layer/customer_embedding/customer_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:2Iinput_layer/customer_embedding/customer_embedding_weights/Reshape_1/shape*
T0
*'
_output_shapes
:         
└
?input_layer/customer_embedding/customer_embedding_weights/ShapeShapeQinput_layer/customer_embedding/customer_embedding_weights/embedding_lookup_sparse*
_output_shapes
:*
T0
Ч
Minput_layer/customer_embedding/customer_embedding_weights/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
Щ
Oinput_layer/customer_embedding/customer_embedding_weights/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
Щ
Oinput_layer/customer_embedding/customer_embedding_weights/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
╧
Ginput_layer/customer_embedding/customer_embedding_weights/strided_sliceStridedSlice?input_layer/customer_embedding/customer_embedding_weights/ShapeMinput_layer/customer_embedding/customer_embedding_weights/strided_slice/stackOinput_layer/customer_embedding/customer_embedding_weights/strided_slice/stack_1Oinput_layer/customer_embedding/customer_embedding_weights/strided_slice/stack_2*
T0*
_output_shapes
: *
shrink_axis_mask*
Index0
Г
Ainput_layer/customer_embedding/customer_embedding_weights/stack/0Const*
_output_shapes
: *
value	B :*
dtype0
Б
?input_layer/customer_embedding/customer_embedding_weights/stackPackAinput_layer/customer_embedding/customer_embedding_weights/stack/0Ginput_layer/customer_embedding/customer_embedding_weights/strided_slice*
N*
T0*
_output_shapes
:
З
>input_layer/customer_embedding/customer_embedding_weights/TileTileCinput_layer/customer_embedding/customer_embedding_weights/Reshape_1?input_layer/customer_embedding/customer_embedding_weights/stack*0
_output_shapes
:                  *
T0

╓
Dinput_layer/customer_embedding/customer_embedding_weights/zeros_like	ZerosLikeQinput_layer/customer_embedding/customer_embedding_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:         
╬
9input_layer/customer_embedding/customer_embedding_weightsSelect>input_layer/customer_embedding/customer_embedding_weights/TileDinput_layer/customer_embedding/customer_embedding_weights/zeros_likeQinput_layer/customer_embedding/customer_embedding_weights/embedding_lookup_sparse*'
_output_shapes
:         *
T0
Ъ
@input_layer/customer_embedding/customer_embedding_weights/Cast_1CastStringSplit_11/StringSplit:2*

SrcT0	*
_output_shapes
:*

DstT0
С
Ginput_layer/customer_embedding/customer_embedding_weights/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
Р
Finput_layer/customer_embedding/customer_embedding_weights/Slice_1/sizeConst*
dtype0*
_output_shapes
:*
valueB:
╧
Ainput_layer/customer_embedding/customer_embedding_weights/Slice_1Slice@input_layer/customer_embedding/customer_embedding_weights/Cast_1Ginput_layer/customer_embedding/customer_embedding_weights/Slice_1/beginFinput_layer/customer_embedding/customer_embedding_weights/Slice_1/size*
T0*
Index0*
_output_shapes
:
к
Ainput_layer/customer_embedding/customer_embedding_weights/Shape_1Shape9input_layer/customer_embedding/customer_embedding_weights*
_output_shapes
:*
T0
С
Ginput_layer/customer_embedding/customer_embedding_weights/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
Щ
Finput_layer/customer_embedding/customer_embedding_weights/Slice_2/sizeConst*
valueB:
         *
dtype0*
_output_shapes
:
╨
Ainput_layer/customer_embedding/customer_embedding_weights/Slice_2SliceAinput_layer/customer_embedding/customer_embedding_weights/Shape_1Ginput_layer/customer_embedding/customer_embedding_weights/Slice_2/beginFinput_layer/customer_embedding/customer_embedding_weights/Slice_2/size*
Index0*
T0*
_output_shapes
:
З
Einput_layer/customer_embedding/customer_embedding_weights/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
╟
@input_layer/customer_embedding/customer_embedding_weights/concatConcatV2Ainput_layer/customer_embedding/customer_embedding_weights/Slice_1Ainput_layer/customer_embedding/customer_embedding_weights/Slice_2Einput_layer/customer_embedding/customer_embedding_weights/concat/axis*
N*
T0*
_output_shapes
:
¤
Cinput_layer/customer_embedding/customer_embedding_weights/Reshape_2Reshape9input_layer/customer_embedding/customer_embedding_weights@input_layer/customer_embedding/customer_embedding_weights/concat*'
_output_shapes
:         *
T0
Ч
$input_layer/customer_embedding/ShapeShapeCinput_layer/customer_embedding/customer_embedding_weights/Reshape_2*
T0*
_output_shapes
:
|
2input_layer/customer_embedding/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
~
4input_layer/customer_embedding/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
~
4input_layer/customer_embedding/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
╚
,input_layer/customer_embedding/strided_sliceStridedSlice$input_layer/customer_embedding/Shape2input_layer/customer_embedding/strided_slice/stack4input_layer/customer_embedding/strided_slice/stack_14input_layer/customer_embedding/strided_slice/stack_2*
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
p
.input_layer/customer_embedding/Reshape/shape/1Const*
dtype0*
value	B :*
_output_shapes
: 
└
,input_layer/customer_embedding/Reshape/shapePack,input_layer/customer_embedding/strided_slice.input_layer/customer_embedding/Reshape/shape/1*
N*
T0*
_output_shapes
:
╓
&input_layer/customer_embedding/ReshapeReshapeCinput_layer/customer_embedding/customer_embedding_weights/Reshape_2,input_layer/customer_embedding/Reshape/shape*'
_output_shapes
:         *
T0
Т
 input_layer/pid_embedding/lookupStringToHashBucketFastStringSplit_13/StringSplit:1*
num_bucketsаН*#
_output_shapes
:         
▀
Ninput_layer/pid_embedding/embedding_weights/Initializer/truncated_normal/shapeConst*
_output_shapes
:*
valueB"аЖ    *>
_class4
20loc:@input_layer/pid_embedding/embedding_weights*
dtype0
╥
Minput_layer/pid_embedding/embedding_weights/Initializer/truncated_normal/meanConst*
_output_shapes
: *
valueB
 *    *
dtype0*>
_class4
20loc:@input_layer/pid_embedding/embedding_weights
╘
Oinput_layer/pid_embedding/embedding_weights/Initializer/truncated_normal/stddevConst*>
_class4
20loc:@input_layer/pid_embedding/embedding_weights*
dtype0*
_output_shapes
: *
valueB
 *
╫#;
│
Xinput_layer/pid_embedding/embedding_weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalNinput_layer/pid_embedding/embedding_weights/Initializer/truncated_normal/shape*
T0* 
_output_shapes
:
аН*
dtype0*>
_class4
20loc:@input_layer/pid_embedding/embedding_weights
щ
Linput_layer/pid_embedding/embedding_weights/Initializer/truncated_normal/mulMulXinput_layer/pid_embedding/embedding_weights/Initializer/truncated_normal/TruncatedNormalOinput_layer/pid_embedding/embedding_weights/Initializer/truncated_normal/stddev* 
_output_shapes
:
аН*>
_class4
20loc:@input_layer/pid_embedding/embedding_weights*
T0
╫
Hinput_layer/pid_embedding/embedding_weights/Initializer/truncated_normalAddLinput_layer/pid_embedding/embedding_weights/Initializer/truncated_normal/mulMinput_layer/pid_embedding/embedding_weights/Initializer/truncated_normal/mean*
T0*>
_class4
20loc:@input_layer/pid_embedding/embedding_weights* 
_output_shapes
:
аН
┐
+input_layer/pid_embedding/embedding_weights
VariableV2* 
_output_shapes
:
аН*
dtype0*>
_class4
20loc:@input_layer/pid_embedding/embedding_weights*
shape:
аН
Ю
2input_layer/pid_embedding/embedding_weights/AssignAssign+input_layer/pid_embedding/embedding_weightsHinput_layer/pid_embedding/embedding_weights/Initializer/truncated_normal*
T0* 
_output_shapes
:
аН*>
_class4
20loc:@input_layer/pid_embedding/embedding_weights
╘
0input_layer/pid_embedding/embedding_weights/readIdentity+input_layer/pid_embedding/embedding_weights*
T0* 
_output_shapes
:
аН*>
_class4
20loc:@input_layer/pid_embedding/embedding_weights
Е
;input_layer/pid_embedding/pid_embedding_weights/Slice/beginConst*
_output_shapes
:*
valueB: *
dtype0
Д
:input_layer/pid_embedding/pid_embedding_weights/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
З
5input_layer/pid_embedding/pid_embedding_weights/SliceSliceStringSplit_13/StringSplit:2;input_layer/pid_embedding/pid_embedding_weights/Slice/begin:input_layer/pid_embedding/pid_embedding_weights/Slice/size*
T0	*
_output_shapes
:*
Index0

5input_layer/pid_embedding/pid_embedding_weights/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
╦
4input_layer/pid_embedding/pid_embedding_weights/ProdProd5input_layer/pid_embedding/pid_embedding_weights/Slice5input_layer/pid_embedding/pid_embedding_weights/Const*
_output_shapes
: *
T0	
В
@input_layer/pid_embedding/pid_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :

=input_layer/pid_embedding/pid_embedding_weights/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
з
8input_layer/pid_embedding/pid_embedding_weights/GatherV2GatherV2StringSplit_13/StringSplit:2@input_layer/pid_embedding/pid_embedding_weights/GatherV2/indices=input_layer/pid_embedding/pid_embedding_weights/GatherV2/axis*
Taxis0*
Tparams0	*
Tindices0*
_output_shapes
: 
▄
6input_layer/pid_embedding/pid_embedding_weights/Cast/xPack4input_layer/pid_embedding/pid_embedding_weights/Prod8input_layer/pid_embedding/pid_embedding_weights/GatherV2*
_output_shapes
:*
T0	*
N
я
=input_layer/pid_embedding/pid_embedding_weights/SparseReshapeSparseReshapeStringSplit_13/StringSplitStringSplit_13/StringSplit:26input_layer/pid_embedding/pid_embedding_weights/Cast/x*-
_output_shapes
:         :
в
Finput_layer/pid_embedding/pid_embedding_weights/SparseReshape/IdentityIdentity input_layer/pid_embedding/lookup*
T0	*#
_output_shapes
:         
А
>input_layer/pid_embedding/pid_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 
В
<input_layer/pid_embedding/pid_embedding_weights/GreaterEqualGreaterEqualFinput_layer/pid_embedding/pid_embedding_weights/SparseReshape/Identity>input_layer/pid_embedding/pid_embedding_weights/GreaterEqual/y*
T0	*#
_output_shapes
:         
е
5input_layer/pid_embedding/pid_embedding_weights/WhereWhere<input_layer/pid_embedding/pid_embedding_weights/GreaterEqual*'
_output_shapes
:         
Р
=input_layer/pid_embedding/pid_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         
ц
7input_layer/pid_embedding/pid_embedding_weights/ReshapeReshape5input_layer/pid_embedding/pid_embedding_weights/Where=input_layer/pid_embedding/pid_embedding_weights/Reshape/shape*
T0	*#
_output_shapes
:         
Б
?input_layer/pid_embedding/pid_embedding_weights/GatherV2_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 
╘
:input_layer/pid_embedding/pid_embedding_weights/GatherV2_1GatherV2=input_layer/pid_embedding/pid_embedding_weights/SparseReshape7input_layer/pid_embedding/pid_embedding_weights/Reshape?input_layer/pid_embedding/pid_embedding_weights/GatherV2_1/axis*'
_output_shapes
:         *
Tparams0	*
Tindices0	*
Taxis0
Б
?input_layer/pid_embedding/pid_embedding_weights/GatherV2_2/axisConst*
dtype0*
value	B : *
_output_shapes
: 
┘
:input_layer/pid_embedding/pid_embedding_weights/GatherV2_2GatherV2Finput_layer/pid_embedding/pid_embedding_weights/SparseReshape/Identity7input_layer/pid_embedding/pid_embedding_weights/Reshape?input_layer/pid_embedding/pid_embedding_weights/GatherV2_2/axis*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:         
к
8input_layer/pid_embedding/pid_embedding_weights/IdentityIdentity?input_layer/pid_embedding/pid_embedding_weights/SparseReshape:1*
T0	*
_output_shapes
:
Л
Iinput_layer/pid_embedding/pid_embedding_weights/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
╩
Winput_layer/pid_embedding/pid_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows:input_layer/pid_embedding/pid_embedding_weights/GatherV2_1:input_layer/pid_embedding/pid_embedding_weights/GatherV2_28input_layer/pid_embedding/pid_embedding_weights/IdentityIinput_layer/pid_embedding/pid_embedding_weights/SparseFillEmptyRows/Const*T
_output_shapesB
@:         :         :         :         *
T0	
м
[input_layer/pid_embedding/pid_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
о
]input_layer/pid_embedding/pid_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
valueB"       *
dtype0
о
]input_layer/pid_embedding/pid_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
╬
Uinput_layer/pid_embedding/pid_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSliceWinput_layer/pid_embedding/pid_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows[input_layer/pid_embedding/pid_embedding_weights/embedding_lookup_sparse/strided_slice/stack]input_layer/pid_embedding/pid_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1]input_layer/pid_embedding/pid_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2*
shrink_axis_mask*
T0	*
end_mask*

begin_mask*#
_output_shapes
:         *
Index0
ш
Linput_layer/pid_embedding/pid_embedding_weights/embedding_lookup_sparse/CastCastUinput_layer/pid_embedding/pid_embedding_weights/embedding_lookup_sparse/strided_slice*

SrcT0	*

DstT0*#
_output_shapes
:         
Ё
Ninput_layer/pid_embedding/pid_embedding_weights/embedding_lookup_sparse/UniqueUniqueYinput_layer/pid_embedding/pid_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:         :         *
T0	
▀
]input_layer/pid_embedding/pid_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*
value	B : *
_output_shapes
: *
dtype0*>
_class4
20loc:@input_layer/pid_embedding/embedding_weights
┌
Xinput_layer/pid_embedding/pid_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV20input_layer/pid_embedding/embedding_weights/readNinput_layer/pid_embedding/pid_embedding_weights/embedding_lookup_sparse/Unique]input_layer/pid_embedding/pid_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis*
Taxis0*>
_class4
20loc:@input_layer/pid_embedding/embedding_weights*'
_output_shapes
:         *
Tparams0*
Tindices0	
∙
ainput_layer/pid_embedding/pid_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentityXinput_layer/pid_embedding/pid_embedding_weights/embedding_lookup_sparse/embedding_lookup*'
_output_shapes
:         *
T0
С
Ginput_layer/pid_embedding/pid_embedding_weights/embedding_lookup_sparseSparseSegmentMeanainput_layer/pid_embedding/pid_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityPinput_layer/pid_embedding/pid_embedding_weights/embedding_lookup_sparse/Unique:1Linput_layer/pid_embedding/pid_embedding_weights/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:         
Р
?input_layer/pid_embedding/pid_embedding_weights/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB"       
Т
9input_layer/pid_embedding/pid_embedding_weights/Reshape_1ReshapeYinput_layer/pid_embedding/pid_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:2?input_layer/pid_embedding/pid_embedding_weights/Reshape_1/shape*
T0
*'
_output_shapes
:         
м
5input_layer/pid_embedding/pid_embedding_weights/ShapeShapeGinput_layer/pid_embedding/pid_embedding_weights/embedding_lookup_sparse*
_output_shapes
:*
T0
Н
Cinput_layer/pid_embedding/pid_embedding_weights/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:
П
Einput_layer/pid_embedding/pid_embedding_weights/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
П
Einput_layer/pid_embedding/pid_embedding_weights/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Э
=input_layer/pid_embedding/pid_embedding_weights/strided_sliceStridedSlice5input_layer/pid_embedding/pid_embedding_weights/ShapeCinput_layer/pid_embedding/pid_embedding_weights/strided_slice/stackEinput_layer/pid_embedding/pid_embedding_weights/strided_slice/stack_1Einput_layer/pid_embedding/pid_embedding_weights/strided_slice/stack_2*
Index0*
shrink_axis_mask*
_output_shapes
: *
T0
y
7input_layer/pid_embedding/pid_embedding_weights/stack/0Const*
dtype0*
value	B :*
_output_shapes
: 
у
5input_layer/pid_embedding/pid_embedding_weights/stackPack7input_layer/pid_embedding/pid_embedding_weights/stack/0=input_layer/pid_embedding/pid_embedding_weights/strided_slice*
T0*
_output_shapes
:*
N
щ
4input_layer/pid_embedding/pid_embedding_weights/TileTile9input_layer/pid_embedding/pid_embedding_weights/Reshape_15input_layer/pid_embedding/pid_embedding_weights/stack*0
_output_shapes
:                  *
T0

┬
:input_layer/pid_embedding/pid_embedding_weights/zeros_like	ZerosLikeGinput_layer/pid_embedding/pid_embedding_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:         
ж
/input_layer/pid_embedding/pid_embedding_weightsSelect4input_layer/pid_embedding/pid_embedding_weights/Tile:input_layer/pid_embedding/pid_embedding_weights/zeros_likeGinput_layer/pid_embedding/pid_embedding_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:         
Р
6input_layer/pid_embedding/pid_embedding_weights/Cast_1CastStringSplit_13/StringSplit:2*

DstT0*

SrcT0	*
_output_shapes
:
З
=input_layer/pid_embedding/pid_embedding_weights/Slice_1/beginConst*
valueB: *
_output_shapes
:*
dtype0
Ж
<input_layer/pid_embedding/pid_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
valueB:*
dtype0
з
7input_layer/pid_embedding/pid_embedding_weights/Slice_1Slice6input_layer/pid_embedding/pid_embedding_weights/Cast_1=input_layer/pid_embedding/pid_embedding_weights/Slice_1/begin<input_layer/pid_embedding/pid_embedding_weights/Slice_1/size*
Index0*
T0*
_output_shapes
:
Ц
7input_layer/pid_embedding/pid_embedding_weights/Shape_1Shape/input_layer/pid_embedding/pid_embedding_weights*
_output_shapes
:*
T0
З
=input_layer/pid_embedding/pid_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
valueB:*
dtype0
П
<input_layer/pid_embedding/pid_embedding_weights/Slice_2/sizeConst*
dtype0*
valueB:
         *
_output_shapes
:
и
7input_layer/pid_embedding/pid_embedding_weights/Slice_2Slice7input_layer/pid_embedding/pid_embedding_weights/Shape_1=input_layer/pid_embedding/pid_embedding_weights/Slice_2/begin<input_layer/pid_embedding/pid_embedding_weights/Slice_2/size*
Index0*
T0*
_output_shapes
:
}
;input_layer/pid_embedding/pid_embedding_weights/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
Я
6input_layer/pid_embedding/pid_embedding_weights/concatConcatV27input_layer/pid_embedding/pid_embedding_weights/Slice_17input_layer/pid_embedding/pid_embedding_weights/Slice_2;input_layer/pid_embedding/pid_embedding_weights/concat/axis*
T0*
_output_shapes
:*
N
▀
9input_layer/pid_embedding/pid_embedding_weights/Reshape_2Reshape/input_layer/pid_embedding/pid_embedding_weights6input_layer/pid_embedding/pid_embedding_weights/concat*'
_output_shapes
:         *
T0
И
input_layer/pid_embedding/ShapeShape9input_layer/pid_embedding/pid_embedding_weights/Reshape_2*
_output_shapes
:*
T0
w
-input_layer/pid_embedding/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
y
/input_layer/pid_embedding/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
y
/input_layer/pid_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
п
'input_layer/pid_embedding/strided_sliceStridedSliceinput_layer/pid_embedding/Shape-input_layer/pid_embedding/strided_slice/stack/input_layer/pid_embedding/strided_slice/stack_1/input_layer/pid_embedding/strided_slice/stack_2*
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
k
)input_layer/pid_embedding/Reshape/shape/1Const*
_output_shapes
: *
value	B :*
dtype0
▒
'input_layer/pid_embedding/Reshape/shapePack'input_layer/pid_embedding/strided_slice)input_layer/pid_embedding/Reshape/shape/1*
_output_shapes
:*
T0*
N
┬
!input_layer/pid_embedding/ReshapeReshape9input_layer/pid_embedding/pid_embedding_weights/Reshape_2'input_layer/pid_embedding/Reshape/shape*
T0*'
_output_shapes
:         
k
 input_layer/price/ExpandDims/dimConst*
dtype0*
valueB :
         *
_output_shapes
: 
З
input_layer/price/ExpandDims
ExpandDimsToFloat input_layer/price/ExpandDims/dim*
T0*'
_output_shapes
:         
c
input_layer/price/ShapeShapeinput_layer/price/ExpandDims*
_output_shapes
:*
T0
o
%input_layer/price/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
q
'input_layer/price/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
q
'input_layer/price/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
З
input_layer/price/strided_sliceStridedSliceinput_layer/price/Shape%input_layer/price/strided_slice/stack'input_layer/price/strided_slice/stack_1'input_layer/price/strided_slice/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask
c
!input_layer/price/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
Щ
input_layer/price/Reshape/shapePackinput_layer/price/strided_slice!input_layer/price/Reshape/shape/1*
T0*
_output_shapes
:*
N
Х
input_layer/price/ReshapeReshapeinput_layer/price/ExpandDimsinput_layer/price/Reshape/shape*
T0*'
_output_shapes
:         
Y
input_layer/concat/axisConst*
dtype0*
value	B :*
_output_shapes
: 
∙
input_layer/concatConcatV2(input_layer/adgroup_id_embedding/Reshape#input_layer/brand_embedding/Reshape)input_layer/campaign_id_embedding/Reshape%input_layer/cate_id_embedding/Reshape&input_layer/customer_embedding/Reshape!input_layer/pid_embedding/Reshapeinput_layer/price/Reshapeinput_layer/concat/axis*'
_output_shapes
:         a*
T0*
N
^
concat_1/concat_dimConst*
_output_shapes
: *
dtype0*
valueB :
         
Z
concat_1Identityinput_layer/concat*'
_output_shapes
:         a*
T0
t
/get_regularization_penalty/l2_regularizer/scaleConst*
_output_shapes
: *
dtype0*
valueB
 *м┼'7
o
0get_regularization_penalty/l2_regularizer/L2LossL2Lossinput_layer/concat*
_output_shapes
: *
T0
┤
)get_regularization_penalty/l2_regularizerMul/get_regularization_penalty/l2_regularizer/scale0get_regularization_penalty/l2_regularizer/L2Loss*
_output_shapes
: *
T0
r
get_regularization_penaltyIdentity)get_regularization_penalty/l2_regularizer*
T0*
_output_shapes
: 
Ч
(input_layer_1/age_level_embedding/lookupStringToHashBucketFastStringSplit_3/StringSplit:1*
num_buckets
*#
_output_shapes
:         
я
Vinput_layer_1/age_level_embedding/embedding_weights/Initializer/truncated_normal/shapeConst*F
_class<
:8loc:@input_layer_1/age_level_embedding/embedding_weights*
valueB"
      *
dtype0*
_output_shapes
:
т
Uinput_layer_1/age_level_embedding/embedding_weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
_output_shapes
: *F
_class<
:8loc:@input_layer_1/age_level_embedding/embedding_weights*
dtype0
ф
Winput_layer_1/age_level_embedding/embedding_weights/Initializer/truncated_normal/stddevConst*F
_class<
:8loc:@input_layer_1/age_level_embedding/embedding_weights*
valueB
 *
╫#;*
_output_shapes
: *
dtype0
╔
`input_layer_1/age_level_embedding/embedding_weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalVinput_layer_1/age_level_embedding/embedding_weights/Initializer/truncated_normal/shape*
_output_shapes

:
*
dtype0*
T0*F
_class<
:8loc:@input_layer_1/age_level_embedding/embedding_weights
З
Tinput_layer_1/age_level_embedding/embedding_weights/Initializer/truncated_normal/mulMul`input_layer_1/age_level_embedding/embedding_weights/Initializer/truncated_normal/TruncatedNormalWinput_layer_1/age_level_embedding/embedding_weights/Initializer/truncated_normal/stddev*
_output_shapes

:
*
T0*F
_class<
:8loc:@input_layer_1/age_level_embedding/embedding_weights
ї
Pinput_layer_1/age_level_embedding/embedding_weights/Initializer/truncated_normalAddTinput_layer_1/age_level_embedding/embedding_weights/Initializer/truncated_normal/mulUinput_layer_1/age_level_embedding/embedding_weights/Initializer/truncated_normal/mean*
_output_shapes

:
*
T0*F
_class<
:8loc:@input_layer_1/age_level_embedding/embedding_weights
╦
3input_layer_1/age_level_embedding/embedding_weights
VariableV2*
_output_shapes

:
*
dtype0*
shape
:
*F
_class<
:8loc:@input_layer_1/age_level_embedding/embedding_weights
╝
:input_layer_1/age_level_embedding/embedding_weights/AssignAssign3input_layer_1/age_level_embedding/embedding_weightsPinput_layer_1/age_level_embedding/embedding_weights/Initializer/truncated_normal*
T0*F
_class<
:8loc:@input_layer_1/age_level_embedding/embedding_weights*
_output_shapes

:

ъ
8input_layer_1/age_level_embedding/embedding_weights/readIdentity3input_layer_1/age_level_embedding/embedding_weights*
T0*F
_class<
:8loc:@input_layer_1/age_level_embedding/embedding_weights*
_output_shapes

:

У
Iinput_layer_1/age_level_embedding/age_level_embedding_weights/Slice/beginConst*
dtype0*
_output_shapes
:*
valueB: 
Т
Hinput_layer_1/age_level_embedding/age_level_embedding_weights/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
░
Cinput_layer_1/age_level_embedding/age_level_embedding_weights/SliceSliceStringSplit_3/StringSplit:2Iinput_layer_1/age_level_embedding/age_level_embedding_weights/Slice/beginHinput_layer_1/age_level_embedding/age_level_embedding_weights/Slice/size*
Index0*
_output_shapes
:*
T0	
Н
Cinput_layer_1/age_level_embedding/age_level_embedding_weights/ConstConst*
_output_shapes
:*
valueB: *
dtype0
ї
Binput_layer_1/age_level_embedding/age_level_embedding_weights/ProdProdCinput_layer_1/age_level_embedding/age_level_embedding_weights/SliceCinput_layer_1/age_level_embedding/age_level_embedding_weights/Const*
T0	*
_output_shapes
: 
Р
Ninput_layer_1/age_level_embedding/age_level_embedding_weights/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
Н
Kinput_layer_1/age_level_embedding/age_level_embedding_weights/GatherV2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
╨
Finput_layer_1/age_level_embedding/age_level_embedding_weights/GatherV2GatherV2StringSplit_3/StringSplit:2Ninput_layer_1/age_level_embedding/age_level_embedding_weights/GatherV2/indicesKinput_layer_1/age_level_embedding/age_level_embedding_weights/GatherV2/axis*
_output_shapes
: *
Tindices0*
Tparams0	*
Taxis0
Ж
Dinput_layer_1/age_level_embedding/age_level_embedding_weights/Cast/xPackBinput_layer_1/age_level_embedding/age_level_embedding_weights/ProdFinput_layer_1/age_level_embedding/age_level_embedding_weights/GatherV2*
T0	*
_output_shapes
:*
N
Й
Kinput_layer_1/age_level_embedding/age_level_embedding_weights/SparseReshapeSparseReshapeStringSplit_3/StringSplitStringSplit_3/StringSplit:2Dinput_layer_1/age_level_embedding/age_level_embedding_weights/Cast/x*-
_output_shapes
:         :
╕
Tinput_layer_1/age_level_embedding/age_level_embedding_weights/SparseReshape/IdentityIdentity(input_layer_1/age_level_embedding/lookup*
T0	*#
_output_shapes
:         
О
Linput_layer_1/age_level_embedding/age_level_embedding_weights/GreaterEqual/yConst*
dtype0	*
value	B	 R *
_output_shapes
: 
м
Jinput_layer_1/age_level_embedding/age_level_embedding_weights/GreaterEqualGreaterEqualTinput_layer_1/age_level_embedding/age_level_embedding_weights/SparseReshape/IdentityLinput_layer_1/age_level_embedding/age_level_embedding_weights/GreaterEqual/y*
T0	*#
_output_shapes
:         
┴
Cinput_layer_1/age_level_embedding/age_level_embedding_weights/WhereWhereJinput_layer_1/age_level_embedding/age_level_embedding_weights/GreaterEqual*'
_output_shapes
:         
Ю
Kinput_layer_1/age_level_embedding/age_level_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         
Р
Einput_layer_1/age_level_embedding/age_level_embedding_weights/ReshapeReshapeCinput_layer_1/age_level_embedding/age_level_embedding_weights/WhereKinput_layer_1/age_level_embedding/age_level_embedding_weights/Reshape/shape*
T0	*#
_output_shapes
:         
П
Minput_layer_1/age_level_embedding/age_level_embedding_weights/GatherV2_1/axisConst*
value	B : *
_output_shapes
: *
dtype0
М
Hinput_layer_1/age_level_embedding/age_level_embedding_weights/GatherV2_1GatherV2Kinput_layer_1/age_level_embedding/age_level_embedding_weights/SparseReshapeEinput_layer_1/age_level_embedding/age_level_embedding_weights/ReshapeMinput_layer_1/age_level_embedding/age_level_embedding_weights/GatherV2_1/axis*'
_output_shapes
:         *
Taxis0*
Tparams0	*
Tindices0	
П
Minput_layer_1/age_level_embedding/age_level_embedding_weights/GatherV2_2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
С
Hinput_layer_1/age_level_embedding/age_level_embedding_weights/GatherV2_2GatherV2Tinput_layer_1/age_level_embedding/age_level_embedding_weights/SparseReshape/IdentityEinput_layer_1/age_level_embedding/age_level_embedding_weights/ReshapeMinput_layer_1/age_level_embedding/age_level_embedding_weights/GatherV2_2/axis*
Taxis0*
Tparams0	*
Tindices0	*#
_output_shapes
:         
╞
Finput_layer_1/age_level_embedding/age_level_embedding_weights/IdentityIdentityMinput_layer_1/age_level_embedding/age_level_embedding_weights/SparseReshape:1*
_output_shapes
:*
T0	
Щ
Winput_layer_1/age_level_embedding/age_level_embedding_weights/SparseFillEmptyRows/ConstConst*
dtype0	*
value	B	 R *
_output_shapes
: 
Р
einput_layer_1/age_level_embedding/age_level_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsHinput_layer_1/age_level_embedding/age_level_embedding_weights/GatherV2_1Hinput_layer_1/age_level_embedding/age_level_embedding_weights/GatherV2_2Finput_layer_1/age_level_embedding/age_level_embedding_weights/IdentityWinput_layer_1/age_level_embedding/age_level_embedding_weights/SparseFillEmptyRows/Const*T
_output_shapesB
@:         :         :         :         *
T0	
║
iinput_layer_1/age_level_embedding/age_level_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB"        
╝
kinput_layer_1/age_level_embedding/age_level_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
╝
kinput_layer_1/age_level_embedding/age_level_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
Ф
cinput_layer_1/age_level_embedding/age_level_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSliceeinput_layer_1/age_level_embedding/age_level_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsiinput_layer_1/age_level_embedding/age_level_embedding_weights/embedding_lookup_sparse/strided_slice/stackkinput_layer_1/age_level_embedding/age_level_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1kinput_layer_1/age_level_embedding/age_level_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2*
Index0*#
_output_shapes
:         *
end_mask*
shrink_axis_mask*

begin_mask*
T0	
Д
Zinput_layer_1/age_level_embedding/age_level_embedding_weights/embedding_lookup_sparse/CastCastcinput_layer_1/age_level_embedding/age_level_embedding_weights/embedding_lookup_sparse/strided_slice*#
_output_shapes
:         *

SrcT0	*

DstT0
М
\input_layer_1/age_level_embedding/age_level_embedding_weights/embedding_lookup_sparse/UniqueUniqueginput_layer_1/age_level_embedding/age_level_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:         :         
ї
kinput_layer_1/age_level_embedding/age_level_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*F
_class<
:8loc:@input_layer_1/age_level_embedding/embedding_weights*
value	B : *
dtype0*
_output_shapes
: 
Ф
finput_layer_1/age_level_embedding/age_level_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV28input_layer_1/age_level_embedding/embedding_weights/read\input_layer_1/age_level_embedding/age_level_embedding_weights/embedding_lookup_sparse/Uniquekinput_layer_1/age_level_embedding/age_level_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis*
Taxis0*'
_output_shapes
:         *
Tindices0	*F
_class<
:8loc:@input_layer_1/age_level_embedding/embedding_weights*
Tparams0
Х
oinput_layer_1/age_level_embedding/age_level_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentityfinput_layer_1/age_level_embedding/age_level_embedding_weights/embedding_lookup_sparse/embedding_lookup*
T0*'
_output_shapes
:         
╔
Uinput_layer_1/age_level_embedding/age_level_embedding_weights/embedding_lookup_sparseSparseSegmentMeanoinput_layer_1/age_level_embedding/age_level_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity^input_layer_1/age_level_embedding/age_level_embedding_weights/embedding_lookup_sparse/Unique:1Zinput_layer_1/age_level_embedding/age_level_embedding_weights/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:         
Ю
Minput_layer_1/age_level_embedding/age_level_embedding_weights/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB"       
╝
Ginput_layer_1/age_level_embedding/age_level_embedding_weights/Reshape_1Reshapeginput_layer_1/age_level_embedding/age_level_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:2Minput_layer_1/age_level_embedding/age_level_embedding_weights/Reshape_1/shape*
T0
*'
_output_shapes
:         
╚
Cinput_layer_1/age_level_embedding/age_level_embedding_weights/ShapeShapeUinput_layer_1/age_level_embedding/age_level_embedding_weights/embedding_lookup_sparse*
_output_shapes
:*
T0
Ы
Qinput_layer_1/age_level_embedding/age_level_embedding_weights/strided_slice/stackConst*
valueB:*
_output_shapes
:*
dtype0
Э
Sinput_layer_1/age_level_embedding/age_level_embedding_weights/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
Э
Sinput_layer_1/age_level_embedding/age_level_embedding_weights/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
у
Kinput_layer_1/age_level_embedding/age_level_embedding_weights/strided_sliceStridedSliceCinput_layer_1/age_level_embedding/age_level_embedding_weights/ShapeQinput_layer_1/age_level_embedding/age_level_embedding_weights/strided_slice/stackSinput_layer_1/age_level_embedding/age_level_embedding_weights/strided_slice/stack_1Sinput_layer_1/age_level_embedding/age_level_embedding_weights/strided_slice/stack_2*
T0*
_output_shapes
: *
shrink_axis_mask*
Index0
З
Einput_layer_1/age_level_embedding/age_level_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :
Н
Cinput_layer_1/age_level_embedding/age_level_embedding_weights/stackPackEinput_layer_1/age_level_embedding/age_level_embedding_weights/stack/0Kinput_layer_1/age_level_embedding/age_level_embedding_weights/strided_slice*
_output_shapes
:*
T0*
N
У
Binput_layer_1/age_level_embedding/age_level_embedding_weights/TileTileGinput_layer_1/age_level_embedding/age_level_embedding_weights/Reshape_1Cinput_layer_1/age_level_embedding/age_level_embedding_weights/stack*
T0
*0
_output_shapes
:                  
▐
Hinput_layer_1/age_level_embedding/age_level_embedding_weights/zeros_like	ZerosLikeUinput_layer_1/age_level_embedding/age_level_embedding_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:         
▐
=input_layer_1/age_level_embedding/age_level_embedding_weightsSelectBinput_layer_1/age_level_embedding/age_level_embedding_weights/TileHinput_layer_1/age_level_embedding/age_level_embedding_weights/zeros_likeUinput_layer_1/age_level_embedding/age_level_embedding_weights/embedding_lookup_sparse*'
_output_shapes
:         *
T0
Э
Dinput_layer_1/age_level_embedding/age_level_embedding_weights/Cast_1CastStringSplit_3/StringSplit:2*

SrcT0	*
_output_shapes
:*

DstT0
Х
Kinput_layer_1/age_level_embedding/age_level_embedding_weights/Slice_1/beginConst*
dtype0*
_output_shapes
:*
valueB: 
Ф
Jinput_layer_1/age_level_embedding/age_level_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:
▀
Einput_layer_1/age_level_embedding/age_level_embedding_weights/Slice_1SliceDinput_layer_1/age_level_embedding/age_level_embedding_weights/Cast_1Kinput_layer_1/age_level_embedding/age_level_embedding_weights/Slice_1/beginJinput_layer_1/age_level_embedding/age_level_embedding_weights/Slice_1/size*
_output_shapes
:*
Index0*
T0
▓
Einput_layer_1/age_level_embedding/age_level_embedding_weights/Shape_1Shape=input_layer_1/age_level_embedding/age_level_embedding_weights*
_output_shapes
:*
T0
Х
Kinput_layer_1/age_level_embedding/age_level_embedding_weights/Slice_2/beginConst*
dtype0*
valueB:*
_output_shapes
:
Э
Jinput_layer_1/age_level_embedding/age_level_embedding_weights/Slice_2/sizeConst*
dtype0*
valueB:
         *
_output_shapes
:
р
Einput_layer_1/age_level_embedding/age_level_embedding_weights/Slice_2SliceEinput_layer_1/age_level_embedding/age_level_embedding_weights/Shape_1Kinput_layer_1/age_level_embedding/age_level_embedding_weights/Slice_2/beginJinput_layer_1/age_level_embedding/age_level_embedding_weights/Slice_2/size*
_output_shapes
:*
T0*
Index0
Л
Iinput_layer_1/age_level_embedding/age_level_embedding_weights/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
╫
Dinput_layer_1/age_level_embedding/age_level_embedding_weights/concatConcatV2Einput_layer_1/age_level_embedding/age_level_embedding_weights/Slice_1Einput_layer_1/age_level_embedding/age_level_embedding_weights/Slice_2Iinput_layer_1/age_level_embedding/age_level_embedding_weights/concat/axis*
N*
T0*
_output_shapes
:
Й
Ginput_layer_1/age_level_embedding/age_level_embedding_weights/Reshape_2Reshape=input_layer_1/age_level_embedding/age_level_embedding_weightsDinput_layer_1/age_level_embedding/age_level_embedding_weights/concat*'
_output_shapes
:         *
T0
Ю
'input_layer_1/age_level_embedding/ShapeShapeGinput_layer_1/age_level_embedding/age_level_embedding_weights/Reshape_2*
T0*
_output_shapes
:

5input_layer_1/age_level_embedding/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
Б
7input_layer_1/age_level_embedding/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
Б
7input_layer_1/age_level_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
╫
/input_layer_1/age_level_embedding/strided_sliceStridedSlice'input_layer_1/age_level_embedding/Shape5input_layer_1/age_level_embedding/strided_slice/stack7input_layer_1/age_level_embedding/strided_slice/stack_17input_layer_1/age_level_embedding/strided_slice/stack_2*
shrink_axis_mask*
_output_shapes
: *
T0*
Index0
s
1input_layer_1/age_level_embedding/Reshape/shape/1Const*
dtype0*
_output_shapes
: *
value	B :
╔
/input_layer_1/age_level_embedding/Reshape/shapePack/input_layer_1/age_level_embedding/strided_slice1input_layer_1/age_level_embedding/Reshape/shape/1*
_output_shapes
:*
T0*
N
р
)input_layer_1/age_level_embedding/ReshapeReshapeGinput_layer_1/age_level_embedding/age_level_embedding_weights/Reshape_2/input_layer_1/age_level_embedding/Reshape/shape*
T0*'
_output_shapes
:         
Ъ
+input_layer_1/cms_group_id_embedding/lookupStringToHashBucketFastStringSplit_2/StringSplit:1*#
_output_shapes
:         *
num_bucketsd
ї
Yinput_layer_1/cms_group_id_embedding/embedding_weights/Initializer/truncated_normal/shapeConst*I
_class?
=;loc:@input_layer_1/cms_group_id_embedding/embedding_weights*
_output_shapes
:*
valueB"d      *
dtype0
ш
Xinput_layer_1/cms_group_id_embedding/embedding_weights/Initializer/truncated_normal/meanConst*
dtype0*
valueB
 *    *
_output_shapes
: *I
_class?
=;loc:@input_layer_1/cms_group_id_embedding/embedding_weights
ъ
Zinput_layer_1/cms_group_id_embedding/embedding_weights/Initializer/truncated_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#;*I
_class?
=;loc:@input_layer_1/cms_group_id_embedding/embedding_weights
╥
cinput_layer_1/cms_group_id_embedding/embedding_weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalYinput_layer_1/cms_group_id_embedding/embedding_weights/Initializer/truncated_normal/shape*I
_class?
=;loc:@input_layer_1/cms_group_id_embedding/embedding_weights*
_output_shapes

:d*
T0*
dtype0
У
Winput_layer_1/cms_group_id_embedding/embedding_weights/Initializer/truncated_normal/mulMulcinput_layer_1/cms_group_id_embedding/embedding_weights/Initializer/truncated_normal/TruncatedNormalZinput_layer_1/cms_group_id_embedding/embedding_weights/Initializer/truncated_normal/stddev*I
_class?
=;loc:@input_layer_1/cms_group_id_embedding/embedding_weights*
_output_shapes

:d*
T0
Б
Sinput_layer_1/cms_group_id_embedding/embedding_weights/Initializer/truncated_normalAddWinput_layer_1/cms_group_id_embedding/embedding_weights/Initializer/truncated_normal/mulXinput_layer_1/cms_group_id_embedding/embedding_weights/Initializer/truncated_normal/mean*
_output_shapes

:d*I
_class?
=;loc:@input_layer_1/cms_group_id_embedding/embedding_weights*
T0
╤
6input_layer_1/cms_group_id_embedding/embedding_weights
VariableV2*I
_class?
=;loc:@input_layer_1/cms_group_id_embedding/embedding_weights*
shape
:d*
_output_shapes

:d*
dtype0
╚
=input_layer_1/cms_group_id_embedding/embedding_weights/AssignAssign6input_layer_1/cms_group_id_embedding/embedding_weightsSinput_layer_1/cms_group_id_embedding/embedding_weights/Initializer/truncated_normal*
T0*I
_class?
=;loc:@input_layer_1/cms_group_id_embedding/embedding_weights*
_output_shapes

:d
є
;input_layer_1/cms_group_id_embedding/embedding_weights/readIdentity6input_layer_1/cms_group_id_embedding/embedding_weights*
_output_shapes

:d*
T0*I
_class?
=;loc:@input_layer_1/cms_group_id_embedding/embedding_weights
Щ
Oinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/Slice/beginConst*
_output_shapes
:*
valueB: *
dtype0
Ш
Ninput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/Slice/sizeConst*
dtype0*
_output_shapes
:*
valueB:
┬
Iinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/SliceSliceStringSplit_2/StringSplit:2Oinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/Slice/beginNinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/Slice/size*
T0	*
_output_shapes
:*
Index0
У
Iinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
З
Hinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/ProdProdIinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/SliceIinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/Const*
T0	*
_output_shapes
: 
Ц
Tinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/GatherV2/indicesConst*
value	B :*
_output_shapes
: *
dtype0
У
Qinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/GatherV2/axisConst*
dtype0*
value	B : *
_output_shapes
: 
т
Linput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/GatherV2GatherV2StringSplit_2/StringSplit:2Tinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/GatherV2/indicesQinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/GatherV2/axis*
Tindices0*
Tparams0	*
Taxis0*
_output_shapes
: 
Ш
Jinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/Cast/xPackHinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/ProdLinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/GatherV2*
N*
_output_shapes
:*
T0	
Х
Qinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/SparseReshapeSparseReshapeStringSplit_2/StringSplitStringSplit_2/StringSplit:2Jinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/Cast/x*-
_output_shapes
:         :
┴
Zinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/SparseReshape/IdentityIdentity+input_layer_1/cms_group_id_embedding/lookup*#
_output_shapes
:         *
T0	
Ф
Rinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/GreaterEqual/yConst*
value	B	 R *
_output_shapes
: *
dtype0	
╛
Pinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/GreaterEqualGreaterEqualZinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/SparseReshape/IdentityRinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/GreaterEqual/y*#
_output_shapes
:         *
T0	
═
Iinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/WhereWherePinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/GreaterEqual*'
_output_shapes
:         
д
Qinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         
в
Kinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/ReshapeReshapeIinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/WhereQinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/Reshape/shape*
T0	*#
_output_shapes
:         
Х
Sinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
д
Ninput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/GatherV2_1GatherV2Qinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/SparseReshapeKinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/ReshapeSinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/GatherV2_1/axis*
Tparams0	*
Tindices0	*
Taxis0*'
_output_shapes
:         
Х
Sinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/GatherV2_2/axisConst*
dtype0*
value	B : *
_output_shapes
: 
й
Ninput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/GatherV2_2GatherV2Zinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/SparseReshape/IdentityKinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/ReshapeSinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/GatherV2_2/axis*#
_output_shapes
:         *
Tindices0	*
Tparams0	*
Taxis0
╥
Linput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/IdentityIdentitySinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/SparseReshape:1*
_output_shapes
:*
T0	
Я
]input_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/SparseFillEmptyRows/ConstConst*
dtype0	*
value	B	 R *
_output_shapes
: 
о
kinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsNinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/GatherV2_1Ninput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/GatherV2_2Linput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/Identity]input_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:         :         :         :         
└
oinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
_output_shapes
:*
dtype0
┬
qinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
┬
qinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
valueB"      *
dtype0
▓
iinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicekinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsoinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/embedding_lookup_sparse/strided_slice/stackqinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1qinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2*
end_mask*
Index0*#
_output_shapes
:         *

begin_mask*
shrink_axis_mask*
T0	
Р
`input_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/embedding_lookup_sparse/CastCastiinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/embedding_lookup_sparse/strided_slice*

DstT0*#
_output_shapes
:         *

SrcT0	
Ш
binput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/embedding_lookup_sparse/UniqueUniqueminput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:         :         *
T0	
■
qinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*
dtype0*
_output_shapes
: *I
_class?
=;loc:@input_layer_1/cms_group_id_embedding/embedding_weights*
value	B : 
м
linput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV2;input_layer_1/cms_group_id_embedding/embedding_weights/readbinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/embedding_lookup_sparse/Uniqueqinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis*
Taxis0*I
_class?
=;loc:@input_layer_1/cms_group_id_embedding/embedding_weights*'
_output_shapes
:         *
Tparams0*
Tindices0	
б
uinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentitylinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/embedding_lookup_sparse/embedding_lookup*'
_output_shapes
:         *
T0
с
[input_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/embedding_lookup_sparseSparseSegmentMeanuinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identitydinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/embedding_lookup_sparse/Unique:1`input_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:         
д
Sinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB"       
╬
Minput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/Reshape_1Reshapeminput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:2Sinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/Reshape_1/shape*'
_output_shapes
:         *
T0

╘
Iinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/ShapeShape[input_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/embedding_lookup_sparse*
T0*
_output_shapes
:
б
Winput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/strided_slice/stackConst*
valueB:*
_output_shapes
:*
dtype0
г
Yinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
г
Yinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Б
Qinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/strided_sliceStridedSliceIinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/ShapeWinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/strided_slice/stackYinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/strided_slice/stack_1Yinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/strided_slice/stack_2*
shrink_axis_mask*
_output_shapes
: *
T0*
Index0
Н
Kinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/stack/0Const*
_output_shapes
: *
value	B :*
dtype0
Я
Iinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/stackPackKinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/stack/0Qinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/strided_slice*
N*
_output_shapes
:*
T0
е
Hinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/TileTileMinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/Reshape_1Iinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/stack*0
_output_shapes
:                  *
T0

ъ
Ninput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/zeros_like	ZerosLike[input_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/embedding_lookup_sparse*'
_output_shapes
:         *
T0
Ў
Cinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weightsSelectHinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/TileNinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/zeros_like[input_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:         
г
Jinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/Cast_1CastStringSplit_2/StringSplit:2*
_output_shapes
:*

DstT0*

SrcT0	
Ы
Qinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/Slice_1/beginConst*
dtype0*
valueB: *
_output_shapes
:
Ъ
Pinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
valueB:*
dtype0
ў
Kinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/Slice_1SliceJinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/Cast_1Qinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/Slice_1/beginPinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/Slice_1/size*
_output_shapes
:*
Index0*
T0
╛
Kinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/Shape_1ShapeCinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights*
_output_shapes
:*
T0
Ы
Qinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/Slice_2/beginConst*
dtype0*
valueB:*
_output_shapes
:
г
Pinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/Slice_2/sizeConst*
valueB:
         *
dtype0*
_output_shapes
:
°
Kinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/Slice_2SliceKinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/Shape_1Qinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/Slice_2/beginPinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/Slice_2/size*
_output_shapes
:*
Index0*
T0
С
Oinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
я
Jinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/concatConcatV2Kinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/Slice_1Kinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/Slice_2Oinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/concat/axis*
T0*
N*
_output_shapes
:
Ы
Minput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/Reshape_2ReshapeCinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weightsJinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/concat*
T0*'
_output_shapes
:         
з
*input_layer_1/cms_group_id_embedding/ShapeShapeMinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/Reshape_2*
_output_shapes
:*
T0
В
8input_layer_1/cms_group_id_embedding/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Д
:input_layer_1/cms_group_id_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Д
:input_layer_1/cms_group_id_embedding/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
ц
2input_layer_1/cms_group_id_embedding/strided_sliceStridedSlice*input_layer_1/cms_group_id_embedding/Shape8input_layer_1/cms_group_id_embedding/strided_slice/stack:input_layer_1/cms_group_id_embedding/strided_slice/stack_1:input_layer_1/cms_group_id_embedding/strided_slice/stack_2*
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
v
4input_layer_1/cms_group_id_embedding/Reshape/shape/1Const*
dtype0*
_output_shapes
: *
value	B :
╥
2input_layer_1/cms_group_id_embedding/Reshape/shapePack2input_layer_1/cms_group_id_embedding/strided_slice4input_layer_1/cms_group_id_embedding/Reshape/shape/1*
N*
_output_shapes
:*
T0
ь
,input_layer_1/cms_group_id_embedding/ReshapeReshapeMinput_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/Reshape_22input_layer_1/cms_group_id_embedding/Reshape/shape*
T0*'
_output_shapes
:         
Ч
(input_layer_1/cms_segid_embedding/lookupStringToHashBucketFastStringSplit_1/StringSplit:1*
num_bucketsd*#
_output_shapes
:         
я
Vinput_layer_1/cms_segid_embedding/embedding_weights/Initializer/truncated_normal/shapeConst*
dtype0*F
_class<
:8loc:@input_layer_1/cms_segid_embedding/embedding_weights*
_output_shapes
:*
valueB"d      
т
Uinput_layer_1/cms_segid_embedding/embedding_weights/Initializer/truncated_normal/meanConst*
dtype0*
valueB
 *    *F
_class<
:8loc:@input_layer_1/cms_segid_embedding/embedding_weights*
_output_shapes
: 
ф
Winput_layer_1/cms_segid_embedding/embedding_weights/Initializer/truncated_normal/stddevConst*F
_class<
:8loc:@input_layer_1/cms_segid_embedding/embedding_weights*
valueB
 *
╫#;*
dtype0*
_output_shapes
: 
╔
`input_layer_1/cms_segid_embedding/embedding_weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalVinput_layer_1/cms_segid_embedding/embedding_weights/Initializer/truncated_normal/shape*
T0*F
_class<
:8loc:@input_layer_1/cms_segid_embedding/embedding_weights*
_output_shapes

:d*
dtype0
З
Tinput_layer_1/cms_segid_embedding/embedding_weights/Initializer/truncated_normal/mulMul`input_layer_1/cms_segid_embedding/embedding_weights/Initializer/truncated_normal/TruncatedNormalWinput_layer_1/cms_segid_embedding/embedding_weights/Initializer/truncated_normal/stddev*
T0*
_output_shapes

:d*F
_class<
:8loc:@input_layer_1/cms_segid_embedding/embedding_weights
ї
Pinput_layer_1/cms_segid_embedding/embedding_weights/Initializer/truncated_normalAddTinput_layer_1/cms_segid_embedding/embedding_weights/Initializer/truncated_normal/mulUinput_layer_1/cms_segid_embedding/embedding_weights/Initializer/truncated_normal/mean*
T0*F
_class<
:8loc:@input_layer_1/cms_segid_embedding/embedding_weights*
_output_shapes

:d
╦
3input_layer_1/cms_segid_embedding/embedding_weights
VariableV2*
dtype0*
_output_shapes

:d*
shape
:d*F
_class<
:8loc:@input_layer_1/cms_segid_embedding/embedding_weights
╝
:input_layer_1/cms_segid_embedding/embedding_weights/AssignAssign3input_layer_1/cms_segid_embedding/embedding_weightsPinput_layer_1/cms_segid_embedding/embedding_weights/Initializer/truncated_normal*F
_class<
:8loc:@input_layer_1/cms_segid_embedding/embedding_weights*
T0*
_output_shapes

:d
ъ
8input_layer_1/cms_segid_embedding/embedding_weights/readIdentity3input_layer_1/cms_segid_embedding/embedding_weights*
T0*F
_class<
:8loc:@input_layer_1/cms_segid_embedding/embedding_weights*
_output_shapes

:d
У
Iinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/Slice/beginConst*
_output_shapes
:*
valueB: *
dtype0
Т
Hinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:
░
Cinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/SliceSliceStringSplit_1/StringSplit:2Iinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/Slice/beginHinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/Slice/size*
Index0*
T0	*
_output_shapes
:
Н
Cinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/ConstConst*
valueB: *
_output_shapes
:*
dtype0
ї
Binput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/ProdProdCinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/SliceCinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/Const*
_output_shapes
: *
T0	
Р
Ninput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :
Н
Kinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
value	B : *
dtype0
╨
Finput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/GatherV2GatherV2StringSplit_1/StringSplit:2Ninput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/GatherV2/indicesKinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/GatherV2/axis*
Tparams0	*
Tindices0*
Taxis0*
_output_shapes
: 
Ж
Dinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/Cast/xPackBinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/ProdFinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/GatherV2*
_output_shapes
:*
N*
T0	
Й
Kinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/SparseReshapeSparseReshapeStringSplit_1/StringSplitStringSplit_1/StringSplit:2Dinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/Cast/x*-
_output_shapes
:         :
╕
Tinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/SparseReshape/IdentityIdentity(input_layer_1/cms_segid_embedding/lookup*#
_output_shapes
:         *
T0	
О
Linput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
value	B	 R *
dtype0	
м
Jinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/GreaterEqualGreaterEqualTinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/SparseReshape/IdentityLinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/GreaterEqual/y*
T0	*#
_output_shapes
:         
┴
Cinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/WhereWhereJinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/GreaterEqual*'
_output_shapes
:         
Ю
Kinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         
Р
Einput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/ReshapeReshapeCinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/WhereKinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/Reshape/shape*
T0	*#
_output_shapes
:         
П
Minput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/GatherV2_1/axisConst*
dtype0*
value	B : *
_output_shapes
: 
М
Hinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/GatherV2_1GatherV2Kinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/SparseReshapeEinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/ReshapeMinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/GatherV2_1/axis*
Taxis0*'
_output_shapes
:         *
Tparams0	*
Tindices0	
П
Minput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/GatherV2_2/axisConst*
dtype0*
value	B : *
_output_shapes
: 
С
Hinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/GatherV2_2GatherV2Tinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/SparseReshape/IdentityEinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/ReshapeMinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/GatherV2_2/axis*
Tindices0	*
Tparams0	*#
_output_shapes
:         *
Taxis0
╞
Finput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/IdentityIdentityMinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/SparseReshape:1*
T0	*
_output_shapes
:
Щ
Winput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/SparseFillEmptyRows/ConstConst*
dtype0	*
_output_shapes
: *
value	B	 R 
Р
einput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsHinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/GatherV2_1Hinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/GatherV2_2Finput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/IdentityWinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:         :         :         :         
║
iinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
valueB"        *
_output_shapes
:
╝
kinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
╝
kinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
Ф
cinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSliceeinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsiinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/embedding_lookup_sparse/strided_slice/stackkinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1kinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2*

begin_mask*
T0	*#
_output_shapes
:         *
shrink_axis_mask*
end_mask*
Index0
Д
Zinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/embedding_lookup_sparse/CastCastcinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:         
М
\input_layer_1/cms_segid_embedding/cms_segid_embedding_weights/embedding_lookup_sparse/UniqueUniqueginput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:         :         *
T0	
ї
kinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*F
_class<
:8loc:@input_layer_1/cms_segid_embedding/embedding_weights*
value	B : *
dtype0*
_output_shapes
: 
Ф
finput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV28input_layer_1/cms_segid_embedding/embedding_weights/read\input_layer_1/cms_segid_embedding/cms_segid_embedding_weights/embedding_lookup_sparse/Uniquekinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis*
Tparams0*F
_class<
:8loc:@input_layer_1/cms_segid_embedding/embedding_weights*
Tindices0	*'
_output_shapes
:         *
Taxis0
Х
oinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentityfinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/embedding_lookup_sparse/embedding_lookup*
T0*'
_output_shapes
:         
╔
Uinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/embedding_lookup_sparseSparseSegmentMeanoinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity^input_layer_1/cms_segid_embedding/cms_segid_embedding_weights/embedding_lookup_sparse/Unique:1Zinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:         
Ю
Minput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB"       
╝
Ginput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/Reshape_1Reshapeginput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:2Minput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/Reshape_1/shape*'
_output_shapes
:         *
T0

╚
Cinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/ShapeShapeUinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/embedding_lookup_sparse*
_output_shapes
:*
T0
Ы
Qinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/strided_slice/stackConst*
valueB:*
_output_shapes
:*
dtype0
Э
Sinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
Э
Sinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
у
Kinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/strided_sliceStridedSliceCinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/ShapeQinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/strided_slice/stackSinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/strided_slice/stack_1Sinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/strided_slice/stack_2*
T0*
shrink_axis_mask*
_output_shapes
: *
Index0
З
Einput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/stack/0Const*
dtype0*
value	B :*
_output_shapes
: 
Н
Cinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/stackPackEinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/stack/0Kinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/strided_slice*
_output_shapes
:*
N*
T0
У
Binput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/TileTileGinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/Reshape_1Cinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/stack*0
_output_shapes
:                  *
T0

▐
Hinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/zeros_like	ZerosLikeUinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/embedding_lookup_sparse*'
_output_shapes
:         *
T0
▐
=input_layer_1/cms_segid_embedding/cms_segid_embedding_weightsSelectBinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/TileHinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/zeros_likeUinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:         
Э
Dinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/Cast_1CastStringSplit_1/StringSplit:2*

SrcT0	*

DstT0*
_output_shapes
:
Х
Kinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/Slice_1/beginConst*
valueB: *
_output_shapes
:*
dtype0
Ф
Jinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:
▀
Einput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/Slice_1SliceDinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/Cast_1Kinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/Slice_1/beginJinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/Slice_1/size*
T0*
_output_shapes
:*
Index0
▓
Einput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/Shape_1Shape=input_layer_1/cms_segid_embedding/cms_segid_embedding_weights*
T0*
_output_shapes
:
Х
Kinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/Slice_2/beginConst*
dtype0*
_output_shapes
:*
valueB:
Э
Jinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/Slice_2/sizeConst*
dtype0*
_output_shapes
:*
valueB:
         
р
Einput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/Slice_2SliceEinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/Shape_1Kinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/Slice_2/beginJinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/Slice_2/size*
T0*
_output_shapes
:*
Index0
Л
Iinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
╫
Dinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/concatConcatV2Einput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/Slice_1Einput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/Slice_2Iinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/concat/axis*
N*
_output_shapes
:*
T0
Й
Ginput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/Reshape_2Reshape=input_layer_1/cms_segid_embedding/cms_segid_embedding_weightsDinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/concat*
T0*'
_output_shapes
:         
Ю
'input_layer_1/cms_segid_embedding/ShapeShapeGinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/Reshape_2*
T0*
_output_shapes
:

5input_layer_1/cms_segid_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Б
7input_layer_1/cms_segid_embedding/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
Б
7input_layer_1/cms_segid_embedding/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
╫
/input_layer_1/cms_segid_embedding/strided_sliceStridedSlice'input_layer_1/cms_segid_embedding/Shape5input_layer_1/cms_segid_embedding/strided_slice/stack7input_layer_1/cms_segid_embedding/strided_slice/stack_17input_layer_1/cms_segid_embedding/strided_slice/stack_2*
shrink_axis_mask*
_output_shapes
: *
T0*
Index0
s
1input_layer_1/cms_segid_embedding/Reshape/shape/1Const*
value	B :*
_output_shapes
: *
dtype0
╔
/input_layer_1/cms_segid_embedding/Reshape/shapePack/input_layer_1/cms_segid_embedding/strided_slice1input_layer_1/cms_segid_embedding/Reshape/shape/1*
T0*
N*
_output_shapes
:
р
)input_layer_1/cms_segid_embedding/ReshapeReshapeGinput_layer_1/cms_segid_embedding/cms_segid_embedding_weights/Reshape_2/input_layer_1/cms_segid_embedding/Reshape/shape*
T0*'
_output_shapes
:         
в
3input_layer_1/new_user_class_level_embedding/lookupStringToHashBucketFastStringSplit_7/StringSplit:1*
num_buckets
*#
_output_shapes
:         
Е
ainput_layer_1/new_user_class_level_embedding/embedding_weights/Initializer/truncated_normal/shapeConst*
dtype0*Q
_classG
ECloc:@input_layer_1/new_user_class_level_embedding/embedding_weights*
_output_shapes
:*
valueB"
      
°
`input_layer_1/new_user_class_level_embedding/embedding_weights/Initializer/truncated_normal/meanConst*
_output_shapes
: *Q
_classG
ECloc:@input_layer_1/new_user_class_level_embedding/embedding_weights*
dtype0*
valueB
 *    
·
binput_layer_1/new_user_class_level_embedding/embedding_weights/Initializer/truncated_normal/stddevConst*Q
_classG
ECloc:@input_layer_1/new_user_class_level_embedding/embedding_weights*
_output_shapes
: *
valueB
 *
╫#;*
dtype0
ъ
kinput_layer_1/new_user_class_level_embedding/embedding_weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalainput_layer_1/new_user_class_level_embedding/embedding_weights/Initializer/truncated_normal/shape*Q
_classG
ECloc:@input_layer_1/new_user_class_level_embedding/embedding_weights*
T0*
_output_shapes

:
*
dtype0
│
_input_layer_1/new_user_class_level_embedding/embedding_weights/Initializer/truncated_normal/mulMulkinput_layer_1/new_user_class_level_embedding/embedding_weights/Initializer/truncated_normal/TruncatedNormalbinput_layer_1/new_user_class_level_embedding/embedding_weights/Initializer/truncated_normal/stddev*
_output_shapes

:
*
T0*Q
_classG
ECloc:@input_layer_1/new_user_class_level_embedding/embedding_weights
б
[input_layer_1/new_user_class_level_embedding/embedding_weights/Initializer/truncated_normalAdd_input_layer_1/new_user_class_level_embedding/embedding_weights/Initializer/truncated_normal/mul`input_layer_1/new_user_class_level_embedding/embedding_weights/Initializer/truncated_normal/mean*Q
_classG
ECloc:@input_layer_1/new_user_class_level_embedding/embedding_weights*
_output_shapes

:
*
T0
с
>input_layer_1/new_user_class_level_embedding/embedding_weights
VariableV2*Q
_classG
ECloc:@input_layer_1/new_user_class_level_embedding/embedding_weights*
_output_shapes

:
*
shape
:
*
dtype0
ш
Einput_layer_1/new_user_class_level_embedding/embedding_weights/AssignAssign>input_layer_1/new_user_class_level_embedding/embedding_weights[input_layer_1/new_user_class_level_embedding/embedding_weights/Initializer/truncated_normal*
_output_shapes

:
*
T0*Q
_classG
ECloc:@input_layer_1/new_user_class_level_embedding/embedding_weights
Л
Cinput_layer_1/new_user_class_level_embedding/embedding_weights/readIdentity>input_layer_1/new_user_class_level_embedding/embedding_weights*
T0*Q
_classG
ECloc:@input_layer_1/new_user_class_level_embedding/embedding_weights*
_output_shapes

:

й
_input_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/Slice/beginConst*
dtype0*
_output_shapes
:*
valueB: 
и
^input_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
Є
Yinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/SliceSliceStringSplit_7/StringSplit:2_input_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/Slice/begin^input_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/Slice/size*
T0	*
Index0*
_output_shapes
:
г
Yinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
╖
Xinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/ProdProdYinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/SliceYinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/Const*
_output_shapes
: *
T0	
ж
dinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/GatherV2/indicesConst*
dtype0*
_output_shapes
: *
value	B :
г
ainput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/GatherV2/axisConst*
dtype0*
value	B : *
_output_shapes
: 
Т
\input_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/GatherV2GatherV2StringSplit_7/StringSplit:2dinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/GatherV2/indicesainput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/GatherV2/axis*
Tindices0*
Taxis0*
_output_shapes
: *
Tparams0	
╚
Zinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/Cast/xPackXinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/Prod\input_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/GatherV2*
N*
_output_shapes
:*
T0	
╡
ainput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/SparseReshapeSparseReshapeStringSplit_7/StringSplitStringSplit_7/StringSplit:2Zinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/Cast/x*-
_output_shapes
:         :
┘
jinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/SparseReshape/IdentityIdentity3input_layer_1/new_user_class_level_embedding/lookup*
T0	*#
_output_shapes
:         
д
binput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/GreaterEqual/yConst*
dtype0	*
_output_shapes
: *
value	B	 R 
ю
`input_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/GreaterEqualGreaterEqualjinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/SparseReshape/Identitybinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/GreaterEqual/y*#
_output_shapes
:         *
T0	
э
Yinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/WhereWhere`input_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/GreaterEqual*'
_output_shapes
:         
┤
ainput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
valueB:
         *
dtype0
╥
[input_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/ReshapeReshapeYinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/Whereainput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/Reshape/shape*#
_output_shapes
:         *
T0	
е
cinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/GatherV2_1/axisConst*
value	B : *
_output_shapes
: *
dtype0
ф
^input_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/GatherV2_1GatherV2ainput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/SparseReshape[input_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/Reshapecinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/GatherV2_1/axis*
Tindices0	*
Taxis0*
Tparams0	*'
_output_shapes
:         
е
cinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
value	B : *
dtype0
щ
^input_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/GatherV2_2GatherV2jinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/SparseReshape/Identity[input_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/Reshapecinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/GatherV2_2/axis*#
_output_shapes
:         *
Tindices0	*
Taxis0*
Tparams0	
Є
\input_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/IdentityIdentitycinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/SparseReshape:1*
_output_shapes
:*
T0	
п
minput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
■
{input_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows^input_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/GatherV2_1^input_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/GatherV2_2\input_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/Identityminput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:         :         :         :         
╨
input_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
╙
Бinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
╙
Бinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
Д
yinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlice{input_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/embedding_lookup_sparse/strided_slice/stackБinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Бinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2*
T0	*
Index0*
end_mask*#
_output_shapes
:         *
shrink_axis_mask*

begin_mask
░
pinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/embedding_lookup_sparse/CastCastyinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/embedding_lookup_sparse/strided_slice*#
_output_shapes
:         *

SrcT0	*

DstT0
╕
rinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/embedding_lookup_sparse/UniqueUnique}input_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:         :         *
T0	
Ч
Бinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*
value	B : *
dtype0*Q
_classG
ECloc:@input_layer_1/new_user_class_level_embedding/embedding_weights*
_output_shapes
: 
э
|input_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV2Cinput_layer_1/new_user_class_level_embedding/embedding_weights/readrinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/embedding_lookup_sparse/UniqueБinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis*
Taxis0*Q
_classG
ECloc:@input_layer_1/new_user_class_level_embedding/embedding_weights*
Tparams0*'
_output_shapes
:         *
Tindices0	
┬
Еinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentity|input_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/embedding_lookup_sparse/embedding_lookup*'
_output_shapes
:         *
T0
в
kinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/embedding_lookup_sparseSparseSegmentMeanЕinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identitytinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/embedding_lookup_sparse/Unique:1pinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/embedding_lookup_sparse/Cast*'
_output_shapes
:         *
T0
┤
cinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/Reshape_1/shapeConst*
valueB"       *
_output_shapes
:*
dtype0
■
]input_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/Reshape_1Reshape}input_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:2cinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/Reshape_1/shape*
T0
*'
_output_shapes
:         
Ї
Yinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/ShapeShapekinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/embedding_lookup_sparse*
T0*
_output_shapes
:
▒
ginput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:
│
iinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
│
iinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
╤
ainput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/strided_sliceStridedSliceYinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/Shapeginput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/strided_slice/stackiinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/strided_slice/stack_1iinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
Э
[input_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/stack/0Const*
value	B :*
_output_shapes
: *
dtype0
╧
Yinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/stackPack[input_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/stack/0ainput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/strided_slice*
T0*
_output_shapes
:*
N
╒
Xinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/TileTile]input_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/Reshape_1Yinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/stack*0
_output_shapes
:                  *
T0

К
^input_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/zeros_like	ZerosLikekinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:         
╢
Sinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weightsSelectXinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/Tile^input_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/zeros_likekinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:         
│
Zinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/Cast_1CastStringSplit_7/StringSplit:2*
_output_shapes
:*

DstT0*

SrcT0	
л
ainput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
к
`input_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:
╖
[input_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/Slice_1SliceZinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/Cast_1ainput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/Slice_1/begin`input_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/Slice_1/size*
_output_shapes
:*
Index0*
T0
▐
[input_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/Shape_1ShapeSinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights*
_output_shapes
:*
T0
л
ainput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/Slice_2/beginConst*
valueB:*
_output_shapes
:*
dtype0
│
`input_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/Slice_2/sizeConst*
dtype0*
valueB:
         *
_output_shapes
:
╕
[input_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/Slice_2Slice[input_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/Shape_1ainput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/Slice_2/begin`input_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/Slice_2/size*
_output_shapes
:*
T0*
Index0
б
_input_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
п
Zinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/concatConcatV2[input_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/Slice_1[input_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/Slice_2_input_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/concat/axis*
T0*
_output_shapes
:*
N
╦
]input_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/Reshape_2ReshapeSinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weightsZinput_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/concat*
T0*'
_output_shapes
:         
┐
2input_layer_1/new_user_class_level_embedding/ShapeShape]input_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/Reshape_2*
T0*
_output_shapes
:
К
@input_layer_1/new_user_class_level_embedding/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
М
Binput_layer_1/new_user_class_level_embedding/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
М
Binput_layer_1/new_user_class_level_embedding/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
О
:input_layer_1/new_user_class_level_embedding/strided_sliceStridedSlice2input_layer_1/new_user_class_level_embedding/Shape@input_layer_1/new_user_class_level_embedding/strided_slice/stackBinput_layer_1/new_user_class_level_embedding/strided_slice/stack_1Binput_layer_1/new_user_class_level_embedding/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*
_output_shapes
: 
~
<input_layer_1/new_user_class_level_embedding/Reshape/shape/1Const*
_output_shapes
: *
value	B :*
dtype0
ъ
:input_layer_1/new_user_class_level_embedding/Reshape/shapePack:input_layer_1/new_user_class_level_embedding/strided_slice<input_layer_1/new_user_class_level_embedding/Reshape/shape/1*
N*
_output_shapes
:*
T0
М
4input_layer_1/new_user_class_level_embedding/ReshapeReshape]input_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/Reshape_2:input_layer_1/new_user_class_level_embedding/Reshape/shape*
T0*'
_output_shapes
:         
Ш
)input_layer_1/occupation_embedding/lookupStringToHashBucketFastStringSplit_6/StringSplit:1*#
_output_shapes
:         *
num_buckets

ё
Winput_layer_1/occupation_embedding/embedding_weights/Initializer/truncated_normal/shapeConst*
dtype0*G
_class=
;9loc:@input_layer_1/occupation_embedding/embedding_weights*
valueB"
      *
_output_shapes
:
ф
Vinput_layer_1/occupation_embedding/embedding_weights/Initializer/truncated_normal/meanConst*
valueB
 *    *G
_class=
;9loc:@input_layer_1/occupation_embedding/embedding_weights*
_output_shapes
: *
dtype0
ц
Xinput_layer_1/occupation_embedding/embedding_weights/Initializer/truncated_normal/stddevConst*
dtype0*G
_class=
;9loc:@input_layer_1/occupation_embedding/embedding_weights*
_output_shapes
: *
valueB
 *
╫#;
╠
ainput_layer_1/occupation_embedding/embedding_weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalWinput_layer_1/occupation_embedding/embedding_weights/Initializer/truncated_normal/shape*
dtype0*
T0*G
_class=
;9loc:@input_layer_1/occupation_embedding/embedding_weights*
_output_shapes

:

Л
Uinput_layer_1/occupation_embedding/embedding_weights/Initializer/truncated_normal/mulMulainput_layer_1/occupation_embedding/embedding_weights/Initializer/truncated_normal/TruncatedNormalXinput_layer_1/occupation_embedding/embedding_weights/Initializer/truncated_normal/stddev*
_output_shapes

:
*
T0*G
_class=
;9loc:@input_layer_1/occupation_embedding/embedding_weights
∙
Qinput_layer_1/occupation_embedding/embedding_weights/Initializer/truncated_normalAddUinput_layer_1/occupation_embedding/embedding_weights/Initializer/truncated_normal/mulVinput_layer_1/occupation_embedding/embedding_weights/Initializer/truncated_normal/mean*G
_class=
;9loc:@input_layer_1/occupation_embedding/embedding_weights*
T0*
_output_shapes

:

═
4input_layer_1/occupation_embedding/embedding_weights
VariableV2*
_output_shapes

:
*
dtype0*
shape
:
*G
_class=
;9loc:@input_layer_1/occupation_embedding/embedding_weights
└
;input_layer_1/occupation_embedding/embedding_weights/AssignAssign4input_layer_1/occupation_embedding/embedding_weightsQinput_layer_1/occupation_embedding/embedding_weights/Initializer/truncated_normal*
_output_shapes

:
*
T0*G
_class=
;9loc:@input_layer_1/occupation_embedding/embedding_weights
э
9input_layer_1/occupation_embedding/embedding_weights/readIdentity4input_layer_1/occupation_embedding/embedding_weights*
T0*G
_class=
;9loc:@input_layer_1/occupation_embedding/embedding_weights*
_output_shapes

:

Х
Kinput_layer_1/occupation_embedding/occupation_embedding_weights/Slice/beginConst*
_output_shapes
:*
valueB: *
dtype0
Ф
Jinput_layer_1/occupation_embedding/occupation_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:
╢
Einput_layer_1/occupation_embedding/occupation_embedding_weights/SliceSliceStringSplit_6/StringSplit:2Kinput_layer_1/occupation_embedding/occupation_embedding_weights/Slice/beginJinput_layer_1/occupation_embedding/occupation_embedding_weights/Slice/size*
_output_shapes
:*
T0	*
Index0
П
Einput_layer_1/occupation_embedding/occupation_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
√
Dinput_layer_1/occupation_embedding/occupation_embedding_weights/ProdProdEinput_layer_1/occupation_embedding/occupation_embedding_weights/SliceEinput_layer_1/occupation_embedding/occupation_embedding_weights/Const*
T0	*
_output_shapes
: 
Т
Pinput_layer_1/occupation_embedding/occupation_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :
П
Minput_layer_1/occupation_embedding/occupation_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
value	B : *
dtype0
╓
Hinput_layer_1/occupation_embedding/occupation_embedding_weights/GatherV2GatherV2StringSplit_6/StringSplit:2Pinput_layer_1/occupation_embedding/occupation_embedding_weights/GatherV2/indicesMinput_layer_1/occupation_embedding/occupation_embedding_weights/GatherV2/axis*
Taxis0*
Tparams0	*
_output_shapes
: *
Tindices0
М
Finput_layer_1/occupation_embedding/occupation_embedding_weights/Cast/xPackDinput_layer_1/occupation_embedding/occupation_embedding_weights/ProdHinput_layer_1/occupation_embedding/occupation_embedding_weights/GatherV2*
N*
T0	*
_output_shapes
:
Н
Minput_layer_1/occupation_embedding/occupation_embedding_weights/SparseReshapeSparseReshapeStringSplit_6/StringSplitStringSplit_6/StringSplit:2Finput_layer_1/occupation_embedding/occupation_embedding_weights/Cast/x*-
_output_shapes
:         :
╗
Vinput_layer_1/occupation_embedding/occupation_embedding_weights/SparseReshape/IdentityIdentity)input_layer_1/occupation_embedding/lookup*#
_output_shapes
:         *
T0	
Р
Ninput_layer_1/occupation_embedding/occupation_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
value	B	 R *
dtype0	
▓
Linput_layer_1/occupation_embedding/occupation_embedding_weights/GreaterEqualGreaterEqualVinput_layer_1/occupation_embedding/occupation_embedding_weights/SparseReshape/IdentityNinput_layer_1/occupation_embedding/occupation_embedding_weights/GreaterEqual/y*#
_output_shapes
:         *
T0	
┼
Einput_layer_1/occupation_embedding/occupation_embedding_weights/WhereWhereLinput_layer_1/occupation_embedding/occupation_embedding_weights/GreaterEqual*'
_output_shapes
:         
а
Minput_layer_1/occupation_embedding/occupation_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         
Ц
Ginput_layer_1/occupation_embedding/occupation_embedding_weights/ReshapeReshapeEinput_layer_1/occupation_embedding/occupation_embedding_weights/WhereMinput_layer_1/occupation_embedding/occupation_embedding_weights/Reshape/shape*
T0	*#
_output_shapes
:         
С
Oinput_layer_1/occupation_embedding/occupation_embedding_weights/GatherV2_1/axisConst*
value	B : *
_output_shapes
: *
dtype0
Ф
Jinput_layer_1/occupation_embedding/occupation_embedding_weights/GatherV2_1GatherV2Minput_layer_1/occupation_embedding/occupation_embedding_weights/SparseReshapeGinput_layer_1/occupation_embedding/occupation_embedding_weights/ReshapeOinput_layer_1/occupation_embedding/occupation_embedding_weights/GatherV2_1/axis*'
_output_shapes
:         *
Tindices0	*
Tparams0	*
Taxis0
С
Oinput_layer_1/occupation_embedding/occupation_embedding_weights/GatherV2_2/axisConst*
value	B : *
_output_shapes
: *
dtype0
Щ
Jinput_layer_1/occupation_embedding/occupation_embedding_weights/GatherV2_2GatherV2Vinput_layer_1/occupation_embedding/occupation_embedding_weights/SparseReshape/IdentityGinput_layer_1/occupation_embedding/occupation_embedding_weights/ReshapeOinput_layer_1/occupation_embedding/occupation_embedding_weights/GatherV2_2/axis*
Tindices0	*
Tparams0	*#
_output_shapes
:         *
Taxis0
╩
Hinput_layer_1/occupation_embedding/occupation_embedding_weights/IdentityIdentityOinput_layer_1/occupation_embedding/occupation_embedding_weights/SparseReshape:1*
T0	*
_output_shapes
:
Ы
Yinput_layer_1/occupation_embedding/occupation_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Ъ
ginput_layer_1/occupation_embedding/occupation_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsJinput_layer_1/occupation_embedding/occupation_embedding_weights/GatherV2_1Jinput_layer_1/occupation_embedding/occupation_embedding_weights/GatherV2_2Hinput_layer_1/occupation_embedding/occupation_embedding_weights/IdentityYinput_layer_1/occupation_embedding/occupation_embedding_weights/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:         :         :         :         
╝
kinput_layer_1/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
╛
minput_layer_1/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
╛
minput_layer_1/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
valueB"      *
dtype0
Ю
einput_layer_1/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSliceginput_layer_1/occupation_embedding/occupation_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowskinput_layer_1/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/strided_slice/stackminput_layer_1/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1minput_layer_1/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2*
end_mask*
Index0*
T0	*
shrink_axis_mask*#
_output_shapes
:         *

begin_mask
И
\input_layer_1/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/CastCasteinput_layer_1/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/strided_slice*#
_output_shapes
:         *

DstT0*

SrcT0	
Р
^input_layer_1/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/UniqueUniqueiinput_layer_1/occupation_embedding/occupation_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:         :         
°
minput_layer_1/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*G
_class=
;9loc:@input_layer_1/occupation_embedding/embedding_weights*
value	B : *
dtype0*
_output_shapes
: 
Ь
hinput_layer_1/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV29input_layer_1/occupation_embedding/embedding_weights/read^input_layer_1/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/Uniqueminput_layer_1/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis*
Tparams0*G
_class=
;9loc:@input_layer_1/occupation_embedding/embedding_weights*
Taxis0*'
_output_shapes
:         *
Tindices0	
Щ
qinput_layer_1/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentityhinput_layer_1/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/embedding_lookup*'
_output_shapes
:         *
T0
╤
Winput_layer_1/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparseSparseSegmentMeanqinput_layer_1/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity`input_layer_1/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/Unique:1\input_layer_1/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/Cast*'
_output_shapes
:         *
T0
а
Oinput_layer_1/occupation_embedding/occupation_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"       
┬
Iinput_layer_1/occupation_embedding/occupation_embedding_weights/Reshape_1Reshapeiinput_layer_1/occupation_embedding/occupation_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:2Oinput_layer_1/occupation_embedding/occupation_embedding_weights/Reshape_1/shape*
T0
*'
_output_shapes
:         
╠
Einput_layer_1/occupation_embedding/occupation_embedding_weights/ShapeShapeWinput_layer_1/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse*
T0*
_output_shapes
:
Э
Sinput_layer_1/occupation_embedding/occupation_embedding_weights/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:
Я
Uinput_layer_1/occupation_embedding/occupation_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Я
Uinput_layer_1/occupation_embedding/occupation_embedding_weights/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
э
Minput_layer_1/occupation_embedding/occupation_embedding_weights/strided_sliceStridedSliceEinput_layer_1/occupation_embedding/occupation_embedding_weights/ShapeSinput_layer_1/occupation_embedding/occupation_embedding_weights/strided_slice/stackUinput_layer_1/occupation_embedding/occupation_embedding_weights/strided_slice/stack_1Uinput_layer_1/occupation_embedding/occupation_embedding_weights/strided_slice/stack_2*
T0*
shrink_axis_mask*
_output_shapes
: *
Index0
Й
Ginput_layer_1/occupation_embedding/occupation_embedding_weights/stack/0Const*
value	B :*
_output_shapes
: *
dtype0
У
Einput_layer_1/occupation_embedding/occupation_embedding_weights/stackPackGinput_layer_1/occupation_embedding/occupation_embedding_weights/stack/0Minput_layer_1/occupation_embedding/occupation_embedding_weights/strided_slice*
T0*
N*
_output_shapes
:
Щ
Dinput_layer_1/occupation_embedding/occupation_embedding_weights/TileTileIinput_layer_1/occupation_embedding/occupation_embedding_weights/Reshape_1Einput_layer_1/occupation_embedding/occupation_embedding_weights/stack*
T0
*0
_output_shapes
:                  
т
Jinput_layer_1/occupation_embedding/occupation_embedding_weights/zeros_like	ZerosLikeWinput_layer_1/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse*'
_output_shapes
:         *
T0
ц
?input_layer_1/occupation_embedding/occupation_embedding_weightsSelectDinput_layer_1/occupation_embedding/occupation_embedding_weights/TileJinput_layer_1/occupation_embedding/occupation_embedding_weights/zeros_likeWinput_layer_1/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:         
Я
Finput_layer_1/occupation_embedding/occupation_embedding_weights/Cast_1CastStringSplit_6/StringSplit:2*

SrcT0	*
_output_shapes
:*

DstT0
Ч
Minput_layer_1/occupation_embedding/occupation_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
valueB: *
dtype0
Ц
Linput_layer_1/occupation_embedding/occupation_embedding_weights/Slice_1/sizeConst*
valueB:*
_output_shapes
:*
dtype0
ч
Ginput_layer_1/occupation_embedding/occupation_embedding_weights/Slice_1SliceFinput_layer_1/occupation_embedding/occupation_embedding_weights/Cast_1Minput_layer_1/occupation_embedding/occupation_embedding_weights/Slice_1/beginLinput_layer_1/occupation_embedding/occupation_embedding_weights/Slice_1/size*
T0*
_output_shapes
:*
Index0
╢
Ginput_layer_1/occupation_embedding/occupation_embedding_weights/Shape_1Shape?input_layer_1/occupation_embedding/occupation_embedding_weights*
_output_shapes
:*
T0
Ч
Minput_layer_1/occupation_embedding/occupation_embedding_weights/Slice_2/beginConst*
valueB:*
_output_shapes
:*
dtype0
Я
Linput_layer_1/occupation_embedding/occupation_embedding_weights/Slice_2/sizeConst*
valueB:
         *
dtype0*
_output_shapes
:
ш
Ginput_layer_1/occupation_embedding/occupation_embedding_weights/Slice_2SliceGinput_layer_1/occupation_embedding/occupation_embedding_weights/Shape_1Minput_layer_1/occupation_embedding/occupation_embedding_weights/Slice_2/beginLinput_layer_1/occupation_embedding/occupation_embedding_weights/Slice_2/size*
T0*
_output_shapes
:*
Index0
Н
Kinput_layer_1/occupation_embedding/occupation_embedding_weights/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
▀
Finput_layer_1/occupation_embedding/occupation_embedding_weights/concatConcatV2Ginput_layer_1/occupation_embedding/occupation_embedding_weights/Slice_1Ginput_layer_1/occupation_embedding/occupation_embedding_weights/Slice_2Kinput_layer_1/occupation_embedding/occupation_embedding_weights/concat/axis*
N*
T0*
_output_shapes
:
П
Iinput_layer_1/occupation_embedding/occupation_embedding_weights/Reshape_2Reshape?input_layer_1/occupation_embedding/occupation_embedding_weightsFinput_layer_1/occupation_embedding/occupation_embedding_weights/concat*
T0*'
_output_shapes
:         
б
(input_layer_1/occupation_embedding/ShapeShapeIinput_layer_1/occupation_embedding/occupation_embedding_weights/Reshape_2*
T0*
_output_shapes
:
А
6input_layer_1/occupation_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
В
8input_layer_1/occupation_embedding/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
В
8input_layer_1/occupation_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
▄
0input_layer_1/occupation_embedding/strided_sliceStridedSlice(input_layer_1/occupation_embedding/Shape6input_layer_1/occupation_embedding/strided_slice/stack8input_layer_1/occupation_embedding/strided_slice/stack_18input_layer_1/occupation_embedding/strided_slice/stack_2*
Index0*
_output_shapes
: *
T0*
shrink_axis_mask
t
2input_layer_1/occupation_embedding/Reshape/shape/1Const*
dtype0*
value	B :*
_output_shapes
: 
╠
0input_layer_1/occupation_embedding/Reshape/shapePack0input_layer_1/occupation_embedding/strided_slice2input_layer_1/occupation_embedding/Reshape/shape/1*
T0*
N*
_output_shapes
:
ф
*input_layer_1/occupation_embedding/ReshapeReshapeIinput_layer_1/occupation_embedding/occupation_embedding_weights/Reshape_20input_layer_1/occupation_embedding/Reshape/shape*
T0*'
_output_shapes
:         
Ъ
+input_layer_1/pvalue_level_embedding/lookupStringToHashBucketFastStringSplit_4/StringSplit:1*#
_output_shapes
:         *
num_buckets

ї
Yinput_layer_1/pvalue_level_embedding/embedding_weights/Initializer/truncated_normal/shapeConst*
_output_shapes
:*I
_class?
=;loc:@input_layer_1/pvalue_level_embedding/embedding_weights*
valueB"
      *
dtype0
ш
Xinput_layer_1/pvalue_level_embedding/embedding_weights/Initializer/truncated_normal/meanConst*I
_class?
=;loc:@input_layer_1/pvalue_level_embedding/embedding_weights*
dtype0*
valueB
 *    *
_output_shapes
: 
ъ
Zinput_layer_1/pvalue_level_embedding/embedding_weights/Initializer/truncated_normal/stddevConst*
_output_shapes
: *
dtype0*I
_class?
=;loc:@input_layer_1/pvalue_level_embedding/embedding_weights*
valueB
 *
╫#;
╥
cinput_layer_1/pvalue_level_embedding/embedding_weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalYinput_layer_1/pvalue_level_embedding/embedding_weights/Initializer/truncated_normal/shape*
_output_shapes

:
*
dtype0*
T0*I
_class?
=;loc:@input_layer_1/pvalue_level_embedding/embedding_weights
У
Winput_layer_1/pvalue_level_embedding/embedding_weights/Initializer/truncated_normal/mulMulcinput_layer_1/pvalue_level_embedding/embedding_weights/Initializer/truncated_normal/TruncatedNormalZinput_layer_1/pvalue_level_embedding/embedding_weights/Initializer/truncated_normal/stddev*
T0*I
_class?
=;loc:@input_layer_1/pvalue_level_embedding/embedding_weights*
_output_shapes

:

Б
Sinput_layer_1/pvalue_level_embedding/embedding_weights/Initializer/truncated_normalAddWinput_layer_1/pvalue_level_embedding/embedding_weights/Initializer/truncated_normal/mulXinput_layer_1/pvalue_level_embedding/embedding_weights/Initializer/truncated_normal/mean*
T0*
_output_shapes

:
*I
_class?
=;loc:@input_layer_1/pvalue_level_embedding/embedding_weights
╤
6input_layer_1/pvalue_level_embedding/embedding_weights
VariableV2*I
_class?
=;loc:@input_layer_1/pvalue_level_embedding/embedding_weights*
dtype0*
shape
:
*
_output_shapes

:

╚
=input_layer_1/pvalue_level_embedding/embedding_weights/AssignAssign6input_layer_1/pvalue_level_embedding/embedding_weightsSinput_layer_1/pvalue_level_embedding/embedding_weights/Initializer/truncated_normal*I
_class?
=;loc:@input_layer_1/pvalue_level_embedding/embedding_weights*
_output_shapes

:
*
T0
є
;input_layer_1/pvalue_level_embedding/embedding_weights/readIdentity6input_layer_1/pvalue_level_embedding/embedding_weights*I
_class?
=;loc:@input_layer_1/pvalue_level_embedding/embedding_weights*
_output_shapes

:
*
T0
Щ
Oinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: 
Ш
Ninput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:
┬
Iinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/SliceSliceStringSplit_4/StringSplit:2Oinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/Slice/beginNinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/Slice/size*
_output_shapes
:*
Index0*
T0	
У
Iinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
З
Hinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/ProdProdIinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/SliceIinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/Const*
_output_shapes
: *
T0	
Ц
Tinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :
У
Qinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/GatherV2/axisConst*
value	B : *
_output_shapes
: *
dtype0
т
Linput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/GatherV2GatherV2StringSplit_4/StringSplit:2Tinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/GatherV2/indicesQinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/GatherV2/axis*
Tparams0	*
Tindices0*
Taxis0*
_output_shapes
: 
Ш
Jinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/Cast/xPackHinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/ProdLinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/GatherV2*
T0	*
N*
_output_shapes
:
Х
Qinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/SparseReshapeSparseReshapeStringSplit_4/StringSplitStringSplit_4/StringSplit:2Jinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/Cast/x*-
_output_shapes
:         :
┴
Zinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/SparseReshape/IdentityIdentity+input_layer_1/pvalue_level_embedding/lookup*#
_output_shapes
:         *
T0	
Ф
Rinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/GreaterEqual/yConst*
dtype0	*
value	B	 R *
_output_shapes
: 
╛
Pinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/GreaterEqualGreaterEqualZinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/SparseReshape/IdentityRinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/GreaterEqual/y*
T0	*#
_output_shapes
:         
═
Iinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/WhereWherePinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/GreaterEqual*'
_output_shapes
:         
д
Qinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         
в
Kinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/ReshapeReshapeIinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/WhereQinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/Reshape/shape*#
_output_shapes
:         *
T0	
Х
Sinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/GatherV2_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 
д
Ninput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/GatherV2_1GatherV2Qinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/SparseReshapeKinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/ReshapeSinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/GatherV2_1/axis*
Tindices0	*
Tparams0	*
Taxis0*'
_output_shapes
:         
Х
Sinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
value	B : *
dtype0
й
Ninput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/GatherV2_2GatherV2Zinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/SparseReshape/IdentityKinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/ReshapeSinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/GatherV2_2/axis*#
_output_shapes
:         *
Tparams0	*
Tindices0	*
Taxis0
╥
Linput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/IdentityIdentitySinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/SparseReshape:1*
_output_shapes
:*
T0	
Я
]input_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
о
kinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsNinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/GatherV2_1Ninput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/GatherV2_2Linput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/Identity]input_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/SparseFillEmptyRows/Const*T
_output_shapesB
@:         :         :         :         *
T0	
└
oinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
┬
qinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
┬
qinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
▓
iinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicekinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsoinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/embedding_lookup_sparse/strided_slice/stackqinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1qinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2*

begin_mask*#
_output_shapes
:         *
Index0*
shrink_axis_mask*
end_mask*
T0	
Р
`input_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/embedding_lookup_sparse/CastCastiinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/embedding_lookup_sparse/strided_slice*#
_output_shapes
:         *

SrcT0	*

DstT0
Ш
binput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/embedding_lookup_sparse/UniqueUniqueminput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:         :         
■
qinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*I
_class?
=;loc:@input_layer_1/pvalue_level_embedding/embedding_weights*
dtype0*
value	B : *
_output_shapes
: 
м
linput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV2;input_layer_1/pvalue_level_embedding/embedding_weights/readbinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/embedding_lookup_sparse/Uniqueqinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis*
Tparams0*
Taxis0*
Tindices0	*'
_output_shapes
:         *I
_class?
=;loc:@input_layer_1/pvalue_level_embedding/embedding_weights
б
uinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentitylinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/embedding_lookup_sparse/embedding_lookup*
T0*'
_output_shapes
:         
с
[input_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/embedding_lookup_sparseSparseSegmentMeanuinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identitydinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/embedding_lookup_sparse/Unique:1`input_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/embedding_lookup_sparse/Cast*'
_output_shapes
:         *
T0
д
Sinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB"       
╬
Minput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/Reshape_1Reshapeminput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:2Sinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/Reshape_1/shape*
T0
*'
_output_shapes
:         
╘
Iinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/ShapeShape[input_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/embedding_lookup_sparse*
_output_shapes
:*
T0
б
Winput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
г
Yinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
г
Yinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Б
Qinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/strided_sliceStridedSliceIinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/ShapeWinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/strided_slice/stackYinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/strided_slice/stack_1Yinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
Н
Kinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/stack/0Const*
value	B :*
_output_shapes
: *
dtype0
Я
Iinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/stackPackKinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/stack/0Qinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/strided_slice*
N*
_output_shapes
:*
T0
е
Hinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/TileTileMinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/Reshape_1Iinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/stack*
T0
*0
_output_shapes
:                  
ъ
Ninput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/zeros_like	ZerosLike[input_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:         
Ў
Cinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weightsSelectHinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/TileNinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/zeros_like[input_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:         
г
Jinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/Cast_1CastStringSplit_4/StringSplit:2*
_output_shapes
:*

SrcT0	*

DstT0
Ы
Qinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
Ъ
Pinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/Slice_1/sizeConst*
dtype0*
_output_shapes
:*
valueB:
ў
Kinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/Slice_1SliceJinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/Cast_1Qinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/Slice_1/beginPinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/Slice_1/size*
Index0*
T0*
_output_shapes
:
╛
Kinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/Shape_1ShapeCinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights*
T0*
_output_shapes
:
Ы
Qinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
valueB:*
dtype0
г
Pinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
         
°
Kinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/Slice_2SliceKinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/Shape_1Qinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/Slice_2/beginPinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/Slice_2/size*
T0*
Index0*
_output_shapes
:
С
Oinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
я
Jinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/concatConcatV2Kinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/Slice_1Kinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/Slice_2Oinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/concat/axis*
_output_shapes
:*
N*
T0
Ы
Minput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/Reshape_2ReshapeCinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weightsJinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/concat*'
_output_shapes
:         *
T0
з
*input_layer_1/pvalue_level_embedding/ShapeShapeMinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/Reshape_2*
_output_shapes
:*
T0
В
8input_layer_1/pvalue_level_embedding/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
Д
:input_layer_1/pvalue_level_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Д
:input_layer_1/pvalue_level_embedding/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
ц
2input_layer_1/pvalue_level_embedding/strided_sliceStridedSlice*input_layer_1/pvalue_level_embedding/Shape8input_layer_1/pvalue_level_embedding/strided_slice/stack:input_layer_1/pvalue_level_embedding/strided_slice/stack_1:input_layer_1/pvalue_level_embedding/strided_slice/stack_2*
T0*
_output_shapes
: *
Index0*
shrink_axis_mask
v
4input_layer_1/pvalue_level_embedding/Reshape/shape/1Const*
dtype0*
_output_shapes
: *
value	B :
╥
2input_layer_1/pvalue_level_embedding/Reshape/shapePack2input_layer_1/pvalue_level_embedding/strided_slice4input_layer_1/pvalue_level_embedding/Reshape/shape/1*
_output_shapes
:*
N*
T0
ь
,input_layer_1/pvalue_level_embedding/ReshapeReshapeMinput_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/Reshape_22input_layer_1/pvalue_level_embedding/Reshape/shape*
T0*'
_output_shapes
:         
Ь
-input_layer_1/shopping_level_embedding/lookupStringToHashBucketFastStringSplit_5/StringSplit:1*
num_buckets
*#
_output_shapes
:         
∙
[input_layer_1/shopping_level_embedding/embedding_weights/Initializer/truncated_normal/shapeConst*K
_classA
?=loc:@input_layer_1/shopping_level_embedding/embedding_weights*
dtype0*
_output_shapes
:*
valueB"
      
ь
Zinput_layer_1/shopping_level_embedding/embedding_weights/Initializer/truncated_normal/meanConst*K
_classA
?=loc:@input_layer_1/shopping_level_embedding/embedding_weights*
valueB
 *    *
dtype0*
_output_shapes
: 
ю
\input_layer_1/shopping_level_embedding/embedding_weights/Initializer/truncated_normal/stddevConst*
dtype0*
valueB
 *
╫#;*K
_classA
?=loc:@input_layer_1/shopping_level_embedding/embedding_weights*
_output_shapes
: 
╪
einput_layer_1/shopping_level_embedding/embedding_weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormal[input_layer_1/shopping_level_embedding/embedding_weights/Initializer/truncated_normal/shape*
_output_shapes

:
*
T0*
dtype0*K
_classA
?=loc:@input_layer_1/shopping_level_embedding/embedding_weights
Ы
Yinput_layer_1/shopping_level_embedding/embedding_weights/Initializer/truncated_normal/mulMuleinput_layer_1/shopping_level_embedding/embedding_weights/Initializer/truncated_normal/TruncatedNormal\input_layer_1/shopping_level_embedding/embedding_weights/Initializer/truncated_normal/stddev*K
_classA
?=loc:@input_layer_1/shopping_level_embedding/embedding_weights*
_output_shapes

:
*
T0
Й
Uinput_layer_1/shopping_level_embedding/embedding_weights/Initializer/truncated_normalAddYinput_layer_1/shopping_level_embedding/embedding_weights/Initializer/truncated_normal/mulZinput_layer_1/shopping_level_embedding/embedding_weights/Initializer/truncated_normal/mean*K
_classA
?=loc:@input_layer_1/shopping_level_embedding/embedding_weights*
T0*
_output_shapes

:

╒
8input_layer_1/shopping_level_embedding/embedding_weights
VariableV2*
dtype0*K
_classA
?=loc:@input_layer_1/shopping_level_embedding/embedding_weights*
shape
:
*
_output_shapes

:

╨
?input_layer_1/shopping_level_embedding/embedding_weights/AssignAssign8input_layer_1/shopping_level_embedding/embedding_weightsUinput_layer_1/shopping_level_embedding/embedding_weights/Initializer/truncated_normal*K
_classA
?=loc:@input_layer_1/shopping_level_embedding/embedding_weights*
_output_shapes

:
*
T0
∙
=input_layer_1/shopping_level_embedding/embedding_weights/readIdentity8input_layer_1/shopping_level_embedding/embedding_weights*
_output_shapes

:
*K
_classA
?=loc:@input_layer_1/shopping_level_embedding/embedding_weights*
T0
Э
Sinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/Slice/beginConst*
dtype0*
valueB: *
_output_shapes
:
Ь
Rinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:
╬
Minput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/SliceSliceStringSplit_5/StringSplit:2Sinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/Slice/beginRinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/Slice/size*
T0	*
Index0*
_output_shapes
:
Ч
Minput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/ConstConst*
_output_shapes
:*
valueB: *
dtype0
У
Linput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/ProdProdMinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/SliceMinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/Const*
_output_shapes
: *
T0	
Ъ
Xinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
Ч
Uinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/GatherV2/axisConst*
dtype0*
value	B : *
_output_shapes
: 
ю
Pinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/GatherV2GatherV2StringSplit_5/StringSplit:2Xinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/GatherV2/indicesUinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/GatherV2/axis*
Taxis0*
Tparams0	*
Tindices0*
_output_shapes
: 
д
Ninput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/Cast/xPackLinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/ProdPinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/GatherV2*
T0	*
N*
_output_shapes
:
Э
Uinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/SparseReshapeSparseReshapeStringSplit_5/StringSplitStringSplit_5/StringSplit:2Ninput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/Cast/x*-
_output_shapes
:         :
╟
^input_layer_1/shopping_level_embedding/shopping_level_embedding_weights/SparseReshape/IdentityIdentity-input_layer_1/shopping_level_embedding/lookup*
T0	*#
_output_shapes
:         
Ш
Vinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
╩
Tinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/GreaterEqualGreaterEqual^input_layer_1/shopping_level_embedding/shopping_level_embedding_weights/SparseReshape/IdentityVinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/GreaterEqual/y*#
_output_shapes
:         *
T0	
╒
Minput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/WhereWhereTinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/GreaterEqual*'
_output_shapes
:         
и
Uinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         
о
Oinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/ReshapeReshapeMinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/WhereUinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/Reshape/shape*
T0	*#
_output_shapes
:         
Щ
Winput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/GatherV2_1/axisConst*
value	B : *
_output_shapes
: *
dtype0
┤
Rinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/GatherV2_1GatherV2Uinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/SparseReshapeOinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/ReshapeWinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/GatherV2_1/axis*
Tparams0	*
Taxis0*
Tindices0	*'
_output_shapes
:         
Щ
Winput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/GatherV2_2/axisConst*
value	B : *
_output_shapes
: *
dtype0
╣
Rinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/GatherV2_2GatherV2^input_layer_1/shopping_level_embedding/shopping_level_embedding_weights/SparseReshape/IdentityOinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/ReshapeWinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/GatherV2_2/axis*
Tindices0	*#
_output_shapes
:         *
Tparams0	*
Taxis0
┌
Pinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/IdentityIdentityWinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/SparseReshape:1*
_output_shapes
:*
T0	
г
ainput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
┬
oinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsRinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/GatherV2_1Rinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/GatherV2_2Pinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/Identityainput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/SparseFillEmptyRows/Const*T
_output_shapesB
@:         :         :         :         *
T0	
─
sinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB"        
╞
uinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
╞
uinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
╞
minput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSliceoinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowssinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/embedding_lookup_sparse/strided_slice/stackuinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1uinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
shrink_axis_mask*
T0	*#
_output_shapes
:         *

begin_mask*
end_mask
Ш
dinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/embedding_lookup_sparse/CastCastminput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/embedding_lookup_sparse/strided_slice*

SrcT0	*#
_output_shapes
:         *

DstT0
а
finput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/embedding_lookup_sparse/UniqueUniqueqinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:         :         
Д
uinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*
dtype0*
_output_shapes
: *
value	B : *K
_classA
?=loc:@input_layer_1/shopping_level_embedding/embedding_weights
╝
pinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV2=input_layer_1/shopping_level_embedding/embedding_weights/readfinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/embedding_lookup_sparse/Uniqueuinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis*'
_output_shapes
:         *
Tparams0*
Tindices0	*
Taxis0*K
_classA
?=loc:@input_layer_1/shopping_level_embedding/embedding_weights
й
yinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentitypinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/embedding_lookup_sparse/embedding_lookup*'
_output_shapes
:         *
T0
ё
_input_layer_1/shopping_level_embedding/shopping_level_embedding_weights/embedding_lookup_sparseSparseSegmentMeanyinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identityhinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/embedding_lookup_sparse/Unique:1dinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/embedding_lookup_sparse/Cast*'
_output_shapes
:         *
T0
и
Winput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/Reshape_1/shapeConst*
valueB"       *
_output_shapes
:*
dtype0
┌
Qinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/Reshape_1Reshapeqinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:2Winput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/Reshape_1/shape*
T0
*'
_output_shapes
:         
▄
Minput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/ShapeShape_input_layer_1/shopping_level_embedding/shopping_level_embedding_weights/embedding_lookup_sparse*
_output_shapes
:*
T0
е
[input_layer_1/shopping_level_embedding/shopping_level_embedding_weights/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:
з
]input_layer_1/shopping_level_embedding/shopping_level_embedding_weights/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
з
]input_layer_1/shopping_level_embedding/shopping_level_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Х
Uinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/strided_sliceStridedSliceMinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/Shape[input_layer_1/shopping_level_embedding/shopping_level_embedding_weights/strided_slice/stack]input_layer_1/shopping_level_embedding/shopping_level_embedding_weights/strided_slice/stack_1]input_layer_1/shopping_level_embedding/shopping_level_embedding_weights/strided_slice/stack_2*
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
С
Oinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :
л
Minput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/stackPackOinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/stack/0Uinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/strided_slice*
N*
T0*
_output_shapes
:
▒
Linput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/TileTileQinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/Reshape_1Minput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/stack*0
_output_shapes
:                  *
T0

Є
Rinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/zeros_like	ZerosLike_input_layer_1/shopping_level_embedding/shopping_level_embedding_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:         
Ж
Ginput_layer_1/shopping_level_embedding/shopping_level_embedding_weightsSelectLinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/TileRinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/zeros_like_input_layer_1/shopping_level_embedding/shopping_level_embedding_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:         
з
Ninput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/Cast_1CastStringSplit_5/StringSplit:2*
_output_shapes
:*

DstT0*

SrcT0	
Я
Uinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
Ю
Tinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:
З
Oinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/Slice_1SliceNinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/Cast_1Uinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/Slice_1/beginTinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/Slice_1/size*
_output_shapes
:*
T0*
Index0
╞
Oinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/Shape_1ShapeGinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights*
T0*
_output_shapes
:
Я
Uinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/Slice_2/beginConst*
valueB:*
_output_shapes
:*
dtype0
з
Tinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/Slice_2/sizeConst*
dtype0*
_output_shapes
:*
valueB:
         
И
Oinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/Slice_2SliceOinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/Shape_1Uinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/Slice_2/beginTinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/Slice_2/size*
T0*
Index0*
_output_shapes
:
Х
Sinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/concat/axisConst*
_output_shapes
: *
value	B : *
dtype0
 
Ninput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/concatConcatV2Oinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/Slice_1Oinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/Slice_2Sinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/concat/axis*
_output_shapes
:*
N*
T0
з
Qinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/Reshape_2ReshapeGinput_layer_1/shopping_level_embedding/shopping_level_embedding_weightsNinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/concat*'
_output_shapes
:         *
T0
н
,input_layer_1/shopping_level_embedding/ShapeShapeQinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/Reshape_2*
T0*
_output_shapes
:
Д
:input_layer_1/shopping_level_embedding/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
Ж
<input_layer_1/shopping_level_embedding/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
Ж
<input_layer_1/shopping_level_embedding/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
Ё
4input_layer_1/shopping_level_embedding/strided_sliceStridedSlice,input_layer_1/shopping_level_embedding/Shape:input_layer_1/shopping_level_embedding/strided_slice/stack<input_layer_1/shopping_level_embedding/strided_slice/stack_1<input_layer_1/shopping_level_embedding/strided_slice/stack_2*
T0*
shrink_axis_mask*
_output_shapes
: *
Index0
x
6input_layer_1/shopping_level_embedding/Reshape/shape/1Const*
value	B :*
_output_shapes
: *
dtype0
╪
4input_layer_1/shopping_level_embedding/Reshape/shapePack4input_layer_1/shopping_level_embedding/strided_slice6input_layer_1/shopping_level_embedding/Reshape/shape/1*
N*
_output_shapes
:*
T0
Ї
.input_layer_1/shopping_level_embedding/ReshapeReshapeQinput_layer_1/shopping_level_embedding/shopping_level_embedding_weights/Reshape_24input_layer_1/shopping_level_embedding/Reshape/shape*'
_output_shapes
:         *
T0
Х
&input_layer_1/user_id_embedding/lookupStringToHashBucketFastStringSplit/StringSplit:1*
num_bucketsаН*#
_output_shapes
:         
∙
[input_layer_1/user_id_embedding/embedding_weights/part_0/Initializer/truncated_normal/shapeConst*K
_classA
?=loc:@input_layer_1/user_id_embedding/embedding_weights/part_0*
dtype0*
_output_shapes
:*
valueB"иa     
ь
Zinput_layer_1/user_id_embedding/embedding_weights/part_0/Initializer/truncated_normal/meanConst*
valueB
 *    *
_output_shapes
: *K
_classA
?=loc:@input_layer_1/user_id_embedding/embedding_weights/part_0*
dtype0
ю
\input_layer_1/user_id_embedding/embedding_weights/part_0/Initializer/truncated_normal/stddevConst*K
_classA
?=loc:@input_layer_1/user_id_embedding/embedding_weights/part_0*
dtype0*
_output_shapes
: *
valueB
 *
╫#;
┌
einput_layer_1/user_id_embedding/embedding_weights/part_0/Initializer/truncated_normal/TruncatedNormalTruncatedNormal[input_layer_1/user_id_embedding/embedding_weights/part_0/Initializer/truncated_normal/shape*
T0* 
_output_shapes
:
и├*
dtype0*K
_classA
?=loc:@input_layer_1/user_id_embedding/embedding_weights/part_0
Э
Yinput_layer_1/user_id_embedding/embedding_weights/part_0/Initializer/truncated_normal/mulMuleinput_layer_1/user_id_embedding/embedding_weights/part_0/Initializer/truncated_normal/TruncatedNormal\input_layer_1/user_id_embedding/embedding_weights/part_0/Initializer/truncated_normal/stddev* 
_output_shapes
:
и├*K
_classA
?=loc:@input_layer_1/user_id_embedding/embedding_weights/part_0*
T0
Л
Uinput_layer_1/user_id_embedding/embedding_weights/part_0/Initializer/truncated_normalAddYinput_layer_1/user_id_embedding/embedding_weights/part_0/Initializer/truncated_normal/mulZinput_layer_1/user_id_embedding/embedding_weights/part_0/Initializer/truncated_normal/mean* 
_output_shapes
:
и├*K
_classA
?=loc:@input_layer_1/user_id_embedding/embedding_weights/part_0*
T0
┘
8input_layer_1/user_id_embedding/embedding_weights/part_0
VariableV2*
shape:
и├* 
_output_shapes
:
и├*K
_classA
?=loc:@input_layer_1/user_id_embedding/embedding_weights/part_0*
dtype0
╥
?input_layer_1/user_id_embedding/embedding_weights/part_0/AssignAssign8input_layer_1/user_id_embedding/embedding_weights/part_0Uinput_layer_1/user_id_embedding/embedding_weights/part_0/Initializer/truncated_normal*K
_classA
?=loc:@input_layer_1/user_id_embedding/embedding_weights/part_0* 
_output_shapes
:
и├*
T0
√
=input_layer_1/user_id_embedding/embedding_weights/part_0/readIdentity8input_layer_1/user_id_embedding/embedding_weights/part_0*K
_classA
?=loc:@input_layer_1/user_id_embedding/embedding_weights/part_0*
T0* 
_output_shapes
:
и├
∙
[input_layer_1/user_id_embedding/embedding_weights/part_1/Initializer/truncated_normal/shapeConst*K
_classA
?=loc:@input_layer_1/user_id_embedding/embedding_weights/part_1*
_output_shapes
:*
valueB"иa     *
dtype0
ь
Zinput_layer_1/user_id_embedding/embedding_weights/part_1/Initializer/truncated_normal/meanConst*
_output_shapes
: *K
_classA
?=loc:@input_layer_1/user_id_embedding/embedding_weights/part_1*
dtype0*
valueB
 *    
ю
\input_layer_1/user_id_embedding/embedding_weights/part_1/Initializer/truncated_normal/stddevConst*
dtype0*
valueB
 *
╫#;*K
_classA
?=loc:@input_layer_1/user_id_embedding/embedding_weights/part_1*
_output_shapes
: 
┌
einput_layer_1/user_id_embedding/embedding_weights/part_1/Initializer/truncated_normal/TruncatedNormalTruncatedNormal[input_layer_1/user_id_embedding/embedding_weights/part_1/Initializer/truncated_normal/shape* 
_output_shapes
:
и├*K
_classA
?=loc:@input_layer_1/user_id_embedding/embedding_weights/part_1*
T0*
dtype0
Э
Yinput_layer_1/user_id_embedding/embedding_weights/part_1/Initializer/truncated_normal/mulMuleinput_layer_1/user_id_embedding/embedding_weights/part_1/Initializer/truncated_normal/TruncatedNormal\input_layer_1/user_id_embedding/embedding_weights/part_1/Initializer/truncated_normal/stddev*
T0* 
_output_shapes
:
и├*K
_classA
?=loc:@input_layer_1/user_id_embedding/embedding_weights/part_1
Л
Uinput_layer_1/user_id_embedding/embedding_weights/part_1/Initializer/truncated_normalAddYinput_layer_1/user_id_embedding/embedding_weights/part_1/Initializer/truncated_normal/mulZinput_layer_1/user_id_embedding/embedding_weights/part_1/Initializer/truncated_normal/mean*
T0*K
_classA
?=loc:@input_layer_1/user_id_embedding/embedding_weights/part_1* 
_output_shapes
:
и├
┘
8input_layer_1/user_id_embedding/embedding_weights/part_1
VariableV2*K
_classA
?=loc:@input_layer_1/user_id_embedding/embedding_weights/part_1*
dtype0* 
_output_shapes
:
и├*
shape:
и├
╥
?input_layer_1/user_id_embedding/embedding_weights/part_1/AssignAssign8input_layer_1/user_id_embedding/embedding_weights/part_1Uinput_layer_1/user_id_embedding/embedding_weights/part_1/Initializer/truncated_normal*K
_classA
?=loc:@input_layer_1/user_id_embedding/embedding_weights/part_1* 
_output_shapes
:
и├*
T0
√
=input_layer_1/user_id_embedding/embedding_weights/part_1/readIdentity8input_layer_1/user_id_embedding/embedding_weights/part_1*K
_classA
?=loc:@input_layer_1/user_id_embedding/embedding_weights/part_1*
T0* 
_output_shapes
:
и├
∙
[input_layer_1/user_id_embedding/embedding_weights/part_2/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*K
_classA
?=loc:@input_layer_1/user_id_embedding/embedding_weights/part_2*
valueB"иa     
ь
Zinput_layer_1/user_id_embedding/embedding_weights/part_2/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *K
_classA
?=loc:@input_layer_1/user_id_embedding/embedding_weights/part_2*
valueB
 *    
ю
\input_layer_1/user_id_embedding/embedding_weights/part_2/Initializer/truncated_normal/stddevConst*K
_classA
?=loc:@input_layer_1/user_id_embedding/embedding_weights/part_2*
valueB
 *
╫#;*
_output_shapes
: *
dtype0
┌
einput_layer_1/user_id_embedding/embedding_weights/part_2/Initializer/truncated_normal/TruncatedNormalTruncatedNormal[input_layer_1/user_id_embedding/embedding_weights/part_2/Initializer/truncated_normal/shape*
T0*
dtype0* 
_output_shapes
:
и├*K
_classA
?=loc:@input_layer_1/user_id_embedding/embedding_weights/part_2
Э
Yinput_layer_1/user_id_embedding/embedding_weights/part_2/Initializer/truncated_normal/mulMuleinput_layer_1/user_id_embedding/embedding_weights/part_2/Initializer/truncated_normal/TruncatedNormal\input_layer_1/user_id_embedding/embedding_weights/part_2/Initializer/truncated_normal/stddev* 
_output_shapes
:
и├*
T0*K
_classA
?=loc:@input_layer_1/user_id_embedding/embedding_weights/part_2
Л
Uinput_layer_1/user_id_embedding/embedding_weights/part_2/Initializer/truncated_normalAddYinput_layer_1/user_id_embedding/embedding_weights/part_2/Initializer/truncated_normal/mulZinput_layer_1/user_id_embedding/embedding_weights/part_2/Initializer/truncated_normal/mean*
T0*K
_classA
?=loc:@input_layer_1/user_id_embedding/embedding_weights/part_2* 
_output_shapes
:
и├
┘
8input_layer_1/user_id_embedding/embedding_weights/part_2
VariableV2* 
_output_shapes
:
и├*
shape:
и├*
dtype0*K
_classA
?=loc:@input_layer_1/user_id_embedding/embedding_weights/part_2
╥
?input_layer_1/user_id_embedding/embedding_weights/part_2/AssignAssign8input_layer_1/user_id_embedding/embedding_weights/part_2Uinput_layer_1/user_id_embedding/embedding_weights/part_2/Initializer/truncated_normal*K
_classA
?=loc:@input_layer_1/user_id_embedding/embedding_weights/part_2* 
_output_shapes
:
и├*
T0
√
=input_layer_1/user_id_embedding/embedding_weights/part_2/readIdentity8input_layer_1/user_id_embedding/embedding_weights/part_2*
T0*K
_classA
?=loc:@input_layer_1/user_id_embedding/embedding_weights/part_2* 
_output_shapes
:
и├
∙
[input_layer_1/user_id_embedding/embedding_weights/part_3/Initializer/truncated_normal/shapeConst*
_output_shapes
:*K
_classA
?=loc:@input_layer_1/user_id_embedding/embedding_weights/part_3*
valueB"иa     *
dtype0
ь
Zinput_layer_1/user_id_embedding/embedding_weights/part_3/Initializer/truncated_normal/meanConst*
dtype0*
valueB
 *    *K
_classA
?=loc:@input_layer_1/user_id_embedding/embedding_weights/part_3*
_output_shapes
: 
ю
\input_layer_1/user_id_embedding/embedding_weights/part_3/Initializer/truncated_normal/stddevConst*
valueB
 *
╫#;*
dtype0*K
_classA
?=loc:@input_layer_1/user_id_embedding/embedding_weights/part_3*
_output_shapes
: 
┌
einput_layer_1/user_id_embedding/embedding_weights/part_3/Initializer/truncated_normal/TruncatedNormalTruncatedNormal[input_layer_1/user_id_embedding/embedding_weights/part_3/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
и├*K
_classA
?=loc:@input_layer_1/user_id_embedding/embedding_weights/part_3*
T0
Э
Yinput_layer_1/user_id_embedding/embedding_weights/part_3/Initializer/truncated_normal/mulMuleinput_layer_1/user_id_embedding/embedding_weights/part_3/Initializer/truncated_normal/TruncatedNormal\input_layer_1/user_id_embedding/embedding_weights/part_3/Initializer/truncated_normal/stddev* 
_output_shapes
:
и├*
T0*K
_classA
?=loc:@input_layer_1/user_id_embedding/embedding_weights/part_3
Л
Uinput_layer_1/user_id_embedding/embedding_weights/part_3/Initializer/truncated_normalAddYinput_layer_1/user_id_embedding/embedding_weights/part_3/Initializer/truncated_normal/mulZinput_layer_1/user_id_embedding/embedding_weights/part_3/Initializer/truncated_normal/mean* 
_output_shapes
:
и├*
T0*K
_classA
?=loc:@input_layer_1/user_id_embedding/embedding_weights/part_3
┘
8input_layer_1/user_id_embedding/embedding_weights/part_3
VariableV2* 
_output_shapes
:
и├*
shape:
и├*K
_classA
?=loc:@input_layer_1/user_id_embedding/embedding_weights/part_3*
dtype0
╥
?input_layer_1/user_id_embedding/embedding_weights/part_3/AssignAssign8input_layer_1/user_id_embedding/embedding_weights/part_3Uinput_layer_1/user_id_embedding/embedding_weights/part_3/Initializer/truncated_normal*
T0* 
_output_shapes
:
и├*K
_classA
?=loc:@input_layer_1/user_id_embedding/embedding_weights/part_3
√
=input_layer_1/user_id_embedding/embedding_weights/part_3/readIdentity8input_layer_1/user_id_embedding/embedding_weights/part_3*K
_classA
?=loc:@input_layer_1/user_id_embedding/embedding_weights/part_3*
T0* 
_output_shapes
:
и├
П
Einput_layer_1/user_id_embedding/user_id_embedding_weights/Slice/beginConst*
_output_shapes
:*
valueB: *
dtype0
О
Dinput_layer_1/user_id_embedding/user_id_embedding_weights/Slice/sizeConst*
_output_shapes
:*
valueB:*
dtype0
в
?input_layer_1/user_id_embedding/user_id_embedding_weights/SliceSliceStringSplit/StringSplit:2Einput_layer_1/user_id_embedding/user_id_embedding_weights/Slice/beginDinput_layer_1/user_id_embedding/user_id_embedding_weights/Slice/size*
Index0*
_output_shapes
:*
T0	
Й
?input_layer_1/user_id_embedding/user_id_embedding_weights/ConstConst*
dtype0*
valueB: *
_output_shapes
:
щ
>input_layer_1/user_id_embedding/user_id_embedding_weights/ProdProd?input_layer_1/user_id_embedding/user_id_embedding_weights/Slice?input_layer_1/user_id_embedding/user_id_embedding_weights/Const*
T0	*
_output_shapes
: 
М
Jinput_layer_1/user_id_embedding/user_id_embedding_weights/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
Й
Ginput_layer_1/user_id_embedding/user_id_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
┬
Binput_layer_1/user_id_embedding/user_id_embedding_weights/GatherV2GatherV2StringSplit/StringSplit:2Jinput_layer_1/user_id_embedding/user_id_embedding_weights/GatherV2/indicesGinput_layer_1/user_id_embedding/user_id_embedding_weights/GatherV2/axis*
Taxis0*
_output_shapes
: *
Tparams0	*
Tindices0
·
@input_layer_1/user_id_embedding/user_id_embedding_weights/Cast/xPack>input_layer_1/user_id_embedding/user_id_embedding_weights/ProdBinput_layer_1/user_id_embedding/user_id_embedding_weights/GatherV2*
_output_shapes
:*
T0	*
N
¤
Ginput_layer_1/user_id_embedding/user_id_embedding_weights/SparseReshapeSparseReshapeStringSplit/StringSplitStringSplit/StringSplit:2@input_layer_1/user_id_embedding/user_id_embedding_weights/Cast/x*-
_output_shapes
:         :
▓
Pinput_layer_1/user_id_embedding/user_id_embedding_weights/SparseReshape/IdentityIdentity&input_layer_1/user_id_embedding/lookup*#
_output_shapes
:         *
T0	
К
Hinput_layer_1/user_id_embedding/user_id_embedding_weights/GreaterEqual/yConst*
value	B	 R *
_output_shapes
: *
dtype0	
а
Finput_layer_1/user_id_embedding/user_id_embedding_weights/GreaterEqualGreaterEqualPinput_layer_1/user_id_embedding/user_id_embedding_weights/SparseReshape/IdentityHinput_layer_1/user_id_embedding/user_id_embedding_weights/GreaterEqual/y*
T0	*#
_output_shapes
:         
╣
?input_layer_1/user_id_embedding/user_id_embedding_weights/WhereWhereFinput_layer_1/user_id_embedding/user_id_embedding_weights/GreaterEqual*'
_output_shapes
:         
Ъ
Ginput_layer_1/user_id_embedding/user_id_embedding_weights/Reshape/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
Д
Ainput_layer_1/user_id_embedding/user_id_embedding_weights/ReshapeReshape?input_layer_1/user_id_embedding/user_id_embedding_weights/WhereGinput_layer_1/user_id_embedding/user_id_embedding_weights/Reshape/shape*#
_output_shapes
:         *
T0	
Л
Iinput_layer_1/user_id_embedding/user_id_embedding_weights/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
№
Dinput_layer_1/user_id_embedding/user_id_embedding_weights/GatherV2_1GatherV2Ginput_layer_1/user_id_embedding/user_id_embedding_weights/SparseReshapeAinput_layer_1/user_id_embedding/user_id_embedding_weights/ReshapeIinput_layer_1/user_id_embedding/user_id_embedding_weights/GatherV2_1/axis*
Taxis0*
Tindices0	*'
_output_shapes
:         *
Tparams0	
Л
Iinput_layer_1/user_id_embedding/user_id_embedding_weights/GatherV2_2/axisConst*
value	B : *
_output_shapes
: *
dtype0
Б
Dinput_layer_1/user_id_embedding/user_id_embedding_weights/GatherV2_2GatherV2Pinput_layer_1/user_id_embedding/user_id_embedding_weights/SparseReshape/IdentityAinput_layer_1/user_id_embedding/user_id_embedding_weights/ReshapeIinput_layer_1/user_id_embedding/user_id_embedding_weights/GatherV2_2/axis*#
_output_shapes
:         *
Tindices0	*
Tparams0	*
Taxis0
╛
Binput_layer_1/user_id_embedding/user_id_embedding_weights/IdentityIdentityIinput_layer_1/user_id_embedding/user_id_embedding_weights/SparseReshape:1*
_output_shapes
:*
T0	
Х
Sinput_layer_1/user_id_embedding/user_id_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
value	B	 R *
dtype0	
№
ainput_layer_1/user_id_embedding/user_id_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsDinput_layer_1/user_id_embedding/user_id_embedding_weights/GatherV2_1Dinput_layer_1/user_id_embedding/user_id_embedding_weights/GatherV2_2Binput_layer_1/user_id_embedding/user_id_embedding_weights/IdentitySinput_layer_1/user_id_embedding/user_id_embedding_weights/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:         :         :         :         
╢
einput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
_output_shapes
:*
dtype0
╕
ginput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
╕
ginput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
А
_input_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSliceainput_layer_1/user_id_embedding/user_id_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowseinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/strided_slice/stackginput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1ginput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2*

begin_mask*
Index0*
shrink_axis_mask*
end_mask*
T0	*#
_output_shapes
:         
№
Vinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/CastCast_input_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/strided_slice*#
_output_shapes
:         *

SrcT0	*

DstT0
Д
Xinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/UniqueUniquecinput_layer_1/user_id_embedding/user_id_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:         :         
├
pinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/Reshape/shapeConst*
dtype0*
valueB:
         *
_output_shapes
:
я
jinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/ReshapeReshapeXinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/Uniquepinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/Reshape/shape*
T0	*#
_output_shapes
:         
№
ginput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/SizeSizejinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/Reshape*
_output_shapes
: *
T0	
░
ninput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/range/startConst*
_output_shapes
: *
value	B : *
dtype0
░
ninput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :
▀
hinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/rangeRangeninput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/range/startginput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/Sizeninput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/range/delta*#
_output_shapes
:         
м
hinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/ConstConst*
_output_shapes
: *
valueB		 RаН*
dtype0	
п
minput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/floordiv/yConst*
_output_shapes
: *
dtype0	*
value	B	 R
ё
kinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/floordivFloorDivhinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/Constminput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/floordiv/y*
_output_shapes
: *
T0	
к
hinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/mod/yConst*
_output_shapes
: *
dtype0	*
value	B	 R
ч
finput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/modFloorModhinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/Consthinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/mod/y*
_output_shapes
: *
T0	
к
hinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/add/yConst*
dtype0	*
_output_shapes
: *
value	B	 R
х
finput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/addAddkinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/floordivhinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/add/y*
T0	*
_output_shapes
: 
√
minput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/floordiv_1FloorDivjinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/Reshapefinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/add*
T0	*#
_output_shapes
:         
я
finput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/subSubjinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/Reshapefinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/mod*#
_output_shapes
:         *
T0	
№
minput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/floordiv_2FloorDivfinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/subkinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/floordiv*
T0	*#
_output_shapes
:         
Б
jinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/MaximumMaximumminput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/floordiv_1minput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/floordiv_2*
T0	*#
_output_shapes
:         
ё
ginput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/LessLessjinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/Maximumfinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/mod*
T0	*#
_output_shapes
:         
м
jinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/add_1/yConst*
dtype0	*
value	B	 R*
_output_shapes
: 
щ
hinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/add_1Addkinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/floordivjinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/add_1/y*
T0	*
_output_shapes
: 
°
hinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/mod_1FloorModjinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/Reshapehinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/add_1*#
_output_shapes
:         *
T0	
ё
hinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/sub_1Subjinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/Reshapefinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/mod*
T0	*#
_output_shapes
:         
∙
hinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/mod_2FloorModhinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/sub_1kinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/floordiv*
T0	*#
_output_shapes
:         
▐
iinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/SelectSelectginput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/Lesshinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/mod_1hinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/mod_2*#
_output_shapes
:         *
T0	
Ш
ginput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/CastCastjinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/Maximum*#
_output_shapes
:         *

SrcT0	*

DstT0
╠
sinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/DynamicPartitionDynamicPartitioniinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/Selectginput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/Cast*P
_output_shapes>
<:         :         :         :         *
T0	*
num_partitions
═
uinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/DynamicPartition_1DynamicPartitionhinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/rangeginput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/Cast*
T0*
num_partitions*P
_output_shapes>
<:         :         :         :         
 
pinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: *K
_classA
?=loc:@input_layer_1/user_id_embedding/embedding_weights/part_0
┐
kinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/GatherV2GatherV2=input_layer_1/user_id_embedding/embedding_weights/part_0/readsinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/DynamicPartitionpinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/GatherV2/axis*'
_output_shapes
:         *K
_classA
?=loc:@input_layer_1/user_id_embedding/embedding_weights/part_0*
Taxis0*
Tparams0*
Tindices0	
Б
rinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/GatherV2_1/axisConst*K
_classA
?=loc:@input_layer_1/user_id_embedding/embedding_weights/part_1*
dtype0*
_output_shapes
: *
value	B : 
┼
minput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/GatherV2_1GatherV2=input_layer_1/user_id_embedding/embedding_weights/part_1/readuinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/DynamicPartition:1rinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/GatherV2_1/axis*'
_output_shapes
:         *
Tparams0*
Tindices0	*K
_classA
?=loc:@input_layer_1/user_id_embedding/embedding_weights/part_1*
Taxis0
Б
rinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: *K
_classA
?=loc:@input_layer_1/user_id_embedding/embedding_weights/part_2
┼
minput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/GatherV2_2GatherV2=input_layer_1/user_id_embedding/embedding_weights/part_2/readuinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/DynamicPartition:2rinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/GatherV2_2/axis*K
_classA
?=loc:@input_layer_1/user_id_embedding/embedding_weights/part_2*
Taxis0*
Tparams0*
Tindices0	*'
_output_shapes
:         
Б
rinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/GatherV2_3/axisConst*
value	B : *
_output_shapes
: *K
_classA
?=loc:@input_layer_1/user_id_embedding/embedding_weights/part_3*
dtype0
┼
minput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/GatherV2_3GatherV2=input_layer_1/user_id_embedding/embedding_weights/part_3/readuinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/DynamicPartition:3rinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/GatherV2_3/axis*
Tparams0*K
_classA
?=loc:@input_layer_1/user_id_embedding/embedding_weights/part_3*
Taxis0*
Tindices0	*'
_output_shapes
:         
╥
binput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookupParallelDynamicStitchuinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/DynamicPartition_1winput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/DynamicPartition_1:1winput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/DynamicPartition_1:2winput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/DynamicPartition_1:3kinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/GatherV2minput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/GatherV2_1minput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/GatherV2_2minput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/GatherV2_3*'
_output_shapes
:         *
T0*
N
Ё
hinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/ShapeShapeXinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/Unique*
T0	*
_output_shapes
:
╝
rinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/concat/values_1Const*
dtype0*
_output_shapes
:*
valueB:
░
ninput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
ё
iinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/concatConcatV2hinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/Shaperinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/concat/values_1ninput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/concat/axis*
N*
T0*
_output_shapes
:
°
linput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/Reshape_1Reshapebinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookupiinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/concat*
T0*'
_output_shapes
:         
║
Qinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparseSparseSegmentMeanlinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/Reshape_1Zinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/Unique:1Vinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:         
Ъ
Iinput_layer_1/user_id_embedding/user_id_embedding_weights/Reshape_1/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
░
Cinput_layer_1/user_id_embedding/user_id_embedding_weights/Reshape_1Reshapecinput_layer_1/user_id_embedding/user_id_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:2Iinput_layer_1/user_id_embedding/user_id_embedding_weights/Reshape_1/shape*'
_output_shapes
:         *
T0

└
?input_layer_1/user_id_embedding/user_id_embedding_weights/ShapeShapeQinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse*
_output_shapes
:*
T0
Ч
Minput_layer_1/user_id_embedding/user_id_embedding_weights/strided_slice/stackConst*
dtype0*
valueB:*
_output_shapes
:
Щ
Oinput_layer_1/user_id_embedding/user_id_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Щ
Oinput_layer_1/user_id_embedding/user_id_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
╧
Ginput_layer_1/user_id_embedding/user_id_embedding_weights/strided_sliceStridedSlice?input_layer_1/user_id_embedding/user_id_embedding_weights/ShapeMinput_layer_1/user_id_embedding/user_id_embedding_weights/strided_slice/stackOinput_layer_1/user_id_embedding/user_id_embedding_weights/strided_slice/stack_1Oinput_layer_1/user_id_embedding/user_id_embedding_weights/strided_slice/stack_2*
_output_shapes
: *
T0*
shrink_axis_mask*
Index0
Г
Ainput_layer_1/user_id_embedding/user_id_embedding_weights/stack/0Const*
value	B :*
_output_shapes
: *
dtype0
Б
?input_layer_1/user_id_embedding/user_id_embedding_weights/stackPackAinput_layer_1/user_id_embedding/user_id_embedding_weights/stack/0Ginput_layer_1/user_id_embedding/user_id_embedding_weights/strided_slice*
T0*
N*
_output_shapes
:
З
>input_layer_1/user_id_embedding/user_id_embedding_weights/TileTileCinput_layer_1/user_id_embedding/user_id_embedding_weights/Reshape_1?input_layer_1/user_id_embedding/user_id_embedding_weights/stack*0
_output_shapes
:                  *
T0

╓
Dinput_layer_1/user_id_embedding/user_id_embedding_weights/zeros_like	ZerosLikeQinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:         
╬
9input_layer_1/user_id_embedding/user_id_embedding_weightsSelect>input_layer_1/user_id_embedding/user_id_embedding_weights/TileDinput_layer_1/user_id_embedding/user_id_embedding_weights/zeros_likeQinput_layer_1/user_id_embedding/user_id_embedding_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:         
Ч
@input_layer_1/user_id_embedding/user_id_embedding_weights/Cast_1CastStringSplit/StringSplit:2*
_output_shapes
:*

DstT0*

SrcT0	
С
Ginput_layer_1/user_id_embedding/user_id_embedding_weights/Slice_1/beginConst*
dtype0*
valueB: *
_output_shapes
:
Р
Finput_layer_1/user_id_embedding/user_id_embedding_weights/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:
╧
Ainput_layer_1/user_id_embedding/user_id_embedding_weights/Slice_1Slice@input_layer_1/user_id_embedding/user_id_embedding_weights/Cast_1Ginput_layer_1/user_id_embedding/user_id_embedding_weights/Slice_1/beginFinput_layer_1/user_id_embedding/user_id_embedding_weights/Slice_1/size*
T0*
Index0*
_output_shapes
:
к
Ainput_layer_1/user_id_embedding/user_id_embedding_weights/Shape_1Shape9input_layer_1/user_id_embedding/user_id_embedding_weights*
T0*
_output_shapes
:
С
Ginput_layer_1/user_id_embedding/user_id_embedding_weights/Slice_2/beginConst*
dtype0*
_output_shapes
:*
valueB:
Щ
Finput_layer_1/user_id_embedding/user_id_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
valueB:
         *
dtype0
╨
Ainput_layer_1/user_id_embedding/user_id_embedding_weights/Slice_2SliceAinput_layer_1/user_id_embedding/user_id_embedding_weights/Shape_1Ginput_layer_1/user_id_embedding/user_id_embedding_weights/Slice_2/beginFinput_layer_1/user_id_embedding/user_id_embedding_weights/Slice_2/size*
T0*
Index0*
_output_shapes
:
З
Einput_layer_1/user_id_embedding/user_id_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
╟
@input_layer_1/user_id_embedding/user_id_embedding_weights/concatConcatV2Ainput_layer_1/user_id_embedding/user_id_embedding_weights/Slice_1Ainput_layer_1/user_id_embedding/user_id_embedding_weights/Slice_2Einput_layer_1/user_id_embedding/user_id_embedding_weights/concat/axis*
_output_shapes
:*
T0*
N
¤
Cinput_layer_1/user_id_embedding/user_id_embedding_weights/Reshape_2Reshape9input_layer_1/user_id_embedding/user_id_embedding_weights@input_layer_1/user_id_embedding/user_id_embedding_weights/concat*'
_output_shapes
:         *
T0
Ш
%input_layer_1/user_id_embedding/ShapeShapeCinput_layer_1/user_id_embedding/user_id_embedding_weights/Reshape_2*
T0*
_output_shapes
:
}
3input_layer_1/user_id_embedding/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0

5input_layer_1/user_id_embedding/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0

5input_layer_1/user_id_embedding/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
═
-input_layer_1/user_id_embedding/strided_sliceStridedSlice%input_layer_1/user_id_embedding/Shape3input_layer_1/user_id_embedding/strided_slice/stack5input_layer_1/user_id_embedding/strided_slice/stack_15input_layer_1/user_id_embedding/strided_slice/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask
q
/input_layer_1/user_id_embedding/Reshape/shape/1Const*
dtype0*
value	B :*
_output_shapes
: 
├
-input_layer_1/user_id_embedding/Reshape/shapePack-input_layer_1/user_id_embedding/strided_slice/input_layer_1/user_id_embedding/Reshape/shape/1*
_output_shapes
:*
N*
T0
╪
'input_layer_1/user_id_embedding/ReshapeReshapeCinput_layer_1/user_id_embedding/user_id_embedding_weights/Reshape_2-input_layer_1/user_id_embedding/Reshape/shape*
T0*'
_output_shapes
:         
Ю
,input_layer_1/user_tag_cate_embedding/lookupStringToHashBucketFastStringSplit_14/StringSplit:1*#
_output_shapes
:         *
num_bucketsаН
ў
Zinput_layer_1/user_tag_cate_embedding/embedding_weights/Initializer/truncated_normal/shapeConst*
valueB"аЖ    *
_output_shapes
:*
dtype0*J
_class@
><loc:@input_layer_1/user_tag_cate_embedding/embedding_weights
ъ
Yinput_layer_1/user_tag_cate_embedding/embedding_weights/Initializer/truncated_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    *J
_class@
><loc:@input_layer_1/user_tag_cate_embedding/embedding_weights
ь
[input_layer_1/user_tag_cate_embedding/embedding_weights/Initializer/truncated_normal/stddevConst*
valueB
 *
╫#;*
_output_shapes
: *J
_class@
><loc:@input_layer_1/user_tag_cate_embedding/embedding_weights*
dtype0
╫
dinput_layer_1/user_tag_cate_embedding/embedding_weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalZinput_layer_1/user_tag_cate_embedding/embedding_weights/Initializer/truncated_normal/shape* 
_output_shapes
:
аН*
dtype0*J
_class@
><loc:@input_layer_1/user_tag_cate_embedding/embedding_weights*
T0
Щ
Xinput_layer_1/user_tag_cate_embedding/embedding_weights/Initializer/truncated_normal/mulMuldinput_layer_1/user_tag_cate_embedding/embedding_weights/Initializer/truncated_normal/TruncatedNormal[input_layer_1/user_tag_cate_embedding/embedding_weights/Initializer/truncated_normal/stddev*
T0* 
_output_shapes
:
аН*J
_class@
><loc:@input_layer_1/user_tag_cate_embedding/embedding_weights
З
Tinput_layer_1/user_tag_cate_embedding/embedding_weights/Initializer/truncated_normalAddXinput_layer_1/user_tag_cate_embedding/embedding_weights/Initializer/truncated_normal/mulYinput_layer_1/user_tag_cate_embedding/embedding_weights/Initializer/truncated_normal/mean*J
_class@
><loc:@input_layer_1/user_tag_cate_embedding/embedding_weights* 
_output_shapes
:
аН*
T0
╫
7input_layer_1/user_tag_cate_embedding/embedding_weights
VariableV2* 
_output_shapes
:
аН*J
_class@
><loc:@input_layer_1/user_tag_cate_embedding/embedding_weights*
dtype0*
shape:
аН
╬
>input_layer_1/user_tag_cate_embedding/embedding_weights/AssignAssign7input_layer_1/user_tag_cate_embedding/embedding_weightsTinput_layer_1/user_tag_cate_embedding/embedding_weights/Initializer/truncated_normal* 
_output_shapes
:
аН*
T0*J
_class@
><loc:@input_layer_1/user_tag_cate_embedding/embedding_weights
°
<input_layer_1/user_tag_cate_embedding/embedding_weights/readIdentity7input_layer_1/user_tag_cate_embedding/embedding_weights*
T0* 
_output_shapes
:
аН*J
_class@
><loc:@input_layer_1/user_tag_cate_embedding/embedding_weights
Ы
Qinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: 
Ъ
Pinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:
╔
Kinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/SliceSliceStringSplit_14/StringSplit:2Qinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/Slice/beginPinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/Slice/size*
Index0*
_output_shapes
:*
T0	
Х
Kinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Н
Jinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/ProdProdKinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/SliceKinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/Const*
_output_shapes
: *
T0	
Ш
Vinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/GatherV2/indicesConst*
value	B :*
_output_shapes
: *
dtype0
Х
Sinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
щ
Ninput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/GatherV2GatherV2StringSplit_14/StringSplit:2Vinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/GatherV2/indicesSinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/GatherV2/axis*
_output_shapes
: *
Taxis0*
Tparams0	*
Tindices0
Ю
Linput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/Cast/xPackJinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/ProdNinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/GatherV2*
N*
_output_shapes
:*
T0	
Ы
Sinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/SparseReshapeSparseReshapeStringSplit_14/StringSplitStringSplit_14/StringSplit:2Linput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/Cast/x*-
_output_shapes
:         :
─
\input_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/SparseReshape/IdentityIdentity,input_layer_1/user_tag_cate_embedding/lookup*#
_output_shapes
:         *
T0	
Ц
Tinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/GreaterEqual/yConst*
value	B	 R *
_output_shapes
: *
dtype0	
─
Rinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/GreaterEqualGreaterEqual\input_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/SparseReshape/IdentityTinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/GreaterEqual/y*
T0	*#
_output_shapes
:         
╤
Kinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/WhereWhereRinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/GreaterEqual*'
_output_shapes
:         
ж
Sinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         
и
Minput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/ReshapeReshapeKinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/WhereSinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/Reshape/shape*#
_output_shapes
:         *
T0	
Ч
Uinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
м
Pinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/GatherV2_1GatherV2Sinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/SparseReshapeMinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/ReshapeUinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/GatherV2_1/axis*'
_output_shapes
:         *
Tindices0	*
Tparams0	*
Taxis0
Ч
Uinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
▒
Pinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/GatherV2_2GatherV2\input_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/SparseReshape/IdentityMinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/ReshapeUinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/GatherV2_2/axis*#
_output_shapes
:         *
Tindices0	*
Tparams0	*
Taxis0
╓
Ninput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/IdentityIdentityUinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/SparseReshape:1*
T0	*
_output_shapes
:
б
_input_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
╕
minput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsPinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/GatherV2_1Pinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/GatherV2_2Ninput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/Identity_input_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:         :         :         :         
┬
qinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
valueB"        *
dtype0
─
sinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
valueB"       *
dtype0
─
sinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
╝
kinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSliceminput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsqinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/embedding_lookup_sparse/strided_slice/stacksinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1sinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2*
T0	*#
_output_shapes
:         *
Index0*
shrink_axis_mask*
end_mask*

begin_mask
Ф
binput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/embedding_lookup_sparse/CastCastkinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/embedding_lookup_sparse/strided_slice*

SrcT0	*

DstT0*#
_output_shapes
:         
Ь
dinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/embedding_lookup_sparse/UniqueUniqueoinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:         :         
Б
sinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*
dtype0*
_output_shapes
: *J
_class@
><loc:@input_layer_1/user_tag_cate_embedding/embedding_weights*
value	B : 
┤
ninput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV2<input_layer_1/user_tag_cate_embedding/embedding_weights/readdinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/embedding_lookup_sparse/Uniquesinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis*
Tparams0*
Tindices0	*
Taxis0*J
_class@
><loc:@input_layer_1/user_tag_cate_embedding/embedding_weights*'
_output_shapes
:         
е
winput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentityninput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/embedding_lookup_sparse/embedding_lookup*
T0*'
_output_shapes
:         
щ
]input_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/embedding_lookup_sparseSparseSegmentMeanwinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identityfinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/embedding_lookup_sparse/Unique:1binput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:         
ж
Uinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"       
╘
Oinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/Reshape_1Reshapeoinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:2Uinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/Reshape_1/shape*'
_output_shapes
:         *
T0

╪
Kinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/ShapeShape]input_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/embedding_lookup_sparse*
_output_shapes
:*
T0
г
Yinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/strided_slice/stackConst*
dtype0*
valueB:*
_output_shapes
:
е
[input_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
е
[input_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Л
Sinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/strided_sliceStridedSliceKinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/ShapeYinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/strided_slice/stack[input_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/strided_slice/stack_1[input_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
П
Minput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/stack/0Const*
_output_shapes
: *
value	B :*
dtype0
е
Kinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/stackPackMinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/stack/0Sinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/strided_slice*
_output_shapes
:*
N*
T0
л
Jinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/TileTileOinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/Reshape_1Kinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/stack*
T0
*0
_output_shapes
:                  
ю
Pinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/zeros_like	ZerosLike]input_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/embedding_lookup_sparse*'
_output_shapes
:         *
T0
■
Einput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weightsSelectJinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/TilePinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/zeros_like]input_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:         
ж
Linput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/Cast_1CastStringSplit_14/StringSplit:2*
_output_shapes
:*

DstT0*

SrcT0	
Э
Sinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
Ь
Rinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/Slice_1/sizeConst*
dtype0*
_output_shapes
:*
valueB:
 
Minput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/Slice_1SliceLinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/Cast_1Sinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/Slice_1/beginRinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/Slice_1/size*
T0*
Index0*
_output_shapes
:
┬
Minput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/Shape_1ShapeEinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights*
_output_shapes
:*
T0
Э
Sinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/Slice_2/beginConst*
dtype0*
valueB:*
_output_shapes
:
е
Rinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/Slice_2/sizeConst*
dtype0*
_output_shapes
:*
valueB:
         
А
Minput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/Slice_2SliceMinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/Shape_1Sinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/Slice_2/beginRinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/Slice_2/size*
_output_shapes
:*
T0*
Index0
У
Qinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
ў
Linput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/concatConcatV2Minput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/Slice_1Minput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/Slice_2Qinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/concat/axis*
N*
_output_shapes
:*
T0
б
Oinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/Reshape_2ReshapeEinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weightsLinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/concat*'
_output_shapes
:         *
T0
к
+input_layer_1/user_tag_cate_embedding/ShapeShapeOinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/Reshape_2*
T0*
_output_shapes
:
Г
9input_layer_1/user_tag_cate_embedding/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
Е
;input_layer_1/user_tag_cate_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Е
;input_layer_1/user_tag_cate_embedding/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
ы
3input_layer_1/user_tag_cate_embedding/strided_sliceStridedSlice+input_layer_1/user_tag_cate_embedding/Shape9input_layer_1/user_tag_cate_embedding/strided_slice/stack;input_layer_1/user_tag_cate_embedding/strided_slice/stack_1;input_layer_1/user_tag_cate_embedding/strided_slice/stack_2*
shrink_axis_mask*
Index0*
_output_shapes
: *
T0
w
5input_layer_1/user_tag_cate_embedding/Reshape/shape/1Const*
dtype0*
_output_shapes
: *
value	B :
╒
3input_layer_1/user_tag_cate_embedding/Reshape/shapePack3input_layer_1/user_tag_cate_embedding/strided_slice5input_layer_1/user_tag_cate_embedding/Reshape/shape/1*
_output_shapes
:*
T0*
N
Ё
-input_layer_1/user_tag_cate_embedding/ReshapeReshapeOinput_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/Reshape_23input_layer_1/user_tag_cate_embedding/Reshape/shape*'
_output_shapes
:         *
T0
[
input_layer_1/concat/axisConst*
dtype0*
value	B :*
_output_shapes
: 
У
input_layer_1/concatConcatV2)input_layer_1/age_level_embedding/Reshape,input_layer_1/cms_group_id_embedding/Reshape)input_layer_1/cms_segid_embedding/Reshape4input_layer_1/new_user_class_level_embedding/Reshape*input_layer_1/occupation_embedding/Reshape,input_layer_1/pvalue_level_embedding/Reshape.input_layer_1/shopping_level_embedding/Reshape'input_layer_1/user_id_embedding/Reshape-input_layer_1/user_tag_cate_embedding/Reshapeinput_layer_1/concat/axis*(
_output_shapes
:         Р*
T0*
N	
^
concat_2/concat_dimConst*
dtype0*
valueB :
         *
_output_shapes
: 
]
concat_2Identityinput_layer_1/concat*
T0*(
_output_shapes
:         Р
v
1get_regularization_penalty_1/l2_regularizer/scaleConst*
dtype0*
valueB
 *м┼'7*
_output_shapes
: 
s
2get_regularization_penalty_1/l2_regularizer/L2LossL2Lossinput_layer_1/concat*
_output_shapes
: *
T0
║
+get_regularization_penalty_1/l2_regularizerMul1get_regularization_penalty_1/l2_regularizer/scale2get_regularization_penalty_1/l2_regularizer/L2Loss*
T0*
_output_shapes
: 
v
get_regularization_penalty_1Identity+get_regularization_penalty_1/l2_regularizer*
T0*
_output_shapes
: 
Ь
*input_layer_2/combo_brand_embedding/lookupStringToHashBucketFastStringSplit_15/StringSplit:1*
num_bucketsаН*#
_output_shapes
:         
є
Xinput_layer_2/combo_brand_embedding/embedding_weights/Initializer/truncated_normal/shapeConst*
_output_shapes
:*H
_class>
<:loc:@input_layer_2/combo_brand_embedding/embedding_weights*
valueB"аЖ    *
dtype0
ц
Winput_layer_2/combo_brand_embedding/embedding_weights/Initializer/truncated_normal/meanConst*
_output_shapes
: *
valueB
 *    *H
_class>
<:loc:@input_layer_2/combo_brand_embedding/embedding_weights*
dtype0
ш
Yinput_layer_2/combo_brand_embedding/embedding_weights/Initializer/truncated_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#;*H
_class>
<:loc:@input_layer_2/combo_brand_embedding/embedding_weights
╤
binput_layer_2/combo_brand_embedding/embedding_weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalXinput_layer_2/combo_brand_embedding/embedding_weights/Initializer/truncated_normal/shape*
dtype0*H
_class>
<:loc:@input_layer_2/combo_brand_embedding/embedding_weights* 
_output_shapes
:
аН*
T0
С
Vinput_layer_2/combo_brand_embedding/embedding_weights/Initializer/truncated_normal/mulMulbinput_layer_2/combo_brand_embedding/embedding_weights/Initializer/truncated_normal/TruncatedNormalYinput_layer_2/combo_brand_embedding/embedding_weights/Initializer/truncated_normal/stddev*H
_class>
<:loc:@input_layer_2/combo_brand_embedding/embedding_weights*
T0* 
_output_shapes
:
аН
 
Rinput_layer_2/combo_brand_embedding/embedding_weights/Initializer/truncated_normalAddVinput_layer_2/combo_brand_embedding/embedding_weights/Initializer/truncated_normal/mulWinput_layer_2/combo_brand_embedding/embedding_weights/Initializer/truncated_normal/mean*H
_class>
<:loc:@input_layer_2/combo_brand_embedding/embedding_weights*
T0* 
_output_shapes
:
аН
╙
5input_layer_2/combo_brand_embedding/embedding_weights
VariableV2*
shape:
аН* 
_output_shapes
:
аН*
dtype0*H
_class>
<:loc:@input_layer_2/combo_brand_embedding/embedding_weights
╞
<input_layer_2/combo_brand_embedding/embedding_weights/AssignAssign5input_layer_2/combo_brand_embedding/embedding_weightsRinput_layer_2/combo_brand_embedding/embedding_weights/Initializer/truncated_normal*
T0*H
_class>
<:loc:@input_layer_2/combo_brand_embedding/embedding_weights* 
_output_shapes
:
аН
Є
:input_layer_2/combo_brand_embedding/embedding_weights/readIdentity5input_layer_2/combo_brand_embedding/embedding_weights*H
_class>
<:loc:@input_layer_2/combo_brand_embedding/embedding_weights*
T0* 
_output_shapes
:
аН
Ч
Minput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/Slice/beginConst*
valueB: *
_output_shapes
:*
dtype0
Ц
Linput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/Slice/sizeConst*
valueB:*
_output_shapes
:*
dtype0
╜
Ginput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/SliceSliceStringSplit_15/StringSplit:2Minput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/Slice/beginLinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/Slice/size*
Index0*
T0	*
_output_shapes
:
С
Ginput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/ConstConst*
valueB: *
_output_shapes
:*
dtype0
Б
Finput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/ProdProdGinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/SliceGinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/Const*
_output_shapes
: *
T0	
Ф
Rinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
value	B :*
dtype0
С
Oinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
value	B : *
dtype0
▌
Jinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/GatherV2GatherV2StringSplit_15/StringSplit:2Rinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/GatherV2/indicesOinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/GatherV2/axis*
Tindices0*
Taxis0*
_output_shapes
: *
Tparams0	
Т
Hinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/Cast/xPackFinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/ProdJinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/GatherV2*
_output_shapes
:*
N*
T0	
У
Oinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/SparseReshapeSparseReshapeStringSplit_15/StringSplitStringSplit_15/StringSplit:2Hinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/Cast/x*-
_output_shapes
:         :
╛
Xinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/SparseReshape/IdentityIdentity*input_layer_2/combo_brand_embedding/lookup*#
_output_shapes
:         *
T0	
Т
Pinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/GreaterEqual/yConst*
dtype0	*
value	B	 R *
_output_shapes
: 
╕
Ninput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/GreaterEqualGreaterEqualXinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/SparseReshape/IdentityPinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/GreaterEqual/y*#
_output_shapes
:         *
T0	
╔
Ginput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/WhereWhereNinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/GreaterEqual*'
_output_shapes
:         
в
Oinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         
Ь
Iinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/ReshapeReshapeGinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/WhereOinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/Reshape/shape*
T0	*#
_output_shapes
:         
У
Qinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/GatherV2_1/axisConst*
value	B : *
_output_shapes
: *
dtype0
Ь
Linput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/GatherV2_1GatherV2Oinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/SparseReshapeIinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/ReshapeQinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/GatherV2_1/axis*
Taxis0*
Tparams0	*
Tindices0	*'
_output_shapes
:         
У
Qinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/GatherV2_2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
б
Linput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/GatherV2_2GatherV2Xinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/SparseReshape/IdentityIinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/ReshapeQinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/GatherV2_2/axis*#
_output_shapes
:         *
Tindices0	*
Tparams0	*
Taxis0
╬
Jinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/IdentityIdentityQinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/SparseReshape:1*
_output_shapes
:*
T0	
Э
[input_layer_2/combo_brand_embedding/combo_brand_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
value	B	 R *
dtype0	
д
iinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsLinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/GatherV2_1Linput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/GatherV2_2Jinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/Identity[input_layer_2/combo_brand_embedding/combo_brand_embedding_weights/SparseFillEmptyRows/Const*T
_output_shapesB
@:         :         :         :         *
T0	
╛
minput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
└
oinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
└
oinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
и
ginput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSliceiinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsminput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/embedding_lookup_sparse/strided_slice/stackoinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1oinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2*
T0	*

begin_mask*
shrink_axis_mask*
end_mask*#
_output_shapes
:         *
Index0
М
^input_layer_2/combo_brand_embedding/combo_brand_embedding_weights/embedding_lookup_sparse/CastCastginput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/embedding_lookup_sparse/strided_slice*

SrcT0	*

DstT0*#
_output_shapes
:         
Ф
`input_layer_2/combo_brand_embedding/combo_brand_embedding_weights/embedding_lookup_sparse/UniqueUniquekinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:         :         *
T0	
√
oinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*
value	B : *H
_class>
<:loc:@input_layer_2/combo_brand_embedding/embedding_weights*
_output_shapes
: *
dtype0
д
jinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV2:input_layer_2/combo_brand_embedding/embedding_weights/read`input_layer_2/combo_brand_embedding/combo_brand_embedding_weights/embedding_lookup_sparse/Uniqueoinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis*
Tparams0*
Taxis0*'
_output_shapes
:         *H
_class>
<:loc:@input_layer_2/combo_brand_embedding/embedding_weights*
Tindices0	
Э
sinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentityjinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/embedding_lookup_sparse/embedding_lookup*'
_output_shapes
:         *
T0
┘
Yinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/embedding_lookup_sparseSparseSegmentMeansinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identitybinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/embedding_lookup_sparse/Unique:1^input_layer_2/combo_brand_embedding/combo_brand_embedding_weights/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:         
в
Qinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/Reshape_1/shapeConst*
valueB"       *
_output_shapes
:*
dtype0
╚
Kinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/Reshape_1Reshapekinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:2Qinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/Reshape_1/shape*'
_output_shapes
:         *
T0

╨
Ginput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/ShapeShapeYinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/embedding_lookup_sparse*
_output_shapes
:*
T0
Я
Uinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
б
Winput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
б
Winput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
ў
Oinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/strided_sliceStridedSliceGinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/ShapeUinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/strided_slice/stackWinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/strided_slice/stack_1Winput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/strided_slice/stack_2*
shrink_axis_mask*
_output_shapes
: *
T0*
Index0
Л
Iinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/stack/0Const*
dtype0*
_output_shapes
: *
value	B :
Щ
Ginput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/stackPackIinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/stack/0Oinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/strided_slice*
_output_shapes
:*
T0*
N
Я
Finput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/TileTileKinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/Reshape_1Ginput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/stack*0
_output_shapes
:                  *
T0

ц
Linput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/zeros_like	ZerosLikeYinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:         
ю
Ainput_layer_2/combo_brand_embedding/combo_brand_embedding_weightsSelectFinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/TileLinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/zeros_likeYinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:         
в
Hinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/Cast_1CastStringSplit_15/StringSplit:2*
_output_shapes
:*

SrcT0	*

DstT0
Щ
Oinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/Slice_1/beginConst*
dtype0*
_output_shapes
:*
valueB: 
Ш
Ninput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
я
Iinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/Slice_1SliceHinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/Cast_1Oinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/Slice_1/beginNinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/Slice_1/size*
T0*
Index0*
_output_shapes
:
║
Iinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/Shape_1ShapeAinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights*
T0*
_output_shapes
:
Щ
Oinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/Slice_2/beginConst*
valueB:*
_output_shapes
:*
dtype0
б
Ninput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/Slice_2/sizeConst*
valueB:
         *
dtype0*
_output_shapes
:
Ё
Iinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/Slice_2SliceIinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/Shape_1Oinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/Slice_2/beginNinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/Slice_2/size*
T0*
Index0*
_output_shapes
:
П
Minput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
ч
Hinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/concatConcatV2Iinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/Slice_1Iinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/Slice_2Minput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/concat/axis*
N*
_output_shapes
:*
T0
Х
Kinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/Reshape_2ReshapeAinput_layer_2/combo_brand_embedding/combo_brand_embedding_weightsHinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/concat*'
_output_shapes
:         *
T0
д
)input_layer_2/combo_brand_embedding/ShapeShapeKinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/Reshape_2*
T0*
_output_shapes
:
Б
7input_layer_2/combo_brand_embedding/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
Г
9input_layer_2/combo_brand_embedding/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
Г
9input_layer_2/combo_brand_embedding/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
с
1input_layer_2/combo_brand_embedding/strided_sliceStridedSlice)input_layer_2/combo_brand_embedding/Shape7input_layer_2/combo_brand_embedding/strided_slice/stack9input_layer_2/combo_brand_embedding/strided_slice/stack_19input_layer_2/combo_brand_embedding/strided_slice/stack_2*
Index0*
shrink_axis_mask*
T0*
_output_shapes
: 
u
3input_layer_2/combo_brand_embedding/Reshape/shape/1Const*
_output_shapes
: *
value	B :*
dtype0
╧
1input_layer_2/combo_brand_embedding/Reshape/shapePack1input_layer_2/combo_brand_embedding/strided_slice3input_layer_2/combo_brand_embedding/Reshape/shape/1*
T0*
_output_shapes
:*
N
ш
+input_layer_2/combo_brand_embedding/ReshapeReshapeKinput_layer_2/combo_brand_embedding/combo_brand_embedding_weights/Reshape_21input_layer_2/combo_brand_embedding/Reshape/shape*
T0*'
_output_shapes
:         
Э
,input_layer_2/combo_cate_id_embedding/lookupStringToHashBucketFastStringSplit_16/StringSplit:1*#
_output_shapes
:         *
num_bucketsРN
ў
Zinput_layer_2/combo_cate_id_embedding/embedding_weights/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*
valueB"'     *J
_class@
><loc:@input_layer_2/combo_cate_id_embedding/embedding_weights
ъ
Yinput_layer_2/combo_cate_id_embedding/embedding_weights/Initializer/truncated_normal/meanConst*
valueB
 *    *J
_class@
><loc:@input_layer_2/combo_cate_id_embedding/embedding_weights*
dtype0*
_output_shapes
: 
ь
[input_layer_2/combo_cate_id_embedding/embedding_weights/Initializer/truncated_normal/stddevConst*
dtype0*
valueB
 *
╫#;*
_output_shapes
: *J
_class@
><loc:@input_layer_2/combo_cate_id_embedding/embedding_weights
╓
dinput_layer_2/combo_cate_id_embedding/embedding_weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalZinput_layer_2/combo_cate_id_embedding/embedding_weights/Initializer/truncated_normal/shape*J
_class@
><loc:@input_layer_2/combo_cate_id_embedding/embedding_weights*
T0*
dtype0*
_output_shapes
:	РN
Ш
Xinput_layer_2/combo_cate_id_embedding/embedding_weights/Initializer/truncated_normal/mulMuldinput_layer_2/combo_cate_id_embedding/embedding_weights/Initializer/truncated_normal/TruncatedNormal[input_layer_2/combo_cate_id_embedding/embedding_weights/Initializer/truncated_normal/stddev*
T0*
_output_shapes
:	РN*J
_class@
><loc:@input_layer_2/combo_cate_id_embedding/embedding_weights
Ж
Tinput_layer_2/combo_cate_id_embedding/embedding_weights/Initializer/truncated_normalAddXinput_layer_2/combo_cate_id_embedding/embedding_weights/Initializer/truncated_normal/mulYinput_layer_2/combo_cate_id_embedding/embedding_weights/Initializer/truncated_normal/mean*J
_class@
><loc:@input_layer_2/combo_cate_id_embedding/embedding_weights*
_output_shapes
:	РN*
T0
╒
7input_layer_2/combo_cate_id_embedding/embedding_weights
VariableV2*
_output_shapes
:	РN*
dtype0*
shape:	РN*J
_class@
><loc:@input_layer_2/combo_cate_id_embedding/embedding_weights
═
>input_layer_2/combo_cate_id_embedding/embedding_weights/AssignAssign7input_layer_2/combo_cate_id_embedding/embedding_weightsTinput_layer_2/combo_cate_id_embedding/embedding_weights/Initializer/truncated_normal*
_output_shapes
:	РN*J
_class@
><loc:@input_layer_2/combo_cate_id_embedding/embedding_weights*
T0
ў
<input_layer_2/combo_cate_id_embedding/embedding_weights/readIdentity7input_layer_2/combo_cate_id_embedding/embedding_weights*
T0*J
_class@
><loc:@input_layer_2/combo_cate_id_embedding/embedding_weights*
_output_shapes
:	РN
Ы
Qinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/Slice/beginConst*
valueB: *
_output_shapes
:*
dtype0
Ъ
Pinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/Slice/sizeConst*
_output_shapes
:*
valueB:*
dtype0
╔
Kinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/SliceSliceStringSplit_16/StringSplit:2Qinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/Slice/beginPinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/Slice/size*
_output_shapes
:*
Index0*
T0	
Х
Kinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
Н
Jinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/ProdProdKinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/SliceKinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/Const*
T0	*
_output_shapes
: 
Ш
Vinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/GatherV2/indicesConst*
value	B :*
_output_shapes
: *
dtype0
Х
Sinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/GatherV2/axisConst*
value	B : *
_output_shapes
: *
dtype0
щ
Ninput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/GatherV2GatherV2StringSplit_16/StringSplit:2Vinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/GatherV2/indicesSinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/GatherV2/axis*
_output_shapes
: *
Tindices0*
Taxis0*
Tparams0	
Ю
Linput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/Cast/xPackJinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/ProdNinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/GatherV2*
_output_shapes
:*
T0	*
N
Ы
Sinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/SparseReshapeSparseReshapeStringSplit_16/StringSplitStringSplit_16/StringSplit:2Linput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/Cast/x*-
_output_shapes
:         :
─
\input_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/SparseReshape/IdentityIdentity,input_layer_2/combo_cate_id_embedding/lookup*
T0	*#
_output_shapes
:         
Ц
Tinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/GreaterEqual/yConst*
dtype0	*
value	B	 R *
_output_shapes
: 
─
Rinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/GreaterEqualGreaterEqual\input_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/SparseReshape/IdentityTinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/GreaterEqual/y*
T0	*#
_output_shapes
:         
╤
Kinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/WhereWhereRinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/GreaterEqual*'
_output_shapes
:         
ж
Sinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/Reshape/shapeConst*
valueB:
         *
_output_shapes
:*
dtype0
и
Minput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/ReshapeReshapeKinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/WhereSinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/Reshape/shape*
T0	*#
_output_shapes
:         
Ч
Uinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
value	B : *
dtype0
м
Pinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/GatherV2_1GatherV2Sinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/SparseReshapeMinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/ReshapeUinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/GatherV2_1/axis*'
_output_shapes
:         *
Tindices0	*
Tparams0	*
Taxis0
Ч
Uinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
▒
Pinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/GatherV2_2GatherV2\input_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/SparseReshape/IdentityMinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/ReshapeUinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/GatherV2_2/axis*
Tparams0	*#
_output_shapes
:         *
Tindices0	*
Taxis0
╓
Ninput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/IdentityIdentityUinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/SparseReshape:1*
T0	*
_output_shapes
:
б
_input_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/SparseFillEmptyRows/ConstConst*
dtype0	*
_output_shapes
: *
value	B	 R 
╕
minput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsPinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/GatherV2_1Pinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/GatherV2_2Ninput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/Identity_input_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/SparseFillEmptyRows/Const*T
_output_shapesB
@:         :         :         :         *
T0	
┬
qinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
_output_shapes
:*
dtype0
─
sinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
valueB"       *
dtype0
─
sinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
╝
kinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSliceminput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsqinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/embedding_lookup_sparse/strided_slice/stacksinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1sinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2*#
_output_shapes
:         *
end_mask*

begin_mask*
T0	*
Index0*
shrink_axis_mask
Ф
binput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/embedding_lookup_sparse/CastCastkinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/embedding_lookup_sparse/strided_slice*

DstT0*#
_output_shapes
:         *

SrcT0	
Ь
dinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/embedding_lookup_sparse/UniqueUniqueoinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:         :         
Б
sinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*
_output_shapes
: *
dtype0*J
_class@
><loc:@input_layer_2/combo_cate_id_embedding/embedding_weights*
value	B : 
┤
ninput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV2<input_layer_2/combo_cate_id_embedding/embedding_weights/readdinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/embedding_lookup_sparse/Uniquesinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis*
Taxis0*
Tindices0	*J
_class@
><loc:@input_layer_2/combo_cate_id_embedding/embedding_weights*'
_output_shapes
:         *
Tparams0
е
winput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentityninput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/embedding_lookup_sparse/embedding_lookup*
T0*'
_output_shapes
:         
щ
]input_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/embedding_lookup_sparseSparseSegmentMeanwinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identityfinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/embedding_lookup_sparse/Unique:1binput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:         
ж
Uinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"       
╘
Oinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/Reshape_1Reshapeoinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:2Uinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/Reshape_1/shape*'
_output_shapes
:         *
T0

╪
Kinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/ShapeShape]input_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/embedding_lookup_sparse*
_output_shapes
:*
T0
г
Yinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:
е
[input_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
е
[input_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
Л
Sinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/strided_sliceStridedSliceKinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/ShapeYinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/strided_slice/stack[input_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/strided_slice/stack_1[input_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/strided_slice/stack_2*
shrink_axis_mask*
Index0*
_output_shapes
: *
T0
П
Minput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
е
Kinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/stackPackMinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/stack/0Sinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/strided_slice*
T0*
_output_shapes
:*
N
л
Jinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/TileTileOinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/Reshape_1Kinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/stack*0
_output_shapes
:                  *
T0

ю
Pinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/zeros_like	ZerosLike]input_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:         
■
Einput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weightsSelectJinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/TilePinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/zeros_like]input_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:         
ж
Linput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/Cast_1CastStringSplit_16/StringSplit:2*

SrcT0	*
_output_shapes
:*

DstT0
Э
Sinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/Slice_1/beginConst*
dtype0*
valueB: *
_output_shapes
:
Ь
Rinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/Slice_1/sizeConst*
dtype0*
_output_shapes
:*
valueB:
 
Minput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/Slice_1SliceLinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/Cast_1Sinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/Slice_1/beginRinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/Slice_1/size*
_output_shapes
:*
Index0*
T0
┬
Minput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/Shape_1ShapeEinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights*
_output_shapes
:*
T0
Э
Sinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/Slice_2/beginConst*
valueB:*
_output_shapes
:*
dtype0
е
Rinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/Slice_2/sizeConst*
dtype0*
valueB:
         *
_output_shapes
:
А
Minput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/Slice_2SliceMinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/Shape_1Sinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/Slice_2/beginRinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/Slice_2/size*
Index0*
_output_shapes
:*
T0
У
Qinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
ў
Linput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/concatConcatV2Minput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/Slice_1Minput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/Slice_2Qinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/concat/axis*
N*
T0*
_output_shapes
:
б
Oinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/Reshape_2ReshapeEinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weightsLinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/concat*'
_output_shapes
:         *
T0
к
+input_layer_2/combo_cate_id_embedding/ShapeShapeOinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/Reshape_2*
T0*
_output_shapes
:
Г
9input_layer_2/combo_cate_id_embedding/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
Е
;input_layer_2/combo_cate_id_embedding/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
Е
;input_layer_2/combo_cate_id_embedding/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
ы
3input_layer_2/combo_cate_id_embedding/strided_sliceStridedSlice+input_layer_2/combo_cate_id_embedding/Shape9input_layer_2/combo_cate_id_embedding/strided_slice/stack;input_layer_2/combo_cate_id_embedding/strided_slice/stack_1;input_layer_2/combo_cate_id_embedding/strided_slice/stack_2*
T0*
shrink_axis_mask*
Index0*
_output_shapes
: 
w
5input_layer_2/combo_cate_id_embedding/Reshape/shape/1Const*
dtype0*
value	B :*
_output_shapes
: 
╒
3input_layer_2/combo_cate_id_embedding/Reshape/shapePack3input_layer_2/combo_cate_id_embedding/strided_slice5input_layer_2/combo_cate_id_embedding/Reshape/shape/1*
T0*
_output_shapes
:*
N
Ё
-input_layer_2/combo_cate_id_embedding/ReshapeReshapeOinput_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/Reshape_23input_layer_2/combo_cate_id_embedding/Reshape/shape*'
_output_shapes
:         *
T0
[
input_layer_2/concat/axisConst*
dtype0*
_output_shapes
: *
value	B :
╥
input_layer_2/concatConcatV2+input_layer_2/combo_brand_embedding/Reshape-input_layer_2/combo_cate_id_embedding/Reshapeinput_layer_2/concat/axis*
T0*'
_output_shapes
:          *
N
^
concat_3/concat_dimConst*
dtype0*
valueB :
         *
_output_shapes
: 
\
concat_3Identityinput_layer_2/concat*
T0*'
_output_shapes
:          
v
1get_regularization_penalty_2/l2_regularizer/scaleConst*
dtype0*
valueB
 *м┼'7*
_output_shapes
: 
s
2get_regularization_penalty_2/l2_regularizer/L2LossL2Lossinput_layer_2/concat*
_output_shapes
: *
T0
║
+get_regularization_penalty_2/l2_regularizerMul1get_regularization_penalty_2/l2_regularizer/scale2get_regularization_penalty_2/l2_regularizer/L2Loss*
_output_shapes
: *
T0
v
get_regularization_penalty_2Identity+get_regularization_penalty_2/l2_regularizer*
T0*
_output_shapes
: 
Х
"item_fea_bn/gamma/Initializer/onesConst*$
_class
loc:@item_fea_bn/gamma*
valueBa*  А?*
_output_shapes
:a*
dtype0

item_fea_bn/gamma
VariableV2*
dtype0*$
_class
loc:@item_fea_bn/gamma*
shape:a*
_output_shapes
:a
д
item_fea_bn/gamma/AssignAssignitem_fea_bn/gamma"item_fea_bn/gamma/Initializer/ones*
T0*$
_class
loc:@item_fea_bn/gamma*
_output_shapes
:a
А
item_fea_bn/gamma/readIdentityitem_fea_bn/gamma*
_output_shapes
:a*
T0*$
_class
loc:@item_fea_bn/gamma
Ф
"item_fea_bn/beta/Initializer/zerosConst*
_output_shapes
:a*
valueBa*    *#
_class
loc:@item_fea_bn/beta*
dtype0
}
item_fea_bn/beta
VariableV2*
_output_shapes
:a*#
_class
loc:@item_fea_bn/beta*
shape:a*
dtype0
б
item_fea_bn/beta/AssignAssignitem_fea_bn/beta"item_fea_bn/beta/Initializer/zeros*
_output_shapes
:a*
T0*#
_class
loc:@item_fea_bn/beta
}
item_fea_bn/beta/readIdentityitem_fea_bn/beta*
T0*
_output_shapes
:a*#
_class
loc:@item_fea_bn/beta
в
)item_fea_bn/moving_mean/Initializer/zerosConst*
_output_shapes
:a*
dtype0**
_class 
loc:@item_fea_bn/moving_mean*
valueBa*    
Л
item_fea_bn/moving_mean
VariableV2**
_class 
loc:@item_fea_bn/moving_mean*
_output_shapes
:a*
dtype0*
shape:a
╜
item_fea_bn/moving_mean/AssignAssignitem_fea_bn/moving_mean)item_fea_bn/moving_mean/Initializer/zeros*
T0**
_class 
loc:@item_fea_bn/moving_mean*
_output_shapes
:a
Т
item_fea_bn/moving_mean/readIdentityitem_fea_bn/moving_mean**
_class 
loc:@item_fea_bn/moving_mean*
_output_shapes
:a*
T0
й
,item_fea_bn/moving_variance/Initializer/onesConst*
dtype0*.
_class$
" loc:@item_fea_bn/moving_variance*
_output_shapes
:a*
valueBa*  А?
У
item_fea_bn/moving_variance
VariableV2*.
_class$
" loc:@item_fea_bn/moving_variance*
dtype0*
_output_shapes
:a*
shape:a
╠
"item_fea_bn/moving_variance/AssignAssignitem_fea_bn/moving_variance,item_fea_bn/moving_variance/Initializer/ones*
T0*.
_class$
" loc:@item_fea_bn/moving_variance*
_output_shapes
:a
Ю
 item_fea_bn/moving_variance/readIdentityitem_fea_bn/moving_variance*.
_class$
" loc:@item_fea_bn/moving_variance*
T0*
_output_shapes
:a
`
item_fea_bn/batchnorm/add/yConst*
dtype0*
valueB
 *oГ:*
_output_shapes
: 
Д
item_fea_bn/batchnorm/addAdd item_fea_bn/moving_variance/readitem_fea_bn/batchnorm/add/y*
T0*
_output_shapes
:a
d
item_fea_bn/batchnorm/RsqrtRsqrtitem_fea_bn/batchnorm/add*
T0*
_output_shapes
:a
z
item_fea_bn/batchnorm/mulMulitem_fea_bn/batchnorm/Rsqrtitem_fea_bn/gamma/read*
_output_shapes
:a*
T0
y
item_fea_bn/batchnorm/mul_1Mulconcat_1item_fea_bn/batchnorm/mul*'
_output_shapes
:         a*
T0
А
item_fea_bn/batchnorm/mul_2Mulitem_fea_bn/moving_mean/readitem_fea_bn/batchnorm/mul*
_output_shapes
:a*
T0
y
item_fea_bn/batchnorm/subSubitem_fea_bn/beta/readitem_fea_bn/batchnorm/mul_2*
_output_shapes
:a*
T0
М
item_fea_bn/batchnorm/add_1Additem_fea_bn/batchnorm/mul_1item_fea_bn/batchnorm/sub*'
_output_shapes
:         a*
T0
▒
6item_dnn/dnn_0/kernel/Initializer/random_uniform/shapeConst*
dtype0*(
_class
loc:@item_dnn/dnn_0/kernel*
_output_shapes
:*
valueB"a   └   
г
4item_dnn/dnn_0/kernel/Initializer/random_uniform/minConst*
valueB
 *╡Л╛*
dtype0*(
_class
loc:@item_dnn/dnn_0/kernel*
_output_shapes
: 
г
4item_dnn/dnn_0/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *╡Л>*(
_class
loc:@item_dnn/dnn_0/kernel
ш
>item_dnn/dnn_0/kernel/Initializer/random_uniform/RandomUniformRandomUniform6item_dnn/dnn_0/kernel/Initializer/random_uniform/shape*
dtype0*
T0*
_output_shapes
:	a└*(
_class
loc:@item_dnn/dnn_0/kernel
Є
4item_dnn/dnn_0/kernel/Initializer/random_uniform/subSub4item_dnn/dnn_0/kernel/Initializer/random_uniform/max4item_dnn/dnn_0/kernel/Initializer/random_uniform/min*
T0*
_output_shapes
: *(
_class
loc:@item_dnn/dnn_0/kernel
Е
4item_dnn/dnn_0/kernel/Initializer/random_uniform/mulMul>item_dnn/dnn_0/kernel/Initializer/random_uniform/RandomUniform4item_dnn/dnn_0/kernel/Initializer/random_uniform/sub*(
_class
loc:@item_dnn/dnn_0/kernel*
T0*
_output_shapes
:	a└
ў
0item_dnn/dnn_0/kernel/Initializer/random_uniformAdd4item_dnn/dnn_0/kernel/Initializer/random_uniform/mul4item_dnn/dnn_0/kernel/Initializer/random_uniform/min*
T0*
_output_shapes
:	a└*(
_class
loc:@item_dnn/dnn_0/kernel
С
item_dnn/dnn_0/kernel
VariableV2*
_output_shapes
:	a└*(
_class
loc:@item_dnn/dnn_0/kernel*
shape:	a└*
dtype0
├
item_dnn/dnn_0/kernel/AssignAssignitem_dnn/dnn_0/kernel0item_dnn/dnn_0/kernel/Initializer/random_uniform*
_output_shapes
:	a└*
T0*(
_class
loc:@item_dnn/dnn_0/kernel
С
item_dnn/dnn_0/kernel/readIdentityitem_dnn/dnn_0/kernel*
_output_shapes
:	a└*(
_class
loc:@item_dnn/dnn_0/kernel*
T0
{
6item_dnn/dnn_0/kernel/Regularizer/l2_regularizer/scaleConst*
_output_shapes
: *
valueB
 *╖╤8*
dtype0
~
7item_dnn/dnn_0/kernel/Regularizer/l2_regularizer/L2LossL2Lossitem_dnn/dnn_0/kernel/read*
_output_shapes
: *
T0
╔
0item_dnn/dnn_0/kernel/Regularizer/l2_regularizerMul6item_dnn/dnn_0/kernel/Regularizer/l2_regularizer/scale7item_dnn/dnn_0/kernel/Regularizer/l2_regularizer/L2Loss*
T0*
_output_shapes
: 
Ь
%item_dnn/dnn_0/bias/Initializer/zerosConst*
_output_shapes	
:└*&
_class
loc:@item_dnn/dnn_0/bias*
valueB└*    *
dtype0
Е
item_dnn/dnn_0/bias
VariableV2*&
_class
loc:@item_dnn/dnn_0/bias*
dtype0*
_output_shapes	
:└*
shape:└
о
item_dnn/dnn_0/bias/AssignAssignitem_dnn/dnn_0/bias%item_dnn/dnn_0/bias/Initializer/zeros*&
_class
loc:@item_dnn/dnn_0/bias*
_output_shapes	
:└*
T0
З
item_dnn/dnn_0/bias/readIdentityitem_dnn/dnn_0/bias*
_output_shapes	
:└*
T0*&
_class
loc:@item_dnn/dnn_0/bias
Л
item_dnn/dnn_0/MatMulMatMulitem_fea_bn/batchnorm/add_1item_dnn/dnn_0/kernel/read*(
_output_shapes
:         └*
T0
Е
item_dnn/dnn_0/BiasAddBiasAdditem_dnn/dnn_0/MatMulitem_dnn/dnn_0/bias/read*(
_output_shapes
:         └*
T0
г
(item_dnn/dnn_0/bn/gamma/Initializer/onesConst*
_output_shapes	
:└**
_class 
loc:@item_dnn/dnn_0/bn/gamma*
dtype0*
valueB└*  А?
Н
item_dnn/dnn_0/bn/gamma
VariableV2**
_class 
loc:@item_dnn/dnn_0/bn/gamma*
dtype0*
shape:└*
_output_shapes	
:└
╜
item_dnn/dnn_0/bn/gamma/AssignAssignitem_dnn/dnn_0/bn/gamma(item_dnn/dnn_0/bn/gamma/Initializer/ones*
T0**
_class 
loc:@item_dnn/dnn_0/bn/gamma*
_output_shapes	
:└
У
item_dnn/dnn_0/bn/gamma/readIdentityitem_dnn/dnn_0/bn/gamma**
_class 
loc:@item_dnn/dnn_0/bn/gamma*
T0*
_output_shapes	
:└
в
(item_dnn/dnn_0/bn/beta/Initializer/zerosConst*
_output_shapes	
:└*
dtype0*)
_class
loc:@item_dnn/dnn_0/bn/beta*
valueB└*    
Л
item_dnn/dnn_0/bn/beta
VariableV2*)
_class
loc:@item_dnn/dnn_0/bn/beta*
dtype0*
_output_shapes	
:└*
shape:└
║
item_dnn/dnn_0/bn/beta/AssignAssignitem_dnn/dnn_0/bn/beta(item_dnn/dnn_0/bn/beta/Initializer/zeros*
T0*)
_class
loc:@item_dnn/dnn_0/bn/beta*
_output_shapes	
:└
Р
item_dnn/dnn_0/bn/beta/readIdentityitem_dnn/dnn_0/bn/beta*
_output_shapes	
:└*
T0*)
_class
loc:@item_dnn/dnn_0/bn/beta
░
/item_dnn/dnn_0/bn/moving_mean/Initializer/zerosConst*
valueB└*    *
dtype0*
_output_shapes	
:└*0
_class&
$"loc:@item_dnn/dnn_0/bn/moving_mean
Щ
item_dnn/dnn_0/bn/moving_mean
VariableV2*0
_class&
$"loc:@item_dnn/dnn_0/bn/moving_mean*
shape:└*
dtype0*
_output_shapes	
:└
╓
$item_dnn/dnn_0/bn/moving_mean/AssignAssignitem_dnn/dnn_0/bn/moving_mean/item_dnn/dnn_0/bn/moving_mean/Initializer/zeros*0
_class&
$"loc:@item_dnn/dnn_0/bn/moving_mean*
T0*
_output_shapes	
:└
е
"item_dnn/dnn_0/bn/moving_mean/readIdentityitem_dnn/dnn_0/bn/moving_mean*
_output_shapes	
:└*0
_class&
$"loc:@item_dnn/dnn_0/bn/moving_mean*
T0
╖
2item_dnn/dnn_0/bn/moving_variance/Initializer/onesConst*
dtype0*
_output_shapes	
:└*4
_class*
(&loc:@item_dnn/dnn_0/bn/moving_variance*
valueB└*  А?
б
!item_dnn/dnn_0/bn/moving_variance
VariableV2*
dtype0*4
_class*
(&loc:@item_dnn/dnn_0/bn/moving_variance*
shape:└*
_output_shapes	
:└
х
(item_dnn/dnn_0/bn/moving_variance/AssignAssign!item_dnn/dnn_0/bn/moving_variance2item_dnn/dnn_0/bn/moving_variance/Initializer/ones*
_output_shapes	
:└*4
_class*
(&loc:@item_dnn/dnn_0/bn/moving_variance*
T0
▒
&item_dnn/dnn_0/bn/moving_variance/readIdentity!item_dnn/dnn_0/bn/moving_variance*
T0*4
_class*
(&loc:@item_dnn/dnn_0/bn/moving_variance*
_output_shapes	
:└
f
!item_dnn/dnn_0/bn/batchnorm/add/yConst*
dtype0*
valueB
 *oГ:*
_output_shapes
: 
Ч
item_dnn/dnn_0/bn/batchnorm/addAdd&item_dnn/dnn_0/bn/moving_variance/read!item_dnn/dnn_0/bn/batchnorm/add/y*
_output_shapes	
:└*
T0
q
!item_dnn/dnn_0/bn/batchnorm/RsqrtRsqrtitem_dnn/dnn_0/bn/batchnorm/add*
T0*
_output_shapes	
:└
Н
item_dnn/dnn_0/bn/batchnorm/mulMul!item_dnn/dnn_0/bn/batchnorm/Rsqrtitem_dnn/dnn_0/bn/gamma/read*
T0*
_output_shapes	
:└
Ф
!item_dnn/dnn_0/bn/batchnorm/mul_1Mulitem_dnn/dnn_0/BiasAdditem_dnn/dnn_0/bn/batchnorm/mul*(
_output_shapes
:         └*
T0
У
!item_dnn/dnn_0/bn/batchnorm/mul_2Mul"item_dnn/dnn_0/bn/moving_mean/readitem_dnn/dnn_0/bn/batchnorm/mul*
T0*
_output_shapes	
:└
М
item_dnn/dnn_0/bn/batchnorm/subSubitem_dnn/dnn_0/bn/beta/read!item_dnn/dnn_0/bn/batchnorm/mul_2*
T0*
_output_shapes	
:└
Я
!item_dnn/dnn_0/bn/batchnorm/add_1Add!item_dnn/dnn_0/bn/batchnorm/mul_1item_dnn/dnn_0/bn/batchnorm/sub*(
_output_shapes
:         └*
T0
p
item_dnn/dnn_0/actRelu!item_dnn/dnn_0/bn/batchnorm/add_1*
T0*(
_output_shapes
:         └
▒
6item_dnn/dnn_1/kernel/Initializer/random_uniform/shapeConst*
valueB"└      *
_output_shapes
:*(
_class
loc:@item_dnn/dnn_1/kernel*
dtype0
г
4item_dnn/dnn_1/kernel/Initializer/random_uniform/minConst*(
_class
loc:@item_dnn/dnn_1/kernel*
dtype0*
_output_shapes
: *
valueB
 *Мэ╜
г
4item_dnn/dnn_1/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *(
_class
loc:@item_dnn/dnn_1/kernel*
dtype0*
valueB
 *Мэ=
щ
>item_dnn/dnn_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform6item_dnn/dnn_1/kernel/Initializer/random_uniform/shape*(
_class
loc:@item_dnn/dnn_1/kernel* 
_output_shapes
:
└А*
dtype0*
T0
Є
4item_dnn/dnn_1/kernel/Initializer/random_uniform/subSub4item_dnn/dnn_1/kernel/Initializer/random_uniform/max4item_dnn/dnn_1/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*(
_class
loc:@item_dnn/dnn_1/kernel
Ж
4item_dnn/dnn_1/kernel/Initializer/random_uniform/mulMul>item_dnn/dnn_1/kernel/Initializer/random_uniform/RandomUniform4item_dnn/dnn_1/kernel/Initializer/random_uniform/sub*
T0*(
_class
loc:@item_dnn/dnn_1/kernel* 
_output_shapes
:
└А
°
0item_dnn/dnn_1/kernel/Initializer/random_uniformAdd4item_dnn/dnn_1/kernel/Initializer/random_uniform/mul4item_dnn/dnn_1/kernel/Initializer/random_uniform/min* 
_output_shapes
:
└А*(
_class
loc:@item_dnn/dnn_1/kernel*
T0
У
item_dnn/dnn_1/kernel
VariableV2*(
_class
loc:@item_dnn/dnn_1/kernel*
shape:
└А*
dtype0* 
_output_shapes
:
└А
─
item_dnn/dnn_1/kernel/AssignAssignitem_dnn/dnn_1/kernel0item_dnn/dnn_1/kernel/Initializer/random_uniform* 
_output_shapes
:
└А*
T0*(
_class
loc:@item_dnn/dnn_1/kernel
Т
item_dnn/dnn_1/kernel/readIdentityitem_dnn/dnn_1/kernel*(
_class
loc:@item_dnn/dnn_1/kernel*
T0* 
_output_shapes
:
└А
{
6item_dnn/dnn_1/kernel/Regularizer/l2_regularizer/scaleConst*
dtype0*
_output_shapes
: *
valueB
 *╖╤8
~
7item_dnn/dnn_1/kernel/Regularizer/l2_regularizer/L2LossL2Lossitem_dnn/dnn_1/kernel/read*
T0*
_output_shapes
: 
╔
0item_dnn/dnn_1/kernel/Regularizer/l2_regularizerMul6item_dnn/dnn_1/kernel/Regularizer/l2_regularizer/scale7item_dnn/dnn_1/kernel/Regularizer/l2_regularizer/L2Loss*
_output_shapes
: *
T0
Ь
%item_dnn/dnn_1/bias/Initializer/zerosConst*
dtype0*&
_class
loc:@item_dnn/dnn_1/bias*
_output_shapes	
:А*
valueBА*    
Е
item_dnn/dnn_1/bias
VariableV2*&
_class
loc:@item_dnn/dnn_1/bias*
dtype0*
shape:А*
_output_shapes	
:А
о
item_dnn/dnn_1/bias/AssignAssignitem_dnn/dnn_1/bias%item_dnn/dnn_1/bias/Initializer/zeros*&
_class
loc:@item_dnn/dnn_1/bias*
T0*
_output_shapes	
:А
З
item_dnn/dnn_1/bias/readIdentityitem_dnn/dnn_1/bias*&
_class
loc:@item_dnn/dnn_1/bias*
_output_shapes	
:А*
T0
В
item_dnn/dnn_1/MatMulMatMulitem_dnn/dnn_0/actitem_dnn/dnn_1/kernel/read*
T0*(
_output_shapes
:         А
Е
item_dnn/dnn_1/BiasAddBiasAdditem_dnn/dnn_1/MatMulitem_dnn/dnn_1/bias/read*(
_output_shapes
:         А*
T0
г
(item_dnn/dnn_1/bn/gamma/Initializer/onesConst*
valueBА*  А?*
_output_shapes	
:А**
_class 
loc:@item_dnn/dnn_1/bn/gamma*
dtype0
Н
item_dnn/dnn_1/bn/gamma
VariableV2*
_output_shapes	
:А**
_class 
loc:@item_dnn/dnn_1/bn/gamma*
dtype0*
shape:А
╜
item_dnn/dnn_1/bn/gamma/AssignAssignitem_dnn/dnn_1/bn/gamma(item_dnn/dnn_1/bn/gamma/Initializer/ones**
_class 
loc:@item_dnn/dnn_1/bn/gamma*
_output_shapes	
:А*
T0
У
item_dnn/dnn_1/bn/gamma/readIdentityitem_dnn/dnn_1/bn/gamma*
T0**
_class 
loc:@item_dnn/dnn_1/bn/gamma*
_output_shapes	
:А
в
(item_dnn/dnn_1/bn/beta/Initializer/zerosConst*)
_class
loc:@item_dnn/dnn_1/bn/beta*
dtype0*
valueBА*    *
_output_shapes	
:А
Л
item_dnn/dnn_1/bn/beta
VariableV2*)
_class
loc:@item_dnn/dnn_1/bn/beta*
_output_shapes	
:А*
dtype0*
shape:А
║
item_dnn/dnn_1/bn/beta/AssignAssignitem_dnn/dnn_1/bn/beta(item_dnn/dnn_1/bn/beta/Initializer/zeros*)
_class
loc:@item_dnn/dnn_1/bn/beta*
T0*
_output_shapes	
:А
Р
item_dnn/dnn_1/bn/beta/readIdentityitem_dnn/dnn_1/bn/beta*
T0*)
_class
loc:@item_dnn/dnn_1/bn/beta*
_output_shapes	
:А
░
/item_dnn/dnn_1/bn/moving_mean/Initializer/zerosConst*
_output_shapes	
:А*
dtype0*
valueBА*    *0
_class&
$"loc:@item_dnn/dnn_1/bn/moving_mean
Щ
item_dnn/dnn_1/bn/moving_mean
VariableV2*
shape:А*
_output_shapes	
:А*
dtype0*0
_class&
$"loc:@item_dnn/dnn_1/bn/moving_mean
╓
$item_dnn/dnn_1/bn/moving_mean/AssignAssignitem_dnn/dnn_1/bn/moving_mean/item_dnn/dnn_1/bn/moving_mean/Initializer/zeros*
T0*0
_class&
$"loc:@item_dnn/dnn_1/bn/moving_mean*
_output_shapes	
:А
е
"item_dnn/dnn_1/bn/moving_mean/readIdentityitem_dnn/dnn_1/bn/moving_mean*0
_class&
$"loc:@item_dnn/dnn_1/bn/moving_mean*
T0*
_output_shapes	
:А
╖
2item_dnn/dnn_1/bn/moving_variance/Initializer/onesConst*4
_class*
(&loc:@item_dnn/dnn_1/bn/moving_variance*
_output_shapes	
:А*
dtype0*
valueBА*  А?
б
!item_dnn/dnn_1/bn/moving_variance
VariableV2*
dtype0*
_output_shapes	
:А*4
_class*
(&loc:@item_dnn/dnn_1/bn/moving_variance*
shape:А
х
(item_dnn/dnn_1/bn/moving_variance/AssignAssign!item_dnn/dnn_1/bn/moving_variance2item_dnn/dnn_1/bn/moving_variance/Initializer/ones*
_output_shapes	
:А*
T0*4
_class*
(&loc:@item_dnn/dnn_1/bn/moving_variance
▒
&item_dnn/dnn_1/bn/moving_variance/readIdentity!item_dnn/dnn_1/bn/moving_variance*4
_class*
(&loc:@item_dnn/dnn_1/bn/moving_variance*
T0*
_output_shapes	
:А
f
!item_dnn/dnn_1/bn/batchnorm/add/yConst*
dtype0*
_output_shapes
: *
valueB
 *oГ:
Ч
item_dnn/dnn_1/bn/batchnorm/addAdd&item_dnn/dnn_1/bn/moving_variance/read!item_dnn/dnn_1/bn/batchnorm/add/y*
_output_shapes	
:А*
T0
q
!item_dnn/dnn_1/bn/batchnorm/RsqrtRsqrtitem_dnn/dnn_1/bn/batchnorm/add*
_output_shapes	
:А*
T0
Н
item_dnn/dnn_1/bn/batchnorm/mulMul!item_dnn/dnn_1/bn/batchnorm/Rsqrtitem_dnn/dnn_1/bn/gamma/read*
T0*
_output_shapes	
:А
Ф
!item_dnn/dnn_1/bn/batchnorm/mul_1Mulitem_dnn/dnn_1/BiasAdditem_dnn/dnn_1/bn/batchnorm/mul*
T0*(
_output_shapes
:         А
У
!item_dnn/dnn_1/bn/batchnorm/mul_2Mul"item_dnn/dnn_1/bn/moving_mean/readitem_dnn/dnn_1/bn/batchnorm/mul*
T0*
_output_shapes	
:А
М
item_dnn/dnn_1/bn/batchnorm/subSubitem_dnn/dnn_1/bn/beta/read!item_dnn/dnn_1/bn/batchnorm/mul_2*
T0*
_output_shapes	
:А
Я
!item_dnn/dnn_1/bn/batchnorm/add_1Add!item_dnn/dnn_1/bn/batchnorm/mul_1item_dnn/dnn_1/bn/batchnorm/sub*
T0*(
_output_shapes
:         А
p
item_dnn/dnn_1/actRelu!item_dnn/dnn_1/bn/batchnorm/add_1*
T0*(
_output_shapes
:         А
▒
6item_dnn/dnn_2/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*(
_class
loc:@item_dnn/dnn_2/kernel*
valueB"   └   *
dtype0
г
4item_dnn/dnn_2/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
dtype0*(
_class
loc:@item_dnn/dnn_2/kernel*
valueB
 *Мэ╜
г
4item_dnn/dnn_2/kernel/Initializer/random_uniform/maxConst*(
_class
loc:@item_dnn/dnn_2/kernel*
valueB
 *Мэ=*
_output_shapes
: *
dtype0
щ
>item_dnn/dnn_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform6item_dnn/dnn_2/kernel/Initializer/random_uniform/shape* 
_output_shapes
:
А└*(
_class
loc:@item_dnn/dnn_2/kernel*
dtype0*
T0
Є
4item_dnn/dnn_2/kernel/Initializer/random_uniform/subSub4item_dnn/dnn_2/kernel/Initializer/random_uniform/max4item_dnn/dnn_2/kernel/Initializer/random_uniform/min*
_output_shapes
: *(
_class
loc:@item_dnn/dnn_2/kernel*
T0
Ж
4item_dnn/dnn_2/kernel/Initializer/random_uniform/mulMul>item_dnn/dnn_2/kernel/Initializer/random_uniform/RandomUniform4item_dnn/dnn_2/kernel/Initializer/random_uniform/sub* 
_output_shapes
:
А└*
T0*(
_class
loc:@item_dnn/dnn_2/kernel
°
0item_dnn/dnn_2/kernel/Initializer/random_uniformAdd4item_dnn/dnn_2/kernel/Initializer/random_uniform/mul4item_dnn/dnn_2/kernel/Initializer/random_uniform/min*
T0*(
_class
loc:@item_dnn/dnn_2/kernel* 
_output_shapes
:
А└
У
item_dnn/dnn_2/kernel
VariableV2*
dtype0*
shape:
А└* 
_output_shapes
:
А└*(
_class
loc:@item_dnn/dnn_2/kernel
─
item_dnn/dnn_2/kernel/AssignAssignitem_dnn/dnn_2/kernel0item_dnn/dnn_2/kernel/Initializer/random_uniform* 
_output_shapes
:
А└*
T0*(
_class
loc:@item_dnn/dnn_2/kernel
Т
item_dnn/dnn_2/kernel/readIdentityitem_dnn/dnn_2/kernel*
T0*(
_class
loc:@item_dnn/dnn_2/kernel* 
_output_shapes
:
А└
{
6item_dnn/dnn_2/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *╖╤8*
_output_shapes
: *
dtype0
~
7item_dnn/dnn_2/kernel/Regularizer/l2_regularizer/L2LossL2Lossitem_dnn/dnn_2/kernel/read*
T0*
_output_shapes
: 
╔
0item_dnn/dnn_2/kernel/Regularizer/l2_regularizerMul6item_dnn/dnn_2/kernel/Regularizer/l2_regularizer/scale7item_dnn/dnn_2/kernel/Regularizer/l2_regularizer/L2Loss*
_output_shapes
: *
T0
Ь
%item_dnn/dnn_2/bias/Initializer/zerosConst*
valueB└*    *
_output_shapes	
:└*
dtype0*&
_class
loc:@item_dnn/dnn_2/bias
Е
item_dnn/dnn_2/bias
VariableV2*
dtype0*
shape:└*&
_class
loc:@item_dnn/dnn_2/bias*
_output_shapes	
:└
о
item_dnn/dnn_2/bias/AssignAssignitem_dnn/dnn_2/bias%item_dnn/dnn_2/bias/Initializer/zeros*&
_class
loc:@item_dnn/dnn_2/bias*
_output_shapes	
:└*
T0
З
item_dnn/dnn_2/bias/readIdentityitem_dnn/dnn_2/bias*
T0*
_output_shapes	
:└*&
_class
loc:@item_dnn/dnn_2/bias
В
item_dnn/dnn_2/MatMulMatMulitem_dnn/dnn_1/actitem_dnn/dnn_2/kernel/read*(
_output_shapes
:         └*
T0
Е
item_dnn/dnn_2/BiasAddBiasAdditem_dnn/dnn_2/MatMulitem_dnn/dnn_2/bias/read*(
_output_shapes
:         └*
T0
г
(item_dnn/dnn_2/bn/gamma/Initializer/onesConst**
_class 
loc:@item_dnn/dnn_2/bn/gamma*
dtype0*
valueB└*  А?*
_output_shapes	
:└
Н
item_dnn/dnn_2/bn/gamma
VariableV2*
dtype0*
shape:└**
_class 
loc:@item_dnn/dnn_2/bn/gamma*
_output_shapes	
:└
╜
item_dnn/dnn_2/bn/gamma/AssignAssignitem_dnn/dnn_2/bn/gamma(item_dnn/dnn_2/bn/gamma/Initializer/ones*
T0**
_class 
loc:@item_dnn/dnn_2/bn/gamma*
_output_shapes	
:└
У
item_dnn/dnn_2/bn/gamma/readIdentityitem_dnn/dnn_2/bn/gamma**
_class 
loc:@item_dnn/dnn_2/bn/gamma*
_output_shapes	
:└*
T0
в
(item_dnn/dnn_2/bn/beta/Initializer/zerosConst*
_output_shapes	
:└*
valueB└*    *
dtype0*)
_class
loc:@item_dnn/dnn_2/bn/beta
Л
item_dnn/dnn_2/bn/beta
VariableV2*
dtype0*)
_class
loc:@item_dnn/dnn_2/bn/beta*
shape:└*
_output_shapes	
:└
║
item_dnn/dnn_2/bn/beta/AssignAssignitem_dnn/dnn_2/bn/beta(item_dnn/dnn_2/bn/beta/Initializer/zeros*)
_class
loc:@item_dnn/dnn_2/bn/beta*
_output_shapes	
:└*
T0
Р
item_dnn/dnn_2/bn/beta/readIdentityitem_dnn/dnn_2/bn/beta*)
_class
loc:@item_dnn/dnn_2/bn/beta*
T0*
_output_shapes	
:└
░
/item_dnn/dnn_2/bn/moving_mean/Initializer/zerosConst*
valueB└*    *
dtype0*
_output_shapes	
:└*0
_class&
$"loc:@item_dnn/dnn_2/bn/moving_mean
Щ
item_dnn/dnn_2/bn/moving_mean
VariableV2*0
_class&
$"loc:@item_dnn/dnn_2/bn/moving_mean*
shape:└*
_output_shapes	
:└*
dtype0
╓
$item_dnn/dnn_2/bn/moving_mean/AssignAssignitem_dnn/dnn_2/bn/moving_mean/item_dnn/dnn_2/bn/moving_mean/Initializer/zeros*0
_class&
$"loc:@item_dnn/dnn_2/bn/moving_mean*
_output_shapes	
:└*
T0
е
"item_dnn/dnn_2/bn/moving_mean/readIdentityitem_dnn/dnn_2/bn/moving_mean*
_output_shapes	
:└*0
_class&
$"loc:@item_dnn/dnn_2/bn/moving_mean*
T0
╖
2item_dnn/dnn_2/bn/moving_variance/Initializer/onesConst*
valueB└*  А?*
dtype0*4
_class*
(&loc:@item_dnn/dnn_2/bn/moving_variance*
_output_shapes	
:└
б
!item_dnn/dnn_2/bn/moving_variance
VariableV2*
dtype0*
_output_shapes	
:└*
shape:└*4
_class*
(&loc:@item_dnn/dnn_2/bn/moving_variance
х
(item_dnn/dnn_2/bn/moving_variance/AssignAssign!item_dnn/dnn_2/bn/moving_variance2item_dnn/dnn_2/bn/moving_variance/Initializer/ones*
_output_shapes	
:└*4
_class*
(&loc:@item_dnn/dnn_2/bn/moving_variance*
T0
▒
&item_dnn/dnn_2/bn/moving_variance/readIdentity!item_dnn/dnn_2/bn/moving_variance*
T0*4
_class*
(&loc:@item_dnn/dnn_2/bn/moving_variance*
_output_shapes	
:└
f
!item_dnn/dnn_2/bn/batchnorm/add/yConst*
dtype0*
_output_shapes
: *
valueB
 *oГ:
Ч
item_dnn/dnn_2/bn/batchnorm/addAdd&item_dnn/dnn_2/bn/moving_variance/read!item_dnn/dnn_2/bn/batchnorm/add/y*
_output_shapes	
:└*
T0
q
!item_dnn/dnn_2/bn/batchnorm/RsqrtRsqrtitem_dnn/dnn_2/bn/batchnorm/add*
T0*
_output_shapes	
:└
Н
item_dnn/dnn_2/bn/batchnorm/mulMul!item_dnn/dnn_2/bn/batchnorm/Rsqrtitem_dnn/dnn_2/bn/gamma/read*
_output_shapes	
:└*
T0
Ф
!item_dnn/dnn_2/bn/batchnorm/mul_1Mulitem_dnn/dnn_2/BiasAdditem_dnn/dnn_2/bn/batchnorm/mul*
T0*(
_output_shapes
:         └
У
!item_dnn/dnn_2/bn/batchnorm/mul_2Mul"item_dnn/dnn_2/bn/moving_mean/readitem_dnn/dnn_2/bn/batchnorm/mul*
T0*
_output_shapes	
:└
М
item_dnn/dnn_2/bn/batchnorm/subSubitem_dnn/dnn_2/bn/beta/read!item_dnn/dnn_2/bn/batchnorm/mul_2*
_output_shapes	
:└*
T0
Я
!item_dnn/dnn_2/bn/batchnorm/add_1Add!item_dnn/dnn_2/bn/batchnorm/mul_1item_dnn/dnn_2/bn/batchnorm/sub*
T0*(
_output_shapes
:         └
p
item_dnn/dnn_2/actRelu!item_dnn/dnn_2/bn/batchnorm/add_1*
T0*(
_output_shapes
:         └
▒
6item_dnn/dnn_3/kernel/Initializer/random_uniform/shapeConst*
dtype0*(
_class
loc:@item_dnn/dnn_3/kernel*
_output_shapes
:*
valueB"└   А   
г
4item_dnn/dnn_3/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
dtype0*(
_class
loc:@item_dnn/dnn_3/kernel*
valueB
 *М7╛
г
4item_dnn/dnn_3/kernel/Initializer/random_uniform/maxConst*(
_class
loc:@item_dnn/dnn_3/kernel*
valueB
 *М7>*
dtype0*
_output_shapes
: 
щ
>item_dnn/dnn_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform6item_dnn/dnn_3/kernel/Initializer/random_uniform/shape*
dtype0*(
_class
loc:@item_dnn/dnn_3/kernel*
T0* 
_output_shapes
:
└А
Є
4item_dnn/dnn_3/kernel/Initializer/random_uniform/subSub4item_dnn/dnn_3/kernel/Initializer/random_uniform/max4item_dnn/dnn_3/kernel/Initializer/random_uniform/min*
_output_shapes
: *(
_class
loc:@item_dnn/dnn_3/kernel*
T0
Ж
4item_dnn/dnn_3/kernel/Initializer/random_uniform/mulMul>item_dnn/dnn_3/kernel/Initializer/random_uniform/RandomUniform4item_dnn/dnn_3/kernel/Initializer/random_uniform/sub*(
_class
loc:@item_dnn/dnn_3/kernel*
T0* 
_output_shapes
:
└А
°
0item_dnn/dnn_3/kernel/Initializer/random_uniformAdd4item_dnn/dnn_3/kernel/Initializer/random_uniform/mul4item_dnn/dnn_3/kernel/Initializer/random_uniform/min*(
_class
loc:@item_dnn/dnn_3/kernel* 
_output_shapes
:
└А*
T0
У
item_dnn/dnn_3/kernel
VariableV2* 
_output_shapes
:
└А*
dtype0*
shape:
└А*(
_class
loc:@item_dnn/dnn_3/kernel
─
item_dnn/dnn_3/kernel/AssignAssignitem_dnn/dnn_3/kernel0item_dnn/dnn_3/kernel/Initializer/random_uniform*
T0*(
_class
loc:@item_dnn/dnn_3/kernel* 
_output_shapes
:
└А
Т
item_dnn/dnn_3/kernel/readIdentityitem_dnn/dnn_3/kernel* 
_output_shapes
:
└А*(
_class
loc:@item_dnn/dnn_3/kernel*
T0
{
6item_dnn/dnn_3/kernel/Regularizer/l2_regularizer/scaleConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8
~
7item_dnn/dnn_3/kernel/Regularizer/l2_regularizer/L2LossL2Lossitem_dnn/dnn_3/kernel/read*
T0*
_output_shapes
: 
╔
0item_dnn/dnn_3/kernel/Regularizer/l2_regularizerMul6item_dnn/dnn_3/kernel/Regularizer/l2_regularizer/scale7item_dnn/dnn_3/kernel/Regularizer/l2_regularizer/L2Loss*
T0*
_output_shapes
: 
Ь
%item_dnn/dnn_3/bias/Initializer/zerosConst*
_output_shapes	
:А*
dtype0*
valueBА*    *&
_class
loc:@item_dnn/dnn_3/bias
Е
item_dnn/dnn_3/bias
VariableV2*
_output_shapes	
:А*&
_class
loc:@item_dnn/dnn_3/bias*
dtype0*
shape:А
о
item_dnn/dnn_3/bias/AssignAssignitem_dnn/dnn_3/bias%item_dnn/dnn_3/bias/Initializer/zeros*
_output_shapes	
:А*&
_class
loc:@item_dnn/dnn_3/bias*
T0
З
item_dnn/dnn_3/bias/readIdentityitem_dnn/dnn_3/bias*&
_class
loc:@item_dnn/dnn_3/bias*
_output_shapes	
:А*
T0
В
item_dnn/dnn_3/MatMulMatMulitem_dnn/dnn_2/actitem_dnn/dnn_3/kernel/read*
T0*(
_output_shapes
:         А
Е
item_dnn/dnn_3/BiasAddBiasAdditem_dnn/dnn_3/MatMulitem_dnn/dnn_3/bias/read*
T0*(
_output_shapes
:         А
г
(item_dnn/dnn_3/bn/gamma/Initializer/onesConst*
valueBА*  А?*
dtype0**
_class 
loc:@item_dnn/dnn_3/bn/gamma*
_output_shapes	
:А
Н
item_dnn/dnn_3/bn/gamma
VariableV2*
_output_shapes	
:А*
dtype0**
_class 
loc:@item_dnn/dnn_3/bn/gamma*
shape:А
╜
item_dnn/dnn_3/bn/gamma/AssignAssignitem_dnn/dnn_3/bn/gamma(item_dnn/dnn_3/bn/gamma/Initializer/ones*
_output_shapes	
:А**
_class 
loc:@item_dnn/dnn_3/bn/gamma*
T0
У
item_dnn/dnn_3/bn/gamma/readIdentityitem_dnn/dnn_3/bn/gamma**
_class 
loc:@item_dnn/dnn_3/bn/gamma*
T0*
_output_shapes	
:А
в
(item_dnn/dnn_3/bn/beta/Initializer/zerosConst*
_output_shapes	
:А*)
_class
loc:@item_dnn/dnn_3/bn/beta*
dtype0*
valueBА*    
Л
item_dnn/dnn_3/bn/beta
VariableV2*
dtype0*)
_class
loc:@item_dnn/dnn_3/bn/beta*
_output_shapes	
:А*
shape:А
║
item_dnn/dnn_3/bn/beta/AssignAssignitem_dnn/dnn_3/bn/beta(item_dnn/dnn_3/bn/beta/Initializer/zeros*
T0*
_output_shapes	
:А*)
_class
loc:@item_dnn/dnn_3/bn/beta
Р
item_dnn/dnn_3/bn/beta/readIdentityitem_dnn/dnn_3/bn/beta*
_output_shapes	
:А*)
_class
loc:@item_dnn/dnn_3/bn/beta*
T0
░
/item_dnn/dnn_3/bn/moving_mean/Initializer/zerosConst*
dtype0*0
_class&
$"loc:@item_dnn/dnn_3/bn/moving_mean*
_output_shapes	
:А*
valueBА*    
Щ
item_dnn/dnn_3/bn/moving_mean
VariableV2*0
_class&
$"loc:@item_dnn/dnn_3/bn/moving_mean*
dtype0*
shape:А*
_output_shapes	
:А
╓
$item_dnn/dnn_3/bn/moving_mean/AssignAssignitem_dnn/dnn_3/bn/moving_mean/item_dnn/dnn_3/bn/moving_mean/Initializer/zeros*
T0*0
_class&
$"loc:@item_dnn/dnn_3/bn/moving_mean*
_output_shapes	
:А
е
"item_dnn/dnn_3/bn/moving_mean/readIdentityitem_dnn/dnn_3/bn/moving_mean*
_output_shapes	
:А*0
_class&
$"loc:@item_dnn/dnn_3/bn/moving_mean*
T0
╖
2item_dnn/dnn_3/bn/moving_variance/Initializer/onesConst*
_output_shapes	
:А*
valueBА*  А?*
dtype0*4
_class*
(&loc:@item_dnn/dnn_3/bn/moving_variance
б
!item_dnn/dnn_3/bn/moving_variance
VariableV2*
shape:А*4
_class*
(&loc:@item_dnn/dnn_3/bn/moving_variance*
_output_shapes	
:А*
dtype0
х
(item_dnn/dnn_3/bn/moving_variance/AssignAssign!item_dnn/dnn_3/bn/moving_variance2item_dnn/dnn_3/bn/moving_variance/Initializer/ones*
_output_shapes	
:А*4
_class*
(&loc:@item_dnn/dnn_3/bn/moving_variance*
T0
▒
&item_dnn/dnn_3/bn/moving_variance/readIdentity!item_dnn/dnn_3/bn/moving_variance*
_output_shapes	
:А*4
_class*
(&loc:@item_dnn/dnn_3/bn/moving_variance*
T0
f
!item_dnn/dnn_3/bn/batchnorm/add/yConst*
dtype0*
valueB
 *oГ:*
_output_shapes
: 
Ч
item_dnn/dnn_3/bn/batchnorm/addAdd&item_dnn/dnn_3/bn/moving_variance/read!item_dnn/dnn_3/bn/batchnorm/add/y*
T0*
_output_shapes	
:А
q
!item_dnn/dnn_3/bn/batchnorm/RsqrtRsqrtitem_dnn/dnn_3/bn/batchnorm/add*
_output_shapes	
:А*
T0
Н
item_dnn/dnn_3/bn/batchnorm/mulMul!item_dnn/dnn_3/bn/batchnorm/Rsqrtitem_dnn/dnn_3/bn/gamma/read*
T0*
_output_shapes	
:А
Ф
!item_dnn/dnn_3/bn/batchnorm/mul_1Mulitem_dnn/dnn_3/BiasAdditem_dnn/dnn_3/bn/batchnorm/mul*(
_output_shapes
:         А*
T0
У
!item_dnn/dnn_3/bn/batchnorm/mul_2Mul"item_dnn/dnn_3/bn/moving_mean/readitem_dnn/dnn_3/bn/batchnorm/mul*
T0*
_output_shapes	
:А
М
item_dnn/dnn_3/bn/batchnorm/subSubitem_dnn/dnn_3/bn/beta/read!item_dnn/dnn_3/bn/batchnorm/mul_2*
_output_shapes	
:А*
T0
Я
!item_dnn/dnn_3/bn/batchnorm/add_1Add!item_dnn/dnn_3/bn/batchnorm/mul_1item_dnn/dnn_3/bn/batchnorm/sub*(
_output_shapes
:         А*
T0
p
item_dnn/dnn_3/actRelu!item_dnn/dnn_3/bn/batchnorm/add_1*
T0*(
_output_shapes
:         А
Ч
"user_fea_bn/gamma/Initializer/onesConst*
dtype0*
valueBР*  А?*$
_class
loc:@user_fea_bn/gamma*
_output_shapes	
:Р
Б
user_fea_bn/gamma
VariableV2*$
_class
loc:@user_fea_bn/gamma*
dtype0*
_output_shapes	
:Р*
shape:Р
е
user_fea_bn/gamma/AssignAssignuser_fea_bn/gamma"user_fea_bn/gamma/Initializer/ones*
_output_shapes	
:Р*$
_class
loc:@user_fea_bn/gamma*
T0
Б
user_fea_bn/gamma/readIdentityuser_fea_bn/gamma*$
_class
loc:@user_fea_bn/gamma*
_output_shapes	
:Р*
T0
Ц
"user_fea_bn/beta/Initializer/zerosConst*#
_class
loc:@user_fea_bn/beta*
valueBР*    *
dtype0*
_output_shapes	
:Р

user_fea_bn/beta
VariableV2*
shape:Р*
_output_shapes	
:Р*#
_class
loc:@user_fea_bn/beta*
dtype0
в
user_fea_bn/beta/AssignAssignuser_fea_bn/beta"user_fea_bn/beta/Initializer/zeros*
_output_shapes	
:Р*#
_class
loc:@user_fea_bn/beta*
T0
~
user_fea_bn/beta/readIdentityuser_fea_bn/beta*
_output_shapes	
:Р*
T0*#
_class
loc:@user_fea_bn/beta
д
)user_fea_bn/moving_mean/Initializer/zerosConst**
_class 
loc:@user_fea_bn/moving_mean*
valueBР*    *
_output_shapes	
:Р*
dtype0
Н
user_fea_bn/moving_mean
VariableV2*
shape:Р*
_output_shapes	
:Р*
dtype0**
_class 
loc:@user_fea_bn/moving_mean
╛
user_fea_bn/moving_mean/AssignAssignuser_fea_bn/moving_mean)user_fea_bn/moving_mean/Initializer/zeros*
_output_shapes	
:Р**
_class 
loc:@user_fea_bn/moving_mean*
T0
У
user_fea_bn/moving_mean/readIdentityuser_fea_bn/moving_mean*
_output_shapes	
:Р**
_class 
loc:@user_fea_bn/moving_mean*
T0
л
,user_fea_bn/moving_variance/Initializer/onesConst*.
_class$
" loc:@user_fea_bn/moving_variance*
_output_shapes	
:Р*
dtype0*
valueBР*  А?
Х
user_fea_bn/moving_variance
VariableV2*
_output_shapes	
:Р*
dtype0*
shape:Р*.
_class$
" loc:@user_fea_bn/moving_variance
═
"user_fea_bn/moving_variance/AssignAssignuser_fea_bn/moving_variance,user_fea_bn/moving_variance/Initializer/ones*
T0*.
_class$
" loc:@user_fea_bn/moving_variance*
_output_shapes	
:Р
Я
 user_fea_bn/moving_variance/readIdentityuser_fea_bn/moving_variance*
_output_shapes	
:Р*.
_class$
" loc:@user_fea_bn/moving_variance*
T0
`
user_fea_bn/batchnorm/add/yConst*
_output_shapes
: *
valueB
 *oГ:*
dtype0
Е
user_fea_bn/batchnorm/addAdd user_fea_bn/moving_variance/readuser_fea_bn/batchnorm/add/y*
_output_shapes	
:Р*
T0
e
user_fea_bn/batchnorm/RsqrtRsqrtuser_fea_bn/batchnorm/add*
_output_shapes	
:Р*
T0
{
user_fea_bn/batchnorm/mulMuluser_fea_bn/batchnorm/Rsqrtuser_fea_bn/gamma/read*
_output_shapes	
:Р*
T0
z
user_fea_bn/batchnorm/mul_1Mulconcat_2user_fea_bn/batchnorm/mul*(
_output_shapes
:         Р*
T0
Б
user_fea_bn/batchnorm/mul_2Muluser_fea_bn/moving_mean/readuser_fea_bn/batchnorm/mul*
T0*
_output_shapes	
:Р
z
user_fea_bn/batchnorm/subSubuser_fea_bn/beta/readuser_fea_bn/batchnorm/mul_2*
T0*
_output_shapes	
:Р
Н
user_fea_bn/batchnorm/add_1Adduser_fea_bn/batchnorm/mul_1user_fea_bn/batchnorm/sub*
T0*(
_output_shapes
:         Р
▒
6user_dnn/dnn_0/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*(
_class
loc:@user_dnn/dnn_0/kernel*
dtype0*
valueB"Р   └   
г
4user_dnn/dnn_0/kernel/Initializer/random_uniform/minConst*
valueB
 *w╓╛*(
_class
loc:@user_dnn/dnn_0/kernel*
dtype0*
_output_shapes
: 
г
4user_dnn/dnn_0/kernel/Initializer/random_uniform/maxConst*
dtype0*(
_class
loc:@user_dnn/dnn_0/kernel*
valueB
 *w╓>*
_output_shapes
: 
щ
>user_dnn/dnn_0/kernel/Initializer/random_uniform/RandomUniformRandomUniform6user_dnn/dnn_0/kernel/Initializer/random_uniform/shape*(
_class
loc:@user_dnn/dnn_0/kernel*
T0* 
_output_shapes
:
Р└*
dtype0
Є
4user_dnn/dnn_0/kernel/Initializer/random_uniform/subSub4user_dnn/dnn_0/kernel/Initializer/random_uniform/max4user_dnn/dnn_0/kernel/Initializer/random_uniform/min*
_output_shapes
: *(
_class
loc:@user_dnn/dnn_0/kernel*
T0
Ж
4user_dnn/dnn_0/kernel/Initializer/random_uniform/mulMul>user_dnn/dnn_0/kernel/Initializer/random_uniform/RandomUniform4user_dnn/dnn_0/kernel/Initializer/random_uniform/sub*
T0*(
_class
loc:@user_dnn/dnn_0/kernel* 
_output_shapes
:
Р└
°
0user_dnn/dnn_0/kernel/Initializer/random_uniformAdd4user_dnn/dnn_0/kernel/Initializer/random_uniform/mul4user_dnn/dnn_0/kernel/Initializer/random_uniform/min*
T0*(
_class
loc:@user_dnn/dnn_0/kernel* 
_output_shapes
:
Р└
У
user_dnn/dnn_0/kernel
VariableV2* 
_output_shapes
:
Р└*
dtype0*
shape:
Р└*(
_class
loc:@user_dnn/dnn_0/kernel
─
user_dnn/dnn_0/kernel/AssignAssignuser_dnn/dnn_0/kernel0user_dnn/dnn_0/kernel/Initializer/random_uniform* 
_output_shapes
:
Р└*
T0*(
_class
loc:@user_dnn/dnn_0/kernel
Т
user_dnn/dnn_0/kernel/readIdentityuser_dnn/dnn_0/kernel*
T0*(
_class
loc:@user_dnn/dnn_0/kernel* 
_output_shapes
:
Р└
{
6user_dnn/dnn_0/kernel/Regularizer/l2_regularizer/scaleConst*
dtype0*
valueB
 *╖╤8*
_output_shapes
: 
~
7user_dnn/dnn_0/kernel/Regularizer/l2_regularizer/L2LossL2Lossuser_dnn/dnn_0/kernel/read*
_output_shapes
: *
T0
╔
0user_dnn/dnn_0/kernel/Regularizer/l2_regularizerMul6user_dnn/dnn_0/kernel/Regularizer/l2_regularizer/scale7user_dnn/dnn_0/kernel/Regularizer/l2_regularizer/L2Loss*
T0*
_output_shapes
: 
Ь
%user_dnn/dnn_0/bias/Initializer/zerosConst*
dtype0*&
_class
loc:@user_dnn/dnn_0/bias*
valueB└*    *
_output_shapes	
:└
Е
user_dnn/dnn_0/bias
VariableV2*
_output_shapes	
:└*
shape:└*&
_class
loc:@user_dnn/dnn_0/bias*
dtype0
о
user_dnn/dnn_0/bias/AssignAssignuser_dnn/dnn_0/bias%user_dnn/dnn_0/bias/Initializer/zeros*
T0*&
_class
loc:@user_dnn/dnn_0/bias*
_output_shapes	
:└
З
user_dnn/dnn_0/bias/readIdentityuser_dnn/dnn_0/bias*&
_class
loc:@user_dnn/dnn_0/bias*
_output_shapes	
:└*
T0
Л
user_dnn/dnn_0/MatMulMatMuluser_fea_bn/batchnorm/add_1user_dnn/dnn_0/kernel/read*
T0*(
_output_shapes
:         └
Е
user_dnn/dnn_0/BiasAddBiasAdduser_dnn/dnn_0/MatMuluser_dnn/dnn_0/bias/read*
T0*(
_output_shapes
:         └
г
(user_dnn/dnn_0/bn/gamma/Initializer/onesConst*
_output_shapes	
:└**
_class 
loc:@user_dnn/dnn_0/bn/gamma*
dtype0*
valueB└*  А?
Н
user_dnn/dnn_0/bn/gamma
VariableV2*
_output_shapes	
:└*
dtype0**
_class 
loc:@user_dnn/dnn_0/bn/gamma*
shape:└
╜
user_dnn/dnn_0/bn/gamma/AssignAssignuser_dnn/dnn_0/bn/gamma(user_dnn/dnn_0/bn/gamma/Initializer/ones*
T0*
_output_shapes	
:└**
_class 
loc:@user_dnn/dnn_0/bn/gamma
У
user_dnn/dnn_0/bn/gamma/readIdentityuser_dnn/dnn_0/bn/gamma**
_class 
loc:@user_dnn/dnn_0/bn/gamma*
_output_shapes	
:└*
T0
в
(user_dnn/dnn_0/bn/beta/Initializer/zerosConst*
dtype0*
valueB└*    *)
_class
loc:@user_dnn/dnn_0/bn/beta*
_output_shapes	
:└
Л
user_dnn/dnn_0/bn/beta
VariableV2*
shape:└*)
_class
loc:@user_dnn/dnn_0/bn/beta*
_output_shapes	
:└*
dtype0
║
user_dnn/dnn_0/bn/beta/AssignAssignuser_dnn/dnn_0/bn/beta(user_dnn/dnn_0/bn/beta/Initializer/zeros*)
_class
loc:@user_dnn/dnn_0/bn/beta*
_output_shapes	
:└*
T0
Р
user_dnn/dnn_0/bn/beta/readIdentityuser_dnn/dnn_0/bn/beta*
_output_shapes	
:└*
T0*)
_class
loc:@user_dnn/dnn_0/bn/beta
░
/user_dnn/dnn_0/bn/moving_mean/Initializer/zerosConst*
dtype0*
valueB└*    *0
_class&
$"loc:@user_dnn/dnn_0/bn/moving_mean*
_output_shapes	
:└
Щ
user_dnn/dnn_0/bn/moving_mean
VariableV2*
dtype0*
shape:└*
_output_shapes	
:└*0
_class&
$"loc:@user_dnn/dnn_0/bn/moving_mean
╓
$user_dnn/dnn_0/bn/moving_mean/AssignAssignuser_dnn/dnn_0/bn/moving_mean/user_dnn/dnn_0/bn/moving_mean/Initializer/zeros*0
_class&
$"loc:@user_dnn/dnn_0/bn/moving_mean*
_output_shapes	
:└*
T0
е
"user_dnn/dnn_0/bn/moving_mean/readIdentityuser_dnn/dnn_0/bn/moving_mean*
_output_shapes	
:└*0
_class&
$"loc:@user_dnn/dnn_0/bn/moving_mean*
T0
╖
2user_dnn/dnn_0/bn/moving_variance/Initializer/onesConst*
dtype0*
valueB└*  А?*4
_class*
(&loc:@user_dnn/dnn_0/bn/moving_variance*
_output_shapes	
:└
б
!user_dnn/dnn_0/bn/moving_variance
VariableV2*
_output_shapes	
:└*
shape:└*4
_class*
(&loc:@user_dnn/dnn_0/bn/moving_variance*
dtype0
х
(user_dnn/dnn_0/bn/moving_variance/AssignAssign!user_dnn/dnn_0/bn/moving_variance2user_dnn/dnn_0/bn/moving_variance/Initializer/ones*4
_class*
(&loc:@user_dnn/dnn_0/bn/moving_variance*
_output_shapes	
:└*
T0
▒
&user_dnn/dnn_0/bn/moving_variance/readIdentity!user_dnn/dnn_0/bn/moving_variance*
_output_shapes	
:└*4
_class*
(&loc:@user_dnn/dnn_0/bn/moving_variance*
T0
f
!user_dnn/dnn_0/bn/batchnorm/add/yConst*
dtype0*
_output_shapes
: *
valueB
 *oГ:
Ч
user_dnn/dnn_0/bn/batchnorm/addAdd&user_dnn/dnn_0/bn/moving_variance/read!user_dnn/dnn_0/bn/batchnorm/add/y*
T0*
_output_shapes	
:└
q
!user_dnn/dnn_0/bn/batchnorm/RsqrtRsqrtuser_dnn/dnn_0/bn/batchnorm/add*
_output_shapes	
:└*
T0
Н
user_dnn/dnn_0/bn/batchnorm/mulMul!user_dnn/dnn_0/bn/batchnorm/Rsqrtuser_dnn/dnn_0/bn/gamma/read*
_output_shapes	
:└*
T0
Ф
!user_dnn/dnn_0/bn/batchnorm/mul_1Muluser_dnn/dnn_0/BiasAdduser_dnn/dnn_0/bn/batchnorm/mul*(
_output_shapes
:         └*
T0
У
!user_dnn/dnn_0/bn/batchnorm/mul_2Mul"user_dnn/dnn_0/bn/moving_mean/readuser_dnn/dnn_0/bn/batchnorm/mul*
_output_shapes	
:└*
T0
М
user_dnn/dnn_0/bn/batchnorm/subSubuser_dnn/dnn_0/bn/beta/read!user_dnn/dnn_0/bn/batchnorm/mul_2*
T0*
_output_shapes	
:└
Я
!user_dnn/dnn_0/bn/batchnorm/add_1Add!user_dnn/dnn_0/bn/batchnorm/mul_1user_dnn/dnn_0/bn/batchnorm/sub*(
_output_shapes
:         └*
T0
p
user_dnn/dnn_0/actRelu!user_dnn/dnn_0/bn/batchnorm/add_1*
T0*(
_output_shapes
:         └
▒
6user_dnn/dnn_1/kernel/Initializer/random_uniform/shapeConst*
dtype0*(
_class
loc:@user_dnn/dnn_1/kernel*
valueB"└      *
_output_shapes
:
г
4user_dnn/dnn_1/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
valueB
 *Мэ╜*(
_class
loc:@user_dnn/dnn_1/kernel*
dtype0
г
4user_dnn/dnn_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *Мэ=*
dtype0*
_output_shapes
: *(
_class
loc:@user_dnn/dnn_1/kernel
щ
>user_dnn/dnn_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform6user_dnn/dnn_1/kernel/Initializer/random_uniform/shape* 
_output_shapes
:
└А*
T0*(
_class
loc:@user_dnn/dnn_1/kernel*
dtype0
Є
4user_dnn/dnn_1/kernel/Initializer/random_uniform/subSub4user_dnn/dnn_1/kernel/Initializer/random_uniform/max4user_dnn/dnn_1/kernel/Initializer/random_uniform/min*
T0*
_output_shapes
: *(
_class
loc:@user_dnn/dnn_1/kernel
Ж
4user_dnn/dnn_1/kernel/Initializer/random_uniform/mulMul>user_dnn/dnn_1/kernel/Initializer/random_uniform/RandomUniform4user_dnn/dnn_1/kernel/Initializer/random_uniform/sub*(
_class
loc:@user_dnn/dnn_1/kernel*
T0* 
_output_shapes
:
└А
°
0user_dnn/dnn_1/kernel/Initializer/random_uniformAdd4user_dnn/dnn_1/kernel/Initializer/random_uniform/mul4user_dnn/dnn_1/kernel/Initializer/random_uniform/min*
T0*(
_class
loc:@user_dnn/dnn_1/kernel* 
_output_shapes
:
└А
У
user_dnn/dnn_1/kernel
VariableV2* 
_output_shapes
:
└А*
shape:
└А*
dtype0*(
_class
loc:@user_dnn/dnn_1/kernel
─
user_dnn/dnn_1/kernel/AssignAssignuser_dnn/dnn_1/kernel0user_dnn/dnn_1/kernel/Initializer/random_uniform* 
_output_shapes
:
└А*(
_class
loc:@user_dnn/dnn_1/kernel*
T0
Т
user_dnn/dnn_1/kernel/readIdentityuser_dnn/dnn_1/kernel*
T0* 
_output_shapes
:
└А*(
_class
loc:@user_dnn/dnn_1/kernel
{
6user_dnn/dnn_1/kernel/Regularizer/l2_regularizer/scaleConst*
dtype0*
valueB
 *╖╤8*
_output_shapes
: 
~
7user_dnn/dnn_1/kernel/Regularizer/l2_regularizer/L2LossL2Lossuser_dnn/dnn_1/kernel/read*
T0*
_output_shapes
: 
╔
0user_dnn/dnn_1/kernel/Regularizer/l2_regularizerMul6user_dnn/dnn_1/kernel/Regularizer/l2_regularizer/scale7user_dnn/dnn_1/kernel/Regularizer/l2_regularizer/L2Loss*
T0*
_output_shapes
: 
Ь
%user_dnn/dnn_1/bias/Initializer/zerosConst*
_output_shapes	
:А*
dtype0*&
_class
loc:@user_dnn/dnn_1/bias*
valueBА*    
Е
user_dnn/dnn_1/bias
VariableV2*
shape:А*
dtype0*
_output_shapes	
:А*&
_class
loc:@user_dnn/dnn_1/bias
о
user_dnn/dnn_1/bias/AssignAssignuser_dnn/dnn_1/bias%user_dnn/dnn_1/bias/Initializer/zeros*
_output_shapes	
:А*
T0*&
_class
loc:@user_dnn/dnn_1/bias
З
user_dnn/dnn_1/bias/readIdentityuser_dnn/dnn_1/bias*
_output_shapes	
:А*&
_class
loc:@user_dnn/dnn_1/bias*
T0
В
user_dnn/dnn_1/MatMulMatMuluser_dnn/dnn_0/actuser_dnn/dnn_1/kernel/read*
T0*(
_output_shapes
:         А
Е
user_dnn/dnn_1/BiasAddBiasAdduser_dnn/dnn_1/MatMuluser_dnn/dnn_1/bias/read*
T0*(
_output_shapes
:         А
г
(user_dnn/dnn_1/bn/gamma/Initializer/onesConst**
_class 
loc:@user_dnn/dnn_1/bn/gamma*
valueBА*  А?*
dtype0*
_output_shapes	
:А
Н
user_dnn/dnn_1/bn/gamma
VariableV2*
_output_shapes	
:А**
_class 
loc:@user_dnn/dnn_1/bn/gamma*
dtype0*
shape:А
╜
user_dnn/dnn_1/bn/gamma/AssignAssignuser_dnn/dnn_1/bn/gamma(user_dnn/dnn_1/bn/gamma/Initializer/ones*
_output_shapes	
:А**
_class 
loc:@user_dnn/dnn_1/bn/gamma*
T0
У
user_dnn/dnn_1/bn/gamma/readIdentityuser_dnn/dnn_1/bn/gamma*
_output_shapes	
:А*
T0**
_class 
loc:@user_dnn/dnn_1/bn/gamma
в
(user_dnn/dnn_1/bn/beta/Initializer/zerosConst*
valueBА*    *
_output_shapes	
:А*
dtype0*)
_class
loc:@user_dnn/dnn_1/bn/beta
Л
user_dnn/dnn_1/bn/beta
VariableV2*)
_class
loc:@user_dnn/dnn_1/bn/beta*
dtype0*
shape:А*
_output_shapes	
:А
║
user_dnn/dnn_1/bn/beta/AssignAssignuser_dnn/dnn_1/bn/beta(user_dnn/dnn_1/bn/beta/Initializer/zeros*)
_class
loc:@user_dnn/dnn_1/bn/beta*
_output_shapes	
:А*
T0
Р
user_dnn/dnn_1/bn/beta/readIdentityuser_dnn/dnn_1/bn/beta*
T0*
_output_shapes	
:А*)
_class
loc:@user_dnn/dnn_1/bn/beta
░
/user_dnn/dnn_1/bn/moving_mean/Initializer/zerosConst*
dtype0*0
_class&
$"loc:@user_dnn/dnn_1/bn/moving_mean*
_output_shapes	
:А*
valueBА*    
Щ
user_dnn/dnn_1/bn/moving_mean
VariableV2*
dtype0*
shape:А*0
_class&
$"loc:@user_dnn/dnn_1/bn/moving_mean*
_output_shapes	
:А
╓
$user_dnn/dnn_1/bn/moving_mean/AssignAssignuser_dnn/dnn_1/bn/moving_mean/user_dnn/dnn_1/bn/moving_mean/Initializer/zeros*0
_class&
$"loc:@user_dnn/dnn_1/bn/moving_mean*
_output_shapes	
:А*
T0
е
"user_dnn/dnn_1/bn/moving_mean/readIdentityuser_dnn/dnn_1/bn/moving_mean*0
_class&
$"loc:@user_dnn/dnn_1/bn/moving_mean*
T0*
_output_shapes	
:А
╖
2user_dnn/dnn_1/bn/moving_variance/Initializer/onesConst*
valueBА*  А?*
_output_shapes	
:А*4
_class*
(&loc:@user_dnn/dnn_1/bn/moving_variance*
dtype0
б
!user_dnn/dnn_1/bn/moving_variance
VariableV2*
dtype0*4
_class*
(&loc:@user_dnn/dnn_1/bn/moving_variance*
_output_shapes	
:А*
shape:А
х
(user_dnn/dnn_1/bn/moving_variance/AssignAssign!user_dnn/dnn_1/bn/moving_variance2user_dnn/dnn_1/bn/moving_variance/Initializer/ones*
T0*4
_class*
(&loc:@user_dnn/dnn_1/bn/moving_variance*
_output_shapes	
:А
▒
&user_dnn/dnn_1/bn/moving_variance/readIdentity!user_dnn/dnn_1/bn/moving_variance*4
_class*
(&loc:@user_dnn/dnn_1/bn/moving_variance*
T0*
_output_shapes	
:А
f
!user_dnn/dnn_1/bn/batchnorm/add/yConst*
valueB
 *oГ:*
_output_shapes
: *
dtype0
Ч
user_dnn/dnn_1/bn/batchnorm/addAdd&user_dnn/dnn_1/bn/moving_variance/read!user_dnn/dnn_1/bn/batchnorm/add/y*
_output_shapes	
:А*
T0
q
!user_dnn/dnn_1/bn/batchnorm/RsqrtRsqrtuser_dnn/dnn_1/bn/batchnorm/add*
_output_shapes	
:А*
T0
Н
user_dnn/dnn_1/bn/batchnorm/mulMul!user_dnn/dnn_1/bn/batchnorm/Rsqrtuser_dnn/dnn_1/bn/gamma/read*
T0*
_output_shapes	
:А
Ф
!user_dnn/dnn_1/bn/batchnorm/mul_1Muluser_dnn/dnn_1/BiasAdduser_dnn/dnn_1/bn/batchnorm/mul*(
_output_shapes
:         А*
T0
У
!user_dnn/dnn_1/bn/batchnorm/mul_2Mul"user_dnn/dnn_1/bn/moving_mean/readuser_dnn/dnn_1/bn/batchnorm/mul*
_output_shapes	
:А*
T0
М
user_dnn/dnn_1/bn/batchnorm/subSubuser_dnn/dnn_1/bn/beta/read!user_dnn/dnn_1/bn/batchnorm/mul_2*
_output_shapes	
:А*
T0
Я
!user_dnn/dnn_1/bn/batchnorm/add_1Add!user_dnn/dnn_1/bn/batchnorm/mul_1user_dnn/dnn_1/bn/batchnorm/sub*(
_output_shapes
:         А*
T0
p
user_dnn/dnn_1/actRelu!user_dnn/dnn_1/bn/batchnorm/add_1*(
_output_shapes
:         А*
T0
▒
6user_dnn/dnn_2/kernel/Initializer/random_uniform/shapeConst*(
_class
loc:@user_dnn/dnn_2/kernel*
dtype0*
_output_shapes
:*
valueB"   └   
г
4user_dnn/dnn_2/kernel/Initializer/random_uniform/minConst*
dtype0*(
_class
loc:@user_dnn/dnn_2/kernel*
valueB
 *Мэ╜*
_output_shapes
: 
г
4user_dnn/dnn_2/kernel/Initializer/random_uniform/maxConst*
dtype0*(
_class
loc:@user_dnn/dnn_2/kernel*
_output_shapes
: *
valueB
 *Мэ=
щ
>user_dnn/dnn_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform6user_dnn/dnn_2/kernel/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
А└*(
_class
loc:@user_dnn/dnn_2/kernel*
T0
Є
4user_dnn/dnn_2/kernel/Initializer/random_uniform/subSub4user_dnn/dnn_2/kernel/Initializer/random_uniform/max4user_dnn/dnn_2/kernel/Initializer/random_uniform/min*
T0*(
_class
loc:@user_dnn/dnn_2/kernel*
_output_shapes
: 
Ж
4user_dnn/dnn_2/kernel/Initializer/random_uniform/mulMul>user_dnn/dnn_2/kernel/Initializer/random_uniform/RandomUniform4user_dnn/dnn_2/kernel/Initializer/random_uniform/sub*
T0*(
_class
loc:@user_dnn/dnn_2/kernel* 
_output_shapes
:
А└
°
0user_dnn/dnn_2/kernel/Initializer/random_uniformAdd4user_dnn/dnn_2/kernel/Initializer/random_uniform/mul4user_dnn/dnn_2/kernel/Initializer/random_uniform/min* 
_output_shapes
:
А└*(
_class
loc:@user_dnn/dnn_2/kernel*
T0
У
user_dnn/dnn_2/kernel
VariableV2*
dtype0*(
_class
loc:@user_dnn/dnn_2/kernel* 
_output_shapes
:
А└*
shape:
А└
─
user_dnn/dnn_2/kernel/AssignAssignuser_dnn/dnn_2/kernel0user_dnn/dnn_2/kernel/Initializer/random_uniform*(
_class
loc:@user_dnn/dnn_2/kernel*
T0* 
_output_shapes
:
А└
Т
user_dnn/dnn_2/kernel/readIdentityuser_dnn/dnn_2/kernel*(
_class
loc:@user_dnn/dnn_2/kernel*
T0* 
_output_shapes
:
А└
{
6user_dnn/dnn_2/kernel/Regularizer/l2_regularizer/scaleConst*
dtype0*
valueB
 *╖╤8*
_output_shapes
: 
~
7user_dnn/dnn_2/kernel/Regularizer/l2_regularizer/L2LossL2Lossuser_dnn/dnn_2/kernel/read*
T0*
_output_shapes
: 
╔
0user_dnn/dnn_2/kernel/Regularizer/l2_regularizerMul6user_dnn/dnn_2/kernel/Regularizer/l2_regularizer/scale7user_dnn/dnn_2/kernel/Regularizer/l2_regularizer/L2Loss*
_output_shapes
: *
T0
Ь
%user_dnn/dnn_2/bias/Initializer/zerosConst*
_output_shapes	
:└*&
_class
loc:@user_dnn/dnn_2/bias*
dtype0*
valueB└*    
Е
user_dnn/dnn_2/bias
VariableV2*
shape:└*&
_class
loc:@user_dnn/dnn_2/bias*
_output_shapes	
:└*
dtype0
о
user_dnn/dnn_2/bias/AssignAssignuser_dnn/dnn_2/bias%user_dnn/dnn_2/bias/Initializer/zeros*&
_class
loc:@user_dnn/dnn_2/bias*
_output_shapes	
:└*
T0
З
user_dnn/dnn_2/bias/readIdentityuser_dnn/dnn_2/bias*
T0*
_output_shapes	
:└*&
_class
loc:@user_dnn/dnn_2/bias
В
user_dnn/dnn_2/MatMulMatMuluser_dnn/dnn_1/actuser_dnn/dnn_2/kernel/read*(
_output_shapes
:         └*
T0
Е
user_dnn/dnn_2/BiasAddBiasAdduser_dnn/dnn_2/MatMuluser_dnn/dnn_2/bias/read*(
_output_shapes
:         └*
T0
г
(user_dnn/dnn_2/bn/gamma/Initializer/onesConst*
_output_shapes	
:└**
_class 
loc:@user_dnn/dnn_2/bn/gamma*
valueB└*  А?*
dtype0
Н
user_dnn/dnn_2/bn/gamma
VariableV2*
shape:└**
_class 
loc:@user_dnn/dnn_2/bn/gamma*
_output_shapes	
:└*
dtype0
╜
user_dnn/dnn_2/bn/gamma/AssignAssignuser_dnn/dnn_2/bn/gamma(user_dnn/dnn_2/bn/gamma/Initializer/ones*
T0**
_class 
loc:@user_dnn/dnn_2/bn/gamma*
_output_shapes	
:└
У
user_dnn/dnn_2/bn/gamma/readIdentityuser_dnn/dnn_2/bn/gamma*
_output_shapes	
:└*
T0**
_class 
loc:@user_dnn/dnn_2/bn/gamma
в
(user_dnn/dnn_2/bn/beta/Initializer/zerosConst*
_output_shapes	
:└*)
_class
loc:@user_dnn/dnn_2/bn/beta*
dtype0*
valueB└*    
Л
user_dnn/dnn_2/bn/beta
VariableV2*
shape:└*
dtype0*
_output_shapes	
:└*)
_class
loc:@user_dnn/dnn_2/bn/beta
║
user_dnn/dnn_2/bn/beta/AssignAssignuser_dnn/dnn_2/bn/beta(user_dnn/dnn_2/bn/beta/Initializer/zeros*
T0*)
_class
loc:@user_dnn/dnn_2/bn/beta*
_output_shapes	
:└
Р
user_dnn/dnn_2/bn/beta/readIdentityuser_dnn/dnn_2/bn/beta*)
_class
loc:@user_dnn/dnn_2/bn/beta*
_output_shapes	
:└*
T0
░
/user_dnn/dnn_2/bn/moving_mean/Initializer/zerosConst*
valueB└*    *
_output_shapes	
:└*
dtype0*0
_class&
$"loc:@user_dnn/dnn_2/bn/moving_mean
Щ
user_dnn/dnn_2/bn/moving_mean
VariableV2*
_output_shapes	
:└*
shape:└*0
_class&
$"loc:@user_dnn/dnn_2/bn/moving_mean*
dtype0
╓
$user_dnn/dnn_2/bn/moving_mean/AssignAssignuser_dnn/dnn_2/bn/moving_mean/user_dnn/dnn_2/bn/moving_mean/Initializer/zeros*
_output_shapes	
:└*0
_class&
$"loc:@user_dnn/dnn_2/bn/moving_mean*
T0
е
"user_dnn/dnn_2/bn/moving_mean/readIdentityuser_dnn/dnn_2/bn/moving_mean*
T0*
_output_shapes	
:└*0
_class&
$"loc:@user_dnn/dnn_2/bn/moving_mean
╖
2user_dnn/dnn_2/bn/moving_variance/Initializer/onesConst*4
_class*
(&loc:@user_dnn/dnn_2/bn/moving_variance*
dtype0*
valueB└*  А?*
_output_shapes	
:└
б
!user_dnn/dnn_2/bn/moving_variance
VariableV2*4
_class*
(&loc:@user_dnn/dnn_2/bn/moving_variance*
dtype0*
shape:└*
_output_shapes	
:└
х
(user_dnn/dnn_2/bn/moving_variance/AssignAssign!user_dnn/dnn_2/bn/moving_variance2user_dnn/dnn_2/bn/moving_variance/Initializer/ones*
T0*4
_class*
(&loc:@user_dnn/dnn_2/bn/moving_variance*
_output_shapes	
:└
▒
&user_dnn/dnn_2/bn/moving_variance/readIdentity!user_dnn/dnn_2/bn/moving_variance*
_output_shapes	
:└*
T0*4
_class*
(&loc:@user_dnn/dnn_2/bn/moving_variance
f
!user_dnn/dnn_2/bn/batchnorm/add/yConst*
dtype0*
valueB
 *oГ:*
_output_shapes
: 
Ч
user_dnn/dnn_2/bn/batchnorm/addAdd&user_dnn/dnn_2/bn/moving_variance/read!user_dnn/dnn_2/bn/batchnorm/add/y*
T0*
_output_shapes	
:└
q
!user_dnn/dnn_2/bn/batchnorm/RsqrtRsqrtuser_dnn/dnn_2/bn/batchnorm/add*
T0*
_output_shapes	
:└
Н
user_dnn/dnn_2/bn/batchnorm/mulMul!user_dnn/dnn_2/bn/batchnorm/Rsqrtuser_dnn/dnn_2/bn/gamma/read*
T0*
_output_shapes	
:└
Ф
!user_dnn/dnn_2/bn/batchnorm/mul_1Muluser_dnn/dnn_2/BiasAdduser_dnn/dnn_2/bn/batchnorm/mul*(
_output_shapes
:         └*
T0
У
!user_dnn/dnn_2/bn/batchnorm/mul_2Mul"user_dnn/dnn_2/bn/moving_mean/readuser_dnn/dnn_2/bn/batchnorm/mul*
_output_shapes	
:└*
T0
М
user_dnn/dnn_2/bn/batchnorm/subSubuser_dnn/dnn_2/bn/beta/read!user_dnn/dnn_2/bn/batchnorm/mul_2*
_output_shapes	
:└*
T0
Я
!user_dnn/dnn_2/bn/batchnorm/add_1Add!user_dnn/dnn_2/bn/batchnorm/mul_1user_dnn/dnn_2/bn/batchnorm/sub*(
_output_shapes
:         └*
T0
p
user_dnn/dnn_2/actRelu!user_dnn/dnn_2/bn/batchnorm/add_1*
T0*(
_output_shapes
:         └
▒
6user_dnn/dnn_3/kernel/Initializer/random_uniform/shapeConst*
dtype0*(
_class
loc:@user_dnn/dnn_3/kernel*
valueB"└   А   *
_output_shapes
:
г
4user_dnn/dnn_3/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
valueB
 *М7╛*(
_class
loc:@user_dnn/dnn_3/kernel*
dtype0
г
4user_dnn/dnn_3/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *М7>*(
_class
loc:@user_dnn/dnn_3/kernel
щ
>user_dnn/dnn_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform6user_dnn/dnn_3/kernel/Initializer/random_uniform/shape* 
_output_shapes
:
└А*(
_class
loc:@user_dnn/dnn_3/kernel*
dtype0*
T0
Є
4user_dnn/dnn_3/kernel/Initializer/random_uniform/subSub4user_dnn/dnn_3/kernel/Initializer/random_uniform/max4user_dnn/dnn_3/kernel/Initializer/random_uniform/min*
_output_shapes
: *(
_class
loc:@user_dnn/dnn_3/kernel*
T0
Ж
4user_dnn/dnn_3/kernel/Initializer/random_uniform/mulMul>user_dnn/dnn_3/kernel/Initializer/random_uniform/RandomUniform4user_dnn/dnn_3/kernel/Initializer/random_uniform/sub* 
_output_shapes
:
└А*
T0*(
_class
loc:@user_dnn/dnn_3/kernel
°
0user_dnn/dnn_3/kernel/Initializer/random_uniformAdd4user_dnn/dnn_3/kernel/Initializer/random_uniform/mul4user_dnn/dnn_3/kernel/Initializer/random_uniform/min*(
_class
loc:@user_dnn/dnn_3/kernel* 
_output_shapes
:
└А*
T0
У
user_dnn/dnn_3/kernel
VariableV2* 
_output_shapes
:
└А*
dtype0*
shape:
└А*(
_class
loc:@user_dnn/dnn_3/kernel
─
user_dnn/dnn_3/kernel/AssignAssignuser_dnn/dnn_3/kernel0user_dnn/dnn_3/kernel/Initializer/random_uniform*(
_class
loc:@user_dnn/dnn_3/kernel* 
_output_shapes
:
└А*
T0
Т
user_dnn/dnn_3/kernel/readIdentityuser_dnn/dnn_3/kernel*(
_class
loc:@user_dnn/dnn_3/kernel*
T0* 
_output_shapes
:
└А
{
6user_dnn/dnn_3/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *╖╤8*
_output_shapes
: *
dtype0
~
7user_dnn/dnn_3/kernel/Regularizer/l2_regularizer/L2LossL2Lossuser_dnn/dnn_3/kernel/read*
_output_shapes
: *
T0
╔
0user_dnn/dnn_3/kernel/Regularizer/l2_regularizerMul6user_dnn/dnn_3/kernel/Regularizer/l2_regularizer/scale7user_dnn/dnn_3/kernel/Regularizer/l2_regularizer/L2Loss*
_output_shapes
: *
T0
Ь
%user_dnn/dnn_3/bias/Initializer/zerosConst*
dtype0*
valueBА*    *
_output_shapes	
:А*&
_class
loc:@user_dnn/dnn_3/bias
Е
user_dnn/dnn_3/bias
VariableV2*
dtype0*&
_class
loc:@user_dnn/dnn_3/bias*
_output_shapes	
:А*
shape:А
о
user_dnn/dnn_3/bias/AssignAssignuser_dnn/dnn_3/bias%user_dnn/dnn_3/bias/Initializer/zeros*
_output_shapes	
:А*&
_class
loc:@user_dnn/dnn_3/bias*
T0
З
user_dnn/dnn_3/bias/readIdentityuser_dnn/dnn_3/bias*&
_class
loc:@user_dnn/dnn_3/bias*
_output_shapes	
:А*
T0
В
user_dnn/dnn_3/MatMulMatMuluser_dnn/dnn_2/actuser_dnn/dnn_3/kernel/read*
T0*(
_output_shapes
:         А
Е
user_dnn/dnn_3/BiasAddBiasAdduser_dnn/dnn_3/MatMuluser_dnn/dnn_3/bias/read*(
_output_shapes
:         А*
T0
г
(user_dnn/dnn_3/bn/gamma/Initializer/onesConst**
_class 
loc:@user_dnn/dnn_3/bn/gamma*
valueBА*  А?*
_output_shapes	
:А*
dtype0
Н
user_dnn/dnn_3/bn/gamma
VariableV2*
dtype0**
_class 
loc:@user_dnn/dnn_3/bn/gamma*
_output_shapes	
:А*
shape:А
╜
user_dnn/dnn_3/bn/gamma/AssignAssignuser_dnn/dnn_3/bn/gamma(user_dnn/dnn_3/bn/gamma/Initializer/ones*
T0**
_class 
loc:@user_dnn/dnn_3/bn/gamma*
_output_shapes	
:А
У
user_dnn/dnn_3/bn/gamma/readIdentityuser_dnn/dnn_3/bn/gamma**
_class 
loc:@user_dnn/dnn_3/bn/gamma*
T0*
_output_shapes	
:А
в
(user_dnn/dnn_3/bn/beta/Initializer/zerosConst*
valueBА*    *)
_class
loc:@user_dnn/dnn_3/bn/beta*
dtype0*
_output_shapes	
:А
Л
user_dnn/dnn_3/bn/beta
VariableV2*
_output_shapes	
:А*
shape:А*
dtype0*)
_class
loc:@user_dnn/dnn_3/bn/beta
║
user_dnn/dnn_3/bn/beta/AssignAssignuser_dnn/dnn_3/bn/beta(user_dnn/dnn_3/bn/beta/Initializer/zeros*)
_class
loc:@user_dnn/dnn_3/bn/beta*
_output_shapes	
:А*
T0
Р
user_dnn/dnn_3/bn/beta/readIdentityuser_dnn/dnn_3/bn/beta*
_output_shapes	
:А*)
_class
loc:@user_dnn/dnn_3/bn/beta*
T0
░
/user_dnn/dnn_3/bn/moving_mean/Initializer/zerosConst*
valueBА*    *0
_class&
$"loc:@user_dnn/dnn_3/bn/moving_mean*
dtype0*
_output_shapes	
:А
Щ
user_dnn/dnn_3/bn/moving_mean
VariableV2*0
_class&
$"loc:@user_dnn/dnn_3/bn/moving_mean*
shape:А*
_output_shapes	
:А*
dtype0
╓
$user_dnn/dnn_3/bn/moving_mean/AssignAssignuser_dnn/dnn_3/bn/moving_mean/user_dnn/dnn_3/bn/moving_mean/Initializer/zeros*
_output_shapes	
:А*0
_class&
$"loc:@user_dnn/dnn_3/bn/moving_mean*
T0
е
"user_dnn/dnn_3/bn/moving_mean/readIdentityuser_dnn/dnn_3/bn/moving_mean*
_output_shapes	
:А*
T0*0
_class&
$"loc:@user_dnn/dnn_3/bn/moving_mean
╖
2user_dnn/dnn_3/bn/moving_variance/Initializer/onesConst*
_output_shapes	
:А*
dtype0*
valueBА*  А?*4
_class*
(&loc:@user_dnn/dnn_3/bn/moving_variance
б
!user_dnn/dnn_3/bn/moving_variance
VariableV2*
_output_shapes	
:А*4
_class*
(&loc:@user_dnn/dnn_3/bn/moving_variance*
shape:А*
dtype0
х
(user_dnn/dnn_3/bn/moving_variance/AssignAssign!user_dnn/dnn_3/bn/moving_variance2user_dnn/dnn_3/bn/moving_variance/Initializer/ones*
T0*
_output_shapes	
:А*4
_class*
(&loc:@user_dnn/dnn_3/bn/moving_variance
▒
&user_dnn/dnn_3/bn/moving_variance/readIdentity!user_dnn/dnn_3/bn/moving_variance*
T0*4
_class*
(&loc:@user_dnn/dnn_3/bn/moving_variance*
_output_shapes	
:А
f
!user_dnn/dnn_3/bn/batchnorm/add/yConst*
valueB
 *oГ:*
_output_shapes
: *
dtype0
Ч
user_dnn/dnn_3/bn/batchnorm/addAdd&user_dnn/dnn_3/bn/moving_variance/read!user_dnn/dnn_3/bn/batchnorm/add/y*
T0*
_output_shapes	
:А
q
!user_dnn/dnn_3/bn/batchnorm/RsqrtRsqrtuser_dnn/dnn_3/bn/batchnorm/add*
_output_shapes	
:А*
T0
Н
user_dnn/dnn_3/bn/batchnorm/mulMul!user_dnn/dnn_3/bn/batchnorm/Rsqrtuser_dnn/dnn_3/bn/gamma/read*
_output_shapes	
:А*
T0
Ф
!user_dnn/dnn_3/bn/batchnorm/mul_1Muluser_dnn/dnn_3/BiasAdduser_dnn/dnn_3/bn/batchnorm/mul*
T0*(
_output_shapes
:         А
У
!user_dnn/dnn_3/bn/batchnorm/mul_2Mul"user_dnn/dnn_3/bn/moving_mean/readuser_dnn/dnn_3/bn/batchnorm/mul*
_output_shapes	
:А*
T0
М
user_dnn/dnn_3/bn/batchnorm/subSubuser_dnn/dnn_3/bn/beta/read!user_dnn/dnn_3/bn/batchnorm/mul_2*
_output_shapes	
:А*
T0
Я
!user_dnn/dnn_3/bn/batchnorm/add_1Add!user_dnn/dnn_3/bn/batchnorm/mul_1user_dnn/dnn_3/bn/batchnorm/sub*
T0*(
_output_shapes
:         А
p
user_dnn/dnn_3/actRelu!user_dnn/dnn_3/bn/batchnorm/add_1*(
_output_shapes
:         А*
T0
Ч
#combo_fea_bn/gamma/Initializer/onesConst*
valueB *  А?*
dtype0*%
_class
loc:@combo_fea_bn/gamma*
_output_shapes
: 
Б
combo_fea_bn/gamma
VariableV2*
shape: *
_output_shapes
: *
dtype0*%
_class
loc:@combo_fea_bn/gamma
и
combo_fea_bn/gamma/AssignAssigncombo_fea_bn/gamma#combo_fea_bn/gamma/Initializer/ones*
T0*
_output_shapes
: *%
_class
loc:@combo_fea_bn/gamma
Г
combo_fea_bn/gamma/readIdentitycombo_fea_bn/gamma*
_output_shapes
: *
T0*%
_class
loc:@combo_fea_bn/gamma
Ц
#combo_fea_bn/beta/Initializer/zerosConst*
_output_shapes
: *
dtype0*
valueB *    *$
_class
loc:@combo_fea_bn/beta

combo_fea_bn/beta
VariableV2*
shape: *
dtype0*$
_class
loc:@combo_fea_bn/beta*
_output_shapes
: 
е
combo_fea_bn/beta/AssignAssigncombo_fea_bn/beta#combo_fea_bn/beta/Initializer/zeros*$
_class
loc:@combo_fea_bn/beta*
_output_shapes
: *
T0
А
combo_fea_bn/beta/readIdentitycombo_fea_bn/beta*
T0*
_output_shapes
: *$
_class
loc:@combo_fea_bn/beta
д
*combo_fea_bn/moving_mean/Initializer/zerosConst*
_output_shapes
: *
dtype0*
valueB *    *+
_class!
loc:@combo_fea_bn/moving_mean
Н
combo_fea_bn/moving_mean
VariableV2*
shape: *+
_class!
loc:@combo_fea_bn/moving_mean*
_output_shapes
: *
dtype0
┴
combo_fea_bn/moving_mean/AssignAssigncombo_fea_bn/moving_mean*combo_fea_bn/moving_mean/Initializer/zeros*+
_class!
loc:@combo_fea_bn/moving_mean*
_output_shapes
: *
T0
Х
combo_fea_bn/moving_mean/readIdentitycombo_fea_bn/moving_mean*
_output_shapes
: *+
_class!
loc:@combo_fea_bn/moving_mean*
T0
л
-combo_fea_bn/moving_variance/Initializer/onesConst*/
_class%
#!loc:@combo_fea_bn/moving_variance*
_output_shapes
: *
dtype0*
valueB *  А?
Х
combo_fea_bn/moving_variance
VariableV2*
_output_shapes
: */
_class%
#!loc:@combo_fea_bn/moving_variance*
shape: *
dtype0
╨
#combo_fea_bn/moving_variance/AssignAssigncombo_fea_bn/moving_variance-combo_fea_bn/moving_variance/Initializer/ones*
_output_shapes
: *
T0*/
_class%
#!loc:@combo_fea_bn/moving_variance
б
!combo_fea_bn/moving_variance/readIdentitycombo_fea_bn/moving_variance*
_output_shapes
: */
_class%
#!loc:@combo_fea_bn/moving_variance*
T0
a
combo_fea_bn/batchnorm/add/yConst*
dtype0*
valueB
 *oГ:*
_output_shapes
: 
З
combo_fea_bn/batchnorm/addAdd!combo_fea_bn/moving_variance/readcombo_fea_bn/batchnorm/add/y*
_output_shapes
: *
T0
f
combo_fea_bn/batchnorm/RsqrtRsqrtcombo_fea_bn/batchnorm/add*
_output_shapes
: *
T0
}
combo_fea_bn/batchnorm/mulMulcombo_fea_bn/batchnorm/Rsqrtcombo_fea_bn/gamma/read*
T0*
_output_shapes
: 
{
combo_fea_bn/batchnorm/mul_1Mulconcat_3combo_fea_bn/batchnorm/mul*
T0*'
_output_shapes
:          
Г
combo_fea_bn/batchnorm/mul_2Mulcombo_fea_bn/moving_mean/readcombo_fea_bn/batchnorm/mul*
T0*
_output_shapes
: 
|
combo_fea_bn/batchnorm/subSubcombo_fea_bn/beta/readcombo_fea_bn/batchnorm/mul_2*
T0*
_output_shapes
: 
П
combo_fea_bn/batchnorm/add_1Addcombo_fea_bn/batchnorm/mul_1combo_fea_bn/batchnorm/sub*
T0*'
_output_shapes
:          
│
7combo_dnn/dnn_0/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*
dtype0*
valueB"    └   *)
_class
loc:@combo_dnn/dnn_0/kernel
е
5combo_dnn/dnn_0/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *)
_class
loc:@combo_dnn/dnn_0/kernel*
valueB
 *bЧ'╛
е
5combo_dnn/dnn_0/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *)
_class
loc:@combo_dnn/dnn_0/kernel*
valueB
 *bЧ'>*
dtype0
ы
?combo_dnn/dnn_0/kernel/Initializer/random_uniform/RandomUniformRandomUniform7combo_dnn/dnn_0/kernel/Initializer/random_uniform/shape*)
_class
loc:@combo_dnn/dnn_0/kernel*
_output_shapes
:	 └*
T0*
dtype0
Ў
5combo_dnn/dnn_0/kernel/Initializer/random_uniform/subSub5combo_dnn/dnn_0/kernel/Initializer/random_uniform/max5combo_dnn/dnn_0/kernel/Initializer/random_uniform/min*
T0*)
_class
loc:@combo_dnn/dnn_0/kernel*
_output_shapes
: 
Й
5combo_dnn/dnn_0/kernel/Initializer/random_uniform/mulMul?combo_dnn/dnn_0/kernel/Initializer/random_uniform/RandomUniform5combo_dnn/dnn_0/kernel/Initializer/random_uniform/sub*
T0*)
_class
loc:@combo_dnn/dnn_0/kernel*
_output_shapes
:	 └
√
1combo_dnn/dnn_0/kernel/Initializer/random_uniformAdd5combo_dnn/dnn_0/kernel/Initializer/random_uniform/mul5combo_dnn/dnn_0/kernel/Initializer/random_uniform/min*)
_class
loc:@combo_dnn/dnn_0/kernel*
T0*
_output_shapes
:	 └
У
combo_dnn/dnn_0/kernel
VariableV2*
_output_shapes
:	 └*)
_class
loc:@combo_dnn/dnn_0/kernel*
shape:	 └*
dtype0
╟
combo_dnn/dnn_0/kernel/AssignAssigncombo_dnn/dnn_0/kernel1combo_dnn/dnn_0/kernel/Initializer/random_uniform*
T0*)
_class
loc:@combo_dnn/dnn_0/kernel*
_output_shapes
:	 └
Ф
combo_dnn/dnn_0/kernel/readIdentitycombo_dnn/dnn_0/kernel*
T0*)
_class
loc:@combo_dnn/dnn_0/kernel*
_output_shapes
:	 └
|
7combo_dnn/dnn_0/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *╖╤8*
dtype0*
_output_shapes
: 
А
8combo_dnn/dnn_0/kernel/Regularizer/l2_regularizer/L2LossL2Losscombo_dnn/dnn_0/kernel/read*
_output_shapes
: *
T0
╠
1combo_dnn/dnn_0/kernel/Regularizer/l2_regularizerMul7combo_dnn/dnn_0/kernel/Regularizer/l2_regularizer/scale8combo_dnn/dnn_0/kernel/Regularizer/l2_regularizer/L2Loss*
_output_shapes
: *
T0
Ю
&combo_dnn/dnn_0/bias/Initializer/zerosConst*
_output_shapes	
:└*
dtype0*
valueB└*    *'
_class
loc:@combo_dnn/dnn_0/bias
З
combo_dnn/dnn_0/bias
VariableV2*
shape:└*
_output_shapes	
:└*'
_class
loc:@combo_dnn/dnn_0/bias*
dtype0
▓
combo_dnn/dnn_0/bias/AssignAssigncombo_dnn/dnn_0/bias&combo_dnn/dnn_0/bias/Initializer/zeros*'
_class
loc:@combo_dnn/dnn_0/bias*
_output_shapes	
:└*
T0
К
combo_dnn/dnn_0/bias/readIdentitycombo_dnn/dnn_0/bias*
T0*
_output_shapes	
:└*'
_class
loc:@combo_dnn/dnn_0/bias
О
combo_dnn/dnn_0/MatMulMatMulcombo_fea_bn/batchnorm/add_1combo_dnn/dnn_0/kernel/read*(
_output_shapes
:         └*
T0
И
combo_dnn/dnn_0/BiasAddBiasAddcombo_dnn/dnn_0/MatMulcombo_dnn/dnn_0/bias/read*
T0*(
_output_shapes
:         └
е
)combo_dnn/dnn_0/bn/gamma/Initializer/onesConst*+
_class!
loc:@combo_dnn/dnn_0/bn/gamma*
_output_shapes	
:└*
dtype0*
valueB└*  А?
П
combo_dnn/dnn_0/bn/gamma
VariableV2*
shape:└*
dtype0*
_output_shapes	
:└*+
_class!
loc:@combo_dnn/dnn_0/bn/gamma
┴
combo_dnn/dnn_0/bn/gamma/AssignAssigncombo_dnn/dnn_0/bn/gamma)combo_dnn/dnn_0/bn/gamma/Initializer/ones*
_output_shapes	
:└*
T0*+
_class!
loc:@combo_dnn/dnn_0/bn/gamma
Ц
combo_dnn/dnn_0/bn/gamma/readIdentitycombo_dnn/dnn_0/bn/gamma*
T0*
_output_shapes	
:└*+
_class!
loc:@combo_dnn/dnn_0/bn/gamma
д
)combo_dnn/dnn_0/bn/beta/Initializer/zerosConst*
dtype0*
_output_shapes	
:└**
_class 
loc:@combo_dnn/dnn_0/bn/beta*
valueB└*    
Н
combo_dnn/dnn_0/bn/beta
VariableV2*
dtype0*
_output_shapes	
:└*
shape:└**
_class 
loc:@combo_dnn/dnn_0/bn/beta
╛
combo_dnn/dnn_0/bn/beta/AssignAssigncombo_dnn/dnn_0/bn/beta)combo_dnn/dnn_0/bn/beta/Initializer/zeros**
_class 
loc:@combo_dnn/dnn_0/bn/beta*
_output_shapes	
:└*
T0
У
combo_dnn/dnn_0/bn/beta/readIdentitycombo_dnn/dnn_0/bn/beta**
_class 
loc:@combo_dnn/dnn_0/bn/beta*
_output_shapes	
:└*
T0
▓
0combo_dnn/dnn_0/bn/moving_mean/Initializer/zerosConst*
dtype0*
_output_shapes	
:└*1
_class'
%#loc:@combo_dnn/dnn_0/bn/moving_mean*
valueB└*    
Ы
combo_dnn/dnn_0/bn/moving_mean
VariableV2*1
_class'
%#loc:@combo_dnn/dnn_0/bn/moving_mean*
_output_shapes	
:└*
dtype0*
shape:└
┌
%combo_dnn/dnn_0/bn/moving_mean/AssignAssigncombo_dnn/dnn_0/bn/moving_mean0combo_dnn/dnn_0/bn/moving_mean/Initializer/zeros*
_output_shapes	
:└*1
_class'
%#loc:@combo_dnn/dnn_0/bn/moving_mean*
T0
и
#combo_dnn/dnn_0/bn/moving_mean/readIdentitycombo_dnn/dnn_0/bn/moving_mean*
_output_shapes	
:└*1
_class'
%#loc:@combo_dnn/dnn_0/bn/moving_mean*
T0
╣
3combo_dnn/dnn_0/bn/moving_variance/Initializer/onesConst*5
_class+
)'loc:@combo_dnn/dnn_0/bn/moving_variance*
_output_shapes	
:└*
dtype0*
valueB└*  А?
г
"combo_dnn/dnn_0/bn/moving_variance
VariableV2*
shape:└*
dtype0*5
_class+
)'loc:@combo_dnn/dnn_0/bn/moving_variance*
_output_shapes	
:└
щ
)combo_dnn/dnn_0/bn/moving_variance/AssignAssign"combo_dnn/dnn_0/bn/moving_variance3combo_dnn/dnn_0/bn/moving_variance/Initializer/ones*
_output_shapes	
:└*5
_class+
)'loc:@combo_dnn/dnn_0/bn/moving_variance*
T0
┤
'combo_dnn/dnn_0/bn/moving_variance/readIdentity"combo_dnn/dnn_0/bn/moving_variance*
T0*5
_class+
)'loc:@combo_dnn/dnn_0/bn/moving_variance*
_output_shapes	
:└
g
"combo_dnn/dnn_0/bn/batchnorm/add/yConst*
dtype0*
valueB
 *oГ:*
_output_shapes
: 
Ъ
 combo_dnn/dnn_0/bn/batchnorm/addAdd'combo_dnn/dnn_0/bn/moving_variance/read"combo_dnn/dnn_0/bn/batchnorm/add/y*
T0*
_output_shapes	
:└
s
"combo_dnn/dnn_0/bn/batchnorm/RsqrtRsqrt combo_dnn/dnn_0/bn/batchnorm/add*
T0*
_output_shapes	
:└
Р
 combo_dnn/dnn_0/bn/batchnorm/mulMul"combo_dnn/dnn_0/bn/batchnorm/Rsqrtcombo_dnn/dnn_0/bn/gamma/read*
T0*
_output_shapes	
:└
Ч
"combo_dnn/dnn_0/bn/batchnorm/mul_1Mulcombo_dnn/dnn_0/BiasAdd combo_dnn/dnn_0/bn/batchnorm/mul*
T0*(
_output_shapes
:         └
Ц
"combo_dnn/dnn_0/bn/batchnorm/mul_2Mul#combo_dnn/dnn_0/bn/moving_mean/read combo_dnn/dnn_0/bn/batchnorm/mul*
T0*
_output_shapes	
:└
П
 combo_dnn/dnn_0/bn/batchnorm/subSubcombo_dnn/dnn_0/bn/beta/read"combo_dnn/dnn_0/bn/batchnorm/mul_2*
_output_shapes	
:└*
T0
в
"combo_dnn/dnn_0/bn/batchnorm/add_1Add"combo_dnn/dnn_0/bn/batchnorm/mul_1 combo_dnn/dnn_0/bn/batchnorm/sub*
T0*(
_output_shapes
:         └
r
combo_dnn/dnn_0/actRelu"combo_dnn/dnn_0/bn/batchnorm/add_1*
T0*(
_output_shapes
:         └
│
7combo_dnn/dnn_1/kernel/Initializer/random_uniform/shapeConst*
valueB"└      *)
_class
loc:@combo_dnn/dnn_1/kernel*
_output_shapes
:*
dtype0
е
5combo_dnn/dnn_1/kernel/Initializer/random_uniform/minConst*
dtype0*
valueB
 *Мэ╜*
_output_shapes
: *)
_class
loc:@combo_dnn/dnn_1/kernel
е
5combo_dnn/dnn_1/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *)
_class
loc:@combo_dnn/dnn_1/kernel*
valueB
 *Мэ=
ь
?combo_dnn/dnn_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform7combo_dnn/dnn_1/kernel/Initializer/random_uniform/shape*
T0* 
_output_shapes
:
└А*
dtype0*)
_class
loc:@combo_dnn/dnn_1/kernel
Ў
5combo_dnn/dnn_1/kernel/Initializer/random_uniform/subSub5combo_dnn/dnn_1/kernel/Initializer/random_uniform/max5combo_dnn/dnn_1/kernel/Initializer/random_uniform/min*)
_class
loc:@combo_dnn/dnn_1/kernel*
T0*
_output_shapes
: 
К
5combo_dnn/dnn_1/kernel/Initializer/random_uniform/mulMul?combo_dnn/dnn_1/kernel/Initializer/random_uniform/RandomUniform5combo_dnn/dnn_1/kernel/Initializer/random_uniform/sub* 
_output_shapes
:
└А*
T0*)
_class
loc:@combo_dnn/dnn_1/kernel
№
1combo_dnn/dnn_1/kernel/Initializer/random_uniformAdd5combo_dnn/dnn_1/kernel/Initializer/random_uniform/mul5combo_dnn/dnn_1/kernel/Initializer/random_uniform/min*)
_class
loc:@combo_dnn/dnn_1/kernel* 
_output_shapes
:
└А*
T0
Х
combo_dnn/dnn_1/kernel
VariableV2*)
_class
loc:@combo_dnn/dnn_1/kernel* 
_output_shapes
:
└А*
shape:
└А*
dtype0
╚
combo_dnn/dnn_1/kernel/AssignAssigncombo_dnn/dnn_1/kernel1combo_dnn/dnn_1/kernel/Initializer/random_uniform* 
_output_shapes
:
└А*)
_class
loc:@combo_dnn/dnn_1/kernel*
T0
Х
combo_dnn/dnn_1/kernel/readIdentitycombo_dnn/dnn_1/kernel*
T0*)
_class
loc:@combo_dnn/dnn_1/kernel* 
_output_shapes
:
└А
|
7combo_dnn/dnn_1/kernel/Regularizer/l2_regularizer/scaleConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8
А
8combo_dnn/dnn_1/kernel/Regularizer/l2_regularizer/L2LossL2Losscombo_dnn/dnn_1/kernel/read*
_output_shapes
: *
T0
╠
1combo_dnn/dnn_1/kernel/Regularizer/l2_regularizerMul7combo_dnn/dnn_1/kernel/Regularizer/l2_regularizer/scale8combo_dnn/dnn_1/kernel/Regularizer/l2_regularizer/L2Loss*
_output_shapes
: *
T0
Ю
&combo_dnn/dnn_1/bias/Initializer/zerosConst*
dtype0*
valueBА*    *'
_class
loc:@combo_dnn/dnn_1/bias*
_output_shapes	
:А
З
combo_dnn/dnn_1/bias
VariableV2*'
_class
loc:@combo_dnn/dnn_1/bias*
dtype0*
_output_shapes	
:А*
shape:А
▓
combo_dnn/dnn_1/bias/AssignAssigncombo_dnn/dnn_1/bias&combo_dnn/dnn_1/bias/Initializer/zeros*
_output_shapes	
:А*
T0*'
_class
loc:@combo_dnn/dnn_1/bias
К
combo_dnn/dnn_1/bias/readIdentitycombo_dnn/dnn_1/bias*
_output_shapes	
:А*
T0*'
_class
loc:@combo_dnn/dnn_1/bias
Е
combo_dnn/dnn_1/MatMulMatMulcombo_dnn/dnn_0/actcombo_dnn/dnn_1/kernel/read*(
_output_shapes
:         А*
T0
И
combo_dnn/dnn_1/BiasAddBiasAddcombo_dnn/dnn_1/MatMulcombo_dnn/dnn_1/bias/read*(
_output_shapes
:         А*
T0
е
)combo_dnn/dnn_1/bn/gamma/Initializer/onesConst*
_output_shapes	
:А*
valueBА*  А?*+
_class!
loc:@combo_dnn/dnn_1/bn/gamma*
dtype0
П
combo_dnn/dnn_1/bn/gamma
VariableV2*
_output_shapes	
:А*+
_class!
loc:@combo_dnn/dnn_1/bn/gamma*
dtype0*
shape:А
┴
combo_dnn/dnn_1/bn/gamma/AssignAssigncombo_dnn/dnn_1/bn/gamma)combo_dnn/dnn_1/bn/gamma/Initializer/ones*
T0*
_output_shapes	
:А*+
_class!
loc:@combo_dnn/dnn_1/bn/gamma
Ц
combo_dnn/dnn_1/bn/gamma/readIdentitycombo_dnn/dnn_1/bn/gamma*
_output_shapes	
:А*
T0*+
_class!
loc:@combo_dnn/dnn_1/bn/gamma
д
)combo_dnn/dnn_1/bn/beta/Initializer/zerosConst**
_class 
loc:@combo_dnn/dnn_1/bn/beta*
valueBА*    *
_output_shapes	
:А*
dtype0
Н
combo_dnn/dnn_1/bn/beta
VariableV2**
_class 
loc:@combo_dnn/dnn_1/bn/beta*
dtype0*
_output_shapes	
:А*
shape:А
╛
combo_dnn/dnn_1/bn/beta/AssignAssigncombo_dnn/dnn_1/bn/beta)combo_dnn/dnn_1/bn/beta/Initializer/zeros*
T0**
_class 
loc:@combo_dnn/dnn_1/bn/beta*
_output_shapes	
:А
У
combo_dnn/dnn_1/bn/beta/readIdentitycombo_dnn/dnn_1/bn/beta*
T0*
_output_shapes	
:А**
_class 
loc:@combo_dnn/dnn_1/bn/beta
▓
0combo_dnn/dnn_1/bn/moving_mean/Initializer/zerosConst*
dtype0*
valueBА*    *
_output_shapes	
:А*1
_class'
%#loc:@combo_dnn/dnn_1/bn/moving_mean
Ы
combo_dnn/dnn_1/bn/moving_mean
VariableV2*
_output_shapes	
:А*
shape:А*
dtype0*1
_class'
%#loc:@combo_dnn/dnn_1/bn/moving_mean
┌
%combo_dnn/dnn_1/bn/moving_mean/AssignAssigncombo_dnn/dnn_1/bn/moving_mean0combo_dnn/dnn_1/bn/moving_mean/Initializer/zeros*
T0*1
_class'
%#loc:@combo_dnn/dnn_1/bn/moving_mean*
_output_shapes	
:А
и
#combo_dnn/dnn_1/bn/moving_mean/readIdentitycombo_dnn/dnn_1/bn/moving_mean*
_output_shapes	
:А*
T0*1
_class'
%#loc:@combo_dnn/dnn_1/bn/moving_mean
╣
3combo_dnn/dnn_1/bn/moving_variance/Initializer/onesConst*
valueBА*  А?*5
_class+
)'loc:@combo_dnn/dnn_1/bn/moving_variance*
dtype0*
_output_shapes	
:А
г
"combo_dnn/dnn_1/bn/moving_variance
VariableV2*
shape:А*5
_class+
)'loc:@combo_dnn/dnn_1/bn/moving_variance*
_output_shapes	
:А*
dtype0
щ
)combo_dnn/dnn_1/bn/moving_variance/AssignAssign"combo_dnn/dnn_1/bn/moving_variance3combo_dnn/dnn_1/bn/moving_variance/Initializer/ones*5
_class+
)'loc:@combo_dnn/dnn_1/bn/moving_variance*
_output_shapes	
:А*
T0
┤
'combo_dnn/dnn_1/bn/moving_variance/readIdentity"combo_dnn/dnn_1/bn/moving_variance*
T0*
_output_shapes	
:А*5
_class+
)'loc:@combo_dnn/dnn_1/bn/moving_variance
g
"combo_dnn/dnn_1/bn/batchnorm/add/yConst*
valueB
 *oГ:*
_output_shapes
: *
dtype0
Ъ
 combo_dnn/dnn_1/bn/batchnorm/addAdd'combo_dnn/dnn_1/bn/moving_variance/read"combo_dnn/dnn_1/bn/batchnorm/add/y*
T0*
_output_shapes	
:А
s
"combo_dnn/dnn_1/bn/batchnorm/RsqrtRsqrt combo_dnn/dnn_1/bn/batchnorm/add*
T0*
_output_shapes	
:А
Р
 combo_dnn/dnn_1/bn/batchnorm/mulMul"combo_dnn/dnn_1/bn/batchnorm/Rsqrtcombo_dnn/dnn_1/bn/gamma/read*
T0*
_output_shapes	
:А
Ч
"combo_dnn/dnn_1/bn/batchnorm/mul_1Mulcombo_dnn/dnn_1/BiasAdd combo_dnn/dnn_1/bn/batchnorm/mul*
T0*(
_output_shapes
:         А
Ц
"combo_dnn/dnn_1/bn/batchnorm/mul_2Mul#combo_dnn/dnn_1/bn/moving_mean/read combo_dnn/dnn_1/bn/batchnorm/mul*
_output_shapes	
:А*
T0
П
 combo_dnn/dnn_1/bn/batchnorm/subSubcombo_dnn/dnn_1/bn/beta/read"combo_dnn/dnn_1/bn/batchnorm/mul_2*
_output_shapes	
:А*
T0
в
"combo_dnn/dnn_1/bn/batchnorm/add_1Add"combo_dnn/dnn_1/bn/batchnorm/mul_1 combo_dnn/dnn_1/bn/batchnorm/sub*(
_output_shapes
:         А*
T0
r
combo_dnn/dnn_1/actRelu"combo_dnn/dnn_1/bn/batchnorm/add_1*(
_output_shapes
:         А*
T0
│
7combo_dnn/dnn_2/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*
valueB"   └   *
dtype0*)
_class
loc:@combo_dnn/dnn_2/kernel
е
5combo_dnn/dnn_2/kernel/Initializer/random_uniform/minConst*
valueB
 *Мэ╜*
_output_shapes
: *
dtype0*)
_class
loc:@combo_dnn/dnn_2/kernel
е
5combo_dnn/dnn_2/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *)
_class
loc:@combo_dnn/dnn_2/kernel*
valueB
 *Мэ=
ь
?combo_dnn/dnn_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform7combo_dnn/dnn_2/kernel/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
А└*)
_class
loc:@combo_dnn/dnn_2/kernel*
T0
Ў
5combo_dnn/dnn_2/kernel/Initializer/random_uniform/subSub5combo_dnn/dnn_2/kernel/Initializer/random_uniform/max5combo_dnn/dnn_2/kernel/Initializer/random_uniform/min*)
_class
loc:@combo_dnn/dnn_2/kernel*
T0*
_output_shapes
: 
К
5combo_dnn/dnn_2/kernel/Initializer/random_uniform/mulMul?combo_dnn/dnn_2/kernel/Initializer/random_uniform/RandomUniform5combo_dnn/dnn_2/kernel/Initializer/random_uniform/sub*)
_class
loc:@combo_dnn/dnn_2/kernel*
T0* 
_output_shapes
:
А└
№
1combo_dnn/dnn_2/kernel/Initializer/random_uniformAdd5combo_dnn/dnn_2/kernel/Initializer/random_uniform/mul5combo_dnn/dnn_2/kernel/Initializer/random_uniform/min*
T0* 
_output_shapes
:
А└*)
_class
loc:@combo_dnn/dnn_2/kernel
Х
combo_dnn/dnn_2/kernel
VariableV2*
dtype0* 
_output_shapes
:
А└*)
_class
loc:@combo_dnn/dnn_2/kernel*
shape:
А└
╚
combo_dnn/dnn_2/kernel/AssignAssigncombo_dnn/dnn_2/kernel1combo_dnn/dnn_2/kernel/Initializer/random_uniform* 
_output_shapes
:
А└*
T0*)
_class
loc:@combo_dnn/dnn_2/kernel
Х
combo_dnn/dnn_2/kernel/readIdentitycombo_dnn/dnn_2/kernel*
T0* 
_output_shapes
:
А└*)
_class
loc:@combo_dnn/dnn_2/kernel
|
7combo_dnn/dnn_2/kernel/Regularizer/l2_regularizer/scaleConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8
А
8combo_dnn/dnn_2/kernel/Regularizer/l2_regularizer/L2LossL2Losscombo_dnn/dnn_2/kernel/read*
_output_shapes
: *
T0
╠
1combo_dnn/dnn_2/kernel/Regularizer/l2_regularizerMul7combo_dnn/dnn_2/kernel/Regularizer/l2_regularizer/scale8combo_dnn/dnn_2/kernel/Regularizer/l2_regularizer/L2Loss*
_output_shapes
: *
T0
Ю
&combo_dnn/dnn_2/bias/Initializer/zerosConst*'
_class
loc:@combo_dnn/dnn_2/bias*
valueB└*    *
_output_shapes	
:└*
dtype0
З
combo_dnn/dnn_2/bias
VariableV2*
dtype0*
shape:└*'
_class
loc:@combo_dnn/dnn_2/bias*
_output_shapes	
:└
▓
combo_dnn/dnn_2/bias/AssignAssigncombo_dnn/dnn_2/bias&combo_dnn/dnn_2/bias/Initializer/zeros*
T0*'
_class
loc:@combo_dnn/dnn_2/bias*
_output_shapes	
:└
К
combo_dnn/dnn_2/bias/readIdentitycombo_dnn/dnn_2/bias*
_output_shapes	
:└*
T0*'
_class
loc:@combo_dnn/dnn_2/bias
Е
combo_dnn/dnn_2/MatMulMatMulcombo_dnn/dnn_1/actcombo_dnn/dnn_2/kernel/read*(
_output_shapes
:         └*
T0
И
combo_dnn/dnn_2/BiasAddBiasAddcombo_dnn/dnn_2/MatMulcombo_dnn/dnn_2/bias/read*
T0*(
_output_shapes
:         └
е
)combo_dnn/dnn_2/bn/gamma/Initializer/onesConst*
dtype0*
_output_shapes	
:└*
valueB└*  А?*+
_class!
loc:@combo_dnn/dnn_2/bn/gamma
П
combo_dnn/dnn_2/bn/gamma
VariableV2*
_output_shapes	
:└*
shape:└*+
_class!
loc:@combo_dnn/dnn_2/bn/gamma*
dtype0
┴
combo_dnn/dnn_2/bn/gamma/AssignAssigncombo_dnn/dnn_2/bn/gamma)combo_dnn/dnn_2/bn/gamma/Initializer/ones*
T0*+
_class!
loc:@combo_dnn/dnn_2/bn/gamma*
_output_shapes	
:└
Ц
combo_dnn/dnn_2/bn/gamma/readIdentitycombo_dnn/dnn_2/bn/gamma*
T0*
_output_shapes	
:└*+
_class!
loc:@combo_dnn/dnn_2/bn/gamma
д
)combo_dnn/dnn_2/bn/beta/Initializer/zerosConst*
_output_shapes	
:└**
_class 
loc:@combo_dnn/dnn_2/bn/beta*
valueB└*    *
dtype0
Н
combo_dnn/dnn_2/bn/beta
VariableV2*
dtype0*
_output_shapes	
:└*
shape:└**
_class 
loc:@combo_dnn/dnn_2/bn/beta
╛
combo_dnn/dnn_2/bn/beta/AssignAssigncombo_dnn/dnn_2/bn/beta)combo_dnn/dnn_2/bn/beta/Initializer/zeros*
_output_shapes	
:└*
T0**
_class 
loc:@combo_dnn/dnn_2/bn/beta
У
combo_dnn/dnn_2/bn/beta/readIdentitycombo_dnn/dnn_2/bn/beta*
T0**
_class 
loc:@combo_dnn/dnn_2/bn/beta*
_output_shapes	
:└
▓
0combo_dnn/dnn_2/bn/moving_mean/Initializer/zerosConst*
dtype0*1
_class'
%#loc:@combo_dnn/dnn_2/bn/moving_mean*
valueB└*    *
_output_shapes	
:└
Ы
combo_dnn/dnn_2/bn/moving_mean
VariableV2*
dtype0*
_output_shapes	
:└*
shape:└*1
_class'
%#loc:@combo_dnn/dnn_2/bn/moving_mean
┌
%combo_dnn/dnn_2/bn/moving_mean/AssignAssigncombo_dnn/dnn_2/bn/moving_mean0combo_dnn/dnn_2/bn/moving_mean/Initializer/zeros*1
_class'
%#loc:@combo_dnn/dnn_2/bn/moving_mean*
T0*
_output_shapes	
:└
и
#combo_dnn/dnn_2/bn/moving_mean/readIdentitycombo_dnn/dnn_2/bn/moving_mean*
T0*1
_class'
%#loc:@combo_dnn/dnn_2/bn/moving_mean*
_output_shapes	
:└
╣
3combo_dnn/dnn_2/bn/moving_variance/Initializer/onesConst*5
_class+
)'loc:@combo_dnn/dnn_2/bn/moving_variance*
valueB└*  А?*
_output_shapes	
:└*
dtype0
г
"combo_dnn/dnn_2/bn/moving_variance
VariableV2*
shape:└*5
_class+
)'loc:@combo_dnn/dnn_2/bn/moving_variance*
_output_shapes	
:└*
dtype0
щ
)combo_dnn/dnn_2/bn/moving_variance/AssignAssign"combo_dnn/dnn_2/bn/moving_variance3combo_dnn/dnn_2/bn/moving_variance/Initializer/ones*5
_class+
)'loc:@combo_dnn/dnn_2/bn/moving_variance*
_output_shapes	
:└*
T0
┤
'combo_dnn/dnn_2/bn/moving_variance/readIdentity"combo_dnn/dnn_2/bn/moving_variance*
T0*
_output_shapes	
:└*5
_class+
)'loc:@combo_dnn/dnn_2/bn/moving_variance
g
"combo_dnn/dnn_2/bn/batchnorm/add/yConst*
_output_shapes
: *
valueB
 *oГ:*
dtype0
Ъ
 combo_dnn/dnn_2/bn/batchnorm/addAdd'combo_dnn/dnn_2/bn/moving_variance/read"combo_dnn/dnn_2/bn/batchnorm/add/y*
T0*
_output_shapes	
:└
s
"combo_dnn/dnn_2/bn/batchnorm/RsqrtRsqrt combo_dnn/dnn_2/bn/batchnorm/add*
T0*
_output_shapes	
:└
Р
 combo_dnn/dnn_2/bn/batchnorm/mulMul"combo_dnn/dnn_2/bn/batchnorm/Rsqrtcombo_dnn/dnn_2/bn/gamma/read*
_output_shapes	
:└*
T0
Ч
"combo_dnn/dnn_2/bn/batchnorm/mul_1Mulcombo_dnn/dnn_2/BiasAdd combo_dnn/dnn_2/bn/batchnorm/mul*
T0*(
_output_shapes
:         └
Ц
"combo_dnn/dnn_2/bn/batchnorm/mul_2Mul#combo_dnn/dnn_2/bn/moving_mean/read combo_dnn/dnn_2/bn/batchnorm/mul*
T0*
_output_shapes	
:└
П
 combo_dnn/dnn_2/bn/batchnorm/subSubcombo_dnn/dnn_2/bn/beta/read"combo_dnn/dnn_2/bn/batchnorm/mul_2*
_output_shapes	
:└*
T0
в
"combo_dnn/dnn_2/bn/batchnorm/add_1Add"combo_dnn/dnn_2/bn/batchnorm/mul_1 combo_dnn/dnn_2/bn/batchnorm/sub*(
_output_shapes
:         └*
T0
r
combo_dnn/dnn_2/actRelu"combo_dnn/dnn_2/bn/batchnorm/add_1*
T0*(
_output_shapes
:         └
│
7combo_dnn/dnn_3/kernel/Initializer/random_uniform/shapeConst*)
_class
loc:@combo_dnn/dnn_3/kernel*
dtype0*
_output_shapes
:*
valueB"└   А   
е
5combo_dnn/dnn_3/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
valueB
 *М7╛*
dtype0*)
_class
loc:@combo_dnn/dnn_3/kernel
е
5combo_dnn/dnn_3/kernel/Initializer/random_uniform/maxConst*)
_class
loc:@combo_dnn/dnn_3/kernel*
_output_shapes
: *
dtype0*
valueB
 *М7>
ь
?combo_dnn/dnn_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform7combo_dnn/dnn_3/kernel/Initializer/random_uniform/shape* 
_output_shapes
:
└А*
T0*
dtype0*)
_class
loc:@combo_dnn/dnn_3/kernel
Ў
5combo_dnn/dnn_3/kernel/Initializer/random_uniform/subSub5combo_dnn/dnn_3/kernel/Initializer/random_uniform/max5combo_dnn/dnn_3/kernel/Initializer/random_uniform/min*
T0*)
_class
loc:@combo_dnn/dnn_3/kernel*
_output_shapes
: 
К
5combo_dnn/dnn_3/kernel/Initializer/random_uniform/mulMul?combo_dnn/dnn_3/kernel/Initializer/random_uniform/RandomUniform5combo_dnn/dnn_3/kernel/Initializer/random_uniform/sub*
T0* 
_output_shapes
:
└А*)
_class
loc:@combo_dnn/dnn_3/kernel
№
1combo_dnn/dnn_3/kernel/Initializer/random_uniformAdd5combo_dnn/dnn_3/kernel/Initializer/random_uniform/mul5combo_dnn/dnn_3/kernel/Initializer/random_uniform/min*
T0* 
_output_shapes
:
└А*)
_class
loc:@combo_dnn/dnn_3/kernel
Х
combo_dnn/dnn_3/kernel
VariableV2*
dtype0*)
_class
loc:@combo_dnn/dnn_3/kernel* 
_output_shapes
:
└А*
shape:
└А
╚
combo_dnn/dnn_3/kernel/AssignAssigncombo_dnn/dnn_3/kernel1combo_dnn/dnn_3/kernel/Initializer/random_uniform*)
_class
loc:@combo_dnn/dnn_3/kernel* 
_output_shapes
:
└А*
T0
Х
combo_dnn/dnn_3/kernel/readIdentitycombo_dnn/dnn_3/kernel*)
_class
loc:@combo_dnn/dnn_3/kernel*
T0* 
_output_shapes
:
└А
|
7combo_dnn/dnn_3/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *╖╤8*
dtype0*
_output_shapes
: 
А
8combo_dnn/dnn_3/kernel/Regularizer/l2_regularizer/L2LossL2Losscombo_dnn/dnn_3/kernel/read*
_output_shapes
: *
T0
╠
1combo_dnn/dnn_3/kernel/Regularizer/l2_regularizerMul7combo_dnn/dnn_3/kernel/Regularizer/l2_regularizer/scale8combo_dnn/dnn_3/kernel/Regularizer/l2_regularizer/L2Loss*
_output_shapes
: *
T0
Ю
&combo_dnn/dnn_3/bias/Initializer/zerosConst*
valueBА*    *'
_class
loc:@combo_dnn/dnn_3/bias*
dtype0*
_output_shapes	
:А
З
combo_dnn/dnn_3/bias
VariableV2*'
_class
loc:@combo_dnn/dnn_3/bias*
_output_shapes	
:А*
shape:А*
dtype0
▓
combo_dnn/dnn_3/bias/AssignAssigncombo_dnn/dnn_3/bias&combo_dnn/dnn_3/bias/Initializer/zeros*'
_class
loc:@combo_dnn/dnn_3/bias*
T0*
_output_shapes	
:А
К
combo_dnn/dnn_3/bias/readIdentitycombo_dnn/dnn_3/bias*'
_class
loc:@combo_dnn/dnn_3/bias*
_output_shapes	
:А*
T0
Е
combo_dnn/dnn_3/MatMulMatMulcombo_dnn/dnn_2/actcombo_dnn/dnn_3/kernel/read*(
_output_shapes
:         А*
T0
И
combo_dnn/dnn_3/BiasAddBiasAddcombo_dnn/dnn_3/MatMulcombo_dnn/dnn_3/bias/read*
T0*(
_output_shapes
:         А
е
)combo_dnn/dnn_3/bn/gamma/Initializer/onesConst*
dtype0*+
_class!
loc:@combo_dnn/dnn_3/bn/gamma*
_output_shapes	
:А*
valueBА*  А?
П
combo_dnn/dnn_3/bn/gamma
VariableV2*+
_class!
loc:@combo_dnn/dnn_3/bn/gamma*
shape:А*
dtype0*
_output_shapes	
:А
┴
combo_dnn/dnn_3/bn/gamma/AssignAssigncombo_dnn/dnn_3/bn/gamma)combo_dnn/dnn_3/bn/gamma/Initializer/ones*+
_class!
loc:@combo_dnn/dnn_3/bn/gamma*
T0*
_output_shapes	
:А
Ц
combo_dnn/dnn_3/bn/gamma/readIdentitycombo_dnn/dnn_3/bn/gamma*
T0*+
_class!
loc:@combo_dnn/dnn_3/bn/gamma*
_output_shapes	
:А
д
)combo_dnn/dnn_3/bn/beta/Initializer/zerosConst*
_output_shapes	
:А*
dtype0*
valueBА*    **
_class 
loc:@combo_dnn/dnn_3/bn/beta
Н
combo_dnn/dnn_3/bn/beta
VariableV2*
dtype0**
_class 
loc:@combo_dnn/dnn_3/bn/beta*
_output_shapes	
:А*
shape:А
╛
combo_dnn/dnn_3/bn/beta/AssignAssigncombo_dnn/dnn_3/bn/beta)combo_dnn/dnn_3/bn/beta/Initializer/zeros**
_class 
loc:@combo_dnn/dnn_3/bn/beta*
T0*
_output_shapes	
:А
У
combo_dnn/dnn_3/bn/beta/readIdentitycombo_dnn/dnn_3/bn/beta*
T0*
_output_shapes	
:А**
_class 
loc:@combo_dnn/dnn_3/bn/beta
▓
0combo_dnn/dnn_3/bn/moving_mean/Initializer/zerosConst*
dtype0*
valueBА*    *
_output_shapes	
:А*1
_class'
%#loc:@combo_dnn/dnn_3/bn/moving_mean
Ы
combo_dnn/dnn_3/bn/moving_mean
VariableV2*1
_class'
%#loc:@combo_dnn/dnn_3/bn/moving_mean*
dtype0*
_output_shapes	
:А*
shape:А
┌
%combo_dnn/dnn_3/bn/moving_mean/AssignAssigncombo_dnn/dnn_3/bn/moving_mean0combo_dnn/dnn_3/bn/moving_mean/Initializer/zeros*
_output_shapes	
:А*1
_class'
%#loc:@combo_dnn/dnn_3/bn/moving_mean*
T0
и
#combo_dnn/dnn_3/bn/moving_mean/readIdentitycombo_dnn/dnn_3/bn/moving_mean*
T0*
_output_shapes	
:А*1
_class'
%#loc:@combo_dnn/dnn_3/bn/moving_mean
╣
3combo_dnn/dnn_3/bn/moving_variance/Initializer/onesConst*5
_class+
)'loc:@combo_dnn/dnn_3/bn/moving_variance*
dtype0*
_output_shapes	
:А*
valueBА*  А?
г
"combo_dnn/dnn_3/bn/moving_variance
VariableV2*5
_class+
)'loc:@combo_dnn/dnn_3/bn/moving_variance*
shape:А*
dtype0*
_output_shapes	
:А
щ
)combo_dnn/dnn_3/bn/moving_variance/AssignAssign"combo_dnn/dnn_3/bn/moving_variance3combo_dnn/dnn_3/bn/moving_variance/Initializer/ones*5
_class+
)'loc:@combo_dnn/dnn_3/bn/moving_variance*
T0*
_output_shapes	
:А
┤
'combo_dnn/dnn_3/bn/moving_variance/readIdentity"combo_dnn/dnn_3/bn/moving_variance*
_output_shapes	
:А*
T0*5
_class+
)'loc:@combo_dnn/dnn_3/bn/moving_variance
g
"combo_dnn/dnn_3/bn/batchnorm/add/yConst*
_output_shapes
: *
valueB
 *oГ:*
dtype0
Ъ
 combo_dnn/dnn_3/bn/batchnorm/addAdd'combo_dnn/dnn_3/bn/moving_variance/read"combo_dnn/dnn_3/bn/batchnorm/add/y*
_output_shapes	
:А*
T0
s
"combo_dnn/dnn_3/bn/batchnorm/RsqrtRsqrt combo_dnn/dnn_3/bn/batchnorm/add*
T0*
_output_shapes	
:А
Р
 combo_dnn/dnn_3/bn/batchnorm/mulMul"combo_dnn/dnn_3/bn/batchnorm/Rsqrtcombo_dnn/dnn_3/bn/gamma/read*
_output_shapes	
:А*
T0
Ч
"combo_dnn/dnn_3/bn/batchnorm/mul_1Mulcombo_dnn/dnn_3/BiasAdd combo_dnn/dnn_3/bn/batchnorm/mul*(
_output_shapes
:         А*
T0
Ц
"combo_dnn/dnn_3/bn/batchnorm/mul_2Mul#combo_dnn/dnn_3/bn/moving_mean/read combo_dnn/dnn_3/bn/batchnorm/mul*
T0*
_output_shapes	
:А
П
 combo_dnn/dnn_3/bn/batchnorm/subSubcombo_dnn/dnn_3/bn/beta/read"combo_dnn/dnn_3/bn/batchnorm/mul_2*
T0*
_output_shapes	
:А
в
"combo_dnn/dnn_3/bn/batchnorm/add_1Add"combo_dnn/dnn_3/bn/batchnorm/mul_1 combo_dnn/dnn_3/bn/batchnorm/sub*
T0*(
_output_shapes
:         А
r
combo_dnn/dnn_3/actRelu"combo_dnn/dnn_3/bn/batchnorm/add_1*
T0*(
_output_shapes
:         А
O
concat_4/axisConst*
_output_shapes
: *
value	B :*
dtype0
Ь
concat_4ConcatV2item_dnn/dnn_3/actuser_dnn/dnn_3/actcombo_dnn/dnn_3/actconcat_4/axis*
N*
T0*(
_output_shapes
:         А
│
7final_dnn/dnn_0/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*
dtype0*)
_class
loc:@final_dnn/dnn_0/kernel*
valueB"А     
е
5final_dnn/dnn_0/kernel/Initializer/random_uniform/minConst*)
_class
loc:@final_dnn/dnn_0/kernel*
dtype0*
valueB
 *°K╞╜*
_output_shapes
: 
е
5final_dnn/dnn_0/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *°K╞=*)
_class
loc:@final_dnn/dnn_0/kernel
ь
?final_dnn/dnn_0/kernel/Initializer/random_uniform/RandomUniformRandomUniform7final_dnn/dnn_0/kernel/Initializer/random_uniform/shape*)
_class
loc:@final_dnn/dnn_0/kernel* 
_output_shapes
:
АА*
dtype0*
T0
Ў
5final_dnn/dnn_0/kernel/Initializer/random_uniform/subSub5final_dnn/dnn_0/kernel/Initializer/random_uniform/max5final_dnn/dnn_0/kernel/Initializer/random_uniform/min*
T0*
_output_shapes
: *)
_class
loc:@final_dnn/dnn_0/kernel
К
5final_dnn/dnn_0/kernel/Initializer/random_uniform/mulMul?final_dnn/dnn_0/kernel/Initializer/random_uniform/RandomUniform5final_dnn/dnn_0/kernel/Initializer/random_uniform/sub*)
_class
loc:@final_dnn/dnn_0/kernel*
T0* 
_output_shapes
:
АА
№
1final_dnn/dnn_0/kernel/Initializer/random_uniformAdd5final_dnn/dnn_0/kernel/Initializer/random_uniform/mul5final_dnn/dnn_0/kernel/Initializer/random_uniform/min*
T0* 
_output_shapes
:
АА*)
_class
loc:@final_dnn/dnn_0/kernel
Х
final_dnn/dnn_0/kernel
VariableV2* 
_output_shapes
:
АА*
shape:
АА*)
_class
loc:@final_dnn/dnn_0/kernel*
dtype0
╚
final_dnn/dnn_0/kernel/AssignAssignfinal_dnn/dnn_0/kernel1final_dnn/dnn_0/kernel/Initializer/random_uniform*)
_class
loc:@final_dnn/dnn_0/kernel*
T0* 
_output_shapes
:
АА
Х
final_dnn/dnn_0/kernel/readIdentityfinal_dnn/dnn_0/kernel*
T0*)
_class
loc:@final_dnn/dnn_0/kernel* 
_output_shapes
:
АА
|
7final_dnn/dnn_0/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *╖╤8*
dtype0*
_output_shapes
: 
А
8final_dnn/dnn_0/kernel/Regularizer/l2_regularizer/L2LossL2Lossfinal_dnn/dnn_0/kernel/read*
T0*
_output_shapes
: 
╠
1final_dnn/dnn_0/kernel/Regularizer/l2_regularizerMul7final_dnn/dnn_0/kernel/Regularizer/l2_regularizer/scale8final_dnn/dnn_0/kernel/Regularizer/l2_regularizer/L2Loss*
T0*
_output_shapes
: 
Ю
&final_dnn/dnn_0/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:А*
valueBА*    *'
_class
loc:@final_dnn/dnn_0/bias
З
final_dnn/dnn_0/bias
VariableV2*'
_class
loc:@final_dnn/dnn_0/bias*
_output_shapes	
:А*
dtype0*
shape:А
▓
final_dnn/dnn_0/bias/AssignAssignfinal_dnn/dnn_0/bias&final_dnn/dnn_0/bias/Initializer/zeros*
T0*'
_class
loc:@final_dnn/dnn_0/bias*
_output_shapes	
:А
К
final_dnn/dnn_0/bias/readIdentityfinal_dnn/dnn_0/bias*
_output_shapes	
:А*'
_class
loc:@final_dnn/dnn_0/bias*
T0
z
final_dnn/dnn_0/MatMulMatMulconcat_4final_dnn/dnn_0/kernel/read*(
_output_shapes
:         А*
T0
И
final_dnn/dnn_0/BiasAddBiasAddfinal_dnn/dnn_0/MatMulfinal_dnn/dnn_0/bias/read*
T0*(
_output_shapes
:         А
е
)final_dnn/dnn_0/bn/gamma/Initializer/onesConst*
valueBА*  А?*
_output_shapes	
:А*+
_class!
loc:@final_dnn/dnn_0/bn/gamma*
dtype0
П
final_dnn/dnn_0/bn/gamma
VariableV2*+
_class!
loc:@final_dnn/dnn_0/bn/gamma*
shape:А*
dtype0*
_output_shapes	
:А
┴
final_dnn/dnn_0/bn/gamma/AssignAssignfinal_dnn/dnn_0/bn/gamma)final_dnn/dnn_0/bn/gamma/Initializer/ones*
T0*
_output_shapes	
:А*+
_class!
loc:@final_dnn/dnn_0/bn/gamma
Ц
final_dnn/dnn_0/bn/gamma/readIdentityfinal_dnn/dnn_0/bn/gamma*+
_class!
loc:@final_dnn/dnn_0/bn/gamma*
T0*
_output_shapes	
:А
д
)final_dnn/dnn_0/bn/beta/Initializer/zerosConst**
_class 
loc:@final_dnn/dnn_0/bn/beta*
dtype0*
_output_shapes	
:А*
valueBА*    
Н
final_dnn/dnn_0/bn/beta
VariableV2*
dtype0*
_output_shapes	
:А*
shape:А**
_class 
loc:@final_dnn/dnn_0/bn/beta
╛
final_dnn/dnn_0/bn/beta/AssignAssignfinal_dnn/dnn_0/bn/beta)final_dnn/dnn_0/bn/beta/Initializer/zeros**
_class 
loc:@final_dnn/dnn_0/bn/beta*
_output_shapes	
:А*
T0
У
final_dnn/dnn_0/bn/beta/readIdentityfinal_dnn/dnn_0/bn/beta**
_class 
loc:@final_dnn/dnn_0/bn/beta*
T0*
_output_shapes	
:А
▓
0final_dnn/dnn_0/bn/moving_mean/Initializer/zerosConst*
dtype0*1
_class'
%#loc:@final_dnn/dnn_0/bn/moving_mean*
valueBА*    *
_output_shapes	
:А
Ы
final_dnn/dnn_0/bn/moving_mean
VariableV2*
dtype0*
shape:А*
_output_shapes	
:А*1
_class'
%#loc:@final_dnn/dnn_0/bn/moving_mean
┌
%final_dnn/dnn_0/bn/moving_mean/AssignAssignfinal_dnn/dnn_0/bn/moving_mean0final_dnn/dnn_0/bn/moving_mean/Initializer/zeros*
T0*
_output_shapes	
:А*1
_class'
%#loc:@final_dnn/dnn_0/bn/moving_mean
и
#final_dnn/dnn_0/bn/moving_mean/readIdentityfinal_dnn/dnn_0/bn/moving_mean*
T0*
_output_shapes	
:А*1
_class'
%#loc:@final_dnn/dnn_0/bn/moving_mean
╣
3final_dnn/dnn_0/bn/moving_variance/Initializer/onesConst*
_output_shapes	
:А*
dtype0*5
_class+
)'loc:@final_dnn/dnn_0/bn/moving_variance*
valueBА*  А?
г
"final_dnn/dnn_0/bn/moving_variance
VariableV2*
_output_shapes	
:А*5
_class+
)'loc:@final_dnn/dnn_0/bn/moving_variance*
dtype0*
shape:А
щ
)final_dnn/dnn_0/bn/moving_variance/AssignAssign"final_dnn/dnn_0/bn/moving_variance3final_dnn/dnn_0/bn/moving_variance/Initializer/ones*
T0*
_output_shapes	
:А*5
_class+
)'loc:@final_dnn/dnn_0/bn/moving_variance
┤
'final_dnn/dnn_0/bn/moving_variance/readIdentity"final_dnn/dnn_0/bn/moving_variance*
_output_shapes	
:А*5
_class+
)'loc:@final_dnn/dnn_0/bn/moving_variance*
T0
g
"final_dnn/dnn_0/bn/batchnorm/add/yConst*
_output_shapes
: *
valueB
 *oГ:*
dtype0
Ъ
 final_dnn/dnn_0/bn/batchnorm/addAdd'final_dnn/dnn_0/bn/moving_variance/read"final_dnn/dnn_0/bn/batchnorm/add/y*
_output_shapes	
:А*
T0
s
"final_dnn/dnn_0/bn/batchnorm/RsqrtRsqrt final_dnn/dnn_0/bn/batchnorm/add*
T0*
_output_shapes	
:А
Р
 final_dnn/dnn_0/bn/batchnorm/mulMul"final_dnn/dnn_0/bn/batchnorm/Rsqrtfinal_dnn/dnn_0/bn/gamma/read*
T0*
_output_shapes	
:А
Ч
"final_dnn/dnn_0/bn/batchnorm/mul_1Mulfinal_dnn/dnn_0/BiasAdd final_dnn/dnn_0/bn/batchnorm/mul*
T0*(
_output_shapes
:         А
Ц
"final_dnn/dnn_0/bn/batchnorm/mul_2Mul#final_dnn/dnn_0/bn/moving_mean/read final_dnn/dnn_0/bn/batchnorm/mul*
_output_shapes	
:А*
T0
П
 final_dnn/dnn_0/bn/batchnorm/subSubfinal_dnn/dnn_0/bn/beta/read"final_dnn/dnn_0/bn/batchnorm/mul_2*
_output_shapes	
:А*
T0
в
"final_dnn/dnn_0/bn/batchnorm/add_1Add"final_dnn/dnn_0/bn/batchnorm/mul_1 final_dnn/dnn_0/bn/batchnorm/sub*(
_output_shapes
:         А*
T0
r
final_dnn/dnn_0/actRelu"final_dnn/dnn_0/bn/batchnorm/add_1*(
_output_shapes
:         А*
T0
│
7final_dnn/dnn_1/kernel/Initializer/random_uniform/shapeConst*)
_class
loc:@final_dnn/dnn_1/kernel*
dtype0*
_output_shapes
:*
valueB"   └   
е
5final_dnn/dnn_1/kernel/Initializer/random_uniform/minConst*
valueB
 *Мэ╜*)
_class
loc:@final_dnn/dnn_1/kernel*
dtype0*
_output_shapes
: 
е
5final_dnn/dnn_1/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *)
_class
loc:@final_dnn/dnn_1/kernel*
valueB
 *Мэ=
ь
?final_dnn/dnn_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform7final_dnn/dnn_1/kernel/Initializer/random_uniform/shape*)
_class
loc:@final_dnn/dnn_1/kernel* 
_output_shapes
:
А└*
dtype0*
T0
Ў
5final_dnn/dnn_1/kernel/Initializer/random_uniform/subSub5final_dnn/dnn_1/kernel/Initializer/random_uniform/max5final_dnn/dnn_1/kernel/Initializer/random_uniform/min*)
_class
loc:@final_dnn/dnn_1/kernel*
T0*
_output_shapes
: 
К
5final_dnn/dnn_1/kernel/Initializer/random_uniform/mulMul?final_dnn/dnn_1/kernel/Initializer/random_uniform/RandomUniform5final_dnn/dnn_1/kernel/Initializer/random_uniform/sub*
T0* 
_output_shapes
:
А└*)
_class
loc:@final_dnn/dnn_1/kernel
№
1final_dnn/dnn_1/kernel/Initializer/random_uniformAdd5final_dnn/dnn_1/kernel/Initializer/random_uniform/mul5final_dnn/dnn_1/kernel/Initializer/random_uniform/min*
T0*)
_class
loc:@final_dnn/dnn_1/kernel* 
_output_shapes
:
А└
Х
final_dnn/dnn_1/kernel
VariableV2*
dtype0*)
_class
loc:@final_dnn/dnn_1/kernel* 
_output_shapes
:
А└*
shape:
А└
╚
final_dnn/dnn_1/kernel/AssignAssignfinal_dnn/dnn_1/kernel1final_dnn/dnn_1/kernel/Initializer/random_uniform* 
_output_shapes
:
А└*
T0*)
_class
loc:@final_dnn/dnn_1/kernel
Х
final_dnn/dnn_1/kernel/readIdentityfinal_dnn/dnn_1/kernel*
T0* 
_output_shapes
:
А└*)
_class
loc:@final_dnn/dnn_1/kernel
|
7final_dnn/dnn_1/kernel/Regularizer/l2_regularizer/scaleConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8
А
8final_dnn/dnn_1/kernel/Regularizer/l2_regularizer/L2LossL2Lossfinal_dnn/dnn_1/kernel/read*
_output_shapes
: *
T0
╠
1final_dnn/dnn_1/kernel/Regularizer/l2_regularizerMul7final_dnn/dnn_1/kernel/Regularizer/l2_regularizer/scale8final_dnn/dnn_1/kernel/Regularizer/l2_regularizer/L2Loss*
_output_shapes
: *
T0
Ю
&final_dnn/dnn_1/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:└*
valueB└*    *'
_class
loc:@final_dnn/dnn_1/bias
З
final_dnn/dnn_1/bias
VariableV2*
_output_shapes	
:└*
shape:└*
dtype0*'
_class
loc:@final_dnn/dnn_1/bias
▓
final_dnn/dnn_1/bias/AssignAssignfinal_dnn/dnn_1/bias&final_dnn/dnn_1/bias/Initializer/zeros*'
_class
loc:@final_dnn/dnn_1/bias*
_output_shapes	
:└*
T0
К
final_dnn/dnn_1/bias/readIdentityfinal_dnn/dnn_1/bias*'
_class
loc:@final_dnn/dnn_1/bias*
T0*
_output_shapes	
:└
Е
final_dnn/dnn_1/MatMulMatMulfinal_dnn/dnn_0/actfinal_dnn/dnn_1/kernel/read*(
_output_shapes
:         └*
T0
И
final_dnn/dnn_1/BiasAddBiasAddfinal_dnn/dnn_1/MatMulfinal_dnn/dnn_1/bias/read*
T0*(
_output_shapes
:         └
е
)final_dnn/dnn_1/bn/gamma/Initializer/onesConst*
valueB└*  А?*+
_class!
loc:@final_dnn/dnn_1/bn/gamma*
dtype0*
_output_shapes	
:└
П
final_dnn/dnn_1/bn/gamma
VariableV2*+
_class!
loc:@final_dnn/dnn_1/bn/gamma*
dtype0*
_output_shapes	
:└*
shape:└
┴
final_dnn/dnn_1/bn/gamma/AssignAssignfinal_dnn/dnn_1/bn/gamma)final_dnn/dnn_1/bn/gamma/Initializer/ones*+
_class!
loc:@final_dnn/dnn_1/bn/gamma*
_output_shapes	
:└*
T0
Ц
final_dnn/dnn_1/bn/gamma/readIdentityfinal_dnn/dnn_1/bn/gamma*
_output_shapes	
:└*
T0*+
_class!
loc:@final_dnn/dnn_1/bn/gamma
д
)final_dnn/dnn_1/bn/beta/Initializer/zerosConst**
_class 
loc:@final_dnn/dnn_1/bn/beta*
_output_shapes	
:└*
valueB└*    *
dtype0
Н
final_dnn/dnn_1/bn/beta
VariableV2*
_output_shapes	
:└*
dtype0**
_class 
loc:@final_dnn/dnn_1/bn/beta*
shape:└
╛
final_dnn/dnn_1/bn/beta/AssignAssignfinal_dnn/dnn_1/bn/beta)final_dnn/dnn_1/bn/beta/Initializer/zeros*
T0**
_class 
loc:@final_dnn/dnn_1/bn/beta*
_output_shapes	
:└
У
final_dnn/dnn_1/bn/beta/readIdentityfinal_dnn/dnn_1/bn/beta*
_output_shapes	
:└**
_class 
loc:@final_dnn/dnn_1/bn/beta*
T0
▓
0final_dnn/dnn_1/bn/moving_mean/Initializer/zerosConst*
valueB└*    *1
_class'
%#loc:@final_dnn/dnn_1/bn/moving_mean*
_output_shapes	
:└*
dtype0
Ы
final_dnn/dnn_1/bn/moving_mean
VariableV2*
dtype0*1
_class'
%#loc:@final_dnn/dnn_1/bn/moving_mean*
_output_shapes	
:└*
shape:└
┌
%final_dnn/dnn_1/bn/moving_mean/AssignAssignfinal_dnn/dnn_1/bn/moving_mean0final_dnn/dnn_1/bn/moving_mean/Initializer/zeros*
T0*
_output_shapes	
:└*1
_class'
%#loc:@final_dnn/dnn_1/bn/moving_mean
и
#final_dnn/dnn_1/bn/moving_mean/readIdentityfinal_dnn/dnn_1/bn/moving_mean*
T0*
_output_shapes	
:└*1
_class'
%#loc:@final_dnn/dnn_1/bn/moving_mean
╣
3final_dnn/dnn_1/bn/moving_variance/Initializer/onesConst*5
_class+
)'loc:@final_dnn/dnn_1/bn/moving_variance*
dtype0*
_output_shapes	
:└*
valueB└*  А?
г
"final_dnn/dnn_1/bn/moving_variance
VariableV2*
dtype0*
shape:└*5
_class+
)'loc:@final_dnn/dnn_1/bn/moving_variance*
_output_shapes	
:└
щ
)final_dnn/dnn_1/bn/moving_variance/AssignAssign"final_dnn/dnn_1/bn/moving_variance3final_dnn/dnn_1/bn/moving_variance/Initializer/ones*5
_class+
)'loc:@final_dnn/dnn_1/bn/moving_variance*
_output_shapes	
:└*
T0
┤
'final_dnn/dnn_1/bn/moving_variance/readIdentity"final_dnn/dnn_1/bn/moving_variance*
_output_shapes	
:└*
T0*5
_class+
)'loc:@final_dnn/dnn_1/bn/moving_variance
g
"final_dnn/dnn_1/bn/batchnorm/add/yConst*
dtype0*
_output_shapes
: *
valueB
 *oГ:
Ъ
 final_dnn/dnn_1/bn/batchnorm/addAdd'final_dnn/dnn_1/bn/moving_variance/read"final_dnn/dnn_1/bn/batchnorm/add/y*
T0*
_output_shapes	
:└
s
"final_dnn/dnn_1/bn/batchnorm/RsqrtRsqrt final_dnn/dnn_1/bn/batchnorm/add*
T0*
_output_shapes	
:└
Р
 final_dnn/dnn_1/bn/batchnorm/mulMul"final_dnn/dnn_1/bn/batchnorm/Rsqrtfinal_dnn/dnn_1/bn/gamma/read*
T0*
_output_shapes	
:└
Ч
"final_dnn/dnn_1/bn/batchnorm/mul_1Mulfinal_dnn/dnn_1/BiasAdd final_dnn/dnn_1/bn/batchnorm/mul*(
_output_shapes
:         └*
T0
Ц
"final_dnn/dnn_1/bn/batchnorm/mul_2Mul#final_dnn/dnn_1/bn/moving_mean/read final_dnn/dnn_1/bn/batchnorm/mul*
_output_shapes	
:└*
T0
П
 final_dnn/dnn_1/bn/batchnorm/subSubfinal_dnn/dnn_1/bn/beta/read"final_dnn/dnn_1/bn/batchnorm/mul_2*
T0*
_output_shapes	
:└
в
"final_dnn/dnn_1/bn/batchnorm/add_1Add"final_dnn/dnn_1/bn/batchnorm/mul_1 final_dnn/dnn_1/bn/batchnorm/sub*
T0*(
_output_shapes
:         └
r
final_dnn/dnn_1/actRelu"final_dnn/dnn_1/bn/batchnorm/add_1*(
_output_shapes
:         └*
T0
│
7final_dnn/dnn_2/kernel/Initializer/random_uniform/shapeConst*)
_class
loc:@final_dnn/dnn_2/kernel*
valueB"└   А   *
dtype0*
_output_shapes
:
е
5final_dnn/dnn_2/kernel/Initializer/random_uniform/minConst*
valueB
 *М7╛*
_output_shapes
: *)
_class
loc:@final_dnn/dnn_2/kernel*
dtype0
е
5final_dnn/dnn_2/kernel/Initializer/random_uniform/maxConst*)
_class
loc:@final_dnn/dnn_2/kernel*
dtype0*
valueB
 *М7>*
_output_shapes
: 
ь
?final_dnn/dnn_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform7final_dnn/dnn_2/kernel/Initializer/random_uniform/shape*)
_class
loc:@final_dnn/dnn_2/kernel*
T0*
dtype0* 
_output_shapes
:
└А
Ў
5final_dnn/dnn_2/kernel/Initializer/random_uniform/subSub5final_dnn/dnn_2/kernel/Initializer/random_uniform/max5final_dnn/dnn_2/kernel/Initializer/random_uniform/min*)
_class
loc:@final_dnn/dnn_2/kernel*
_output_shapes
: *
T0
К
5final_dnn/dnn_2/kernel/Initializer/random_uniform/mulMul?final_dnn/dnn_2/kernel/Initializer/random_uniform/RandomUniform5final_dnn/dnn_2/kernel/Initializer/random_uniform/sub*
T0*)
_class
loc:@final_dnn/dnn_2/kernel* 
_output_shapes
:
└А
№
1final_dnn/dnn_2/kernel/Initializer/random_uniformAdd5final_dnn/dnn_2/kernel/Initializer/random_uniform/mul5final_dnn/dnn_2/kernel/Initializer/random_uniform/min*
T0* 
_output_shapes
:
└А*)
_class
loc:@final_dnn/dnn_2/kernel
Х
final_dnn/dnn_2/kernel
VariableV2*)
_class
loc:@final_dnn/dnn_2/kernel*
dtype0* 
_output_shapes
:
└А*
shape:
└А
╚
final_dnn/dnn_2/kernel/AssignAssignfinal_dnn/dnn_2/kernel1final_dnn/dnn_2/kernel/Initializer/random_uniform*
T0*)
_class
loc:@final_dnn/dnn_2/kernel* 
_output_shapes
:
└А
Х
final_dnn/dnn_2/kernel/readIdentityfinal_dnn/dnn_2/kernel*)
_class
loc:@final_dnn/dnn_2/kernel* 
_output_shapes
:
└А*
T0
|
7final_dnn/dnn_2/kernel/Regularizer/l2_regularizer/scaleConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8
А
8final_dnn/dnn_2/kernel/Regularizer/l2_regularizer/L2LossL2Lossfinal_dnn/dnn_2/kernel/read*
T0*
_output_shapes
: 
╠
1final_dnn/dnn_2/kernel/Regularizer/l2_regularizerMul7final_dnn/dnn_2/kernel/Regularizer/l2_regularizer/scale8final_dnn/dnn_2/kernel/Regularizer/l2_regularizer/L2Loss*
_output_shapes
: *
T0
Ю
&final_dnn/dnn_2/bias/Initializer/zerosConst*'
_class
loc:@final_dnn/dnn_2/bias*
_output_shapes	
:А*
valueBА*    *
dtype0
З
final_dnn/dnn_2/bias
VariableV2*'
_class
loc:@final_dnn/dnn_2/bias*
shape:А*
_output_shapes	
:А*
dtype0
▓
final_dnn/dnn_2/bias/AssignAssignfinal_dnn/dnn_2/bias&final_dnn/dnn_2/bias/Initializer/zeros*
T0*
_output_shapes	
:А*'
_class
loc:@final_dnn/dnn_2/bias
К
final_dnn/dnn_2/bias/readIdentityfinal_dnn/dnn_2/bias*'
_class
loc:@final_dnn/dnn_2/bias*
T0*
_output_shapes	
:А
Е
final_dnn/dnn_2/MatMulMatMulfinal_dnn/dnn_1/actfinal_dnn/dnn_2/kernel/read*
T0*(
_output_shapes
:         А
И
final_dnn/dnn_2/BiasAddBiasAddfinal_dnn/dnn_2/MatMulfinal_dnn/dnn_2/bias/read*(
_output_shapes
:         А*
T0
е
)final_dnn/dnn_2/bn/gamma/Initializer/onesConst*+
_class!
loc:@final_dnn/dnn_2/bn/gamma*
valueBА*  А?*
dtype0*
_output_shapes	
:А
П
final_dnn/dnn_2/bn/gamma
VariableV2*
shape:А*
dtype0*
_output_shapes	
:А*+
_class!
loc:@final_dnn/dnn_2/bn/gamma
┴
final_dnn/dnn_2/bn/gamma/AssignAssignfinal_dnn/dnn_2/bn/gamma)final_dnn/dnn_2/bn/gamma/Initializer/ones*+
_class!
loc:@final_dnn/dnn_2/bn/gamma*
T0*
_output_shapes	
:А
Ц
final_dnn/dnn_2/bn/gamma/readIdentityfinal_dnn/dnn_2/bn/gamma*
_output_shapes	
:А*
T0*+
_class!
loc:@final_dnn/dnn_2/bn/gamma
д
)final_dnn/dnn_2/bn/beta/Initializer/zerosConst**
_class 
loc:@final_dnn/dnn_2/bn/beta*
_output_shapes	
:А*
dtype0*
valueBА*    
Н
final_dnn/dnn_2/bn/beta
VariableV2**
_class 
loc:@final_dnn/dnn_2/bn/beta*
dtype0*
shape:А*
_output_shapes	
:А
╛
final_dnn/dnn_2/bn/beta/AssignAssignfinal_dnn/dnn_2/bn/beta)final_dnn/dnn_2/bn/beta/Initializer/zeros**
_class 
loc:@final_dnn/dnn_2/bn/beta*
_output_shapes	
:А*
T0
У
final_dnn/dnn_2/bn/beta/readIdentityfinal_dnn/dnn_2/bn/beta**
_class 
loc:@final_dnn/dnn_2/bn/beta*
T0*
_output_shapes	
:А
▓
0final_dnn/dnn_2/bn/moving_mean/Initializer/zerosConst*1
_class'
%#loc:@final_dnn/dnn_2/bn/moving_mean*
_output_shapes	
:А*
valueBА*    *
dtype0
Ы
final_dnn/dnn_2/bn/moving_mean
VariableV2*
dtype0*1
_class'
%#loc:@final_dnn/dnn_2/bn/moving_mean*
shape:А*
_output_shapes	
:А
┌
%final_dnn/dnn_2/bn/moving_mean/AssignAssignfinal_dnn/dnn_2/bn/moving_mean0final_dnn/dnn_2/bn/moving_mean/Initializer/zeros*
_output_shapes	
:А*1
_class'
%#loc:@final_dnn/dnn_2/bn/moving_mean*
T0
и
#final_dnn/dnn_2/bn/moving_mean/readIdentityfinal_dnn/dnn_2/bn/moving_mean*
_output_shapes	
:А*1
_class'
%#loc:@final_dnn/dnn_2/bn/moving_mean*
T0
╣
3final_dnn/dnn_2/bn/moving_variance/Initializer/onesConst*
_output_shapes	
:А*5
_class+
)'loc:@final_dnn/dnn_2/bn/moving_variance*
dtype0*
valueBА*  А?
г
"final_dnn/dnn_2/bn/moving_variance
VariableV2*5
_class+
)'loc:@final_dnn/dnn_2/bn/moving_variance*
dtype0*
_output_shapes	
:А*
shape:А
щ
)final_dnn/dnn_2/bn/moving_variance/AssignAssign"final_dnn/dnn_2/bn/moving_variance3final_dnn/dnn_2/bn/moving_variance/Initializer/ones*
_output_shapes	
:А*
T0*5
_class+
)'loc:@final_dnn/dnn_2/bn/moving_variance
┤
'final_dnn/dnn_2/bn/moving_variance/readIdentity"final_dnn/dnn_2/bn/moving_variance*
_output_shapes	
:А*
T0*5
_class+
)'loc:@final_dnn/dnn_2/bn/moving_variance
g
"final_dnn/dnn_2/bn/batchnorm/add/yConst*
valueB
 *oГ:*
dtype0*
_output_shapes
: 
Ъ
 final_dnn/dnn_2/bn/batchnorm/addAdd'final_dnn/dnn_2/bn/moving_variance/read"final_dnn/dnn_2/bn/batchnorm/add/y*
T0*
_output_shapes	
:А
s
"final_dnn/dnn_2/bn/batchnorm/RsqrtRsqrt final_dnn/dnn_2/bn/batchnorm/add*
_output_shapes	
:А*
T0
Р
 final_dnn/dnn_2/bn/batchnorm/mulMul"final_dnn/dnn_2/bn/batchnorm/Rsqrtfinal_dnn/dnn_2/bn/gamma/read*
T0*
_output_shapes	
:А
Ч
"final_dnn/dnn_2/bn/batchnorm/mul_1Mulfinal_dnn/dnn_2/BiasAdd final_dnn/dnn_2/bn/batchnorm/mul*
T0*(
_output_shapes
:         А
Ц
"final_dnn/dnn_2/bn/batchnorm/mul_2Mul#final_dnn/dnn_2/bn/moving_mean/read final_dnn/dnn_2/bn/batchnorm/mul*
_output_shapes	
:А*
T0
П
 final_dnn/dnn_2/bn/batchnorm/subSubfinal_dnn/dnn_2/bn/beta/read"final_dnn/dnn_2/bn/batchnorm/mul_2*
_output_shapes	
:А*
T0
в
"final_dnn/dnn_2/bn/batchnorm/add_1Add"final_dnn/dnn_2/bn/batchnorm/mul_1 final_dnn/dnn_2/bn/batchnorm/sub*(
_output_shapes
:         А*
T0
r
final_dnn/dnn_2/actRelu"final_dnn/dnn_2/bn/batchnorm/add_1*
T0*(
_output_shapes
:         А
│
7final_dnn/dnn_3/kernel/Initializer/random_uniform/shapeConst*
valueB"А   @   *)
_class
loc:@final_dnn/dnn_3/kernel*
_output_shapes
:*
dtype0
е
5final_dnn/dnn_3/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *)
_class
loc:@final_dnn/dnn_3/kernel*
valueB
 *є5╛
е
5final_dnn/dnn_3/kernel/Initializer/random_uniform/maxConst*
dtype0*
valueB
 *є5>*
_output_shapes
: *)
_class
loc:@final_dnn/dnn_3/kernel
ы
?final_dnn/dnn_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform7final_dnn/dnn_3/kernel/Initializer/random_uniform/shape*)
_class
loc:@final_dnn/dnn_3/kernel*
T0*
_output_shapes
:	А@*
dtype0
Ў
5final_dnn/dnn_3/kernel/Initializer/random_uniform/subSub5final_dnn/dnn_3/kernel/Initializer/random_uniform/max5final_dnn/dnn_3/kernel/Initializer/random_uniform/min*
T0*
_output_shapes
: *)
_class
loc:@final_dnn/dnn_3/kernel
Й
5final_dnn/dnn_3/kernel/Initializer/random_uniform/mulMul?final_dnn/dnn_3/kernel/Initializer/random_uniform/RandomUniform5final_dnn/dnn_3/kernel/Initializer/random_uniform/sub*
T0*)
_class
loc:@final_dnn/dnn_3/kernel*
_output_shapes
:	А@
√
1final_dnn/dnn_3/kernel/Initializer/random_uniformAdd5final_dnn/dnn_3/kernel/Initializer/random_uniform/mul5final_dnn/dnn_3/kernel/Initializer/random_uniform/min*
T0*
_output_shapes
:	А@*)
_class
loc:@final_dnn/dnn_3/kernel
У
final_dnn/dnn_3/kernel
VariableV2*)
_class
loc:@final_dnn/dnn_3/kernel*
_output_shapes
:	А@*
dtype0*
shape:	А@
╟
final_dnn/dnn_3/kernel/AssignAssignfinal_dnn/dnn_3/kernel1final_dnn/dnn_3/kernel/Initializer/random_uniform*
_output_shapes
:	А@*
T0*)
_class
loc:@final_dnn/dnn_3/kernel
Ф
final_dnn/dnn_3/kernel/readIdentityfinal_dnn/dnn_3/kernel*
T0*)
_class
loc:@final_dnn/dnn_3/kernel*
_output_shapes
:	А@
|
7final_dnn/dnn_3/kernel/Regularizer/l2_regularizer/scaleConst*
dtype0*
valueB
 *╖╤8*
_output_shapes
: 
А
8final_dnn/dnn_3/kernel/Regularizer/l2_regularizer/L2LossL2Lossfinal_dnn/dnn_3/kernel/read*
T0*
_output_shapes
: 
╠
1final_dnn/dnn_3/kernel/Regularizer/l2_regularizerMul7final_dnn/dnn_3/kernel/Regularizer/l2_regularizer/scale8final_dnn/dnn_3/kernel/Regularizer/l2_regularizer/L2Loss*
_output_shapes
: *
T0
Ь
&final_dnn/dnn_3/bias/Initializer/zerosConst*
valueB@*    *'
_class
loc:@final_dnn/dnn_3/bias*
_output_shapes
:@*
dtype0
Е
final_dnn/dnn_3/bias
VariableV2*
shape:@*
_output_shapes
:@*'
_class
loc:@final_dnn/dnn_3/bias*
dtype0
▒
final_dnn/dnn_3/bias/AssignAssignfinal_dnn/dnn_3/bias&final_dnn/dnn_3/bias/Initializer/zeros*
T0*'
_class
loc:@final_dnn/dnn_3/bias*
_output_shapes
:@
Й
final_dnn/dnn_3/bias/readIdentityfinal_dnn/dnn_3/bias*'
_class
loc:@final_dnn/dnn_3/bias*
T0*
_output_shapes
:@
Д
final_dnn/dnn_3/MatMulMatMulfinal_dnn/dnn_2/actfinal_dnn/dnn_3/kernel/read*
T0*'
_output_shapes
:         @
З
final_dnn/dnn_3/BiasAddBiasAddfinal_dnn/dnn_3/MatMulfinal_dnn/dnn_3/bias/read*
T0*'
_output_shapes
:         @
г
)final_dnn/dnn_3/bn/gamma/Initializer/onesConst*
_output_shapes
:@*
valueB@*  А?*+
_class!
loc:@final_dnn/dnn_3/bn/gamma*
dtype0
Н
final_dnn/dnn_3/bn/gamma
VariableV2*
_output_shapes
:@*+
_class!
loc:@final_dnn/dnn_3/bn/gamma*
dtype0*
shape:@
└
final_dnn/dnn_3/bn/gamma/AssignAssignfinal_dnn/dnn_3/bn/gamma)final_dnn/dnn_3/bn/gamma/Initializer/ones*
T0*+
_class!
loc:@final_dnn/dnn_3/bn/gamma*
_output_shapes
:@
Х
final_dnn/dnn_3/bn/gamma/readIdentityfinal_dnn/dnn_3/bn/gamma*
_output_shapes
:@*+
_class!
loc:@final_dnn/dnn_3/bn/gamma*
T0
в
)final_dnn/dnn_3/bn/beta/Initializer/zerosConst*
valueB@*    *
_output_shapes
:@*
dtype0**
_class 
loc:@final_dnn/dnn_3/bn/beta
Л
final_dnn/dnn_3/bn/beta
VariableV2*
_output_shapes
:@**
_class 
loc:@final_dnn/dnn_3/bn/beta*
shape:@*
dtype0
╜
final_dnn/dnn_3/bn/beta/AssignAssignfinal_dnn/dnn_3/bn/beta)final_dnn/dnn_3/bn/beta/Initializer/zeros**
_class 
loc:@final_dnn/dnn_3/bn/beta*
T0*
_output_shapes
:@
Т
final_dnn/dnn_3/bn/beta/readIdentityfinal_dnn/dnn_3/bn/beta*
_output_shapes
:@*
T0**
_class 
loc:@final_dnn/dnn_3/bn/beta
░
0final_dnn/dnn_3/bn/moving_mean/Initializer/zerosConst*
_output_shapes
:@*
dtype0*
valueB@*    *1
_class'
%#loc:@final_dnn/dnn_3/bn/moving_mean
Щ
final_dnn/dnn_3/bn/moving_mean
VariableV2*
_output_shapes
:@*1
_class'
%#loc:@final_dnn/dnn_3/bn/moving_mean*
dtype0*
shape:@
┘
%final_dnn/dnn_3/bn/moving_mean/AssignAssignfinal_dnn/dnn_3/bn/moving_mean0final_dnn/dnn_3/bn/moving_mean/Initializer/zeros*
T0*1
_class'
%#loc:@final_dnn/dnn_3/bn/moving_mean*
_output_shapes
:@
з
#final_dnn/dnn_3/bn/moving_mean/readIdentityfinal_dnn/dnn_3/bn/moving_mean*
T0*
_output_shapes
:@*1
_class'
%#loc:@final_dnn/dnn_3/bn/moving_mean
╖
3final_dnn/dnn_3/bn/moving_variance/Initializer/onesConst*5
_class+
)'loc:@final_dnn/dnn_3/bn/moving_variance*
_output_shapes
:@*
dtype0*
valueB@*  А?
б
"final_dnn/dnn_3/bn/moving_variance
VariableV2*5
_class+
)'loc:@final_dnn/dnn_3/bn/moving_variance*
_output_shapes
:@*
shape:@*
dtype0
ш
)final_dnn/dnn_3/bn/moving_variance/AssignAssign"final_dnn/dnn_3/bn/moving_variance3final_dnn/dnn_3/bn/moving_variance/Initializer/ones*
_output_shapes
:@*5
_class+
)'loc:@final_dnn/dnn_3/bn/moving_variance*
T0
│
'final_dnn/dnn_3/bn/moving_variance/readIdentity"final_dnn/dnn_3/bn/moving_variance*
T0*5
_class+
)'loc:@final_dnn/dnn_3/bn/moving_variance*
_output_shapes
:@
g
"final_dnn/dnn_3/bn/batchnorm/add/yConst*
dtype0*
_output_shapes
: *
valueB
 *oГ:
Щ
 final_dnn/dnn_3/bn/batchnorm/addAdd'final_dnn/dnn_3/bn/moving_variance/read"final_dnn/dnn_3/bn/batchnorm/add/y*
T0*
_output_shapes
:@
r
"final_dnn/dnn_3/bn/batchnorm/RsqrtRsqrt final_dnn/dnn_3/bn/batchnorm/add*
_output_shapes
:@*
T0
П
 final_dnn/dnn_3/bn/batchnorm/mulMul"final_dnn/dnn_3/bn/batchnorm/Rsqrtfinal_dnn/dnn_3/bn/gamma/read*
_output_shapes
:@*
T0
Ц
"final_dnn/dnn_3/bn/batchnorm/mul_1Mulfinal_dnn/dnn_3/BiasAdd final_dnn/dnn_3/bn/batchnorm/mul*'
_output_shapes
:         @*
T0
Х
"final_dnn/dnn_3/bn/batchnorm/mul_2Mul#final_dnn/dnn_3/bn/moving_mean/read final_dnn/dnn_3/bn/batchnorm/mul*
T0*
_output_shapes
:@
О
 final_dnn/dnn_3/bn/batchnorm/subSubfinal_dnn/dnn_3/bn/beta/read"final_dnn/dnn_3/bn/batchnorm/mul_2*
_output_shapes
:@*
T0
б
"final_dnn/dnn_3/bn/batchnorm/add_1Add"final_dnn/dnn_3/bn/batchnorm/mul_1 final_dnn/dnn_3/bn/batchnorm/sub*'
_output_shapes
:         @*
T0
q
final_dnn/dnn_3/actRelu"final_dnn/dnn_3/bn/batchnorm/add_1*'
_output_shapes
:         @*
T0
б
.output/kernel/Initializer/random_uniform/shapeConst* 
_class
loc:@output/kernel*
dtype0*
valueB"@      *
_output_shapes
:
У
,output/kernel/Initializer/random_uniform/minConst*
valueB
 *ИОЫ╛*
dtype0* 
_class
loc:@output/kernel*
_output_shapes
: 
У
,output/kernel/Initializer/random_uniform/maxConst* 
_class
loc:@output/kernel*
dtype0*
valueB
 *ИОЫ>*
_output_shapes
: 
╧
6output/kernel/Initializer/random_uniform/RandomUniformRandomUniform.output/kernel/Initializer/random_uniform/shape*
_output_shapes

:@* 
_class
loc:@output/kernel*
T0*
dtype0
╥
,output/kernel/Initializer/random_uniform/subSub,output/kernel/Initializer/random_uniform/max,output/kernel/Initializer/random_uniform/min* 
_class
loc:@output/kernel*
T0*
_output_shapes
: 
ф
,output/kernel/Initializer/random_uniform/mulMul6output/kernel/Initializer/random_uniform/RandomUniform,output/kernel/Initializer/random_uniform/sub*
T0*
_output_shapes

:@* 
_class
loc:@output/kernel
╓
(output/kernel/Initializer/random_uniformAdd,output/kernel/Initializer/random_uniform/mul,output/kernel/Initializer/random_uniform/min* 
_class
loc:@output/kernel*
_output_shapes

:@*
T0

output/kernel
VariableV2*
shape
:@*
_output_shapes

:@* 
_class
loc:@output/kernel*
dtype0
в
output/kernel/AssignAssignoutput/kernel(output/kernel/Initializer/random_uniform*
T0*
_output_shapes

:@* 
_class
loc:@output/kernel
x
output/kernel/readIdentityoutput/kernel*
_output_shapes

:@*
T0* 
_class
loc:@output/kernel
К
output/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:*
valueB*    *
_class
loc:@output/bias
s
output/bias
VariableV2*
_class
loc:@output/bias*
shape:*
dtype0*
_output_shapes
:
Н
output/bias/AssignAssignoutput/biasoutput/bias/Initializer/zeros*
_output_shapes
:*
T0*
_class
loc:@output/bias
n
output/bias/readIdentityoutput/bias*
T0*
_output_shapes
:*
_class
loc:@output/bias
r
output/MatMulMatMulfinal_dnn/dnn_3/actoutput/kernel/read*
T0*'
_output_shapes
:         
l
output/BiasAddBiasAddoutput/MatMuloutput/bias/read*
T0*'
_output_shapes
:         
g
SqueezeSqueezeoutput/BiasAdd*#
_output_shapes
:         *
T0*
squeeze_dims

I
SigmoidSigmoidSqueeze*#
_output_shapes
:         *
T0
z
pipeline.configConst*;
value2B0 B*experiments/taobao_fg_demo/pipeline.config*
_output_shapes
: *
dtype0

initNoOp

init_all_tablesNoOp

init_1NoOp
4

group_depsNoOp^init^init_1^init_all_tables
Y
save/filename/inputConst*
valueB Bmodel*
_output_shapes
: *
dtype0
n
save/filenamePlaceholderWithDefaultsave/filename/input*
_output_shapes
: *
dtype0*
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
shape: *
dtype0*
_output_shapes
: 
Д
save/StringJoin/inputs_1Const*
dtype0*<
value3B1 B+_temp_5a091ad324f044fa9872651ae8681e0c/part*
_output_shapes
: 
d
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: 
Q
save/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
k
save/ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
М
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
°
save/SaveV2/tensor_namesConst"/device:CPU:0*Ы
valueСBОГBcombo_dnn/dnn_0/biasBcombo_dnn/dnn_0/bn/betaBcombo_dnn/dnn_0/bn/gammaBcombo_dnn/dnn_0/bn/moving_meanB"combo_dnn/dnn_0/bn/moving_varianceBcombo_dnn/dnn_0/kernelBcombo_dnn/dnn_1/biasBcombo_dnn/dnn_1/bn/betaBcombo_dnn/dnn_1/bn/gammaBcombo_dnn/dnn_1/bn/moving_meanB"combo_dnn/dnn_1/bn/moving_varianceBcombo_dnn/dnn_1/kernelBcombo_dnn/dnn_2/biasBcombo_dnn/dnn_2/bn/betaBcombo_dnn/dnn_2/bn/gammaBcombo_dnn/dnn_2/bn/moving_meanB"combo_dnn/dnn_2/bn/moving_varianceBcombo_dnn/dnn_2/kernelBcombo_dnn/dnn_3/biasBcombo_dnn/dnn_3/bn/betaBcombo_dnn/dnn_3/bn/gammaBcombo_dnn/dnn_3/bn/moving_meanB"combo_dnn/dnn_3/bn/moving_varianceBcombo_dnn/dnn_3/kernelBcombo_fea_bn/betaBcombo_fea_bn/gammaBcombo_fea_bn/moving_meanBcombo_fea_bn/moving_varianceBfinal_dnn/dnn_0/biasBfinal_dnn/dnn_0/bn/betaBfinal_dnn/dnn_0/bn/gammaBfinal_dnn/dnn_0/bn/moving_meanB"final_dnn/dnn_0/bn/moving_varianceBfinal_dnn/dnn_0/kernelBfinal_dnn/dnn_1/biasBfinal_dnn/dnn_1/bn/betaBfinal_dnn/dnn_1/bn/gammaBfinal_dnn/dnn_1/bn/moving_meanB"final_dnn/dnn_1/bn/moving_varianceBfinal_dnn/dnn_1/kernelBfinal_dnn/dnn_2/biasBfinal_dnn/dnn_2/bn/betaBfinal_dnn/dnn_2/bn/gammaBfinal_dnn/dnn_2/bn/moving_meanB"final_dnn/dnn_2/bn/moving_varianceBfinal_dnn/dnn_2/kernelBfinal_dnn/dnn_3/biasBfinal_dnn/dnn_3/bn/betaBfinal_dnn/dnn_3/bn/gammaBfinal_dnn/dnn_3/bn/moving_meanB"final_dnn/dnn_3/bn/moving_varianceBfinal_dnn/dnn_3/kernelBglobal_stepB2input_layer/adgroup_id_embedding/embedding_weightsB-input_layer/brand_embedding/embedding_weightsB3input_layer/campaign_id_embedding/embedding_weightsB/input_layer/cate_id_embedding/embedding_weightsB0input_layer/customer_embedding/embedding_weightsB+input_layer/pid_embedding/embedding_weightsB3input_layer_1/age_level_embedding/embedding_weightsB6input_layer_1/cms_group_id_embedding/embedding_weightsB3input_layer_1/cms_segid_embedding/embedding_weightsB>input_layer_1/new_user_class_level_embedding/embedding_weightsB4input_layer_1/occupation_embedding/embedding_weightsB6input_layer_1/pvalue_level_embedding/embedding_weightsB8input_layer_1/shopping_level_embedding/embedding_weightsB1input_layer_1/user_id_embedding/embedding_weightsB1input_layer_1/user_id_embedding/embedding_weightsB1input_layer_1/user_id_embedding/embedding_weightsB1input_layer_1/user_id_embedding/embedding_weightsB7input_layer_1/user_tag_cate_embedding/embedding_weightsB5input_layer_2/combo_brand_embedding/embedding_weightsB7input_layer_2/combo_cate_id_embedding/embedding_weightsBitem_dnn/dnn_0/biasBitem_dnn/dnn_0/bn/betaBitem_dnn/dnn_0/bn/gammaBitem_dnn/dnn_0/bn/moving_meanB!item_dnn/dnn_0/bn/moving_varianceBitem_dnn/dnn_0/kernelBitem_dnn/dnn_1/biasBitem_dnn/dnn_1/bn/betaBitem_dnn/dnn_1/bn/gammaBitem_dnn/dnn_1/bn/moving_meanB!item_dnn/dnn_1/bn/moving_varianceBitem_dnn/dnn_1/kernelBitem_dnn/dnn_2/biasBitem_dnn/dnn_2/bn/betaBitem_dnn/dnn_2/bn/gammaBitem_dnn/dnn_2/bn/moving_meanB!item_dnn/dnn_2/bn/moving_varianceBitem_dnn/dnn_2/kernelBitem_dnn/dnn_3/biasBitem_dnn/dnn_3/bn/betaBitem_dnn/dnn_3/bn/gammaBitem_dnn/dnn_3/bn/moving_meanB!item_dnn/dnn_3/bn/moving_varianceBitem_dnn/dnn_3/kernelBitem_fea_bn/betaBitem_fea_bn/gammaBitem_fea_bn/moving_meanBitem_fea_bn/moving_varianceBoutput/biasBoutput/kernelBuser_dnn/dnn_0/biasBuser_dnn/dnn_0/bn/betaBuser_dnn/dnn_0/bn/gammaBuser_dnn/dnn_0/bn/moving_meanB!user_dnn/dnn_0/bn/moving_varianceBuser_dnn/dnn_0/kernelBuser_dnn/dnn_1/biasBuser_dnn/dnn_1/bn/betaBuser_dnn/dnn_1/bn/gammaBuser_dnn/dnn_1/bn/moving_meanB!user_dnn/dnn_1/bn/moving_varianceBuser_dnn/dnn_1/kernelBuser_dnn/dnn_2/biasBuser_dnn/dnn_2/bn/betaBuser_dnn/dnn_2/bn/gammaBuser_dnn/dnn_2/bn/moving_meanB!user_dnn/dnn_2/bn/moving_varianceBuser_dnn/dnn_2/kernelBuser_dnn/dnn_3/biasBuser_dnn/dnn_3/bn/betaBuser_dnn/dnn_3/bn/gammaBuser_dnn/dnn_3/bn/moving_meanB!user_dnn/dnn_3/bn/moving_varianceBuser_dnn/dnn_3/kernelBuser_fea_bn/betaBuser_fea_bn/gammaBuser_fea_bn/moving_meanBuser_fea_bn/moving_variance*
dtype0*
_output_shapes	
:Г
с
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:Г*
dtype0*А
valueЎBєГB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B100000 16 0,25000:0,16B100000 16 25000,25000:0,16B100000 16 50000,25000:0,16B100000 16 75000,25000:0,16B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
╛!
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicescombo_dnn/dnn_0/biascombo_dnn/dnn_0/bn/betacombo_dnn/dnn_0/bn/gammacombo_dnn/dnn_0/bn/moving_mean"combo_dnn/dnn_0/bn/moving_variancecombo_dnn/dnn_0/kernelcombo_dnn/dnn_1/biascombo_dnn/dnn_1/bn/betacombo_dnn/dnn_1/bn/gammacombo_dnn/dnn_1/bn/moving_mean"combo_dnn/dnn_1/bn/moving_variancecombo_dnn/dnn_1/kernelcombo_dnn/dnn_2/biascombo_dnn/dnn_2/bn/betacombo_dnn/dnn_2/bn/gammacombo_dnn/dnn_2/bn/moving_mean"combo_dnn/dnn_2/bn/moving_variancecombo_dnn/dnn_2/kernelcombo_dnn/dnn_3/biascombo_dnn/dnn_3/bn/betacombo_dnn/dnn_3/bn/gammacombo_dnn/dnn_3/bn/moving_mean"combo_dnn/dnn_3/bn/moving_variancecombo_dnn/dnn_3/kernelcombo_fea_bn/betacombo_fea_bn/gammacombo_fea_bn/moving_meancombo_fea_bn/moving_variancefinal_dnn/dnn_0/biasfinal_dnn/dnn_0/bn/betafinal_dnn/dnn_0/bn/gammafinal_dnn/dnn_0/bn/moving_mean"final_dnn/dnn_0/bn/moving_variancefinal_dnn/dnn_0/kernelfinal_dnn/dnn_1/biasfinal_dnn/dnn_1/bn/betafinal_dnn/dnn_1/bn/gammafinal_dnn/dnn_1/bn/moving_mean"final_dnn/dnn_1/bn/moving_variancefinal_dnn/dnn_1/kernelfinal_dnn/dnn_2/biasfinal_dnn/dnn_2/bn/betafinal_dnn/dnn_2/bn/gammafinal_dnn/dnn_2/bn/moving_mean"final_dnn/dnn_2/bn/moving_variancefinal_dnn/dnn_2/kernelfinal_dnn/dnn_3/biasfinal_dnn/dnn_3/bn/betafinal_dnn/dnn_3/bn/gammafinal_dnn/dnn_3/bn/moving_mean"final_dnn/dnn_3/bn/moving_variancefinal_dnn/dnn_3/kernelglobal_step2input_layer/adgroup_id_embedding/embedding_weights-input_layer/brand_embedding/embedding_weights3input_layer/campaign_id_embedding/embedding_weights/input_layer/cate_id_embedding/embedding_weights0input_layer/customer_embedding/embedding_weights+input_layer/pid_embedding/embedding_weights3input_layer_1/age_level_embedding/embedding_weights6input_layer_1/cms_group_id_embedding/embedding_weights3input_layer_1/cms_segid_embedding/embedding_weights>input_layer_1/new_user_class_level_embedding/embedding_weights4input_layer_1/occupation_embedding/embedding_weights6input_layer_1/pvalue_level_embedding/embedding_weights8input_layer_1/shopping_level_embedding/embedding_weights=input_layer_1/user_id_embedding/embedding_weights/part_0/read=input_layer_1/user_id_embedding/embedding_weights/part_1/read=input_layer_1/user_id_embedding/embedding_weights/part_2/read=input_layer_1/user_id_embedding/embedding_weights/part_3/read7input_layer_1/user_tag_cate_embedding/embedding_weights5input_layer_2/combo_brand_embedding/embedding_weights7input_layer_2/combo_cate_id_embedding/embedding_weightsitem_dnn/dnn_0/biasitem_dnn/dnn_0/bn/betaitem_dnn/dnn_0/bn/gammaitem_dnn/dnn_0/bn/moving_mean!item_dnn/dnn_0/bn/moving_varianceitem_dnn/dnn_0/kernelitem_dnn/dnn_1/biasitem_dnn/dnn_1/bn/betaitem_dnn/dnn_1/bn/gammaitem_dnn/dnn_1/bn/moving_mean!item_dnn/dnn_1/bn/moving_varianceitem_dnn/dnn_1/kernelitem_dnn/dnn_2/biasitem_dnn/dnn_2/bn/betaitem_dnn/dnn_2/bn/gammaitem_dnn/dnn_2/bn/moving_mean!item_dnn/dnn_2/bn/moving_varianceitem_dnn/dnn_2/kernelitem_dnn/dnn_3/biasitem_dnn/dnn_3/bn/betaitem_dnn/dnn_3/bn/gammaitem_dnn/dnn_3/bn/moving_mean!item_dnn/dnn_3/bn/moving_varianceitem_dnn/dnn_3/kernelitem_fea_bn/betaitem_fea_bn/gammaitem_fea_bn/moving_meanitem_fea_bn/moving_varianceoutput/biasoutput/kerneluser_dnn/dnn_0/biasuser_dnn/dnn_0/bn/betauser_dnn/dnn_0/bn/gammauser_dnn/dnn_0/bn/moving_mean!user_dnn/dnn_0/bn/moving_varianceuser_dnn/dnn_0/kerneluser_dnn/dnn_1/biasuser_dnn/dnn_1/bn/betauser_dnn/dnn_1/bn/gammauser_dnn/dnn_1/bn/moving_mean!user_dnn/dnn_1/bn/moving_varianceuser_dnn/dnn_1/kerneluser_dnn/dnn_2/biasuser_dnn/dnn_2/bn/betauser_dnn/dnn_2/bn/gammauser_dnn/dnn_2/bn/moving_mean!user_dnn/dnn_2/bn/moving_varianceuser_dnn/dnn_2/kerneluser_dnn/dnn_3/biasuser_dnn/dnn_3/bn/betauser_dnn/dnn_3/bn/gammauser_dnn/dnn_3/bn/moving_mean!user_dnn/dnn_3/bn/moving_varianceuser_dnn/dnn_3/kerneluser_fea_bn/betauser_fea_bn/gammauser_fea_bn/moving_meanuser_fea_bn/moving_variance"/device:CPU:0*Ф
dtypesЙ
Ж2Г	
а
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*
_output_shapes
: *'
_class
loc:@save/ShardedFilename
а
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
T0*
N*
_output_shapes
:
u
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0
Й
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
_output_shapes
: *
T0
√
save/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:Г*
dtype0*Ы
valueСBОГBcombo_dnn/dnn_0/biasBcombo_dnn/dnn_0/bn/betaBcombo_dnn/dnn_0/bn/gammaBcombo_dnn/dnn_0/bn/moving_meanB"combo_dnn/dnn_0/bn/moving_varianceBcombo_dnn/dnn_0/kernelBcombo_dnn/dnn_1/biasBcombo_dnn/dnn_1/bn/betaBcombo_dnn/dnn_1/bn/gammaBcombo_dnn/dnn_1/bn/moving_meanB"combo_dnn/dnn_1/bn/moving_varianceBcombo_dnn/dnn_1/kernelBcombo_dnn/dnn_2/biasBcombo_dnn/dnn_2/bn/betaBcombo_dnn/dnn_2/bn/gammaBcombo_dnn/dnn_2/bn/moving_meanB"combo_dnn/dnn_2/bn/moving_varianceBcombo_dnn/dnn_2/kernelBcombo_dnn/dnn_3/biasBcombo_dnn/dnn_3/bn/betaBcombo_dnn/dnn_3/bn/gammaBcombo_dnn/dnn_3/bn/moving_meanB"combo_dnn/dnn_3/bn/moving_varianceBcombo_dnn/dnn_3/kernelBcombo_fea_bn/betaBcombo_fea_bn/gammaBcombo_fea_bn/moving_meanBcombo_fea_bn/moving_varianceBfinal_dnn/dnn_0/biasBfinal_dnn/dnn_0/bn/betaBfinal_dnn/dnn_0/bn/gammaBfinal_dnn/dnn_0/bn/moving_meanB"final_dnn/dnn_0/bn/moving_varianceBfinal_dnn/dnn_0/kernelBfinal_dnn/dnn_1/biasBfinal_dnn/dnn_1/bn/betaBfinal_dnn/dnn_1/bn/gammaBfinal_dnn/dnn_1/bn/moving_meanB"final_dnn/dnn_1/bn/moving_varianceBfinal_dnn/dnn_1/kernelBfinal_dnn/dnn_2/biasBfinal_dnn/dnn_2/bn/betaBfinal_dnn/dnn_2/bn/gammaBfinal_dnn/dnn_2/bn/moving_meanB"final_dnn/dnn_2/bn/moving_varianceBfinal_dnn/dnn_2/kernelBfinal_dnn/dnn_3/biasBfinal_dnn/dnn_3/bn/betaBfinal_dnn/dnn_3/bn/gammaBfinal_dnn/dnn_3/bn/moving_meanB"final_dnn/dnn_3/bn/moving_varianceBfinal_dnn/dnn_3/kernelBglobal_stepB2input_layer/adgroup_id_embedding/embedding_weightsB-input_layer/brand_embedding/embedding_weightsB3input_layer/campaign_id_embedding/embedding_weightsB/input_layer/cate_id_embedding/embedding_weightsB0input_layer/customer_embedding/embedding_weightsB+input_layer/pid_embedding/embedding_weightsB3input_layer_1/age_level_embedding/embedding_weightsB6input_layer_1/cms_group_id_embedding/embedding_weightsB3input_layer_1/cms_segid_embedding/embedding_weightsB>input_layer_1/new_user_class_level_embedding/embedding_weightsB4input_layer_1/occupation_embedding/embedding_weightsB6input_layer_1/pvalue_level_embedding/embedding_weightsB8input_layer_1/shopping_level_embedding/embedding_weightsB1input_layer_1/user_id_embedding/embedding_weightsB1input_layer_1/user_id_embedding/embedding_weightsB1input_layer_1/user_id_embedding/embedding_weightsB1input_layer_1/user_id_embedding/embedding_weightsB7input_layer_1/user_tag_cate_embedding/embedding_weightsB5input_layer_2/combo_brand_embedding/embedding_weightsB7input_layer_2/combo_cate_id_embedding/embedding_weightsBitem_dnn/dnn_0/biasBitem_dnn/dnn_0/bn/betaBitem_dnn/dnn_0/bn/gammaBitem_dnn/dnn_0/bn/moving_meanB!item_dnn/dnn_0/bn/moving_varianceBitem_dnn/dnn_0/kernelBitem_dnn/dnn_1/biasBitem_dnn/dnn_1/bn/betaBitem_dnn/dnn_1/bn/gammaBitem_dnn/dnn_1/bn/moving_meanB!item_dnn/dnn_1/bn/moving_varianceBitem_dnn/dnn_1/kernelBitem_dnn/dnn_2/biasBitem_dnn/dnn_2/bn/betaBitem_dnn/dnn_2/bn/gammaBitem_dnn/dnn_2/bn/moving_meanB!item_dnn/dnn_2/bn/moving_varianceBitem_dnn/dnn_2/kernelBitem_dnn/dnn_3/biasBitem_dnn/dnn_3/bn/betaBitem_dnn/dnn_3/bn/gammaBitem_dnn/dnn_3/bn/moving_meanB!item_dnn/dnn_3/bn/moving_varianceBitem_dnn/dnn_3/kernelBitem_fea_bn/betaBitem_fea_bn/gammaBitem_fea_bn/moving_meanBitem_fea_bn/moving_varianceBoutput/biasBoutput/kernelBuser_dnn/dnn_0/biasBuser_dnn/dnn_0/bn/betaBuser_dnn/dnn_0/bn/gammaBuser_dnn/dnn_0/bn/moving_meanB!user_dnn/dnn_0/bn/moving_varianceBuser_dnn/dnn_0/kernelBuser_dnn/dnn_1/biasBuser_dnn/dnn_1/bn/betaBuser_dnn/dnn_1/bn/gammaBuser_dnn/dnn_1/bn/moving_meanB!user_dnn/dnn_1/bn/moving_varianceBuser_dnn/dnn_1/kernelBuser_dnn/dnn_2/biasBuser_dnn/dnn_2/bn/betaBuser_dnn/dnn_2/bn/gammaBuser_dnn/dnn_2/bn/moving_meanB!user_dnn/dnn_2/bn/moving_varianceBuser_dnn/dnn_2/kernelBuser_dnn/dnn_3/biasBuser_dnn/dnn_3/bn/betaBuser_dnn/dnn_3/bn/gammaBuser_dnn/dnn_3/bn/moving_meanB!user_dnn/dnn_3/bn/moving_varianceBuser_dnn/dnn_3/kernelBuser_fea_bn/betaBuser_fea_bn/gammaBuser_fea_bn/moving_meanBuser_fea_bn/moving_variance
ф
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:Г*
dtype0*А
valueЎBєГB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B100000 16 0,25000:0,16B100000 16 25000,25000:0,16B100000 16 50000,25000:0,16B100000 16 75000,25000:0,16B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
╨
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*Ф
dtypesЙ
Ж2Г	*┬
_output_shapesп
м:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
и├:
и├:
и├:
и├:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
К
save/AssignAssigncombo_dnn/dnn_0/biassave/RestoreV2*
_output_shapes	
:└*
T0*'
_class
loc:@combo_dnn/dnn_0/bias
Ф
save/Assign_1Assigncombo_dnn/dnn_0/bn/betasave/RestoreV2:1*
T0*
_output_shapes	
:└**
_class 
loc:@combo_dnn/dnn_0/bn/beta
Ц
save/Assign_2Assigncombo_dnn/dnn_0/bn/gammasave/RestoreV2:2*
T0*
_output_shapes	
:└*+
_class!
loc:@combo_dnn/dnn_0/bn/gamma
в
save/Assign_3Assigncombo_dnn/dnn_0/bn/moving_meansave/RestoreV2:3*
_output_shapes	
:└*1
_class'
%#loc:@combo_dnn/dnn_0/bn/moving_mean*
T0
к
save/Assign_4Assign"combo_dnn/dnn_0/bn/moving_variancesave/RestoreV2:4*5
_class+
)'loc:@combo_dnn/dnn_0/bn/moving_variance*
T0*
_output_shapes	
:└
Ц
save/Assign_5Assigncombo_dnn/dnn_0/kernelsave/RestoreV2:5*)
_class
loc:@combo_dnn/dnn_0/kernel*
T0*
_output_shapes
:	 └
О
save/Assign_6Assigncombo_dnn/dnn_1/biassave/RestoreV2:6*
T0*
_output_shapes	
:А*'
_class
loc:@combo_dnn/dnn_1/bias
Ф
save/Assign_7Assigncombo_dnn/dnn_1/bn/betasave/RestoreV2:7*
T0*
_output_shapes	
:А**
_class 
loc:@combo_dnn/dnn_1/bn/beta
Ц
save/Assign_8Assigncombo_dnn/dnn_1/bn/gammasave/RestoreV2:8*
_output_shapes	
:А*
T0*+
_class!
loc:@combo_dnn/dnn_1/bn/gamma
в
save/Assign_9Assigncombo_dnn/dnn_1/bn/moving_meansave/RestoreV2:9*
T0*
_output_shapes	
:А*1
_class'
%#loc:@combo_dnn/dnn_1/bn/moving_mean
м
save/Assign_10Assign"combo_dnn/dnn_1/bn/moving_variancesave/RestoreV2:10*
_output_shapes	
:А*
T0*5
_class+
)'loc:@combo_dnn/dnn_1/bn/moving_variance
Щ
save/Assign_11Assigncombo_dnn/dnn_1/kernelsave/RestoreV2:11*
T0*)
_class
loc:@combo_dnn/dnn_1/kernel* 
_output_shapes
:
└А
Р
save/Assign_12Assigncombo_dnn/dnn_2/biassave/RestoreV2:12*'
_class
loc:@combo_dnn/dnn_2/bias*
T0*
_output_shapes	
:└
Ц
save/Assign_13Assigncombo_dnn/dnn_2/bn/betasave/RestoreV2:13*
_output_shapes	
:└*
T0**
_class 
loc:@combo_dnn/dnn_2/bn/beta
Ш
save/Assign_14Assigncombo_dnn/dnn_2/bn/gammasave/RestoreV2:14*
T0*+
_class!
loc:@combo_dnn/dnn_2/bn/gamma*
_output_shapes	
:└
д
save/Assign_15Assigncombo_dnn/dnn_2/bn/moving_meansave/RestoreV2:15*1
_class'
%#loc:@combo_dnn/dnn_2/bn/moving_mean*
T0*
_output_shapes	
:└
м
save/Assign_16Assign"combo_dnn/dnn_2/bn/moving_variancesave/RestoreV2:16*
T0*
_output_shapes	
:└*5
_class+
)'loc:@combo_dnn/dnn_2/bn/moving_variance
Щ
save/Assign_17Assigncombo_dnn/dnn_2/kernelsave/RestoreV2:17*)
_class
loc:@combo_dnn/dnn_2/kernel*
T0* 
_output_shapes
:
А└
Р
save/Assign_18Assigncombo_dnn/dnn_3/biassave/RestoreV2:18*'
_class
loc:@combo_dnn/dnn_3/bias*
T0*
_output_shapes	
:А
Ц
save/Assign_19Assigncombo_dnn/dnn_3/bn/betasave/RestoreV2:19*
T0**
_class 
loc:@combo_dnn/dnn_3/bn/beta*
_output_shapes	
:А
Ш
save/Assign_20Assigncombo_dnn/dnn_3/bn/gammasave/RestoreV2:20*
_output_shapes	
:А*
T0*+
_class!
loc:@combo_dnn/dnn_3/bn/gamma
д
save/Assign_21Assigncombo_dnn/dnn_3/bn/moving_meansave/RestoreV2:21*
_output_shapes	
:А*1
_class'
%#loc:@combo_dnn/dnn_3/bn/moving_mean*
T0
м
save/Assign_22Assign"combo_dnn/dnn_3/bn/moving_variancesave/RestoreV2:22*
_output_shapes	
:А*
T0*5
_class+
)'loc:@combo_dnn/dnn_3/bn/moving_variance
Щ
save/Assign_23Assigncombo_dnn/dnn_3/kernelsave/RestoreV2:23*
T0* 
_output_shapes
:
└А*)
_class
loc:@combo_dnn/dnn_3/kernel
Й
save/Assign_24Assigncombo_fea_bn/betasave/RestoreV2:24*
T0*
_output_shapes
: *$
_class
loc:@combo_fea_bn/beta
Л
save/Assign_25Assigncombo_fea_bn/gammasave/RestoreV2:25*
_output_shapes
: *%
_class
loc:@combo_fea_bn/gamma*
T0
Ч
save/Assign_26Assigncombo_fea_bn/moving_meansave/RestoreV2:26*+
_class!
loc:@combo_fea_bn/moving_mean*
_output_shapes
: *
T0
Я
save/Assign_27Assigncombo_fea_bn/moving_variancesave/RestoreV2:27*
T0*
_output_shapes
: */
_class%
#!loc:@combo_fea_bn/moving_variance
Р
save/Assign_28Assignfinal_dnn/dnn_0/biassave/RestoreV2:28*
T0*'
_class
loc:@final_dnn/dnn_0/bias*
_output_shapes	
:А
Ц
save/Assign_29Assignfinal_dnn/dnn_0/bn/betasave/RestoreV2:29*
_output_shapes	
:А*
T0**
_class 
loc:@final_dnn/dnn_0/bn/beta
Ш
save/Assign_30Assignfinal_dnn/dnn_0/bn/gammasave/RestoreV2:30*
T0*+
_class!
loc:@final_dnn/dnn_0/bn/gamma*
_output_shapes	
:А
д
save/Assign_31Assignfinal_dnn/dnn_0/bn/moving_meansave/RestoreV2:31*
T0*
_output_shapes	
:А*1
_class'
%#loc:@final_dnn/dnn_0/bn/moving_mean
м
save/Assign_32Assign"final_dnn/dnn_0/bn/moving_variancesave/RestoreV2:32*
T0*5
_class+
)'loc:@final_dnn/dnn_0/bn/moving_variance*
_output_shapes	
:А
Щ
save/Assign_33Assignfinal_dnn/dnn_0/kernelsave/RestoreV2:33*
T0* 
_output_shapes
:
АА*)
_class
loc:@final_dnn/dnn_0/kernel
Р
save/Assign_34Assignfinal_dnn/dnn_1/biassave/RestoreV2:34*
T0*'
_class
loc:@final_dnn/dnn_1/bias*
_output_shapes	
:└
Ц
save/Assign_35Assignfinal_dnn/dnn_1/bn/betasave/RestoreV2:35*
_output_shapes	
:└**
_class 
loc:@final_dnn/dnn_1/bn/beta*
T0
Ш
save/Assign_36Assignfinal_dnn/dnn_1/bn/gammasave/RestoreV2:36*
_output_shapes	
:└*
T0*+
_class!
loc:@final_dnn/dnn_1/bn/gamma
д
save/Assign_37Assignfinal_dnn/dnn_1/bn/moving_meansave/RestoreV2:37*
T0*1
_class'
%#loc:@final_dnn/dnn_1/bn/moving_mean*
_output_shapes	
:└
м
save/Assign_38Assign"final_dnn/dnn_1/bn/moving_variancesave/RestoreV2:38*5
_class+
)'loc:@final_dnn/dnn_1/bn/moving_variance*
T0*
_output_shapes	
:└
Щ
save/Assign_39Assignfinal_dnn/dnn_1/kernelsave/RestoreV2:39*)
_class
loc:@final_dnn/dnn_1/kernel* 
_output_shapes
:
А└*
T0
Р
save/Assign_40Assignfinal_dnn/dnn_2/biassave/RestoreV2:40*'
_class
loc:@final_dnn/dnn_2/bias*
T0*
_output_shapes	
:А
Ц
save/Assign_41Assignfinal_dnn/dnn_2/bn/betasave/RestoreV2:41*
_output_shapes	
:А*
T0**
_class 
loc:@final_dnn/dnn_2/bn/beta
Ш
save/Assign_42Assignfinal_dnn/dnn_2/bn/gammasave/RestoreV2:42*+
_class!
loc:@final_dnn/dnn_2/bn/gamma*
T0*
_output_shapes	
:А
д
save/Assign_43Assignfinal_dnn/dnn_2/bn/moving_meansave/RestoreV2:43*
T0*
_output_shapes	
:А*1
_class'
%#loc:@final_dnn/dnn_2/bn/moving_mean
м
save/Assign_44Assign"final_dnn/dnn_2/bn/moving_variancesave/RestoreV2:44*
T0*
_output_shapes	
:А*5
_class+
)'loc:@final_dnn/dnn_2/bn/moving_variance
Щ
save/Assign_45Assignfinal_dnn/dnn_2/kernelsave/RestoreV2:45* 
_output_shapes
:
└А*
T0*)
_class
loc:@final_dnn/dnn_2/kernel
П
save/Assign_46Assignfinal_dnn/dnn_3/biassave/RestoreV2:46*
_output_shapes
:@*'
_class
loc:@final_dnn/dnn_3/bias*
T0
Х
save/Assign_47Assignfinal_dnn/dnn_3/bn/betasave/RestoreV2:47*
_output_shapes
:@**
_class 
loc:@final_dnn/dnn_3/bn/beta*
T0
Ч
save/Assign_48Assignfinal_dnn/dnn_3/bn/gammasave/RestoreV2:48*
T0*
_output_shapes
:@*+
_class!
loc:@final_dnn/dnn_3/bn/gamma
г
save/Assign_49Assignfinal_dnn/dnn_3/bn/moving_meansave/RestoreV2:49*1
_class'
%#loc:@final_dnn/dnn_3/bn/moving_mean*
T0*
_output_shapes
:@
л
save/Assign_50Assign"final_dnn/dnn_3/bn/moving_variancesave/RestoreV2:50*
_output_shapes
:@*5
_class+
)'loc:@final_dnn/dnn_3/bn/moving_variance*
T0
Ш
save/Assign_51Assignfinal_dnn/dnn_3/kernelsave/RestoreV2:51*
T0*)
_class
loc:@final_dnn/dnn_3/kernel*
_output_shapes
:	А@
y
save/Assign_52Assignglobal_stepsave/RestoreV2:52*
_output_shapes
: *
_class
loc:@global_step*
T0	
╤
save/Assign_53Assign2input_layer/adgroup_id_embedding/embedding_weightssave/RestoreV2:53*
T0*E
_class;
97loc:@input_layer/adgroup_id_embedding/embedding_weights* 
_output_shapes
:
аН
╟
save/Assign_54Assign-input_layer/brand_embedding/embedding_weightssave/RestoreV2:54*@
_class6
42loc:@input_layer/brand_embedding/embedding_weights* 
_output_shapes
:
аН*
T0
╙
save/Assign_55Assign3input_layer/campaign_id_embedding/embedding_weightssave/RestoreV2:55*
T0* 
_output_shapes
:
аН*F
_class<
:8loc:@input_layer/campaign_id_embedding/embedding_weights
╦
save/Assign_56Assign/input_layer/cate_id_embedding/embedding_weightssave/RestoreV2:56*
T0*B
_class8
64loc:@input_layer/cate_id_embedding/embedding_weights* 
_output_shapes
:
аН
═
save/Assign_57Assign0input_layer/customer_embedding/embedding_weightssave/RestoreV2:57*
T0* 
_output_shapes
:
аН*C
_class9
75loc:@input_layer/customer_embedding/embedding_weights
├
save/Assign_58Assign+input_layer/pid_embedding/embedding_weightssave/RestoreV2:58*>
_class4
20loc:@input_layer/pid_embedding/embedding_weights*
T0* 
_output_shapes
:
аН
╤
save/Assign_59Assign3input_layer_1/age_level_embedding/embedding_weightssave/RestoreV2:59*
_output_shapes

:
*
T0*F
_class<
:8loc:@input_layer_1/age_level_embedding/embedding_weights
╫
save/Assign_60Assign6input_layer_1/cms_group_id_embedding/embedding_weightssave/RestoreV2:60*
T0*
_output_shapes

:d*I
_class?
=;loc:@input_layer_1/cms_group_id_embedding/embedding_weights
╤
save/Assign_61Assign3input_layer_1/cms_segid_embedding/embedding_weightssave/RestoreV2:61*F
_class<
:8loc:@input_layer_1/cms_segid_embedding/embedding_weights*
_output_shapes

:d*
T0
ч
save/Assign_62Assign>input_layer_1/new_user_class_level_embedding/embedding_weightssave/RestoreV2:62*
_output_shapes

:
*
T0*Q
_classG
ECloc:@input_layer_1/new_user_class_level_embedding/embedding_weights
╙
save/Assign_63Assign4input_layer_1/occupation_embedding/embedding_weightssave/RestoreV2:63*
_output_shapes

:
*
T0*G
_class=
;9loc:@input_layer_1/occupation_embedding/embedding_weights
╫
save/Assign_64Assign6input_layer_1/pvalue_level_embedding/embedding_weightssave/RestoreV2:64*I
_class?
=;loc:@input_layer_1/pvalue_level_embedding/embedding_weights*
T0*
_output_shapes

:

█
save/Assign_65Assign8input_layer_1/shopping_level_embedding/embedding_weightssave/RestoreV2:65*K
_classA
?=loc:@input_layer_1/shopping_level_embedding/embedding_weights*
_output_shapes

:
*
T0
▌
save/Assign_66Assign8input_layer_1/user_id_embedding/embedding_weights/part_0save/RestoreV2:66* 
_output_shapes
:
и├*K
_classA
?=loc:@input_layer_1/user_id_embedding/embedding_weights/part_0*
T0
▌
save/Assign_67Assign8input_layer_1/user_id_embedding/embedding_weights/part_1save/RestoreV2:67*K
_classA
?=loc:@input_layer_1/user_id_embedding/embedding_weights/part_1*
T0* 
_output_shapes
:
и├
▌
save/Assign_68Assign8input_layer_1/user_id_embedding/embedding_weights/part_2save/RestoreV2:68*K
_classA
?=loc:@input_layer_1/user_id_embedding/embedding_weights/part_2*
T0* 
_output_shapes
:
и├
▌
save/Assign_69Assign8input_layer_1/user_id_embedding/embedding_weights/part_3save/RestoreV2:69* 
_output_shapes
:
и├*
T0*K
_classA
?=loc:@input_layer_1/user_id_embedding/embedding_weights/part_3
█
save/Assign_70Assign7input_layer_1/user_tag_cate_embedding/embedding_weightssave/RestoreV2:70* 
_output_shapes
:
аН*
T0*J
_class@
><loc:@input_layer_1/user_tag_cate_embedding/embedding_weights
╫
save/Assign_71Assign5input_layer_2/combo_brand_embedding/embedding_weightssave/RestoreV2:71*
T0*H
_class>
<:loc:@input_layer_2/combo_brand_embedding/embedding_weights* 
_output_shapes
:
аН
┌
save/Assign_72Assign7input_layer_2/combo_cate_id_embedding/embedding_weightssave/RestoreV2:72*J
_class@
><loc:@input_layer_2/combo_cate_id_embedding/embedding_weights*
T0*
_output_shapes
:	РN
О
save/Assign_73Assignitem_dnn/dnn_0/biassave/RestoreV2:73*
_output_shapes	
:└*
T0*&
_class
loc:@item_dnn/dnn_0/bias
Ф
save/Assign_74Assignitem_dnn/dnn_0/bn/betasave/RestoreV2:74*
_output_shapes	
:└*)
_class
loc:@item_dnn/dnn_0/bn/beta*
T0
Ц
save/Assign_75Assignitem_dnn/dnn_0/bn/gammasave/RestoreV2:75**
_class 
loc:@item_dnn/dnn_0/bn/gamma*
_output_shapes	
:└*
T0
в
save/Assign_76Assignitem_dnn/dnn_0/bn/moving_meansave/RestoreV2:76*
T0*
_output_shapes	
:└*0
_class&
$"loc:@item_dnn/dnn_0/bn/moving_mean
к
save/Assign_77Assign!item_dnn/dnn_0/bn/moving_variancesave/RestoreV2:77*
T0*4
_class*
(&loc:@item_dnn/dnn_0/bn/moving_variance*
_output_shapes	
:└
Ц
save/Assign_78Assignitem_dnn/dnn_0/kernelsave/RestoreV2:78*
T0*
_output_shapes
:	a└*(
_class
loc:@item_dnn/dnn_0/kernel
О
save/Assign_79Assignitem_dnn/dnn_1/biassave/RestoreV2:79*
_output_shapes	
:А*&
_class
loc:@item_dnn/dnn_1/bias*
T0
Ф
save/Assign_80Assignitem_dnn/dnn_1/bn/betasave/RestoreV2:80*
T0*
_output_shapes	
:А*)
_class
loc:@item_dnn/dnn_1/bn/beta
Ц
save/Assign_81Assignitem_dnn/dnn_1/bn/gammasave/RestoreV2:81*
T0**
_class 
loc:@item_dnn/dnn_1/bn/gamma*
_output_shapes	
:А
в
save/Assign_82Assignitem_dnn/dnn_1/bn/moving_meansave/RestoreV2:82*
_output_shapes	
:А*0
_class&
$"loc:@item_dnn/dnn_1/bn/moving_mean*
T0
к
save/Assign_83Assign!item_dnn/dnn_1/bn/moving_variancesave/RestoreV2:83*4
_class*
(&loc:@item_dnn/dnn_1/bn/moving_variance*
_output_shapes	
:А*
T0
Ч
save/Assign_84Assignitem_dnn/dnn_1/kernelsave/RestoreV2:84*
T0* 
_output_shapes
:
└А*(
_class
loc:@item_dnn/dnn_1/kernel
О
save/Assign_85Assignitem_dnn/dnn_2/biassave/RestoreV2:85*
_output_shapes	
:└*&
_class
loc:@item_dnn/dnn_2/bias*
T0
Ф
save/Assign_86Assignitem_dnn/dnn_2/bn/betasave/RestoreV2:86*
_output_shapes	
:└*)
_class
loc:@item_dnn/dnn_2/bn/beta*
T0
Ц
save/Assign_87Assignitem_dnn/dnn_2/bn/gammasave/RestoreV2:87*
_output_shapes	
:└**
_class 
loc:@item_dnn/dnn_2/bn/gamma*
T0
в
save/Assign_88Assignitem_dnn/dnn_2/bn/moving_meansave/RestoreV2:88*0
_class&
$"loc:@item_dnn/dnn_2/bn/moving_mean*
T0*
_output_shapes	
:└
к
save/Assign_89Assign!item_dnn/dnn_2/bn/moving_variancesave/RestoreV2:89*4
_class*
(&loc:@item_dnn/dnn_2/bn/moving_variance*
T0*
_output_shapes	
:└
Ч
save/Assign_90Assignitem_dnn/dnn_2/kernelsave/RestoreV2:90*(
_class
loc:@item_dnn/dnn_2/kernel* 
_output_shapes
:
А└*
T0
О
save/Assign_91Assignitem_dnn/dnn_3/biassave/RestoreV2:91*
T0*
_output_shapes	
:А*&
_class
loc:@item_dnn/dnn_3/bias
Ф
save/Assign_92Assignitem_dnn/dnn_3/bn/betasave/RestoreV2:92*)
_class
loc:@item_dnn/dnn_3/bn/beta*
T0*
_output_shapes	
:А
Ц
save/Assign_93Assignitem_dnn/dnn_3/bn/gammasave/RestoreV2:93*
T0*
_output_shapes	
:А**
_class 
loc:@item_dnn/dnn_3/bn/gamma
в
save/Assign_94Assignitem_dnn/dnn_3/bn/moving_meansave/RestoreV2:94*
T0*0
_class&
$"loc:@item_dnn/dnn_3/bn/moving_mean*
_output_shapes	
:А
к
save/Assign_95Assign!item_dnn/dnn_3/bn/moving_variancesave/RestoreV2:95*4
_class*
(&loc:@item_dnn/dnn_3/bn/moving_variance*
T0*
_output_shapes	
:А
Ч
save/Assign_96Assignitem_dnn/dnn_3/kernelsave/RestoreV2:96* 
_output_shapes
:
└А*
T0*(
_class
loc:@item_dnn/dnn_3/kernel
З
save/Assign_97Assignitem_fea_bn/betasave/RestoreV2:97*#
_class
loc:@item_fea_bn/beta*
T0*
_output_shapes
:a
Й
save/Assign_98Assignitem_fea_bn/gammasave/RestoreV2:98*$
_class
loc:@item_fea_bn/gamma*
T0*
_output_shapes
:a
Х
save/Assign_99Assignitem_fea_bn/moving_meansave/RestoreV2:99*
T0*
_output_shapes
:a**
_class 
loc:@item_fea_bn/moving_mean
Я
save/Assign_100Assignitem_fea_bn/moving_variancesave/RestoreV2:100*
T0*.
_class$
" loc:@item_fea_bn/moving_variance*
_output_shapes
:a

save/Assign_101Assignoutput/biassave/RestoreV2:101*
_output_shapes
:*
_class
loc:@output/bias*
T0
З
save/Assign_102Assignoutput/kernelsave/RestoreV2:102*
_output_shapes

:@*
T0* 
_class
loc:@output/kernel
Р
save/Assign_103Assignuser_dnn/dnn_0/biassave/RestoreV2:103*
T0*
_output_shapes	
:└*&
_class
loc:@user_dnn/dnn_0/bias
Ц
save/Assign_104Assignuser_dnn/dnn_0/bn/betasave/RestoreV2:104*
T0*
_output_shapes	
:└*)
_class
loc:@user_dnn/dnn_0/bn/beta
Ш
save/Assign_105Assignuser_dnn/dnn_0/bn/gammasave/RestoreV2:105*
T0**
_class 
loc:@user_dnn/dnn_0/bn/gamma*
_output_shapes	
:└
д
save/Assign_106Assignuser_dnn/dnn_0/bn/moving_meansave/RestoreV2:106*0
_class&
$"loc:@user_dnn/dnn_0/bn/moving_mean*
_output_shapes	
:└*
T0
м
save/Assign_107Assign!user_dnn/dnn_0/bn/moving_variancesave/RestoreV2:107*
T0*4
_class*
(&loc:@user_dnn/dnn_0/bn/moving_variance*
_output_shapes	
:└
Щ
save/Assign_108Assignuser_dnn/dnn_0/kernelsave/RestoreV2:108* 
_output_shapes
:
Р└*
T0*(
_class
loc:@user_dnn/dnn_0/kernel
Р
save/Assign_109Assignuser_dnn/dnn_1/biassave/RestoreV2:109*
T0*
_output_shapes	
:А*&
_class
loc:@user_dnn/dnn_1/bias
Ц
save/Assign_110Assignuser_dnn/dnn_1/bn/betasave/RestoreV2:110*
T0*
_output_shapes	
:А*)
_class
loc:@user_dnn/dnn_1/bn/beta
Ш
save/Assign_111Assignuser_dnn/dnn_1/bn/gammasave/RestoreV2:111**
_class 
loc:@user_dnn/dnn_1/bn/gamma*
_output_shapes	
:А*
T0
д
save/Assign_112Assignuser_dnn/dnn_1/bn/moving_meansave/RestoreV2:112*
T0*
_output_shapes	
:А*0
_class&
$"loc:@user_dnn/dnn_1/bn/moving_mean
м
save/Assign_113Assign!user_dnn/dnn_1/bn/moving_variancesave/RestoreV2:113*4
_class*
(&loc:@user_dnn/dnn_1/bn/moving_variance*
T0*
_output_shapes	
:А
Щ
save/Assign_114Assignuser_dnn/dnn_1/kernelsave/RestoreV2:114*(
_class
loc:@user_dnn/dnn_1/kernel* 
_output_shapes
:
└А*
T0
Р
save/Assign_115Assignuser_dnn/dnn_2/biassave/RestoreV2:115*&
_class
loc:@user_dnn/dnn_2/bias*
_output_shapes	
:└*
T0
Ц
save/Assign_116Assignuser_dnn/dnn_2/bn/betasave/RestoreV2:116*
T0*
_output_shapes	
:└*)
_class
loc:@user_dnn/dnn_2/bn/beta
Ш
save/Assign_117Assignuser_dnn/dnn_2/bn/gammasave/RestoreV2:117**
_class 
loc:@user_dnn/dnn_2/bn/gamma*
T0*
_output_shapes	
:└
д
save/Assign_118Assignuser_dnn/dnn_2/bn/moving_meansave/RestoreV2:118*
_output_shapes	
:└*
T0*0
_class&
$"loc:@user_dnn/dnn_2/bn/moving_mean
м
save/Assign_119Assign!user_dnn/dnn_2/bn/moving_variancesave/RestoreV2:119*
_output_shapes	
:└*4
_class*
(&loc:@user_dnn/dnn_2/bn/moving_variance*
T0
Щ
save/Assign_120Assignuser_dnn/dnn_2/kernelsave/RestoreV2:120*
T0* 
_output_shapes
:
А└*(
_class
loc:@user_dnn/dnn_2/kernel
Р
save/Assign_121Assignuser_dnn/dnn_3/biassave/RestoreV2:121*
T0*
_output_shapes	
:А*&
_class
loc:@user_dnn/dnn_3/bias
Ц
save/Assign_122Assignuser_dnn/dnn_3/bn/betasave/RestoreV2:122*
T0*)
_class
loc:@user_dnn/dnn_3/bn/beta*
_output_shapes	
:А
Ш
save/Assign_123Assignuser_dnn/dnn_3/bn/gammasave/RestoreV2:123*
_output_shapes	
:А**
_class 
loc:@user_dnn/dnn_3/bn/gamma*
T0
д
save/Assign_124Assignuser_dnn/dnn_3/bn/moving_meansave/RestoreV2:124*
T0*
_output_shapes	
:А*0
_class&
$"loc:@user_dnn/dnn_3/bn/moving_mean
м
save/Assign_125Assign!user_dnn/dnn_3/bn/moving_variancesave/RestoreV2:125*
_output_shapes	
:А*4
_class*
(&loc:@user_dnn/dnn_3/bn/moving_variance*
T0
Щ
save/Assign_126Assignuser_dnn/dnn_3/kernelsave/RestoreV2:126* 
_output_shapes
:
└А*(
_class
loc:@user_dnn/dnn_3/kernel*
T0
К
save/Assign_127Assignuser_fea_bn/betasave/RestoreV2:127*
T0*
_output_shapes	
:Р*#
_class
loc:@user_fea_bn/beta
М
save/Assign_128Assignuser_fea_bn/gammasave/RestoreV2:128*
_output_shapes	
:Р*$
_class
loc:@user_fea_bn/gamma*
T0
Ш
save/Assign_129Assignuser_fea_bn/moving_meansave/RestoreV2:129*
T0**
_class 
loc:@user_fea_bn/moving_mean*
_output_shapes	
:Р
а
save/Assign_130Assignuser_fea_bn/moving_variancesave/RestoreV2:130*
_output_shapes	
:Р*
T0*.
_class$
" loc:@user_fea_bn/moving_variance
р
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_100^save/Assign_101^save/Assign_102^save/Assign_103^save/Assign_104^save/Assign_105^save/Assign_106^save/Assign_107^save/Assign_108^save/Assign_109^save/Assign_11^save/Assign_110^save/Assign_111^save/Assign_112^save/Assign_113^save/Assign_114^save/Assign_115^save/Assign_116^save/Assign_117^save/Assign_118^save/Assign_119^save/Assign_12^save/Assign_120^save/Assign_121^save/Assign_122^save/Assign_123^save/Assign_124^save/Assign_125^save/Assign_126^save/Assign_127^save/Assign_128^save/Assign_129^save/Assign_13^save/Assign_130^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_4^save/Assign_40^save/Assign_41^save/Assign_42^save/Assign_43^save/Assign_44^save/Assign_45^save/Assign_46^save/Assign_47^save/Assign_48^save/Assign_49^save/Assign_5^save/Assign_50^save/Assign_51^save/Assign_52^save/Assign_53^save/Assign_54^save/Assign_55^save/Assign_56^save/Assign_57^save/Assign_58^save/Assign_59^save/Assign_6^save/Assign_60^save/Assign_61^save/Assign_62^save/Assign_63^save/Assign_64^save/Assign_65^save/Assign_66^save/Assign_67^save/Assign_68^save/Assign_69^save/Assign_7^save/Assign_70^save/Assign_71^save/Assign_72^save/Assign_73^save/Assign_74^save/Assign_75^save/Assign_76^save/Assign_77^save/Assign_78^save/Assign_79^save/Assign_8^save/Assign_80^save/Assign_81^save/Assign_82^save/Assign_83^save/Assign_84^save/Assign_85^save/Assign_86^save/Assign_87^save/Assign_88^save/Assign_89^save/Assign_9^save/Assign_90^save/Assign_91^save/Assign_92^save/Assign_93^save/Assign_94^save/Assign_95^save/Assign_96^save/Assign_97^save/Assign_98^save/Assign_99
-
save/restore_allNoOp^save/restore_shard"&<
save/Const:0save/Identity:0save/restore_all (5 @F8"o
saved_model_assetsY*W
U
+type.googleapis.com/tensorflow.AssetFileDef&

pipeline.config:0pipeline.config"ом
	variablesЯмЫм
Z
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0H
Б
4input_layer/adgroup_id_embedding/embedding_weights:09input_layer/adgroup_id_embedding/embedding_weights/Assign9input_layer/adgroup_id_embedding/embedding_weights/read:02Qinput_layer/adgroup_id_embedding/embedding_weights/Initializer/truncated_normal:08
э
/input_layer/brand_embedding/embedding_weights:04input_layer/brand_embedding/embedding_weights/Assign4input_layer/brand_embedding/embedding_weights/read:02Linput_layer/brand_embedding/embedding_weights/Initializer/truncated_normal:08
Е
5input_layer/campaign_id_embedding/embedding_weights:0:input_layer/campaign_id_embedding/embedding_weights/Assign:input_layer/campaign_id_embedding/embedding_weights/read:02Rinput_layer/campaign_id_embedding/embedding_weights/Initializer/truncated_normal:08
ї
1input_layer/cate_id_embedding/embedding_weights:06input_layer/cate_id_embedding/embedding_weights/Assign6input_layer/cate_id_embedding/embedding_weights/read:02Ninput_layer/cate_id_embedding/embedding_weights/Initializer/truncated_normal:08
∙
2input_layer/customer_embedding/embedding_weights:07input_layer/customer_embedding/embedding_weights/Assign7input_layer/customer_embedding/embedding_weights/read:02Oinput_layer/customer_embedding/embedding_weights/Initializer/truncated_normal:08
х
-input_layer/pid_embedding/embedding_weights:02input_layer/pid_embedding/embedding_weights/Assign2input_layer/pid_embedding/embedding_weights/read:02Jinput_layer/pid_embedding/embedding_weights/Initializer/truncated_normal:08
Е
5input_layer_1/age_level_embedding/embedding_weights:0:input_layer_1/age_level_embedding/embedding_weights/Assign:input_layer_1/age_level_embedding/embedding_weights/read:02Rinput_layer_1/age_level_embedding/embedding_weights/Initializer/truncated_normal:08
С
8input_layer_1/cms_group_id_embedding/embedding_weights:0=input_layer_1/cms_group_id_embedding/embedding_weights/Assign=input_layer_1/cms_group_id_embedding/embedding_weights/read:02Uinput_layer_1/cms_group_id_embedding/embedding_weights/Initializer/truncated_normal:08
Е
5input_layer_1/cms_segid_embedding/embedding_weights:0:input_layer_1/cms_segid_embedding/embedding_weights/Assign:input_layer_1/cms_segid_embedding/embedding_weights/read:02Rinput_layer_1/cms_segid_embedding/embedding_weights/Initializer/truncated_normal:08
▒
@input_layer_1/new_user_class_level_embedding/embedding_weights:0Einput_layer_1/new_user_class_level_embedding/embedding_weights/AssignEinput_layer_1/new_user_class_level_embedding/embedding_weights/read:02]input_layer_1/new_user_class_level_embedding/embedding_weights/Initializer/truncated_normal:08
Й
6input_layer_1/occupation_embedding/embedding_weights:0;input_layer_1/occupation_embedding/embedding_weights/Assign;input_layer_1/occupation_embedding/embedding_weights/read:02Sinput_layer_1/occupation_embedding/embedding_weights/Initializer/truncated_normal:08
С
8input_layer_1/pvalue_level_embedding/embedding_weights:0=input_layer_1/pvalue_level_embedding/embedding_weights/Assign=input_layer_1/pvalue_level_embedding/embedding_weights/read:02Uinput_layer_1/pvalue_level_embedding/embedding_weights/Initializer/truncated_normal:08
Щ
:input_layer_1/shopping_level_embedding/embedding_weights:0?input_layer_1/shopping_level_embedding/embedding_weights/Assign?input_layer_1/shopping_level_embedding/embedding_weights/read:02Winput_layer_1/shopping_level_embedding/embedding_weights/Initializer/truncated_normal:08
▐
:input_layer_1/user_id_embedding/embedding_weights/part_0:0?input_layer_1/user_id_embedding/embedding_weights/part_0/Assign?input_layer_1/user_id_embedding/embedding_weights/part_0/read:0"C
1input_layer_1/user_id_embedding/embedding_weightsаН  "и├2Winput_layer_1/user_id_embedding/embedding_weights/part_0/Initializer/truncated_normal:08
р
:input_layer_1/user_id_embedding/embedding_weights/part_1:0?input_layer_1/user_id_embedding/embedding_weights/part_1/Assign?input_layer_1/user_id_embedding/embedding_weights/part_1/read:0"E
1input_layer_1/user_id_embedding/embedding_weightsаНи├ "и├2Winput_layer_1/user_id_embedding/embedding_weights/part_1/Initializer/truncated_normal:08
р
:input_layer_1/user_id_embedding/embedding_weights/part_2:0?input_layer_1/user_id_embedding/embedding_weights/part_2/Assign?input_layer_1/user_id_embedding/embedding_weights/part_2/read:0"E
1input_layer_1/user_id_embedding/embedding_weightsаН╨Ж "и├2Winput_layer_1/user_id_embedding/embedding_weights/part_2/Initializer/truncated_normal:08
р
:input_layer_1/user_id_embedding/embedding_weights/part_3:0?input_layer_1/user_id_embedding/embedding_weights/part_3/Assign?input_layer_1/user_id_embedding/embedding_weights/part_3/read:0"E
1input_layer_1/user_id_embedding/embedding_weightsаН°╔ "и├2Winput_layer_1/user_id_embedding/embedding_weights/part_3/Initializer/truncated_normal:08
Х
9input_layer_1/user_tag_cate_embedding/embedding_weights:0>input_layer_1/user_tag_cate_embedding/embedding_weights/Assign>input_layer_1/user_tag_cate_embedding/embedding_weights/read:02Vinput_layer_1/user_tag_cate_embedding/embedding_weights/Initializer/truncated_normal:08
Н
7input_layer_2/combo_brand_embedding/embedding_weights:0<input_layer_2/combo_brand_embedding/embedding_weights/Assign<input_layer_2/combo_brand_embedding/embedding_weights/read:02Tinput_layer_2/combo_brand_embedding/embedding_weights/Initializer/truncated_normal:08
Х
9input_layer_2/combo_cate_id_embedding/embedding_weights:0>input_layer_2/combo_cate_id_embedding/embedding_weights/Assign>input_layer_2/combo_cate_id_embedding/embedding_weights/read:02Vinput_layer_2/combo_cate_id_embedding/embedding_weights/Initializer/truncated_normal:08
q
item_fea_bn/gamma:0item_fea_bn/gamma/Assignitem_fea_bn/gamma/read:02$item_fea_bn/gamma/Initializer/ones:08
n
item_fea_bn/beta:0item_fea_bn/beta/Assignitem_fea_bn/beta/read:02$item_fea_bn/beta/Initializer/zeros:08
М
item_fea_bn/moving_mean:0item_fea_bn/moving_mean/Assignitem_fea_bn/moving_mean/read:02+item_fea_bn/moving_mean/Initializer/zeros:0@H
Ы
item_fea_bn/moving_variance:0"item_fea_bn/moving_variance/Assign"item_fea_bn/moving_variance/read:02.item_fea_bn/moving_variance/Initializer/ones:0@H
Л
item_dnn/dnn_0/kernel:0item_dnn/dnn_0/kernel/Assignitem_dnn/dnn_0/kernel/read:022item_dnn/dnn_0/kernel/Initializer/random_uniform:08
z
item_dnn/dnn_0/bias:0item_dnn/dnn_0/bias/Assignitem_dnn/dnn_0/bias/read:02'item_dnn/dnn_0/bias/Initializer/zeros:08
Й
item_dnn/dnn_0/bn/gamma:0item_dnn/dnn_0/bn/gamma/Assignitem_dnn/dnn_0/bn/gamma/read:02*item_dnn/dnn_0/bn/gamma/Initializer/ones:08
Ж
item_dnn/dnn_0/bn/beta:0item_dnn/dnn_0/bn/beta/Assignitem_dnn/dnn_0/bn/beta/read:02*item_dnn/dnn_0/bn/beta/Initializer/zeros:08
д
item_dnn/dnn_0/bn/moving_mean:0$item_dnn/dnn_0/bn/moving_mean/Assign$item_dnn/dnn_0/bn/moving_mean/read:021item_dnn/dnn_0/bn/moving_mean/Initializer/zeros:0@H
│
#item_dnn/dnn_0/bn/moving_variance:0(item_dnn/dnn_0/bn/moving_variance/Assign(item_dnn/dnn_0/bn/moving_variance/read:024item_dnn/dnn_0/bn/moving_variance/Initializer/ones:0@H
Л
item_dnn/dnn_1/kernel:0item_dnn/dnn_1/kernel/Assignitem_dnn/dnn_1/kernel/read:022item_dnn/dnn_1/kernel/Initializer/random_uniform:08
z
item_dnn/dnn_1/bias:0item_dnn/dnn_1/bias/Assignitem_dnn/dnn_1/bias/read:02'item_dnn/dnn_1/bias/Initializer/zeros:08
Й
item_dnn/dnn_1/bn/gamma:0item_dnn/dnn_1/bn/gamma/Assignitem_dnn/dnn_1/bn/gamma/read:02*item_dnn/dnn_1/bn/gamma/Initializer/ones:08
Ж
item_dnn/dnn_1/bn/beta:0item_dnn/dnn_1/bn/beta/Assignitem_dnn/dnn_1/bn/beta/read:02*item_dnn/dnn_1/bn/beta/Initializer/zeros:08
д
item_dnn/dnn_1/bn/moving_mean:0$item_dnn/dnn_1/bn/moving_mean/Assign$item_dnn/dnn_1/bn/moving_mean/read:021item_dnn/dnn_1/bn/moving_mean/Initializer/zeros:0@H
│
#item_dnn/dnn_1/bn/moving_variance:0(item_dnn/dnn_1/bn/moving_variance/Assign(item_dnn/dnn_1/bn/moving_variance/read:024item_dnn/dnn_1/bn/moving_variance/Initializer/ones:0@H
Л
item_dnn/dnn_2/kernel:0item_dnn/dnn_2/kernel/Assignitem_dnn/dnn_2/kernel/read:022item_dnn/dnn_2/kernel/Initializer/random_uniform:08
z
item_dnn/dnn_2/bias:0item_dnn/dnn_2/bias/Assignitem_dnn/dnn_2/bias/read:02'item_dnn/dnn_2/bias/Initializer/zeros:08
Й
item_dnn/dnn_2/bn/gamma:0item_dnn/dnn_2/bn/gamma/Assignitem_dnn/dnn_2/bn/gamma/read:02*item_dnn/dnn_2/bn/gamma/Initializer/ones:08
Ж
item_dnn/dnn_2/bn/beta:0item_dnn/dnn_2/bn/beta/Assignitem_dnn/dnn_2/bn/beta/read:02*item_dnn/dnn_2/bn/beta/Initializer/zeros:08
д
item_dnn/dnn_2/bn/moving_mean:0$item_dnn/dnn_2/bn/moving_mean/Assign$item_dnn/dnn_2/bn/moving_mean/read:021item_dnn/dnn_2/bn/moving_mean/Initializer/zeros:0@H
│
#item_dnn/dnn_2/bn/moving_variance:0(item_dnn/dnn_2/bn/moving_variance/Assign(item_dnn/dnn_2/bn/moving_variance/read:024item_dnn/dnn_2/bn/moving_variance/Initializer/ones:0@H
Л
item_dnn/dnn_3/kernel:0item_dnn/dnn_3/kernel/Assignitem_dnn/dnn_3/kernel/read:022item_dnn/dnn_3/kernel/Initializer/random_uniform:08
z
item_dnn/dnn_3/bias:0item_dnn/dnn_3/bias/Assignitem_dnn/dnn_3/bias/read:02'item_dnn/dnn_3/bias/Initializer/zeros:08
Й
item_dnn/dnn_3/bn/gamma:0item_dnn/dnn_3/bn/gamma/Assignitem_dnn/dnn_3/bn/gamma/read:02*item_dnn/dnn_3/bn/gamma/Initializer/ones:08
Ж
item_dnn/dnn_3/bn/beta:0item_dnn/dnn_3/bn/beta/Assignitem_dnn/dnn_3/bn/beta/read:02*item_dnn/dnn_3/bn/beta/Initializer/zeros:08
д
item_dnn/dnn_3/bn/moving_mean:0$item_dnn/dnn_3/bn/moving_mean/Assign$item_dnn/dnn_3/bn/moving_mean/read:021item_dnn/dnn_3/bn/moving_mean/Initializer/zeros:0@H
│
#item_dnn/dnn_3/bn/moving_variance:0(item_dnn/dnn_3/bn/moving_variance/Assign(item_dnn/dnn_3/bn/moving_variance/read:024item_dnn/dnn_3/bn/moving_variance/Initializer/ones:0@H
q
user_fea_bn/gamma:0user_fea_bn/gamma/Assignuser_fea_bn/gamma/read:02$user_fea_bn/gamma/Initializer/ones:08
n
user_fea_bn/beta:0user_fea_bn/beta/Assignuser_fea_bn/beta/read:02$user_fea_bn/beta/Initializer/zeros:08
М
user_fea_bn/moving_mean:0user_fea_bn/moving_mean/Assignuser_fea_bn/moving_mean/read:02+user_fea_bn/moving_mean/Initializer/zeros:0@H
Ы
user_fea_bn/moving_variance:0"user_fea_bn/moving_variance/Assign"user_fea_bn/moving_variance/read:02.user_fea_bn/moving_variance/Initializer/ones:0@H
Л
user_dnn/dnn_0/kernel:0user_dnn/dnn_0/kernel/Assignuser_dnn/dnn_0/kernel/read:022user_dnn/dnn_0/kernel/Initializer/random_uniform:08
z
user_dnn/dnn_0/bias:0user_dnn/dnn_0/bias/Assignuser_dnn/dnn_0/bias/read:02'user_dnn/dnn_0/bias/Initializer/zeros:08
Й
user_dnn/dnn_0/bn/gamma:0user_dnn/dnn_0/bn/gamma/Assignuser_dnn/dnn_0/bn/gamma/read:02*user_dnn/dnn_0/bn/gamma/Initializer/ones:08
Ж
user_dnn/dnn_0/bn/beta:0user_dnn/dnn_0/bn/beta/Assignuser_dnn/dnn_0/bn/beta/read:02*user_dnn/dnn_0/bn/beta/Initializer/zeros:08
д
user_dnn/dnn_0/bn/moving_mean:0$user_dnn/dnn_0/bn/moving_mean/Assign$user_dnn/dnn_0/bn/moving_mean/read:021user_dnn/dnn_0/bn/moving_mean/Initializer/zeros:0@H
│
#user_dnn/dnn_0/bn/moving_variance:0(user_dnn/dnn_0/bn/moving_variance/Assign(user_dnn/dnn_0/bn/moving_variance/read:024user_dnn/dnn_0/bn/moving_variance/Initializer/ones:0@H
Л
user_dnn/dnn_1/kernel:0user_dnn/dnn_1/kernel/Assignuser_dnn/dnn_1/kernel/read:022user_dnn/dnn_1/kernel/Initializer/random_uniform:08
z
user_dnn/dnn_1/bias:0user_dnn/dnn_1/bias/Assignuser_dnn/dnn_1/bias/read:02'user_dnn/dnn_1/bias/Initializer/zeros:08
Й
user_dnn/dnn_1/bn/gamma:0user_dnn/dnn_1/bn/gamma/Assignuser_dnn/dnn_1/bn/gamma/read:02*user_dnn/dnn_1/bn/gamma/Initializer/ones:08
Ж
user_dnn/dnn_1/bn/beta:0user_dnn/dnn_1/bn/beta/Assignuser_dnn/dnn_1/bn/beta/read:02*user_dnn/dnn_1/bn/beta/Initializer/zeros:08
д
user_dnn/dnn_1/bn/moving_mean:0$user_dnn/dnn_1/bn/moving_mean/Assign$user_dnn/dnn_1/bn/moving_mean/read:021user_dnn/dnn_1/bn/moving_mean/Initializer/zeros:0@H
│
#user_dnn/dnn_1/bn/moving_variance:0(user_dnn/dnn_1/bn/moving_variance/Assign(user_dnn/dnn_1/bn/moving_variance/read:024user_dnn/dnn_1/bn/moving_variance/Initializer/ones:0@H
Л
user_dnn/dnn_2/kernel:0user_dnn/dnn_2/kernel/Assignuser_dnn/dnn_2/kernel/read:022user_dnn/dnn_2/kernel/Initializer/random_uniform:08
z
user_dnn/dnn_2/bias:0user_dnn/dnn_2/bias/Assignuser_dnn/dnn_2/bias/read:02'user_dnn/dnn_2/bias/Initializer/zeros:08
Й
user_dnn/dnn_2/bn/gamma:0user_dnn/dnn_2/bn/gamma/Assignuser_dnn/dnn_2/bn/gamma/read:02*user_dnn/dnn_2/bn/gamma/Initializer/ones:08
Ж
user_dnn/dnn_2/bn/beta:0user_dnn/dnn_2/bn/beta/Assignuser_dnn/dnn_2/bn/beta/read:02*user_dnn/dnn_2/bn/beta/Initializer/zeros:08
д
user_dnn/dnn_2/bn/moving_mean:0$user_dnn/dnn_2/bn/moving_mean/Assign$user_dnn/dnn_2/bn/moving_mean/read:021user_dnn/dnn_2/bn/moving_mean/Initializer/zeros:0@H
│
#user_dnn/dnn_2/bn/moving_variance:0(user_dnn/dnn_2/bn/moving_variance/Assign(user_dnn/dnn_2/bn/moving_variance/read:024user_dnn/dnn_2/bn/moving_variance/Initializer/ones:0@H
Л
user_dnn/dnn_3/kernel:0user_dnn/dnn_3/kernel/Assignuser_dnn/dnn_3/kernel/read:022user_dnn/dnn_3/kernel/Initializer/random_uniform:08
z
user_dnn/dnn_3/bias:0user_dnn/dnn_3/bias/Assignuser_dnn/dnn_3/bias/read:02'user_dnn/dnn_3/bias/Initializer/zeros:08
Й
user_dnn/dnn_3/bn/gamma:0user_dnn/dnn_3/bn/gamma/Assignuser_dnn/dnn_3/bn/gamma/read:02*user_dnn/dnn_3/bn/gamma/Initializer/ones:08
Ж
user_dnn/dnn_3/bn/beta:0user_dnn/dnn_3/bn/beta/Assignuser_dnn/dnn_3/bn/beta/read:02*user_dnn/dnn_3/bn/beta/Initializer/zeros:08
д
user_dnn/dnn_3/bn/moving_mean:0$user_dnn/dnn_3/bn/moving_mean/Assign$user_dnn/dnn_3/bn/moving_mean/read:021user_dnn/dnn_3/bn/moving_mean/Initializer/zeros:0@H
│
#user_dnn/dnn_3/bn/moving_variance:0(user_dnn/dnn_3/bn/moving_variance/Assign(user_dnn/dnn_3/bn/moving_variance/read:024user_dnn/dnn_3/bn/moving_variance/Initializer/ones:0@H
u
combo_fea_bn/gamma:0combo_fea_bn/gamma/Assigncombo_fea_bn/gamma/read:02%combo_fea_bn/gamma/Initializer/ones:08
r
combo_fea_bn/beta:0combo_fea_bn/beta/Assigncombo_fea_bn/beta/read:02%combo_fea_bn/beta/Initializer/zeros:08
Р
combo_fea_bn/moving_mean:0combo_fea_bn/moving_mean/Assigncombo_fea_bn/moving_mean/read:02,combo_fea_bn/moving_mean/Initializer/zeros:0@H
Я
combo_fea_bn/moving_variance:0#combo_fea_bn/moving_variance/Assign#combo_fea_bn/moving_variance/read:02/combo_fea_bn/moving_variance/Initializer/ones:0@H
П
combo_dnn/dnn_0/kernel:0combo_dnn/dnn_0/kernel/Assigncombo_dnn/dnn_0/kernel/read:023combo_dnn/dnn_0/kernel/Initializer/random_uniform:08
~
combo_dnn/dnn_0/bias:0combo_dnn/dnn_0/bias/Assigncombo_dnn/dnn_0/bias/read:02(combo_dnn/dnn_0/bias/Initializer/zeros:08
Н
combo_dnn/dnn_0/bn/gamma:0combo_dnn/dnn_0/bn/gamma/Assigncombo_dnn/dnn_0/bn/gamma/read:02+combo_dnn/dnn_0/bn/gamma/Initializer/ones:08
К
combo_dnn/dnn_0/bn/beta:0combo_dnn/dnn_0/bn/beta/Assigncombo_dnn/dnn_0/bn/beta/read:02+combo_dnn/dnn_0/bn/beta/Initializer/zeros:08
и
 combo_dnn/dnn_0/bn/moving_mean:0%combo_dnn/dnn_0/bn/moving_mean/Assign%combo_dnn/dnn_0/bn/moving_mean/read:022combo_dnn/dnn_0/bn/moving_mean/Initializer/zeros:0@H
╖
$combo_dnn/dnn_0/bn/moving_variance:0)combo_dnn/dnn_0/bn/moving_variance/Assign)combo_dnn/dnn_0/bn/moving_variance/read:025combo_dnn/dnn_0/bn/moving_variance/Initializer/ones:0@H
П
combo_dnn/dnn_1/kernel:0combo_dnn/dnn_1/kernel/Assigncombo_dnn/dnn_1/kernel/read:023combo_dnn/dnn_1/kernel/Initializer/random_uniform:08
~
combo_dnn/dnn_1/bias:0combo_dnn/dnn_1/bias/Assigncombo_dnn/dnn_1/bias/read:02(combo_dnn/dnn_1/bias/Initializer/zeros:08
Н
combo_dnn/dnn_1/bn/gamma:0combo_dnn/dnn_1/bn/gamma/Assigncombo_dnn/dnn_1/bn/gamma/read:02+combo_dnn/dnn_1/bn/gamma/Initializer/ones:08
К
combo_dnn/dnn_1/bn/beta:0combo_dnn/dnn_1/bn/beta/Assigncombo_dnn/dnn_1/bn/beta/read:02+combo_dnn/dnn_1/bn/beta/Initializer/zeros:08
и
 combo_dnn/dnn_1/bn/moving_mean:0%combo_dnn/dnn_1/bn/moving_mean/Assign%combo_dnn/dnn_1/bn/moving_mean/read:022combo_dnn/dnn_1/bn/moving_mean/Initializer/zeros:0@H
╖
$combo_dnn/dnn_1/bn/moving_variance:0)combo_dnn/dnn_1/bn/moving_variance/Assign)combo_dnn/dnn_1/bn/moving_variance/read:025combo_dnn/dnn_1/bn/moving_variance/Initializer/ones:0@H
П
combo_dnn/dnn_2/kernel:0combo_dnn/dnn_2/kernel/Assigncombo_dnn/dnn_2/kernel/read:023combo_dnn/dnn_2/kernel/Initializer/random_uniform:08
~
combo_dnn/dnn_2/bias:0combo_dnn/dnn_2/bias/Assigncombo_dnn/dnn_2/bias/read:02(combo_dnn/dnn_2/bias/Initializer/zeros:08
Н
combo_dnn/dnn_2/bn/gamma:0combo_dnn/dnn_2/bn/gamma/Assigncombo_dnn/dnn_2/bn/gamma/read:02+combo_dnn/dnn_2/bn/gamma/Initializer/ones:08
К
combo_dnn/dnn_2/bn/beta:0combo_dnn/dnn_2/bn/beta/Assigncombo_dnn/dnn_2/bn/beta/read:02+combo_dnn/dnn_2/bn/beta/Initializer/zeros:08
и
 combo_dnn/dnn_2/bn/moving_mean:0%combo_dnn/dnn_2/bn/moving_mean/Assign%combo_dnn/dnn_2/bn/moving_mean/read:022combo_dnn/dnn_2/bn/moving_mean/Initializer/zeros:0@H
╖
$combo_dnn/dnn_2/bn/moving_variance:0)combo_dnn/dnn_2/bn/moving_variance/Assign)combo_dnn/dnn_2/bn/moving_variance/read:025combo_dnn/dnn_2/bn/moving_variance/Initializer/ones:0@H
П
combo_dnn/dnn_3/kernel:0combo_dnn/dnn_3/kernel/Assigncombo_dnn/dnn_3/kernel/read:023combo_dnn/dnn_3/kernel/Initializer/random_uniform:08
~
combo_dnn/dnn_3/bias:0combo_dnn/dnn_3/bias/Assigncombo_dnn/dnn_3/bias/read:02(combo_dnn/dnn_3/bias/Initializer/zeros:08
Н
combo_dnn/dnn_3/bn/gamma:0combo_dnn/dnn_3/bn/gamma/Assigncombo_dnn/dnn_3/bn/gamma/read:02+combo_dnn/dnn_3/bn/gamma/Initializer/ones:08
К
combo_dnn/dnn_3/bn/beta:0combo_dnn/dnn_3/bn/beta/Assigncombo_dnn/dnn_3/bn/beta/read:02+combo_dnn/dnn_3/bn/beta/Initializer/zeros:08
и
 combo_dnn/dnn_3/bn/moving_mean:0%combo_dnn/dnn_3/bn/moving_mean/Assign%combo_dnn/dnn_3/bn/moving_mean/read:022combo_dnn/dnn_3/bn/moving_mean/Initializer/zeros:0@H
╖
$combo_dnn/dnn_3/bn/moving_variance:0)combo_dnn/dnn_3/bn/moving_variance/Assign)combo_dnn/dnn_3/bn/moving_variance/read:025combo_dnn/dnn_3/bn/moving_variance/Initializer/ones:0@H
П
final_dnn/dnn_0/kernel:0final_dnn/dnn_0/kernel/Assignfinal_dnn/dnn_0/kernel/read:023final_dnn/dnn_0/kernel/Initializer/random_uniform:08
~
final_dnn/dnn_0/bias:0final_dnn/dnn_0/bias/Assignfinal_dnn/dnn_0/bias/read:02(final_dnn/dnn_0/bias/Initializer/zeros:08
Н
final_dnn/dnn_0/bn/gamma:0final_dnn/dnn_0/bn/gamma/Assignfinal_dnn/dnn_0/bn/gamma/read:02+final_dnn/dnn_0/bn/gamma/Initializer/ones:08
К
final_dnn/dnn_0/bn/beta:0final_dnn/dnn_0/bn/beta/Assignfinal_dnn/dnn_0/bn/beta/read:02+final_dnn/dnn_0/bn/beta/Initializer/zeros:08
и
 final_dnn/dnn_0/bn/moving_mean:0%final_dnn/dnn_0/bn/moving_mean/Assign%final_dnn/dnn_0/bn/moving_mean/read:022final_dnn/dnn_0/bn/moving_mean/Initializer/zeros:0@H
╖
$final_dnn/dnn_0/bn/moving_variance:0)final_dnn/dnn_0/bn/moving_variance/Assign)final_dnn/dnn_0/bn/moving_variance/read:025final_dnn/dnn_0/bn/moving_variance/Initializer/ones:0@H
П
final_dnn/dnn_1/kernel:0final_dnn/dnn_1/kernel/Assignfinal_dnn/dnn_1/kernel/read:023final_dnn/dnn_1/kernel/Initializer/random_uniform:08
~
final_dnn/dnn_1/bias:0final_dnn/dnn_1/bias/Assignfinal_dnn/dnn_1/bias/read:02(final_dnn/dnn_1/bias/Initializer/zeros:08
Н
final_dnn/dnn_1/bn/gamma:0final_dnn/dnn_1/bn/gamma/Assignfinal_dnn/dnn_1/bn/gamma/read:02+final_dnn/dnn_1/bn/gamma/Initializer/ones:08
К
final_dnn/dnn_1/bn/beta:0final_dnn/dnn_1/bn/beta/Assignfinal_dnn/dnn_1/bn/beta/read:02+final_dnn/dnn_1/bn/beta/Initializer/zeros:08
и
 final_dnn/dnn_1/bn/moving_mean:0%final_dnn/dnn_1/bn/moving_mean/Assign%final_dnn/dnn_1/bn/moving_mean/read:022final_dnn/dnn_1/bn/moving_mean/Initializer/zeros:0@H
╖
$final_dnn/dnn_1/bn/moving_variance:0)final_dnn/dnn_1/bn/moving_variance/Assign)final_dnn/dnn_1/bn/moving_variance/read:025final_dnn/dnn_1/bn/moving_variance/Initializer/ones:0@H
П
final_dnn/dnn_2/kernel:0final_dnn/dnn_2/kernel/Assignfinal_dnn/dnn_2/kernel/read:023final_dnn/dnn_2/kernel/Initializer/random_uniform:08
~
final_dnn/dnn_2/bias:0final_dnn/dnn_2/bias/Assignfinal_dnn/dnn_2/bias/read:02(final_dnn/dnn_2/bias/Initializer/zeros:08
Н
final_dnn/dnn_2/bn/gamma:0final_dnn/dnn_2/bn/gamma/Assignfinal_dnn/dnn_2/bn/gamma/read:02+final_dnn/dnn_2/bn/gamma/Initializer/ones:08
К
final_dnn/dnn_2/bn/beta:0final_dnn/dnn_2/bn/beta/Assignfinal_dnn/dnn_2/bn/beta/read:02+final_dnn/dnn_2/bn/beta/Initializer/zeros:08
и
 final_dnn/dnn_2/bn/moving_mean:0%final_dnn/dnn_2/bn/moving_mean/Assign%final_dnn/dnn_2/bn/moving_mean/read:022final_dnn/dnn_2/bn/moving_mean/Initializer/zeros:0@H
╖
$final_dnn/dnn_2/bn/moving_variance:0)final_dnn/dnn_2/bn/moving_variance/Assign)final_dnn/dnn_2/bn/moving_variance/read:025final_dnn/dnn_2/bn/moving_variance/Initializer/ones:0@H
П
final_dnn/dnn_3/kernel:0final_dnn/dnn_3/kernel/Assignfinal_dnn/dnn_3/kernel/read:023final_dnn/dnn_3/kernel/Initializer/random_uniform:08
~
final_dnn/dnn_3/bias:0final_dnn/dnn_3/bias/Assignfinal_dnn/dnn_3/bias/read:02(final_dnn/dnn_3/bias/Initializer/zeros:08
Н
final_dnn/dnn_3/bn/gamma:0final_dnn/dnn_3/bn/gamma/Assignfinal_dnn/dnn_3/bn/gamma/read:02+final_dnn/dnn_3/bn/gamma/Initializer/ones:08
К
final_dnn/dnn_3/bn/beta:0final_dnn/dnn_3/bn/beta/Assignfinal_dnn/dnn_3/bn/beta/read:02+final_dnn/dnn_3/bn/beta/Initializer/zeros:08
и
 final_dnn/dnn_3/bn/moving_mean:0%final_dnn/dnn_3/bn/moving_mean/Assign%final_dnn/dnn_3/bn/moving_mean/read:022final_dnn/dnn_3/bn/moving_mean/Initializer/zeros:0@H
╖
$final_dnn/dnn_3/bn/moving_variance:0)final_dnn/dnn_3/bn/moving_variance/Assign)final_dnn/dnn_3/bn/moving_variance/read:025final_dnn/dnn_3/bn/moving_variance/Initializer/ones:0@H
k
output/kernel:0output/kernel/Assignoutput/kernel/read:02*output/kernel/Initializer/random_uniform:08
Z
output/bias:0output/bias/Assignoutput/bias/read:02output/bias/Initializer/zeros:08"(
asset_filepaths

pipeline.config:0"═,
model_variables╣,╢,
Б
4input_layer/adgroup_id_embedding/embedding_weights:09input_layer/adgroup_id_embedding/embedding_weights/Assign9input_layer/adgroup_id_embedding/embedding_weights/read:02Qinput_layer/adgroup_id_embedding/embedding_weights/Initializer/truncated_normal:08
э
/input_layer/brand_embedding/embedding_weights:04input_layer/brand_embedding/embedding_weights/Assign4input_layer/brand_embedding/embedding_weights/read:02Linput_layer/brand_embedding/embedding_weights/Initializer/truncated_normal:08
Е
5input_layer/campaign_id_embedding/embedding_weights:0:input_layer/campaign_id_embedding/embedding_weights/Assign:input_layer/campaign_id_embedding/embedding_weights/read:02Rinput_layer/campaign_id_embedding/embedding_weights/Initializer/truncated_normal:08
ї
1input_layer/cate_id_embedding/embedding_weights:06input_layer/cate_id_embedding/embedding_weights/Assign6input_layer/cate_id_embedding/embedding_weights/read:02Ninput_layer/cate_id_embedding/embedding_weights/Initializer/truncated_normal:08
∙
2input_layer/customer_embedding/embedding_weights:07input_layer/customer_embedding/embedding_weights/Assign7input_layer/customer_embedding/embedding_weights/read:02Oinput_layer/customer_embedding/embedding_weights/Initializer/truncated_normal:08
х
-input_layer/pid_embedding/embedding_weights:02input_layer/pid_embedding/embedding_weights/Assign2input_layer/pid_embedding/embedding_weights/read:02Jinput_layer/pid_embedding/embedding_weights/Initializer/truncated_normal:08
Е
5input_layer_1/age_level_embedding/embedding_weights:0:input_layer_1/age_level_embedding/embedding_weights/Assign:input_layer_1/age_level_embedding/embedding_weights/read:02Rinput_layer_1/age_level_embedding/embedding_weights/Initializer/truncated_normal:08
С
8input_layer_1/cms_group_id_embedding/embedding_weights:0=input_layer_1/cms_group_id_embedding/embedding_weights/Assign=input_layer_1/cms_group_id_embedding/embedding_weights/read:02Uinput_layer_1/cms_group_id_embedding/embedding_weights/Initializer/truncated_normal:08
Е
5input_layer_1/cms_segid_embedding/embedding_weights:0:input_layer_1/cms_segid_embedding/embedding_weights/Assign:input_layer_1/cms_segid_embedding/embedding_weights/read:02Rinput_layer_1/cms_segid_embedding/embedding_weights/Initializer/truncated_normal:08
▒
@input_layer_1/new_user_class_level_embedding/embedding_weights:0Einput_layer_1/new_user_class_level_embedding/embedding_weights/AssignEinput_layer_1/new_user_class_level_embedding/embedding_weights/read:02]input_layer_1/new_user_class_level_embedding/embedding_weights/Initializer/truncated_normal:08
Й
6input_layer_1/occupation_embedding/embedding_weights:0;input_layer_1/occupation_embedding/embedding_weights/Assign;input_layer_1/occupation_embedding/embedding_weights/read:02Sinput_layer_1/occupation_embedding/embedding_weights/Initializer/truncated_normal:08
С
8input_layer_1/pvalue_level_embedding/embedding_weights:0=input_layer_1/pvalue_level_embedding/embedding_weights/Assign=input_layer_1/pvalue_level_embedding/embedding_weights/read:02Uinput_layer_1/pvalue_level_embedding/embedding_weights/Initializer/truncated_normal:08
Щ
:input_layer_1/shopping_level_embedding/embedding_weights:0?input_layer_1/shopping_level_embedding/embedding_weights/Assign?input_layer_1/shopping_level_embedding/embedding_weights/read:02Winput_layer_1/shopping_level_embedding/embedding_weights/Initializer/truncated_normal:08
▐
:input_layer_1/user_id_embedding/embedding_weights/part_0:0?input_layer_1/user_id_embedding/embedding_weights/part_0/Assign?input_layer_1/user_id_embedding/embedding_weights/part_0/read:0"C
1input_layer_1/user_id_embedding/embedding_weightsаН  "и├2Winput_layer_1/user_id_embedding/embedding_weights/part_0/Initializer/truncated_normal:08
р
:input_layer_1/user_id_embedding/embedding_weights/part_1:0?input_layer_1/user_id_embedding/embedding_weights/part_1/Assign?input_layer_1/user_id_embedding/embedding_weights/part_1/read:0"E
1input_layer_1/user_id_embedding/embedding_weightsаНи├ "и├2Winput_layer_1/user_id_embedding/embedding_weights/part_1/Initializer/truncated_normal:08
р
:input_layer_1/user_id_embedding/embedding_weights/part_2:0?input_layer_1/user_id_embedding/embedding_weights/part_2/Assign?input_layer_1/user_id_embedding/embedding_weights/part_2/read:0"E
1input_layer_1/user_id_embedding/embedding_weightsаН╨Ж "и├2Winput_layer_1/user_id_embedding/embedding_weights/part_2/Initializer/truncated_normal:08
р
:input_layer_1/user_id_embedding/embedding_weights/part_3:0?input_layer_1/user_id_embedding/embedding_weights/part_3/Assign?input_layer_1/user_id_embedding/embedding_weights/part_3/read:0"E
1input_layer_1/user_id_embedding/embedding_weightsаН°╔ "и├2Winput_layer_1/user_id_embedding/embedding_weights/part_3/Initializer/truncated_normal:08
Х
9input_layer_1/user_tag_cate_embedding/embedding_weights:0>input_layer_1/user_tag_cate_embedding/embedding_weights/Assign>input_layer_1/user_tag_cate_embedding/embedding_weights/read:02Vinput_layer_1/user_tag_cate_embedding/embedding_weights/Initializer/truncated_normal:08
Н
7input_layer_2/combo_brand_embedding/embedding_weights:0<input_layer_2/combo_brand_embedding/embedding_weights/Assign<input_layer_2/combo_brand_embedding/embedding_weights/read:02Tinput_layer_2/combo_brand_embedding/embedding_weights/Initializer/truncated_normal:08
Х
9input_layer_2/combo_cate_id_embedding/embedding_weights:0>input_layer_2/combo_cate_id_embedding/embedding_weights/Assign>input_layer_2/combo_cate_id_embedding/embedding_weights/read:02Vinput_layer_2/combo_cate_id_embedding/embedding_weights/Initializer/truncated_normal:08"┐Y
__rank_service_embeddingвYЯY
Щ{"name": "adgroup_id_embedding", "bucket_size": 100000, "combiner": "mean", "is_embedding_var": false, "weights_op_path": "input_layer/adgroup_id_embedding/embedding_weights:0", "tensor": [{"is_dense": true, "node_path": "input_layer/adgroup_id_embedding/adgroup_id_embedding_weights/Reshape_2:0", "shape": [null, 16], "dtype": "float32"}], "input": [{"is_dense": false, "values": {"node_path": "input_layer/adgroup_id_embedding/lookup:0", "shape": [null], "dtype": "int64"}, "indices": {"node_path": "StringSplit_8/StringSplit:0", "shape": [null, 2], "dtype": "int64"}, "dense_shape": {"node_path": "StringSplit_8/StringSplit:2", "shape": [2], "dtype": "int64"}}]}
В{"name": "brand_embedding", "bucket_size": 100000, "combiner": "mean", "is_embedding_var": false, "weights_op_path": "input_layer/brand_embedding/embedding_weights:0", "tensor": [{"is_dense": true, "node_path": "input_layer/brand_embedding/brand_embedding_weights/Reshape_2:0", "shape": [null, 16], "dtype": "float32"}], "input": [{"is_dense": false, "values": {"node_path": "input_layer/brand_embedding/lookup:0", "shape": [null], "dtype": "int64"}, "indices": {"node_path": "StringSplit_12/StringSplit:0", "shape": [null, 2], "dtype": "int64"}, "dense_shape": {"node_path": "StringSplit_12/StringSplit:2", "shape": [2], "dtype": "int64"}}]}
а{"name": "campaign_id_embedding", "bucket_size": 100000, "combiner": "mean", "is_embedding_var": false, "weights_op_path": "input_layer/campaign_id_embedding/embedding_weights:0", "tensor": [{"is_dense": true, "node_path": "input_layer/campaign_id_embedding/campaign_id_embedding_weights/Reshape_2:0", "shape": [null, 16], "dtype": "float32"}], "input": [{"is_dense": false, "values": {"node_path": "input_layer/campaign_id_embedding/lookup:0", "shape": [null], "dtype": "int64"}, "indices": {"node_path": "StringSplit_10/StringSplit:0", "shape": [null, 2], "dtype": "int64"}, "dense_shape": {"node_path": "StringSplit_10/StringSplit:2", "shape": [2], "dtype": "int64"}}]}
К{"name": "cate_id_embedding", "bucket_size": 100000, "combiner": "mean", "is_embedding_var": false, "weights_op_path": "input_layer/cate_id_embedding/embedding_weights:0", "tensor": [{"is_dense": true, "node_path": "input_layer/cate_id_embedding/cate_id_embedding_weights/Reshape_2:0", "shape": [null, 16], "dtype": "float32"}], "input": [{"is_dense": false, "values": {"node_path": "input_layer/cate_id_embedding/lookup:0", "shape": [null], "dtype": "int64"}, "indices": {"node_path": "StringSplit_9/StringSplit:0", "shape": [null, 2], "dtype": "int64"}, "dense_shape": {"node_path": "StringSplit_9/StringSplit:2", "shape": [2], "dtype": "int64"}}]}
С{"name": "customer_embedding", "bucket_size": 100000, "combiner": "mean", "is_embedding_var": false, "weights_op_path": "input_layer/customer_embedding/embedding_weights:0", "tensor": [{"is_dense": true, "node_path": "input_layer/customer_embedding/customer_embedding_weights/Reshape_2:0", "shape": [null, 16], "dtype": "float32"}], "input": [{"is_dense": false, "values": {"node_path": "input_layer/customer_embedding/lookup:0", "shape": [null], "dtype": "int64"}, "indices": {"node_path": "StringSplit_11/StringSplit:0", "shape": [null, 2], "dtype": "int64"}, "dense_shape": {"node_path": "StringSplit_11/StringSplit:2", "shape": [2], "dtype": "int64"}}]}
°{"name": "pid_embedding", "bucket_size": 100000, "combiner": "mean", "is_embedding_var": false, "weights_op_path": "input_layer/pid_embedding/embedding_weights:0", "tensor": [{"is_dense": true, "node_path": "input_layer/pid_embedding/pid_embedding_weights/Reshape_2:0", "shape": [null, 16], "dtype": "float32"}], "input": [{"is_dense": false, "values": {"node_path": "input_layer/pid_embedding/lookup:0", "shape": [null], "dtype": "int64"}, "indices": {"node_path": "StringSplit_13/StringSplit:0", "shape": [null, 2], "dtype": "int64"}, "dense_shape": {"node_path": "StringSplit_13/StringSplit:2", "shape": [2], "dtype": "int64"}}]}
Ц{"name": "age_level_embedding", "bucket_size": 10, "combiner": "mean", "is_embedding_var": false, "weights_op_path": "input_layer_1/age_level_embedding/embedding_weights:0", "tensor": [{"is_dense": true, "node_path": "input_layer_1/age_level_embedding/age_level_embedding_weights/Reshape_2:0", "shape": [null, 16], "dtype": "float32"}], "input": [{"is_dense": false, "values": {"node_path": "input_layer_1/age_level_embedding/lookup:0", "shape": [null], "dtype": "int64"}, "indices": {"node_path": "StringSplit_3/StringSplit:0", "shape": [null, 2], "dtype": "int64"}, "dense_shape": {"node_path": "StringSplit_3/StringSplit:2", "shape": [2], "dtype": "int64"}}]}
ж{"name": "cms_group_id_embedding", "bucket_size": 100, "combiner": "mean", "is_embedding_var": false, "weights_op_path": "input_layer_1/cms_group_id_embedding/embedding_weights:0", "tensor": [{"is_dense": true, "node_path": "input_layer_1/cms_group_id_embedding/cms_group_id_embedding_weights/Reshape_2:0", "shape": [null, 16], "dtype": "float32"}], "input": [{"is_dense": false, "values": {"node_path": "input_layer_1/cms_group_id_embedding/lookup:0", "shape": [null], "dtype": "int64"}, "indices": {"node_path": "StringSplit_2/StringSplit:0", "shape": [null, 2], "dtype": "int64"}, "dense_shape": {"node_path": "StringSplit_2/StringSplit:2", "shape": [2], "dtype": "int64"}}]}
Ч{"name": "cms_segid_embedding", "bucket_size": 100, "combiner": "mean", "is_embedding_var": false, "weights_op_path": "input_layer_1/cms_segid_embedding/embedding_weights:0", "tensor": [{"is_dense": true, "node_path": "input_layer_1/cms_segid_embedding/cms_segid_embedding_weights/Reshape_2:0", "shape": [null, 16], "dtype": "float32"}], "input": [{"is_dense": false, "values": {"node_path": "input_layer_1/cms_segid_embedding/lookup:0", "shape": [null], "dtype": "int64"}, "indices": {"node_path": "StringSplit_1/StringSplit:0", "shape": [null, 2], "dtype": "int64"}, "dense_shape": {"node_path": "StringSplit_1/StringSplit:2", "shape": [2], "dtype": "int64"}}]}
═{"name": "new_user_class_level_embedding", "bucket_size": 10, "combiner": "mean", "is_embedding_var": false, "weights_op_path": "input_layer_1/new_user_class_level_embedding/embedding_weights:0", "tensor": [{"is_dense": true, "node_path": "input_layer_1/new_user_class_level_embedding/new_user_class_level_embedding_weights/Reshape_2:0", "shape": [null, 16], "dtype": "float32"}], "input": [{"is_dense": false, "values": {"node_path": "input_layer_1/new_user_class_level_embedding/lookup:0", "shape": [null], "dtype": "int64"}, "indices": {"node_path": "StringSplit_7/StringSplit:0", "shape": [null, 2], "dtype": "int64"}, "dense_shape": {"node_path": "StringSplit_7/StringSplit:2", "shape": [2], "dtype": "int64"}}]}
Ы{"name": "occupation_embedding", "bucket_size": 10, "combiner": "mean", "is_embedding_var": false, "weights_op_path": "input_layer_1/occupation_embedding/embedding_weights:0", "tensor": [{"is_dense": true, "node_path": "input_layer_1/occupation_embedding/occupation_embedding_weights/Reshape_2:0", "shape": [null, 16], "dtype": "float32"}], "input": [{"is_dense": false, "values": {"node_path": "input_layer_1/occupation_embedding/lookup:0", "shape": [null], "dtype": "int64"}, "indices": {"node_path": "StringSplit_6/StringSplit:0", "shape": [null, 2], "dtype": "int64"}, "dense_shape": {"node_path": "StringSplit_6/StringSplit:2", "shape": [2], "dtype": "int64"}}]}
е{"name": "pvalue_level_embedding", "bucket_size": 10, "combiner": "mean", "is_embedding_var": false, "weights_op_path": "input_layer_1/pvalue_level_embedding/embedding_weights:0", "tensor": [{"is_dense": true, "node_path": "input_layer_1/pvalue_level_embedding/pvalue_level_embedding_weights/Reshape_2:0", "shape": [null, 16], "dtype": "float32"}], "input": [{"is_dense": false, "values": {"node_path": "input_layer_1/pvalue_level_embedding/lookup:0", "shape": [null], "dtype": "int64"}, "indices": {"node_path": "StringSplit_4/StringSplit:0", "shape": [null, 2], "dtype": "int64"}, "dense_shape": {"node_path": "StringSplit_4/StringSplit:2", "shape": [2], "dtype": "int64"}}]}
п{"name": "shopping_level_embedding", "bucket_size": 10, "combiner": "mean", "is_embedding_var": false, "weights_op_path": "input_layer_1/shopping_level_embedding/embedding_weights:0", "tensor": [{"is_dense": true, "node_path": "input_layer_1/shopping_level_embedding/shopping_level_embedding_weights/Reshape_2:0", "shape": [null, 16], "dtype": "float32"}], "input": [{"is_dense": false, "values": {"node_path": "input_layer_1/shopping_level_embedding/lookup:0", "shape": [null], "dtype": "int64"}, "indices": {"node_path": "StringSplit_5/StringSplit:0", "shape": [null, 2], "dtype": "int64"}, "dense_shape": {"node_path": "StringSplit_5/StringSplit:2", "shape": [2], "dtype": "int64"}}]}
К{"name": "user_id_embedding", "bucket_size": 100000, "combiner": "mean", "is_embedding_var": false, "weights_op_path": "input_layer_1/user_id_embedding/embedding_weights", "tensor": [{"is_dense": true, "node_path": "input_layer_1/user_id_embedding/user_id_embedding_weights/Reshape_2:0", "shape": [null, 16], "dtype": "float32"}], "input": [{"is_dense": false, "values": {"node_path": "input_layer_1/user_id_embedding/lookup:0", "shape": [null], "dtype": "int64"}, "indices": {"node_path": "StringSplit/StringSplit:0", "shape": [null, 2], "dtype": "int64"}, "dense_shape": {"node_path": "StringSplit/StringSplit:2", "shape": [2], "dtype": "int64"}}]}
░{"name": "user_tag_cate_embedding", "bucket_size": 100000, "combiner": "mean", "is_embedding_var": false, "weights_op_path": "input_layer_1/user_tag_cate_embedding/embedding_weights:0", "tensor": [{"is_dense": true, "node_path": "input_layer_1/user_tag_cate_embedding/user_tag_cate_embedding_weights/Reshape_2:0", "shape": [null, 16], "dtype": "float32"}], "input": [{"is_dense": false, "values": {"node_path": "input_layer_1/user_tag_cate_embedding/lookup:0", "shape": [null], "dtype": "int64"}, "indices": {"node_path": "StringSplit_14/StringSplit:0", "shape": [null, 2], "dtype": "int64"}, "dense_shape": {"node_path": "StringSplit_14/StringSplit:2", "shape": [2], "dtype": "int64"}}]}
ж{"name": "combo_brand_embedding", "bucket_size": 100000, "combiner": "mean", "is_embedding_var": false, "weights_op_path": "input_layer_2/combo_brand_embedding/embedding_weights:0", "tensor": [{"is_dense": true, "node_path": "input_layer_2/combo_brand_embedding/combo_brand_embedding_weights/Reshape_2:0", "shape": [null, 16], "dtype": "float32"}], "input": [{"is_dense": false, "values": {"node_path": "input_layer_2/combo_brand_embedding/lookup:0", "shape": [null], "dtype": "int64"}, "indices": {"node_path": "StringSplit_15/StringSplit:0", "shape": [null, 2], "dtype": "int64"}, "dense_shape": {"node_path": "StringSplit_15/StringSplit:2", "shape": [2], "dtype": "int64"}}]}
п{"name": "combo_cate_id_embedding", "bucket_size": 10000, "combiner": "mean", "is_embedding_var": false, "weights_op_path": "input_layer_2/combo_cate_id_embedding/embedding_weights:0", "tensor": [{"is_dense": true, "node_path": "input_layer_2/combo_cate_id_embedding/combo_cate_id_embedding_weights/Reshape_2:0", "shape": [null, 16], "dtype": "float32"}], "input": [{"is_dense": false, "values": {"node_path": "input_layer_2/combo_cate_id_embedding/lookup:0", "shape": [null], "dtype": "int64"}, "indices": {"node_path": "StringSplit_16/StringSplit:0", "shape": [null, 2], "dtype": "int64"}, "dense_shape": {"node_path": "StringSplit_16/StringSplit:2", "shape": [2], "dtype": "int64"}}]}"m
global_step^\
Z
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0H"├
regularization_lossesй
ж
get_regularization_penalty:0
get_regularization_penalty_1:0
get_regularization_penalty_2:0
2item_dnn/dnn_0/kernel/Regularizer/l2_regularizer:0
2item_dnn/dnn_1/kernel/Regularizer/l2_regularizer:0
2item_dnn/dnn_2/kernel/Regularizer/l2_regularizer:0
2item_dnn/dnn_3/kernel/Regularizer/l2_regularizer:0
2user_dnn/dnn_0/kernel/Regularizer/l2_regularizer:0
2user_dnn/dnn_1/kernel/Regularizer/l2_regularizer:0
2user_dnn/dnn_2/kernel/Regularizer/l2_regularizer:0
2user_dnn/dnn_3/kernel/Regularizer/l2_regularizer:0
3combo_dnn/dnn_0/kernel/Regularizer/l2_regularizer:0
3combo_dnn/dnn_1/kernel/Regularizer/l2_regularizer:0
3combo_dnn/dnn_2/kernel/Regularizer/l2_regularizer:0
3combo_dnn/dnn_3/kernel/Regularizer/l2_regularizer:0
3final_dnn/dnn_0/kernel/Regularizer/l2_regularizer:0
3final_dnn/dnn_1/kernel/Regularizer/l2_regularizer:0
3final_dnn/dnn_2/kernel/Regularizer/l2_regularizer:0
3final_dnn/dnn_3/kernel/Regularizer/l2_regularizer:0"╗x
trainable_variablesгxаx
Б
4input_layer/adgroup_id_embedding/embedding_weights:09input_layer/adgroup_id_embedding/embedding_weights/Assign9input_layer/adgroup_id_embedding/embedding_weights/read:02Qinput_layer/adgroup_id_embedding/embedding_weights/Initializer/truncated_normal:08
э
/input_layer/brand_embedding/embedding_weights:04input_layer/brand_embedding/embedding_weights/Assign4input_layer/brand_embedding/embedding_weights/read:02Linput_layer/brand_embedding/embedding_weights/Initializer/truncated_normal:08
Е
5input_layer/campaign_id_embedding/embedding_weights:0:input_layer/campaign_id_embedding/embedding_weights/Assign:input_layer/campaign_id_embedding/embedding_weights/read:02Rinput_layer/campaign_id_embedding/embedding_weights/Initializer/truncated_normal:08
ї
1input_layer/cate_id_embedding/embedding_weights:06input_layer/cate_id_embedding/embedding_weights/Assign6input_layer/cate_id_embedding/embedding_weights/read:02Ninput_layer/cate_id_embedding/embedding_weights/Initializer/truncated_normal:08
∙
2input_layer/customer_embedding/embedding_weights:07input_layer/customer_embedding/embedding_weights/Assign7input_layer/customer_embedding/embedding_weights/read:02Oinput_layer/customer_embedding/embedding_weights/Initializer/truncated_normal:08
х
-input_layer/pid_embedding/embedding_weights:02input_layer/pid_embedding/embedding_weights/Assign2input_layer/pid_embedding/embedding_weights/read:02Jinput_layer/pid_embedding/embedding_weights/Initializer/truncated_normal:08
Е
5input_layer_1/age_level_embedding/embedding_weights:0:input_layer_1/age_level_embedding/embedding_weights/Assign:input_layer_1/age_level_embedding/embedding_weights/read:02Rinput_layer_1/age_level_embedding/embedding_weights/Initializer/truncated_normal:08
С
8input_layer_1/cms_group_id_embedding/embedding_weights:0=input_layer_1/cms_group_id_embedding/embedding_weights/Assign=input_layer_1/cms_group_id_embedding/embedding_weights/read:02Uinput_layer_1/cms_group_id_embedding/embedding_weights/Initializer/truncated_normal:08
Е
5input_layer_1/cms_segid_embedding/embedding_weights:0:input_layer_1/cms_segid_embedding/embedding_weights/Assign:input_layer_1/cms_segid_embedding/embedding_weights/read:02Rinput_layer_1/cms_segid_embedding/embedding_weights/Initializer/truncated_normal:08
▒
@input_layer_1/new_user_class_level_embedding/embedding_weights:0Einput_layer_1/new_user_class_level_embedding/embedding_weights/AssignEinput_layer_1/new_user_class_level_embedding/embedding_weights/read:02]input_layer_1/new_user_class_level_embedding/embedding_weights/Initializer/truncated_normal:08
Й
6input_layer_1/occupation_embedding/embedding_weights:0;input_layer_1/occupation_embedding/embedding_weights/Assign;input_layer_1/occupation_embedding/embedding_weights/read:02Sinput_layer_1/occupation_embedding/embedding_weights/Initializer/truncated_normal:08
С
8input_layer_1/pvalue_level_embedding/embedding_weights:0=input_layer_1/pvalue_level_embedding/embedding_weights/Assign=input_layer_1/pvalue_level_embedding/embedding_weights/read:02Uinput_layer_1/pvalue_level_embedding/embedding_weights/Initializer/truncated_normal:08
Щ
:input_layer_1/shopping_level_embedding/embedding_weights:0?input_layer_1/shopping_level_embedding/embedding_weights/Assign?input_layer_1/shopping_level_embedding/embedding_weights/read:02Winput_layer_1/shopping_level_embedding/embedding_weights/Initializer/truncated_normal:08
▐
:input_layer_1/user_id_embedding/embedding_weights/part_0:0?input_layer_1/user_id_embedding/embedding_weights/part_0/Assign?input_layer_1/user_id_embedding/embedding_weights/part_0/read:0"C
1input_layer_1/user_id_embedding/embedding_weightsаН  "и├2Winput_layer_1/user_id_embedding/embedding_weights/part_0/Initializer/truncated_normal:08
р
:input_layer_1/user_id_embedding/embedding_weights/part_1:0?input_layer_1/user_id_embedding/embedding_weights/part_1/Assign?input_layer_1/user_id_embedding/embedding_weights/part_1/read:0"E
1input_layer_1/user_id_embedding/embedding_weightsаНи├ "и├2Winput_layer_1/user_id_embedding/embedding_weights/part_1/Initializer/truncated_normal:08
р
:input_layer_1/user_id_embedding/embedding_weights/part_2:0?input_layer_1/user_id_embedding/embedding_weights/part_2/Assign?input_layer_1/user_id_embedding/embedding_weights/part_2/read:0"E
1input_layer_1/user_id_embedding/embedding_weightsаН╨Ж "и├2Winput_layer_1/user_id_embedding/embedding_weights/part_2/Initializer/truncated_normal:08
р
:input_layer_1/user_id_embedding/embedding_weights/part_3:0?input_layer_1/user_id_embedding/embedding_weights/part_3/Assign?input_layer_1/user_id_embedding/embedding_weights/part_3/read:0"E
1input_layer_1/user_id_embedding/embedding_weightsаН°╔ "и├2Winput_layer_1/user_id_embedding/embedding_weights/part_3/Initializer/truncated_normal:08
Х
9input_layer_1/user_tag_cate_embedding/embedding_weights:0>input_layer_1/user_tag_cate_embedding/embedding_weights/Assign>input_layer_1/user_tag_cate_embedding/embedding_weights/read:02Vinput_layer_1/user_tag_cate_embedding/embedding_weights/Initializer/truncated_normal:08
Н
7input_layer_2/combo_brand_embedding/embedding_weights:0<input_layer_2/combo_brand_embedding/embedding_weights/Assign<input_layer_2/combo_brand_embedding/embedding_weights/read:02Tinput_layer_2/combo_brand_embedding/embedding_weights/Initializer/truncated_normal:08
Х
9input_layer_2/combo_cate_id_embedding/embedding_weights:0>input_layer_2/combo_cate_id_embedding/embedding_weights/Assign>input_layer_2/combo_cate_id_embedding/embedding_weights/read:02Vinput_layer_2/combo_cate_id_embedding/embedding_weights/Initializer/truncated_normal:08
q
item_fea_bn/gamma:0item_fea_bn/gamma/Assignitem_fea_bn/gamma/read:02$item_fea_bn/gamma/Initializer/ones:08
n
item_fea_bn/beta:0item_fea_bn/beta/Assignitem_fea_bn/beta/read:02$item_fea_bn/beta/Initializer/zeros:08
Л
item_dnn/dnn_0/kernel:0item_dnn/dnn_0/kernel/Assignitem_dnn/dnn_0/kernel/read:022item_dnn/dnn_0/kernel/Initializer/random_uniform:08
z
item_dnn/dnn_0/bias:0item_dnn/dnn_0/bias/Assignitem_dnn/dnn_0/bias/read:02'item_dnn/dnn_0/bias/Initializer/zeros:08
Й
item_dnn/dnn_0/bn/gamma:0item_dnn/dnn_0/bn/gamma/Assignitem_dnn/dnn_0/bn/gamma/read:02*item_dnn/dnn_0/bn/gamma/Initializer/ones:08
Ж
item_dnn/dnn_0/bn/beta:0item_dnn/dnn_0/bn/beta/Assignitem_dnn/dnn_0/bn/beta/read:02*item_dnn/dnn_0/bn/beta/Initializer/zeros:08
Л
item_dnn/dnn_1/kernel:0item_dnn/dnn_1/kernel/Assignitem_dnn/dnn_1/kernel/read:022item_dnn/dnn_1/kernel/Initializer/random_uniform:08
z
item_dnn/dnn_1/bias:0item_dnn/dnn_1/bias/Assignitem_dnn/dnn_1/bias/read:02'item_dnn/dnn_1/bias/Initializer/zeros:08
Й
item_dnn/dnn_1/bn/gamma:0item_dnn/dnn_1/bn/gamma/Assignitem_dnn/dnn_1/bn/gamma/read:02*item_dnn/dnn_1/bn/gamma/Initializer/ones:08
Ж
item_dnn/dnn_1/bn/beta:0item_dnn/dnn_1/bn/beta/Assignitem_dnn/dnn_1/bn/beta/read:02*item_dnn/dnn_1/bn/beta/Initializer/zeros:08
Л
item_dnn/dnn_2/kernel:0item_dnn/dnn_2/kernel/Assignitem_dnn/dnn_2/kernel/read:022item_dnn/dnn_2/kernel/Initializer/random_uniform:08
z
item_dnn/dnn_2/bias:0item_dnn/dnn_2/bias/Assignitem_dnn/dnn_2/bias/read:02'item_dnn/dnn_2/bias/Initializer/zeros:08
Й
item_dnn/dnn_2/bn/gamma:0item_dnn/dnn_2/bn/gamma/Assignitem_dnn/dnn_2/bn/gamma/read:02*item_dnn/dnn_2/bn/gamma/Initializer/ones:08
Ж
item_dnn/dnn_2/bn/beta:0item_dnn/dnn_2/bn/beta/Assignitem_dnn/dnn_2/bn/beta/read:02*item_dnn/dnn_2/bn/beta/Initializer/zeros:08
Л
item_dnn/dnn_3/kernel:0item_dnn/dnn_3/kernel/Assignitem_dnn/dnn_3/kernel/read:022item_dnn/dnn_3/kernel/Initializer/random_uniform:08
z
item_dnn/dnn_3/bias:0item_dnn/dnn_3/bias/Assignitem_dnn/dnn_3/bias/read:02'item_dnn/dnn_3/bias/Initializer/zeros:08
Й
item_dnn/dnn_3/bn/gamma:0item_dnn/dnn_3/bn/gamma/Assignitem_dnn/dnn_3/bn/gamma/read:02*item_dnn/dnn_3/bn/gamma/Initializer/ones:08
Ж
item_dnn/dnn_3/bn/beta:0item_dnn/dnn_3/bn/beta/Assignitem_dnn/dnn_3/bn/beta/read:02*item_dnn/dnn_3/bn/beta/Initializer/zeros:08
q
user_fea_bn/gamma:0user_fea_bn/gamma/Assignuser_fea_bn/gamma/read:02$user_fea_bn/gamma/Initializer/ones:08
n
user_fea_bn/beta:0user_fea_bn/beta/Assignuser_fea_bn/beta/read:02$user_fea_bn/beta/Initializer/zeros:08
Л
user_dnn/dnn_0/kernel:0user_dnn/dnn_0/kernel/Assignuser_dnn/dnn_0/kernel/read:022user_dnn/dnn_0/kernel/Initializer/random_uniform:08
z
user_dnn/dnn_0/bias:0user_dnn/dnn_0/bias/Assignuser_dnn/dnn_0/bias/read:02'user_dnn/dnn_0/bias/Initializer/zeros:08
Й
user_dnn/dnn_0/bn/gamma:0user_dnn/dnn_0/bn/gamma/Assignuser_dnn/dnn_0/bn/gamma/read:02*user_dnn/dnn_0/bn/gamma/Initializer/ones:08
Ж
user_dnn/dnn_0/bn/beta:0user_dnn/dnn_0/bn/beta/Assignuser_dnn/dnn_0/bn/beta/read:02*user_dnn/dnn_0/bn/beta/Initializer/zeros:08
Л
user_dnn/dnn_1/kernel:0user_dnn/dnn_1/kernel/Assignuser_dnn/dnn_1/kernel/read:022user_dnn/dnn_1/kernel/Initializer/random_uniform:08
z
user_dnn/dnn_1/bias:0user_dnn/dnn_1/bias/Assignuser_dnn/dnn_1/bias/read:02'user_dnn/dnn_1/bias/Initializer/zeros:08
Й
user_dnn/dnn_1/bn/gamma:0user_dnn/dnn_1/bn/gamma/Assignuser_dnn/dnn_1/bn/gamma/read:02*user_dnn/dnn_1/bn/gamma/Initializer/ones:08
Ж
user_dnn/dnn_1/bn/beta:0user_dnn/dnn_1/bn/beta/Assignuser_dnn/dnn_1/bn/beta/read:02*user_dnn/dnn_1/bn/beta/Initializer/zeros:08
Л
user_dnn/dnn_2/kernel:0user_dnn/dnn_2/kernel/Assignuser_dnn/dnn_2/kernel/read:022user_dnn/dnn_2/kernel/Initializer/random_uniform:08
z
user_dnn/dnn_2/bias:0user_dnn/dnn_2/bias/Assignuser_dnn/dnn_2/bias/read:02'user_dnn/dnn_2/bias/Initializer/zeros:08
Й
user_dnn/dnn_2/bn/gamma:0user_dnn/dnn_2/bn/gamma/Assignuser_dnn/dnn_2/bn/gamma/read:02*user_dnn/dnn_2/bn/gamma/Initializer/ones:08
Ж
user_dnn/dnn_2/bn/beta:0user_dnn/dnn_2/bn/beta/Assignuser_dnn/dnn_2/bn/beta/read:02*user_dnn/dnn_2/bn/beta/Initializer/zeros:08
Л
user_dnn/dnn_3/kernel:0user_dnn/dnn_3/kernel/Assignuser_dnn/dnn_3/kernel/read:022user_dnn/dnn_3/kernel/Initializer/random_uniform:08
z
user_dnn/dnn_3/bias:0user_dnn/dnn_3/bias/Assignuser_dnn/dnn_3/bias/read:02'user_dnn/dnn_3/bias/Initializer/zeros:08
Й
user_dnn/dnn_3/bn/gamma:0user_dnn/dnn_3/bn/gamma/Assignuser_dnn/dnn_3/bn/gamma/read:02*user_dnn/dnn_3/bn/gamma/Initializer/ones:08
Ж
user_dnn/dnn_3/bn/beta:0user_dnn/dnn_3/bn/beta/Assignuser_dnn/dnn_3/bn/beta/read:02*user_dnn/dnn_3/bn/beta/Initializer/zeros:08
u
combo_fea_bn/gamma:0combo_fea_bn/gamma/Assigncombo_fea_bn/gamma/read:02%combo_fea_bn/gamma/Initializer/ones:08
r
combo_fea_bn/beta:0combo_fea_bn/beta/Assigncombo_fea_bn/beta/read:02%combo_fea_bn/beta/Initializer/zeros:08
П
combo_dnn/dnn_0/kernel:0combo_dnn/dnn_0/kernel/Assigncombo_dnn/dnn_0/kernel/read:023combo_dnn/dnn_0/kernel/Initializer/random_uniform:08
~
combo_dnn/dnn_0/bias:0combo_dnn/dnn_0/bias/Assigncombo_dnn/dnn_0/bias/read:02(combo_dnn/dnn_0/bias/Initializer/zeros:08
Н
combo_dnn/dnn_0/bn/gamma:0combo_dnn/dnn_0/bn/gamma/Assigncombo_dnn/dnn_0/bn/gamma/read:02+combo_dnn/dnn_0/bn/gamma/Initializer/ones:08
К
combo_dnn/dnn_0/bn/beta:0combo_dnn/dnn_0/bn/beta/Assigncombo_dnn/dnn_0/bn/beta/read:02+combo_dnn/dnn_0/bn/beta/Initializer/zeros:08
П
combo_dnn/dnn_1/kernel:0combo_dnn/dnn_1/kernel/Assigncombo_dnn/dnn_1/kernel/read:023combo_dnn/dnn_1/kernel/Initializer/random_uniform:08
~
combo_dnn/dnn_1/bias:0combo_dnn/dnn_1/bias/Assigncombo_dnn/dnn_1/bias/read:02(combo_dnn/dnn_1/bias/Initializer/zeros:08
Н
combo_dnn/dnn_1/bn/gamma:0combo_dnn/dnn_1/bn/gamma/Assigncombo_dnn/dnn_1/bn/gamma/read:02+combo_dnn/dnn_1/bn/gamma/Initializer/ones:08
К
combo_dnn/dnn_1/bn/beta:0combo_dnn/dnn_1/bn/beta/Assigncombo_dnn/dnn_1/bn/beta/read:02+combo_dnn/dnn_1/bn/beta/Initializer/zeros:08
П
combo_dnn/dnn_2/kernel:0combo_dnn/dnn_2/kernel/Assigncombo_dnn/dnn_2/kernel/read:023combo_dnn/dnn_2/kernel/Initializer/random_uniform:08
~
combo_dnn/dnn_2/bias:0combo_dnn/dnn_2/bias/Assigncombo_dnn/dnn_2/bias/read:02(combo_dnn/dnn_2/bias/Initializer/zeros:08
Н
combo_dnn/dnn_2/bn/gamma:0combo_dnn/dnn_2/bn/gamma/Assigncombo_dnn/dnn_2/bn/gamma/read:02+combo_dnn/dnn_2/bn/gamma/Initializer/ones:08
К
combo_dnn/dnn_2/bn/beta:0combo_dnn/dnn_2/bn/beta/Assigncombo_dnn/dnn_2/bn/beta/read:02+combo_dnn/dnn_2/bn/beta/Initializer/zeros:08
П
combo_dnn/dnn_3/kernel:0combo_dnn/dnn_3/kernel/Assigncombo_dnn/dnn_3/kernel/read:023combo_dnn/dnn_3/kernel/Initializer/random_uniform:08
~
combo_dnn/dnn_3/bias:0combo_dnn/dnn_3/bias/Assigncombo_dnn/dnn_3/bias/read:02(combo_dnn/dnn_3/bias/Initializer/zeros:08
Н
combo_dnn/dnn_3/bn/gamma:0combo_dnn/dnn_3/bn/gamma/Assigncombo_dnn/dnn_3/bn/gamma/read:02+combo_dnn/dnn_3/bn/gamma/Initializer/ones:08
К
combo_dnn/dnn_3/bn/beta:0combo_dnn/dnn_3/bn/beta/Assigncombo_dnn/dnn_3/bn/beta/read:02+combo_dnn/dnn_3/bn/beta/Initializer/zeros:08
П
final_dnn/dnn_0/kernel:0final_dnn/dnn_0/kernel/Assignfinal_dnn/dnn_0/kernel/read:023final_dnn/dnn_0/kernel/Initializer/random_uniform:08
~
final_dnn/dnn_0/bias:0final_dnn/dnn_0/bias/Assignfinal_dnn/dnn_0/bias/read:02(final_dnn/dnn_0/bias/Initializer/zeros:08
Н
final_dnn/dnn_0/bn/gamma:0final_dnn/dnn_0/bn/gamma/Assignfinal_dnn/dnn_0/bn/gamma/read:02+final_dnn/dnn_0/bn/gamma/Initializer/ones:08
К
final_dnn/dnn_0/bn/beta:0final_dnn/dnn_0/bn/beta/Assignfinal_dnn/dnn_0/bn/beta/read:02+final_dnn/dnn_0/bn/beta/Initializer/zeros:08
П
final_dnn/dnn_1/kernel:0final_dnn/dnn_1/kernel/Assignfinal_dnn/dnn_1/kernel/read:023final_dnn/dnn_1/kernel/Initializer/random_uniform:08
~
final_dnn/dnn_1/bias:0final_dnn/dnn_1/bias/Assignfinal_dnn/dnn_1/bias/read:02(final_dnn/dnn_1/bias/Initializer/zeros:08
Н
final_dnn/dnn_1/bn/gamma:0final_dnn/dnn_1/bn/gamma/Assignfinal_dnn/dnn_1/bn/gamma/read:02+final_dnn/dnn_1/bn/gamma/Initializer/ones:08
К
final_dnn/dnn_1/bn/beta:0final_dnn/dnn_1/bn/beta/Assignfinal_dnn/dnn_1/bn/beta/read:02+final_dnn/dnn_1/bn/beta/Initializer/zeros:08
П
final_dnn/dnn_2/kernel:0final_dnn/dnn_2/kernel/Assignfinal_dnn/dnn_2/kernel/read:023final_dnn/dnn_2/kernel/Initializer/random_uniform:08
~
final_dnn/dnn_2/bias:0final_dnn/dnn_2/bias/Assignfinal_dnn/dnn_2/bias/read:02(final_dnn/dnn_2/bias/Initializer/zeros:08
Н
final_dnn/dnn_2/bn/gamma:0final_dnn/dnn_2/bn/gamma/Assignfinal_dnn/dnn_2/bn/gamma/read:02+final_dnn/dnn_2/bn/gamma/Initializer/ones:08
К
final_dnn/dnn_2/bn/beta:0final_dnn/dnn_2/bn/beta/Assignfinal_dnn/dnn_2/bn/beta/read:02+final_dnn/dnn_2/bn/beta/Initializer/zeros:08
П
final_dnn/dnn_3/kernel:0final_dnn/dnn_3/kernel/Assignfinal_dnn/dnn_3/kernel/read:023final_dnn/dnn_3/kernel/Initializer/random_uniform:08
~
final_dnn/dnn_3/bias:0final_dnn/dnn_3/bias/Assignfinal_dnn/dnn_3/bias/read:02(final_dnn/dnn_3/bias/Initializer/zeros:08
Н
final_dnn/dnn_3/bn/gamma:0final_dnn/dnn_3/bn/gamma/Assignfinal_dnn/dnn_3/bn/gamma/read:02+final_dnn/dnn_3/bn/gamma/Initializer/ones:08
К
final_dnn/dnn_3/bn/beta:0final_dnn/dnn_3/bn/beta/Assignfinal_dnn/dnn_3/bn/beta/read:02+final_dnn/dnn_3/bn/beta/Initializer/zeros:08
k
output/kernel:0output/kernel/Assignoutput/kernel/read:02*output/kernel/Initializer/random_uniform:08
Z
output/bias:0output/bias/Assignoutput/bias/read:02output/bias/Initializer/zeros:08"%
saved_model_main_op


group_deps*Я
serving_defaultЛ
)
	age_level
	input_4:0         
.
combo_cate_id

input_18:0         
(
cate_id

input_10:0         
,
campaign_id

input_11:0         
)
	cms_segid
	input_2:0         
&
price

input_14:0         
.
shopping_level
	input_6:0         
,
pvalue_level
	input_5:0         
,
cms_group_id
	input_3:0         
*

occupation
	input_7:0         
$
pid

input_15:0         
'
user_id
	input_1:0         
.
user_tag_cate

input_16:0         
)
customer

input_12:0         
4
new_user_class_level
	input_8:0         
*

adgroup_id
	input_9:0         
&
brand

input_13:0         
,
combo_brand

input_17:0         %
probs
	Sigmoid:0         &
logits
	Squeeze:0         tensorflow/serving/predict