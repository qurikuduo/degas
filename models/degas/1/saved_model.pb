Šľ
Ü;ž;
,
Abs
x"T
y"T"
Ttype:

2	
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeint
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
s
	AssignAdd
ref"T

value"T

output_ref"T" 
Ttype:
2	"
use_lockingbool( 
E
AssignAddVariableOp
resource
value"dtype"
dtypetype
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
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
ě
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)


Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)


Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

š
DenseToDenseSetOperation	
set1"T	
set2"T
result_indices	
result_values"T
result_shape	"
set_operationstring"
validate_indicesbool("
Ttype:
	2	
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
B
Equal
x"T
y"T
z
"
Ttype:
2	

,
Exp
x"T
y"T"
Ttype:

2
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
,
Floor
x"T
y"T"
Ttype:
2
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
=
Greater
x"T
y"T
z
"
Ttype:
2	
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
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
,
Log
x"T
y"T"
Ttype:

2
.
Log1p
x"T
y"T"
Ttype:

2
$

LogicalAnd
x

y

z

p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
Ô
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
î
MaxPoolGrad

orig_input"T
orig_output"T	
grad"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype0:
2	
;
Maximum
x"T
y"T
z"T"
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
;
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
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
6
Pow
x"T
y"T
z"T"
Ttype:

2	

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
2	
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
5

Reciprocal
x"T
y"T"
Ttype:

2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	

ResourceGather
resource
indices"Tindices
output"dtype"
validate_indicesbool("
dtypetype"
Tindicestype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
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
=
SigmoidGrad
y"T
dy"T
z"T"
Ttype:

2
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
-
Sqrt
x"T
y"T"
Ttype:

2
1
Square
x"T
y"T"
Ttype:

2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
ö
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
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
Á
UnsortedSegmentSum	
data"T
segment_ids"Tindices
num_segments"Tnumsegments
output"T" 
Ttype:
2	"
Tindicestype:
2	" 
Tnumsegmentstype0:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape
9
VarIsInitializedOp
resource
is_initialized

O
VariableShape	
input
output"out_type"
out_typetype0:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring 
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.11.02
b'unknown'Ä
m

main_inputPlaceholder*
dtype0*
shape:˙˙˙˙˙˙˙˙˙K*'
_output_shapes
:˙˙˙˙˙˙˙˙˙K
Ż
5embedding/embeddings/Initializer/random_uniform/shapeConst*'
_class
loc:@embedding/embeddings*
dtype0*
_output_shapes
:*
valueB"      
Ą
3embedding/embeddings/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *'
_class
loc:@embedding/embeddings*
valueB
 *ÍĚL˝
Ą
3embedding/embeddings/Initializer/random_uniform/maxConst*
valueB
 *ÍĚL=*'
_class
loc:@embedding/embeddings*
dtype0*
_output_shapes
: 
˙
=embedding/embeddings/Initializer/random_uniform/RandomUniformRandomUniform5embedding/embeddings/Initializer/random_uniform/shape*
dtype0*
T0*'
_class
loc:@embedding/embeddings*
seed2 * 
_output_shapes
:
*

seed 
î
3embedding/embeddings/Initializer/random_uniform/subSub3embedding/embeddings/Initializer/random_uniform/max3embedding/embeddings/Initializer/random_uniform/min*
_output_shapes
: *'
_class
loc:@embedding/embeddings*
T0

3embedding/embeddings/Initializer/random_uniform/mulMul=embedding/embeddings/Initializer/random_uniform/RandomUniform3embedding/embeddings/Initializer/random_uniform/sub*'
_class
loc:@embedding/embeddings*
T0* 
_output_shapes
:

ô
/embedding/embeddings/Initializer/random_uniformAdd3embedding/embeddings/Initializer/random_uniform/mul3embedding/embeddings/Initializer/random_uniform/min*
T0* 
_output_shapes
:
*'
_class
loc:@embedding/embeddings
Ŕ
embedding/embeddingsVarHandleOp*
	container *%
shared_nameembedding/embeddings*
dtype0*
_output_shapes
: *
shape:
*'
_class
loc:@embedding/embeddings
y
5embedding/embeddings/IsInitialized/VarIsInitializedOpVarIsInitializedOpembedding/embeddings*
_output_shapes
: 
Ź
embedding/embeddings/AssignAssignVariableOpembedding/embeddings/embedding/embeddings/Initializer/random_uniform*'
_class
loc:@embedding/embeddings*
dtype0
¨
(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings*'
_class
loc:@embedding/embeddings* 
_output_shapes
:
*
dtype0

.embedding/embedding_lookup/Read/ReadVariableOpReadVariableOpembedding/embeddings* 
_output_shapes
:
*
dtype0

#embedding/embedding_lookup/IdentityIdentity.embedding/embedding_lookup/Read/ReadVariableOp* 
_output_shapes
:
*
T0
ô
embedding/embedding_lookupResourceGatherembedding/embeddings
main_input*
validate_indices(*,
_output_shapes
:˙˙˙˙˙˙˙˙˙K*
Tindices0*A
_class7
53loc:@embedding/embedding_lookup/Read/ReadVariableOp*
dtype0
Ç
%embedding/embedding_lookup/Identity_1Identityembedding/embedding_lookup*A
_class7
53loc:@embedding/embedding_lookup/Read/ReadVariableOp*,
_output_shapes
:˙˙˙˙˙˙˙˙˙K*
T0

%embedding/embedding_lookup/Identity_2Identity%embedding/embedding_lookup/Identity_1*,
_output_shapes
:˙˙˙˙˙˙˙˙˙K*
T0
Ľ
.conv1d/kernel/Initializer/random_uniform/shapeConst*!
valueB"         * 
_class
loc:@conv1d/kernel*
dtype0*
_output_shapes
:

,conv1d/kernel/Initializer/random_uniform/minConst* 
_class
loc:@conv1d/kernel*
_output_shapes
: *
valueB
 *óľ˝*
dtype0

,conv1d/kernel/Initializer/random_uniform/maxConst* 
_class
loc:@conv1d/kernel*
valueB
 *óľ=*
dtype0*
_output_shapes
: 
î
6conv1d/kernel/Initializer/random_uniform/RandomUniformRandomUniform.conv1d/kernel/Initializer/random_uniform/shape*

seed * 
_class
loc:@conv1d/kernel*$
_output_shapes
:*
dtype0*
T0*
seed2 
Ň
,conv1d/kernel/Initializer/random_uniform/subSub,conv1d/kernel/Initializer/random_uniform/max,conv1d/kernel/Initializer/random_uniform/min* 
_class
loc:@conv1d/kernel*
_output_shapes
: *
T0
ę
,conv1d/kernel/Initializer/random_uniform/mulMul6conv1d/kernel/Initializer/random_uniform/RandomUniform,conv1d/kernel/Initializer/random_uniform/sub* 
_class
loc:@conv1d/kernel*$
_output_shapes
:*
T0
Ü
(conv1d/kernel/Initializer/random_uniformAdd,conv1d/kernel/Initializer/random_uniform/mul,conv1d/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@conv1d/kernel*$
_output_shapes
:
Ż
conv1d/kernelVarHandleOp*
shape:*
_output_shapes
: * 
_class
loc:@conv1d/kernel*
dtype0*
shared_nameconv1d/kernel*
	container 
k
.conv1d/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv1d/kernel*
_output_shapes
: 

conv1d/kernel/AssignAssignVariableOpconv1d/kernel(conv1d/kernel/Initializer/random_uniform*
dtype0* 
_class
loc:@conv1d/kernel

!conv1d/kernel/Read/ReadVariableOpReadVariableOpconv1d/kernel*
dtype0* 
_class
loc:@conv1d/kernel*$
_output_shapes
:

conv1d/bias/Initializer/zerosConst*
valueB*    *
_class
loc:@conv1d/bias*
dtype0*
_output_shapes	
:
 
conv1d/biasVarHandleOp*
	container *
dtype0*
_class
loc:@conv1d/bias*
_output_shapes
: *
shared_nameconv1d/bias*
shape:
g
,conv1d/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv1d/bias*
_output_shapes
: 

conv1d/bias/AssignAssignVariableOpconv1d/biasconv1d/bias/Initializer/zeros*
dtype0*
_class
loc:@conv1d/bias

conv1d/bias/Read/ReadVariableOpReadVariableOpconv1d/bias*
_output_shapes	
:*
_class
loc:@conv1d/bias*
dtype0
^
conv1d/dilation_rateConst*
_output_shapes
:*
valueB:*
dtype0
^
conv1d/conv1d/ExpandDims/dimConst*
_output_shapes
: *
value	B :*
dtype0
˛
conv1d/conv1d/ExpandDims
ExpandDims%embedding/embedding_lookup/Identity_2conv1d/conv1d/ExpandDims/dim*

Tdim0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙K*
T0
}
)conv1d/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpconv1d/kernel*$
_output_shapes
:*
dtype0
`
conv1d/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
value	B : *
dtype0
˛
conv1d/conv1d/ExpandDims_1
ExpandDims)conv1d/conv1d/ExpandDims_1/ReadVariableOpconv1d/conv1d/ExpandDims_1/dim*
T0*(
_output_shapes
:*

Tdim0
ý
conv1d/conv1d/Conv2DConv2Dconv1d/conv1d/ExpandDimsconv1d/conv1d/ExpandDims_1*
	dilations
*0
_output_shapes
:˙˙˙˙˙˙˙˙˙K*
data_formatNHWC*
use_cudnn_on_gpu(*
strides
*
paddingSAME*
T0

conv1d/conv1d/SqueezeSqueezeconv1d/conv1d/Conv2D*
squeeze_dims
*,
_output_shapes
:˙˙˙˙˙˙˙˙˙K*
T0
f
conv1d/BiasAdd/ReadVariableOpReadVariableOpconv1d/bias*
dtype0*
_output_shapes	
:

conv1d/BiasAddBiasAddconv1d/conv1d/Squeezeconv1d/BiasAdd/ReadVariableOp*,
_output_shapes
:˙˙˙˙˙˙˙˙˙K*
T0*
data_formatNHWC
`
thresholded_re_lu/Greater/yConst*
_output_shapes
: *
valueB
 *˝75*
dtype0

thresholded_re_lu/GreaterGreaterconv1d/BiasAddthresholded_re_lu/Greater/y*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙K

thresholded_re_lu/CastCastthresholded_re_lu/Greater*
Truncate( *,
_output_shapes
:˙˙˙˙˙˙˙˙˙K*

DstT0*

SrcT0

{
thresholded_re_lu/mulMulconv1d/BiasAddthresholded_re_lu/Cast*,
_output_shapes
:˙˙˙˙˙˙˙˙˙K*
T0
^
max_pooling1d/ExpandDims/dimConst*
value	B :*
_output_shapes
: *
dtype0
˘
max_pooling1d/ExpandDims
ExpandDimsthresholded_re_lu/mulmax_pooling1d/ExpandDims/dim*0
_output_shapes
:˙˙˙˙˙˙˙˙˙K*
T0*

Tdim0
Ç
max_pooling1d/MaxPoolMaxPoolmax_pooling1d/ExpandDims*
strides
*
T0*
ksize
*0
_output_shapes
:˙˙˙˙˙˙˙˙˙&*
data_formatNHWC*
paddingSAME

max_pooling1d/SqueezeSqueezemax_pooling1d/MaxPool*
T0*
squeeze_dims
*,
_output_shapes
:˙˙˙˙˙˙˙˙˙&
Š
0conv1d_1/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*"
_class
loc:@conv1d_1/kernel*!
valueB"         *
dtype0

.conv1d_1/kernel/Initializer/random_uniform/minConst*
valueB
 *×łÝ˝*"
_class
loc:@conv1d_1/kernel*
dtype0*
_output_shapes
: 

.conv1d_1/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *"
_class
loc:@conv1d_1/kernel*
dtype0*
valueB
 *×łÝ=
ô
8conv1d_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv1d_1/kernel/Initializer/random_uniform/shape*
T0*
seed2 *$
_output_shapes
:*

seed *
dtype0*"
_class
loc:@conv1d_1/kernel
Ú
.conv1d_1/kernel/Initializer/random_uniform/subSub.conv1d_1/kernel/Initializer/random_uniform/max.conv1d_1/kernel/Initializer/random_uniform/min*"
_class
loc:@conv1d_1/kernel*
_output_shapes
: *
T0
ň
.conv1d_1/kernel/Initializer/random_uniform/mulMul8conv1d_1/kernel/Initializer/random_uniform/RandomUniform.conv1d_1/kernel/Initializer/random_uniform/sub*$
_output_shapes
:*
T0*"
_class
loc:@conv1d_1/kernel
ä
*conv1d_1/kernel/Initializer/random_uniformAdd.conv1d_1/kernel/Initializer/random_uniform/mul.conv1d_1/kernel/Initializer/random_uniform/min*$
_output_shapes
:*
T0*"
_class
loc:@conv1d_1/kernel
ľ
conv1d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*"
_class
loc:@conv1d_1/kernel*
	container * 
shared_nameconv1d_1/kernel*
shape:
o
0conv1d_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv1d_1/kernel*
_output_shapes
: 

conv1d_1/kernel/AssignAssignVariableOpconv1d_1/kernel*conv1d_1/kernel/Initializer/random_uniform*
dtype0*"
_class
loc:@conv1d_1/kernel

#conv1d_1/kernel/Read/ReadVariableOpReadVariableOpconv1d_1/kernel*
dtype0*$
_output_shapes
:*"
_class
loc:@conv1d_1/kernel

conv1d_1/bias/Initializer/zerosConst*
_output_shapes	
:*
dtype0* 
_class
loc:@conv1d_1/bias*
valueB*    
Ś
conv1d_1/biasVarHandleOp*
shared_nameconv1d_1/bias*
	container *
shape:*
_output_shapes
: * 
_class
loc:@conv1d_1/bias*
dtype0
k
.conv1d_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv1d_1/bias*
_output_shapes
: 

conv1d_1/bias/AssignAssignVariableOpconv1d_1/biasconv1d_1/bias/Initializer/zeros* 
_class
loc:@conv1d_1/bias*
dtype0

!conv1d_1/bias/Read/ReadVariableOpReadVariableOpconv1d_1/bias*
_output_shapes	
:* 
_class
loc:@conv1d_1/bias*
dtype0
`
conv1d_1/dilation_rateConst*
_output_shapes
:*
valueB:*
dtype0
`
conv1d_1/conv1d/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
value	B :
Ś
conv1d_1/conv1d/ExpandDims
ExpandDimsmax_pooling1d/Squeezeconv1d_1/conv1d/ExpandDims/dim*0
_output_shapes
:˙˙˙˙˙˙˙˙˙&*

Tdim0*
T0

+conv1d_1/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpconv1d_1/kernel*$
_output_shapes
:*
dtype0
b
 conv1d_1/conv1d/ExpandDims_1/dimConst*
dtype0*
_output_shapes
: *
value	B : 
¸
conv1d_1/conv1d/ExpandDims_1
ExpandDims+conv1d_1/conv1d/ExpandDims_1/ReadVariableOp conv1d_1/conv1d/ExpandDims_1/dim*

Tdim0*
T0*(
_output_shapes
:

conv1d_1/conv1d/Conv2DConv2Dconv1d_1/conv1d/ExpandDimsconv1d_1/conv1d/ExpandDims_1*
data_formatNHWC*
paddingSAME*0
_output_shapes
:˙˙˙˙˙˙˙˙˙&*
use_cudnn_on_gpu(*
strides
*
	dilations
*
T0

conv1d_1/conv1d/SqueezeSqueezeconv1d_1/conv1d/Conv2D*
squeeze_dims
*,
_output_shapes
:˙˙˙˙˙˙˙˙˙&*
T0
j
conv1d_1/BiasAdd/ReadVariableOpReadVariableOpconv1d_1/bias*
_output_shapes	
:*
dtype0
Ł
conv1d_1/BiasAddBiasAddconv1d_1/conv1d/Squeezeconv1d_1/BiasAdd/ReadVariableOp*
data_formatNHWC*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙&
b
thresholded_re_lu_1/Greater/yConst*
dtype0*
_output_shapes
: *
valueB
 *˝75

thresholded_re_lu_1/GreaterGreaterconv1d_1/BiasAddthresholded_re_lu_1/Greater/y*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙&

thresholded_re_lu_1/CastCastthresholded_re_lu_1/Greater*,
_output_shapes
:˙˙˙˙˙˙˙˙˙&*
Truncate( *

SrcT0
*

DstT0

thresholded_re_lu_1/mulMulconv1d_1/BiasAddthresholded_re_lu_1/Cast*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙&
`
max_pooling1d_1/ExpandDims/dimConst*
value	B :*
_output_shapes
: *
dtype0
¨
max_pooling1d_1/ExpandDims
ExpandDimsthresholded_re_lu_1/mulmax_pooling1d_1/ExpandDims/dim*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙&*

Tdim0
Ë
max_pooling1d_1/MaxPoolMaxPoolmax_pooling1d_1/ExpandDims*
ksize
*
data_formatNHWC*
T0*
paddingSAME*
strides
*0
_output_shapes
:˙˙˙˙˙˙˙˙˙

max_pooling1d_1/SqueezeSqueezemax_pooling1d_1/MaxPool*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
squeeze_dims

d
flatten/ShapeShapemax_pooling1d_1/Squeeze*
_output_shapes
:*
T0*
out_type0
e
flatten/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
g
flatten/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
g
flatten/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
Ą
flatten/strided_sliceStridedSliceflatten/Shapeflatten/strided_slice/stackflatten/strided_slice/stack_1flatten/strided_slice/stack_2*

begin_mask *
ellipsis_mask *
shrink_axis_mask*
_output_shapes
: *
T0*
new_axis_mask *
end_mask *
Index0
b
flatten/Reshape/shape/1Const*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 

flatten/Reshape/shapePackflatten/strided_sliceflatten/Reshape/shape/1*
_output_shapes
:*
T0*
N*

axis 

flatten/ReshapeReshapemax_pooling1d_1/Squeezeflatten/Reshape/shape*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

-dense/kernel/Initializer/random_uniform/shapeConst*
valueB"	  @   *
dtype0*
_class
loc:@dense/kernel*
_output_shapes
:

+dense/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
_class
loc:@dense/kernel*
valueB
 *ŤŇH˝

+dense/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ŤŇH=*
_class
loc:@dense/kernel
ć
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*

seed *
_output_shapes
:	@*
T0*
seed2 *
_class
loc:@dense/kernel*
dtype0
Î
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes
: 
á
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
_class
loc:@dense/kernel*
T0*
_output_shapes
:	@
Ó
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
_output_shapes
:	@*
T0*
_class
loc:@dense/kernel
§
dense/kernelVarHandleOp*
	container *
dtype0*
_output_shapes
: *
_class
loc:@dense/kernel*
shape:	@*
shared_namedense/kernel
i
-dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense/kernel*
_output_shapes
: 

dense/kernel/AssignAssignVariableOpdense/kernel'dense/kernel/Initializer/random_uniform*
_class
loc:@dense/kernel*
dtype0

 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	@*
_class
loc:@dense/kernel*
dtype0

dense/bias/Initializer/zerosConst*
valueB@*    *
dtype0*
_output_shapes
:@*
_class
loc:@dense/bias


dense/biasVarHandleOp*
dtype0*
_class
loc:@dense/bias*
shape:@*
	container *
shared_name
dense/bias*
_output_shapes
: 
e
+dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp
dense/bias*
_output_shapes
: 
{
dense/bias/AssignAssignVariableOp
dense/biasdense/bias/Initializer/zeros*
_class
loc:@dense/bias*
dtype0

dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:@*
_class
loc:@dense/bias*
dtype0
i
dense/MatMul/ReadVariableOpReadVariableOpdense/kernel*
dtype0*
_output_shapes
:	@

dense/MatMulMatMulflatten/Reshapedense/MatMul/ReadVariableOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
transpose_a( *
transpose_b( 
c
dense/BiasAdd/ReadVariableOpReadVariableOp
dense/bias*
dtype0*
_output_shapes
:@

dense/BiasAddBiasAdddense/MatMuldense/BiasAdd/ReadVariableOp*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0*
data_formatNHWC
b
thresholded_re_lu_2/Greater/yConst*
dtype0*
_output_shapes
: *
valueB
 *˝75

thresholded_re_lu_2/GreaterGreaterdense/BiasAddthresholded_re_lu_2/Greater/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@

thresholded_re_lu_2/CastCastthresholded_re_lu_2/Greater*
Truncate( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*

DstT0*

SrcT0

y
thresholded_re_lu_2/mulMuldense/BiasAddthresholded_re_lu_2/Cast*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
d
"dropout/keras_learning_phase/inputConst*
value	B
 Z *
_output_shapes
: *
dtype0


dropout/keras_learning_phasePlaceholderWithDefault"dropout/keras_learning_phase/input*
_output_shapes
: *
dtype0
*
shape: 
|
dropout/cond/SwitchSwitchdropout/keras_learning_phasedropout/keras_learning_phase*
_output_shapes
: : *
T0

Y
dropout/cond/switch_tIdentitydropout/cond/Switch:1*
T0
*
_output_shapes
: 
W
dropout/cond/switch_fIdentitydropout/cond/Switch*
T0
*
_output_shapes
: 
_
dropout/cond/pred_idIdentitydropout/keras_learning_phase*
_output_shapes
: *
T0

{
dropout/cond/dropout/keep_probConst^dropout/cond/switch_t*
_output_shapes
: *
valueB
 *   ?*
dtype0
}
dropout/cond/dropout/ShapeShape#dropout/cond/dropout/Shape/Switch:1*
T0*
out_type0*
_output_shapes
:
Ë
!dropout/cond/dropout/Shape/SwitchSwitchthresholded_re_lu_2/muldropout/cond/pred_id*:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@*
T0**
_class 
loc:@thresholded_re_lu_2/mul

'dropout/cond/dropout/random_uniform/minConst^dropout/cond/switch_t*
_output_shapes
: *
valueB
 *    *
dtype0

'dropout/cond/dropout/random_uniform/maxConst^dropout/cond/switch_t*
valueB
 *  ?*
_output_shapes
: *
dtype0
ś
1dropout/cond/dropout/random_uniform/RandomUniformRandomUniformdropout/cond/dropout/Shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
dtype0*
seed2 *

seed *
T0
Ą
'dropout/cond/dropout/random_uniform/subSub'dropout/cond/dropout/random_uniform/max'dropout/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
ź
'dropout/cond/dropout/random_uniform/mulMul1dropout/cond/dropout/random_uniform/RandomUniform'dropout/cond/dropout/random_uniform/sub*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0
Ž
#dropout/cond/dropout/random_uniformAdd'dropout/cond/dropout/random_uniform/mul'dropout/cond/dropout/random_uniform/min*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0

dropout/cond/dropout/addAdddropout/cond/dropout/keep_prob#dropout/cond/dropout/random_uniform*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
o
dropout/cond/dropout/FloorFloordropout/cond/dropout/add*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0

dropout/cond/dropout/divRealDiv#dropout/cond/dropout/Shape/Switch:1dropout/cond/dropout/keep_prob*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@

dropout/cond/dropout/mulMuldropout/cond/dropout/divdropout/cond/dropout/Floor*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
q
dropout/cond/IdentityIdentitydropout/cond/Identity/Switch*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
Ć
dropout/cond/Identity/SwitchSwitchthresholded_re_lu_2/muldropout/cond/pred_id*:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@**
_class 
loc:@thresholded_re_lu_2/mul*
T0

dropout/cond/MergeMergedropout/cond/Identitydropout/cond/dropout/mul*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙@: *
N
Ł
/dense_1/kernel/Initializer/random_uniform/shapeConst*
valueB"@      *
_output_shapes
:*
dtype0*!
_class
loc:@dense_1/kernel

-dense_1/kernel/Initializer/random_uniform/minConst*
dtype0*
valueB
 *ž*
_output_shapes
: *!
_class
loc:@dense_1/kernel

-dense_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *>*
dtype0*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
ë
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*
T0*
_output_shapes

:@*
dtype0*

seed *!
_class
loc:@dense_1/kernel*
seed2 
Ö
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*!
_class
loc:@dense_1/kernel
č
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*
_output_shapes

:@*!
_class
loc:@dense_1/kernel*
T0
Ú
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_1/kernel*
T0*
_output_shapes

:@
Ź
dense_1/kernelVarHandleOp*
shared_namedense_1/kernel*
	container *
shape
:@*!
_class
loc:@dense_1/kernel*
_output_shapes
: *
dtype0
m
/dense_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/kernel*
_output_shapes
: 

dense_1/kernel/AssignAssignVariableOpdense_1/kernel)dense_1/kernel/Initializer/random_uniform*!
_class
loc:@dense_1/kernel*
dtype0

"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes

:@

dense_1/bias/Initializer/zerosConst*
valueB*    *
dtype0*
_output_shapes
:*
_class
loc:@dense_1/bias
˘
dense_1/biasVarHandleOp*
dtype0*
_output_shapes
: *
	container *
shared_namedense_1/bias*
_class
loc:@dense_1/bias*
shape:
i
-dense_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/bias*
_output_shapes
: 

dense_1/bias/AssignAssignVariableOpdense_1/biasdense_1/bias/Initializer/zeros*
_class
loc:@dense_1/bias*
dtype0

 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
dtype0*
_class
loc:@dense_1/bias*
_output_shapes
:
l
dense_1/MatMul/ReadVariableOpReadVariableOpdense_1/kernel*
dtype0*
_output_shapes

:@
Ł
dense_1/MatMulMatMuldropout/cond/Mergedense_1/MatMul/ReadVariableOp*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
transpose_a( *
transpose_b( 
g
dense_1/BiasAdd/ReadVariableOpReadVariableOpdense_1/bias*
dtype0*
_output_shapes
:

dense_1/BiasAddBiasAdddense_1/MatMuldense_1/BiasAdd/ReadVariableOp*
data_formatNHWC*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
]
dense_1/SigmoidSigmoiddense_1/BiasAdd*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
k
)Adam/iterations/Initializer/initial_valueConst*
value	B	 R *
dtype0	*
_output_shapes
: 

Adam/iterationsVarHandleOp* 
shared_nameAdam/iterations*
	container *
dtype0	*
_output_shapes
: *
shape: 
o
0Adam/iterations/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/iterations*
_output_shapes
: 

Adam/iterations/AssignAssignVariableOpAdam/iterations)Adam/iterations/Initializer/initial_value*"
_class
loc:@Adam/iterations*
dtype0	

#Adam/iterations/Read/ReadVariableOpReadVariableOpAdam/iterations*
_output_shapes
: *
dtype0	*"
_class
loc:@Adam/iterations
f
!Adam/lr/Initializer/initial_valueConst*
dtype0*
valueB
 *o:*
_output_shapes
: 
s
Adam/lrVarHandleOp*
shared_name	Adam/lr*
	container *
dtype0*
shape: *
_output_shapes
: 
_
(Adam/lr/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/lr*
_output_shapes
: 
w
Adam/lr/AssignAssignVariableOpAdam/lr!Adam/lr/Initializer/initial_value*
_class
loc:@Adam/lr*
dtype0
w
Adam/lr/Read/ReadVariableOpReadVariableOpAdam/lr*
_class
loc:@Adam/lr*
_output_shapes
: *
dtype0
j
%Adam/beta_1/Initializer/initial_valueConst*
valueB
 *fff?*
dtype0*
_output_shapes
: 
{
Adam/beta_1VarHandleOp*
_output_shapes
: *
	container *
shape: *
shared_nameAdam/beta_1*
dtype0
g
,Adam/beta_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/beta_1*
_output_shapes
: 

Adam/beta_1/AssignAssignVariableOpAdam/beta_1%Adam/beta_1/Initializer/initial_value*
dtype0*
_class
loc:@Adam/beta_1

Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_class
loc:@Adam/beta_1*
dtype0*
_output_shapes
: 
j
%Adam/beta_2/Initializer/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *wž?
{
Adam/beta_2VarHandleOp*
_output_shapes
: *
shape: *
shared_nameAdam/beta_2*
	container *
dtype0
g
,Adam/beta_2/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/beta_2*
_output_shapes
: 

Adam/beta_2/AssignAssignVariableOpAdam/beta_2%Adam/beta_2/Initializer/initial_value*
dtype0*
_class
loc:@Adam/beta_2

Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_class
loc:@Adam/beta_2*
_output_shapes
: *
dtype0
i
$Adam/decay/Initializer/initial_valueConst*
dtype0*
valueB
 *    *
_output_shapes
: 
y

Adam/decayVarHandleOp*
_output_shapes
: *
	container *
shape: *
shared_name
Adam/decay*
dtype0
e
+Adam/decay/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Adam/decay*
_output_shapes
: 

Adam/decay/AssignAssignVariableOp
Adam/decay$Adam/decay/Initializer/initial_value*
_class
loc:@Adam/decay*
dtype0

Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0*
_class
loc:@Adam/decay

dense_1_targetPlaceholder*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
dtype0*%
shape:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
R
ConstConst*
dtype0*
_output_shapes
:*
valueB*  ?

dense_1_sample_weightsPlaceholderWithDefaultConst*
dtype0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙
\
loss/dense_1_loss/ConstConst*
dtype0*
valueB
 *żÖ3*
_output_shapes
: 
\
loss/dense_1_loss/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
o
loss/dense_1_loss/subSubloss/dense_1_loss/sub/xloss/dense_1_loss/Const*
T0*
_output_shapes
: 

'loss/dense_1_loss/clip_by_value/MinimumMinimumdense_1/Sigmoidloss/dense_1_loss/sub*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

loss/dense_1_loss/clip_by_valueMaximum'loss/dense_1_loss/clip_by_value/Minimumloss/dense_1_loss/Const*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
^
loss/dense_1_loss/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?

loss/dense_1_loss/sub_1Subloss/dense_1_loss/sub_1/xloss/dense_1_loss/clip_by_value*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

loss/dense_1_loss/truedivRealDivloss/dense_1_loss/clip_by_valueloss/dense_1_loss/sub_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
i
loss/dense_1_loss/LogLogloss/dense_1_loss/truediv*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

*loss/dense_1_loss/logistic_loss/zeros_like	ZerosLikeloss/dense_1_loss/Log*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ą
,loss/dense_1_loss/logistic_loss/GreaterEqualGreaterEqualloss/dense_1_loss/Log*loss/dense_1_loss/logistic_loss/zeros_like*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ó
&loss/dense_1_loss/logistic_loss/SelectSelect,loss/dense_1_loss/logistic_loss/GreaterEqualloss/dense_1_loss/Log*loss/dense_1_loss/logistic_loss/zeros_like*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
s
#loss/dense_1_loss/logistic_loss/NegNegloss/dense_1_loss/Log*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Î
(loss/dense_1_loss/logistic_loss/Select_1Select,loss/dense_1_loss/logistic_loss/GreaterEqual#loss/dense_1_loss/logistic_loss/Negloss/dense_1_loss/Log*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

#loss/dense_1_loss/logistic_loss/mulMulloss/dense_1_loss/Logdense_1_target*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
˛
#loss/dense_1_loss/logistic_loss/subSub&loss/dense_1_loss/logistic_loss/Select#loss/dense_1_loss/logistic_loss/mul*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

#loss/dense_1_loss/logistic_loss/ExpExp(loss/dense_1_loss/logistic_loss/Select_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

%loss/dense_1_loss/logistic_loss/Log1pLog1p#loss/dense_1_loss/logistic_loss/Exp*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
­
loss/dense_1_loss/logistic_lossAdd#loss/dense_1_loss/logistic_loss/sub%loss/dense_1_loss/logistic_loss/Log1p*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0
s
(loss/dense_1_loss/Mean/reduction_indicesConst*
dtype0*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙
´
loss/dense_1_loss/MeanMeanloss/dense_1_loss/logistic_loss(loss/dense_1_loss/Mean/reduction_indices*
	keep_dims( *
T0*

Tidx0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

Floss/dense_1_loss/broadcast_weights/assert_broadcastable/weights/shapeShapedense_1_sample_weights*
out_type0*
_output_shapes
:*
T0

Eloss/dense_1_loss/broadcast_weights/assert_broadcastable/weights/rankConst*
_output_shapes
: *
value	B :*
dtype0

Eloss/dense_1_loss/broadcast_weights/assert_broadcastable/values/shapeShapeloss/dense_1_loss/Mean*
_output_shapes
:*
out_type0*
T0

Dloss/dense_1_loss/broadcast_weights/assert_broadcastable/values/rankConst*
dtype0*
value	B :*
_output_shapes
: 

Dloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_scalar/xConst*
dtype0*
_output_shapes
: *
value	B : 
ů
Bloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_scalarEqualDloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_scalar/xEloss/dense_1_loss/broadcast_weights/assert_broadcastable/weights/rank*
T0*
_output_shapes
: 

Nloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/SwitchSwitchBloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_scalarBloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: : 
Ď
Ploss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_tIdentityPloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch:1*
_output_shapes
: *
T0

Í
Ploss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_fIdentityNloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch*
T0
*
_output_shapes
: 
Ŕ
Oloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_idIdentityBloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: *
T0

é
Ploss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1SwitchBloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_scalarOloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0
*U
_classK
IGloc:@loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: : 

nloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankEqualuloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switchwloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1*
T0*
_output_shapes
: 

uloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/SwitchSwitchDloss/dense_1_loss/broadcast_weights/assert_broadcastable/values/rankOloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*W
_classM
KIloc:@loss/dense_1_loss/broadcast_weights/assert_broadcastable/values/rank*
_output_shapes
: : 

wloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1SwitchEloss/dense_1_loss/broadcast_weights/assert_broadcastable/weights/rankOloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*X
_classN
LJloc:@loss/dense_1_loss/broadcast_weights/assert_broadcastable/weights/rank*
T0*
_output_shapes
: : 
ő
hloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/SwitchSwitchnloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_ranknloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: : 

jloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_tIdentityjloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1*
_output_shapes
: *
T0


jloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_fIdentityhloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch*
T0
*
_output_shapes
: 

iloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_idIdentitynloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: 
ş
loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dimConstk^loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0
Ď
}loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims
ExpandDimsloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
Ź
loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/SwitchSwitchEloss/dense_1_loss/broadcast_weights/assert_broadcastable/values/shapeOloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id* 
_output_shapes
::*
T0*X
_classN
LJloc:@loss/dense_1_loss/broadcast_weights/assert_broadcastable/values/shape

loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1Switchloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switchiloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*X
_classN
LJloc:@loss/dense_1_loss/broadcast_weights/assert_broadcastable/values/shape*
T0* 
_output_shapes
::
Á
loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ShapeConstk^loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
dtype0*
_output_shapes
:*
valueB"      
˛
loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ConstConstk^loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
dtype0*
_output_shapes
: *
value	B :
É
|loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeFillloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shapeloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const*
_output_shapes

:*
T0*

index_type0
­
~loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axisConstk^loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
dtype0*
_output_shapes
: *
value	B :
Ŕ
yloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concatConcatV2}loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims|loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like~loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis*
N*

Tidx0*
T0*
_output_shapes

:
ź
loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dimConstk^loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙
Ő
loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1
ExpandDimsloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim*

Tdim0*
_output_shapes

:*
T0
°
loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/SwitchSwitchFloss/dense_1_loss/broadcast_weights/assert_broadcastable/weights/shapeOloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id* 
_output_shapes
::*Y
_classO
MKloc:@loss/dense_1_loss/broadcast_weights/assert_broadcastable/weights/shape*
T0

loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1Switchloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switchiloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id* 
_output_shapes
::*Y
_classO
MKloc:@loss/dense_1_loss/broadcast_weights/assert_broadcastable/weights/shape*
T0

loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperationDenseToDenseSetOperationloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1yloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat*
T0*
validate_indices(*
set_operationa-b*<
_output_shapes*
(:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:
Í
loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dimsSizeloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1*
T0*
_output_shapes
: *
out_type0
Ł
tloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xConstk^loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
dtype0*
_output_shapes
: *
value	B : 

rloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dimsEqualtloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims*
_output_shapes
: *
T0
ö
jloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1Switchnloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankiloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
_classw
usloc:@loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
_output_shapes
: : *
T0

ü
gloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeMergejloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1rloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims*
N*
_output_shapes
: : *
T0

ż
Mloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeMergegloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeRloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1*
T0
*
_output_shapes
: : *
N
Ś
>loss/dense_1_loss/broadcast_weights/assert_broadcastable/ConstConst*8
value/B- B'weights can not be broadcast to values.*
_output_shapes
: *
dtype0

@loss/dense_1_loss/broadcast_weights/assert_broadcastable/Const_1Const*
_output_shapes
: *
valueB Bweights.shape=*
dtype0

@loss/dense_1_loss/broadcast_weights/assert_broadcastable/Const_2Const*)
value B Bdense_1_sample_weights:0*
_output_shapes
: *
dtype0

@loss/dense_1_loss/broadcast_weights/assert_broadcastable/Const_3Const*
valueB Bvalues.shape=*
_output_shapes
: *
dtype0

@loss/dense_1_loss/broadcast_weights/assert_broadcastable/Const_4Const*
_output_shapes
: *
dtype0*)
value B Bloss/dense_1_loss/Mean:0

@loss/dense_1_loss/broadcast_weights/assert_broadcastable/Const_5Const*
dtype0*
_output_shapes
: *
valueB B
is_scalar=

Kloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/SwitchSwitchMloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeMloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: : *
T0

É
Mloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_tIdentityMloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Switch:1*
_output_shapes
: *
T0

Ç
Mloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_fIdentityKloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Switch*
_output_shapes
: *
T0

Č
Lloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_idIdentityMloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: *
T0

Ą
Iloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/NoOpNoOpN^loss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t

Wloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependencyIdentityMloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_tJ^loss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/NoOp*`
_classV
TRloc:@loss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t*
T0
*
_output_shapes
: 

Rloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0ConstN^loss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: *8
value/B- B'weights can not be broadcast to values.*
dtype0
ń
Rloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1ConstN^loss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
dtype0*
valueB Bweights.shape=*
_output_shapes
: 
ű
Rloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2ConstN^loss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*)
value B Bdense_1_sample_weights:0*
dtype0*
_output_shapes
: 
đ
Rloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4ConstN^loss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: *
dtype0*
valueB Bvalues.shape=
ű
Rloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5ConstN^loss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*)
value B Bloss/dense_1_loss/Mean:0*
dtype0*
_output_shapes
: 
í
Rloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7ConstN^loss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: *
dtype0*
valueB B
is_scalar=
Č
Kloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/AssertAssertRloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/SwitchRloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0Rloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1Rloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2Tloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1Rloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4Rloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5Tloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2Rloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7Tloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3*
	summarize*
T
2	

ţ
Rloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/SwitchSwitchMloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeLloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
_output_shapes
: : *
T0
*`
_classV
TRloc:@loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge
ú
Tloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1SwitchFloss/dense_1_loss/broadcast_weights/assert_broadcastable/weights/shapeLloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0*Y
_classO
MKloc:@loss/dense_1_loss/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::
ř
Tloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2SwitchEloss/dense_1_loss/broadcast_weights/assert_broadcastable/values/shapeLloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*X
_classN
LJloc:@loss/dense_1_loss/broadcast_weights/assert_broadcastable/values/shape*
T0* 
_output_shapes
::
ę
Tloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3SwitchBloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_scalarLloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*U
_classK
IGloc:@loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: : 

Yloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1IdentityMloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_fL^loss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert*
_output_shapes
: *`
_classV
TRloc:@loss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
T0

ł
Jloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/MergeMergeYloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1Wloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency*
N*
T0
*
_output_shapes
: : 
Ö
3loss/dense_1_loss/broadcast_weights/ones_like/ShapeShapeloss/dense_1_loss/MeanK^loss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Merge*
_output_shapes
:*
out_type0*
T0
Ĺ
3loss/dense_1_loss/broadcast_weights/ones_like/ConstConstK^loss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Merge*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ß
-loss/dense_1_loss/broadcast_weights/ones_likeFill3loss/dense_1_loss/broadcast_weights/ones_like/Shape3loss/dense_1_loss/broadcast_weights/ones_like/Const*

index_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

#loss/dense_1_loss/broadcast_weightsMuldense_1_sample_weights-loss/dense_1_loss/broadcast_weights/ones_like*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

loss/dense_1_loss/MulMulloss/dense_1_loss/Mean#loss/dense_1_loss/broadcast_weights*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
c
loss/dense_1_loss/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 

loss/dense_1_loss/SumSumloss/dense_1_loss/Mulloss/dense_1_loss/Const_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
c
loss/dense_1_loss/Const_2Const*
valueB: *
dtype0*
_output_shapes
:

loss/dense_1_loss/Sum_1Sum#loss/dense_1_loss/broadcast_weightsloss/dense_1_loss/Const_2*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
w
loss/dense_1_loss/truediv_1RealDivloss/dense_1_loss/Sumloss/dense_1_loss/Sum_1*
_output_shapes
: *
T0
a
loss/dense_1_loss/zeros_likeConst*
dtype0*
valueB
 *    *
_output_shapes
: 
|
loss/dense_1_loss/GreaterGreaterloss/dense_1_loss/Sum_1loss/dense_1_loss/zeros_like*
T0*
_output_shapes
: 

loss/dense_1_loss/SelectSelectloss/dense_1_loss/Greaterloss/dense_1_loss/truediv_1loss/dense_1_loss/zeros_like*
T0*
_output_shapes
: 
\
loss/dense_1_loss/Const_3Const*
valueB *
dtype0*
_output_shapes
: 

loss/dense_1_loss/Mean_1Meanloss/dense_1_loss/Selectloss/dense_1_loss/Const_3*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
O

loss/mul/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
V
loss/mulMul
loss/mul/xloss/dense_1_loss/Mean_1*
T0*
_output_shapes
: 

metrics/mean_absolute_error/subSubdense_1/Sigmoiddense_1_target*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0

metrics/mean_absolute_error/AbsAbsmetrics/mean_absolute_error/sub*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0
}
2metrics/mean_absolute_error/Mean/reduction_indicesConst*
dtype0*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙
Č
 metrics/mean_absolute_error/MeanMeanmetrics/mean_absolute_error/Abs2metrics/mean_absolute_error/Mean/reduction_indices*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*

Tidx0*
	keep_dims( 
k
!metrics/mean_absolute_error/ConstConst*
valueB: *
_output_shapes
:*
dtype0
­
"metrics/mean_absolute_error/Mean_1Mean metrics/mean_absolute_error/Mean!metrics/mean_absolute_error/Const*
	keep_dims( *
_output_shapes
: *
T0*

Tidx0

metrics/mean_squared_error/subSubdense_1/Sigmoiddense_1_target*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0

!metrics/mean_squared_error/SquareSquaremetrics/mean_squared_error/sub*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0
|
1metrics/mean_squared_error/Mean/reduction_indicesConst*
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙*
_output_shapes
: 
Č
metrics/mean_squared_error/MeanMean!metrics/mean_squared_error/Square1metrics/mean_squared_error/Mean/reduction_indices*
T0*

Tidx0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims( 
j
 metrics/mean_squared_error/ConstConst*
dtype0*
valueB: *
_output_shapes
:
Ş
!metrics/mean_squared_error/Mean_1Meanmetrics/mean_squared_error/Mean metrics/mean_squared_error/Const*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
W
metrics/acc/Cast/xConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
u
metrics/acc/GreaterGreaterdense_1/Sigmoidmetrics/acc/Cast/x*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

metrics/acc/Cast_1Castmetrics/acc/Greater*
Truncate( *

DstT0*

SrcT0
*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
metrics/acc/EqualEqualdense_1_targetmetrics/acc/Cast_1*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0

metrics/acc/Cast_2Castmetrics/acc/Equal*
Truncate( *

DstT0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*

SrcT0

m
"metrics/acc/Mean/reduction_indicesConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 

metrics/acc/MeanMeanmetrics/acc/Cast_2"metrics/acc/Mean/reduction_indices*

Tidx0*
T0*
	keep_dims( *#
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
metrics/acc/ConstConst*
_output_shapes
:*
valueB: *
dtype0
}
metrics/acc/Mean_1Meanmetrics/acc/Meanmetrics/acc/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0

 metrics/precision/precision/CastCastdense_1/Sigmoid*
Truncate( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

SrcT0*

DstT0


"metrics/precision/precision/Cast_1Castdense_1_target*
Truncate( *0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*

DstT0
*

SrcT0
t
2metrics/precision/precision/true_positives/Equal/yConst*
_output_shapes
: *
dtype0
*
value	B
 Z
Ě
0metrics/precision/precision/true_positives/EqualEqual"metrics/precision/precision/Cast_12metrics/precision/precision/true_positives/Equal/y*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0

v
4metrics/precision/precision/true_positives/Equal_1/yConst*
value	B
 Z*
_output_shapes
: *
dtype0

Ĺ
2metrics/precision/precision/true_positives/Equal_1Equal metrics/precision/precision/Cast4metrics/precision/precision/true_positives/Equal_1/y*
T0
*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ű
5metrics/precision/precision/true_positives/LogicalAnd
LogicalAnd0metrics/precision/precision/true_positives/Equal2metrics/precision/precision/true_positives/Equal_1*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
a
Ymetrics/precision/precision/true_positives/assert_type/statically_determined_correct_typeNoOp
Ě
Bmetrics/precision/precision/true_positives/count/Initializer/zerosConst*
valueB
 *    *
_output_shapes
: *
dtype0*C
_class9
75loc:@metrics/precision/precision/true_positives/count
Ů
0metrics/precision/precision/true_positives/count
VariableV2*C
_class9
75loc:@metrics/precision/precision/true_positives/count*
_output_shapes
: *
dtype0*
shared_name *
shape: *
	container 
Ć
7metrics/precision/precision/true_positives/count/AssignAssign0metrics/precision/precision/true_positives/countBmetrics/precision/precision/true_positives/count/Initializer/zeros*
validate_shape(*
T0*C
_class9
75loc:@metrics/precision/precision/true_positives/count*
use_locking(*
_output_shapes
: 
Ů
5metrics/precision/precision/true_positives/count/readIdentity0metrics/precision/precision/true_positives/count*
T0*C
_class9
75loc:@metrics/precision/precision/true_positives/count*
_output_shapes
: 
Ë
2metrics/precision/precision/true_positives/ToFloatCast5metrics/precision/precision/true_positives/LogicalAnd*

DstT0*
Truncate( *0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*

SrcT0


3metrics/precision/precision/true_positives/IdentityIdentity5metrics/precision/precision/true_positives/count/read*
_output_shapes
: *
T0

0metrics/precision/precision/true_positives/ConstConst*
dtype0*
_output_shapes
:*
valueB"       
Ů
.metrics/precision/precision/true_positives/SumSum2metrics/precision/precision/true_positives/ToFloat0metrics/precision/precision/true_positives/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 

4metrics/precision/precision/true_positives/AssignAdd	AssignAdd0metrics/precision/precision/true_positives/count.metrics/precision/precision/true_positives/Sum*
T0*
_output_shapes
: *C
_class9
75loc:@metrics/precision/precision/true_positives/count*
use_locking( 
u
3metrics/precision/precision/false_positives/Equal/yConst*
value	B
 Z *
_output_shapes
: *
dtype0

Î
1metrics/precision/precision/false_positives/EqualEqual"metrics/precision/precision/Cast_13metrics/precision/precision/false_positives/Equal/y*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0

w
5metrics/precision/precision/false_positives/Equal_1/yConst*
value	B
 Z*
dtype0
*
_output_shapes
: 
Ç
3metrics/precision/precision/false_positives/Equal_1Equal metrics/precision/precision/Cast5metrics/precision/precision/false_positives/Equal_1/y*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

Ţ
6metrics/precision/precision/false_positives/LogicalAnd
LogicalAnd1metrics/precision/precision/false_positives/Equal3metrics/precision/precision/false_positives/Equal_1*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
b
Zmetrics/precision/precision/false_positives/assert_type/statically_determined_correct_typeNoOp
Î
Cmetrics/precision/precision/false_positives/count/Initializer/zerosConst*
_output_shapes
: *D
_class:
86loc:@metrics/precision/precision/false_positives/count*
dtype0*
valueB
 *    
Ű
1metrics/precision/precision/false_positives/count
VariableV2*
dtype0*
shape: *
shared_name *D
_class:
86loc:@metrics/precision/precision/false_positives/count*
	container *
_output_shapes
: 
Ę
8metrics/precision/precision/false_positives/count/AssignAssign1metrics/precision/precision/false_positives/countCmetrics/precision/precision/false_positives/count/Initializer/zeros*
use_locking(*D
_class:
86loc:@metrics/precision/precision/false_positives/count*
T0*
_output_shapes
: *
validate_shape(
Ü
6metrics/precision/precision/false_positives/count/readIdentity1metrics/precision/precision/false_positives/count*
T0*D
_class:
86loc:@metrics/precision/precision/false_positives/count*
_output_shapes
: 
Í
3metrics/precision/precision/false_positives/ToFloatCast6metrics/precision/precision/false_positives/LogicalAnd*
Truncate( *

DstT0*

SrcT0
*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

4metrics/precision/precision/false_positives/IdentityIdentity6metrics/precision/precision/false_positives/count/read*
T0*
_output_shapes
: 

1metrics/precision/precision/false_positives/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
Ü
/metrics/precision/precision/false_positives/SumSum3metrics/precision/precision/false_positives/ToFloat1metrics/precision/precision/false_positives/Const*

Tidx0*
	keep_dims( *
_output_shapes
: *
T0
 
5metrics/precision/precision/false_positives/AssignAdd	AssignAdd1metrics/precision/precision/false_positives/count/metrics/precision/precision/false_positives/Sum*
T0*D
_class:
86loc:@metrics/precision/precision/false_positives/count*
use_locking( *
_output_shapes
: 
˛
metrics/precision/precision/addAdd3metrics/precision/precision/true_positives/Identity4metrics/precision/precision/false_positives/Identity*
_output_shapes
: *
T0
j
%metrics/precision/precision/Greater/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 

#metrics/precision/precision/GreaterGreatermetrics/precision/precision/add%metrics/precision/precision/Greater/y*
T0*
_output_shapes
: 
´
!metrics/precision/precision/add_1Add3metrics/precision/precision/true_positives/Identity4metrics/precision/precision/false_positives/Identity*
T0*
_output_shapes
: 
Ł
metrics/precision/precision/divRealDiv3metrics/precision/precision/true_positives/Identity!metrics/precision/precision/add_1*
_output_shapes
: *
T0
h
#metrics/precision/precision/value/eConst*
_output_shapes
: *
valueB
 *    *
dtype0
ˇ
!metrics/precision/precision/valueSelect#metrics/precision/precision/Greatermetrics/precision/precision/div#metrics/precision/precision/value/e*
T0*
_output_shapes
: 
ś
!metrics/precision/precision/add_2Add4metrics/precision/precision/true_positives/AssignAdd5metrics/precision/precision/false_positives/AssignAdd*
T0*
_output_shapes
: 
l
'metrics/precision/precision/Greater_1/yConst*
dtype0*
valueB
 *    *
_output_shapes
: 

%metrics/precision/precision/Greater_1Greater!metrics/precision/precision/add_2'metrics/precision/precision/Greater_1/y*
T0*
_output_shapes
: 
ś
!metrics/precision/precision/add_3Add4metrics/precision/precision/true_positives/AssignAdd5metrics/precision/precision/false_positives/AssignAdd*
T0*
_output_shapes
: 
Ś
!metrics/precision/precision/div_1RealDiv4metrics/precision/precision/true_positives/AssignAdd!metrics/precision/precision/add_3*
T0*
_output_shapes
: 
l
'metrics/precision/precision/update_op/eConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ă
%metrics/precision/precision/update_opSelect%metrics/precision/precision/Greater_1!metrics/precision/precision/div_1'metrics/precision/precision/update_op/e*
_output_shapes
: *
T0
_
$metrics/precision/VarIsInitializedOpVarIsInitializedOpAdam/beta_1*
_output_shapes
: 
`
&metrics/precision/VarIsInitializedOp_1VarIsInitializedOp
Adam/decay*
_output_shapes
: 
`
&metrics/precision/VarIsInitializedOp_2VarIsInitializedOp
dense/bias*
_output_shapes
: 
b
&metrics/precision/VarIsInitializedOp_3VarIsInitializedOpdense/kernel*
_output_shapes
: 
b
&metrics/precision/VarIsInitializedOp_4VarIsInitializedOpdense_1/bias*
_output_shapes
: 
c
&metrics/precision/VarIsInitializedOp_5VarIsInitializedOpconv1d_1/bias*
_output_shapes
: 
c
&metrics/precision/VarIsInitializedOp_6VarIsInitializedOpconv1d/kernel*
_output_shapes
: 
d
&metrics/precision/VarIsInitializedOp_7VarIsInitializedOpdense_1/kernel*
_output_shapes
: 
a
&metrics/precision/VarIsInitializedOp_8VarIsInitializedOpAdam/beta_2*
_output_shapes
: 
e
&metrics/precision/VarIsInitializedOp_9VarIsInitializedOpAdam/iterations*
_output_shapes
: 
^
'metrics/precision/VarIsInitializedOp_10VarIsInitializedOpAdam/lr*
_output_shapes
: 
b
'metrics/precision/VarIsInitializedOp_11VarIsInitializedOpconv1d/bias*
_output_shapes
: 
k
'metrics/precision/VarIsInitializedOp_12VarIsInitializedOpembedding/embeddings*
_output_shapes
: 
f
'metrics/precision/VarIsInitializedOp_13VarIsInitializedOpconv1d_1/kernel*
_output_shapes
: 
Ř
metrics/precision/initNoOp^Adam/beta_1/Assign^Adam/beta_2/Assign^Adam/decay/Assign^Adam/iterations/Assign^Adam/lr/Assign^conv1d/bias/Assign^conv1d/kernel/Assign^conv1d_1/bias/Assign^conv1d_1/kernel/Assign^dense/bias/Assign^dense/kernel/Assign^dense_1/bias/Assign^dense_1/kernel/Assign^embedding/embeddings/Assign

metrics/precision/init_1NoOp9^metrics/precision/precision/false_positives/count/Assign8^metrics/precision/precision/true_positives/count/Assign

metrics/precision/IdentityIdentity!metrics/precision/precision/value&^metrics/precision/precision/update_op*
T0*
_output_shapes
: 
Z
metrics/precision/ConstConst*
valueB *
_output_shapes
: *
dtype0

metrics/precision/MeanMeanmetrics/precision/Identitymetrics/precision/Const*
	keep_dims( *
_output_shapes
: *

Tidx0*
T0

metrics/recall/recall/CastCastdense_1/Sigmoid*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Truncate( *

DstT0
*

SrcT0

metrics/recall/recall/Cast_1Castdense_1_target*
Truncate( *0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*

DstT0
*

SrcT0
n
,metrics/recall/recall/true_positives/Equal/yConst*
dtype0
*
value	B
 Z*
_output_shapes
: 
ş
*metrics/recall/recall/true_positives/EqualEqualmetrics/recall/recall/Cast_1,metrics/recall/recall/true_positives/Equal/y*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0

p
.metrics/recall/recall/true_positives/Equal_1/yConst*
value	B
 Z*
_output_shapes
: *
dtype0

ł
,metrics/recall/recall/true_positives/Equal_1Equalmetrics/recall/recall/Cast.metrics/recall/recall/true_positives/Equal_1/y*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

É
/metrics/recall/recall/true_positives/LogicalAnd
LogicalAnd*metrics/recall/recall/true_positives/Equal,metrics/recall/recall/true_positives/Equal_1*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
[
Smetrics/recall/recall/true_positives/assert_type/statically_determined_correct_typeNoOp
Ŕ
<metrics/recall/recall/true_positives/count/Initializer/zerosConst*
valueB
 *    *
_output_shapes
: *
dtype0*=
_class3
1/loc:@metrics/recall/recall/true_positives/count
Í
*metrics/recall/recall/true_positives/count
VariableV2*
shape: *=
_class3
1/loc:@metrics/recall/recall/true_positives/count*
dtype0*
_output_shapes
: *
shared_name *
	container 
Ž
1metrics/recall/recall/true_positives/count/AssignAssign*metrics/recall/recall/true_positives/count<metrics/recall/recall/true_positives/count/Initializer/zeros*
T0*
validate_shape(*
_output_shapes
: *=
_class3
1/loc:@metrics/recall/recall/true_positives/count*
use_locking(
Ç
/metrics/recall/recall/true_positives/count/readIdentity*metrics/recall/recall/true_positives/count*=
_class3
1/loc:@metrics/recall/recall/true_positives/count*
_output_shapes
: *
T0
ż
,metrics/recall/recall/true_positives/ToFloatCast/metrics/recall/recall/true_positives/LogicalAnd*

SrcT0
*

DstT0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
Truncate( 

-metrics/recall/recall/true_positives/IdentityIdentity/metrics/recall/recall/true_positives/count/read*
T0*
_output_shapes
: 
{
*metrics/recall/recall/true_positives/ConstConst*
_output_shapes
:*
valueB"       *
dtype0
Ç
(metrics/recall/recall/true_positives/SumSum,metrics/recall/recall/true_positives/ToFloat*metrics/recall/recall/true_positives/Const*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 

.metrics/recall/recall/true_positives/AssignAdd	AssignAdd*metrics/recall/recall/true_positives/count(metrics/recall/recall/true_positives/Sum*
_output_shapes
: *=
_class3
1/loc:@metrics/recall/recall/true_positives/count*
T0*
use_locking( 
o
-metrics/recall/recall/false_negatives/Equal/yConst*
_output_shapes
: *
value	B
 Z*
dtype0

ź
+metrics/recall/recall/false_negatives/EqualEqualmetrics/recall/recall/Cast_1-metrics/recall/recall/false_negatives/Equal/y*
T0
*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
q
/metrics/recall/recall/false_negatives/Equal_1/yConst*
value	B
 Z *
_output_shapes
: *
dtype0

ľ
-metrics/recall/recall/false_negatives/Equal_1Equalmetrics/recall/recall/Cast/metrics/recall/recall/false_negatives/Equal_1/y*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

Ě
0metrics/recall/recall/false_negatives/LogicalAnd
LogicalAnd+metrics/recall/recall/false_negatives/Equal-metrics/recall/recall/false_negatives/Equal_1*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
\
Tmetrics/recall/recall/false_negatives/assert_type/statically_determined_correct_typeNoOp
Â
=metrics/recall/recall/false_negatives/count/Initializer/zerosConst*
_output_shapes
: *
dtype0*>
_class4
20loc:@metrics/recall/recall/false_negatives/count*
valueB
 *    
Ď
+metrics/recall/recall/false_negatives/count
VariableV2*
shared_name *
dtype0*
	container *
shape: *
_output_shapes
: *>
_class4
20loc:@metrics/recall/recall/false_negatives/count
˛
2metrics/recall/recall/false_negatives/count/AssignAssign+metrics/recall/recall/false_negatives/count=metrics/recall/recall/false_negatives/count/Initializer/zeros*>
_class4
20loc:@metrics/recall/recall/false_negatives/count*
use_locking(*
_output_shapes
: *
validate_shape(*
T0
Ę
0metrics/recall/recall/false_negatives/count/readIdentity+metrics/recall/recall/false_negatives/count*
T0*
_output_shapes
: *>
_class4
20loc:@metrics/recall/recall/false_negatives/count
Á
-metrics/recall/recall/false_negatives/ToFloatCast0metrics/recall/recall/false_negatives/LogicalAnd*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
Truncate( *

DstT0*

SrcT0


.metrics/recall/recall/false_negatives/IdentityIdentity0metrics/recall/recall/false_negatives/count/read*
_output_shapes
: *
T0
|
+metrics/recall/recall/false_negatives/ConstConst*
_output_shapes
:*
valueB"       *
dtype0
Ę
)metrics/recall/recall/false_negatives/SumSum-metrics/recall/recall/false_negatives/ToFloat+metrics/recall/recall/false_negatives/Const*
_output_shapes
: *

Tidx0*
T0*
	keep_dims( 

/metrics/recall/recall/false_negatives/AssignAdd	AssignAdd+metrics/recall/recall/false_negatives/count)metrics/recall/recall/false_negatives/Sum*
T0*
_output_shapes
: *
use_locking( *>
_class4
20loc:@metrics/recall/recall/false_negatives/count
 
metrics/recall/recall/addAdd-metrics/recall/recall/true_positives/Identity.metrics/recall/recall/false_negatives/Identity*
T0*
_output_shapes
: 
d
metrics/recall/recall/Greater/yConst*
_output_shapes
: *
valueB
 *    *
dtype0

metrics/recall/recall/GreaterGreatermetrics/recall/recall/addmetrics/recall/recall/Greater/y*
T0*
_output_shapes
: 
˘
metrics/recall/recall/add_1Add-metrics/recall/recall/true_positives/Identity.metrics/recall/recall/false_negatives/Identity*
_output_shapes
: *
T0

metrics/recall/recall/divRealDiv-metrics/recall/recall/true_positives/Identitymetrics/recall/recall/add_1*
T0*
_output_shapes
: 
b
metrics/recall/recall/value/eConst*
_output_shapes
: *
valueB
 *    *
dtype0

metrics/recall/recall/valueSelectmetrics/recall/recall/Greatermetrics/recall/recall/divmetrics/recall/recall/value/e*
T0*
_output_shapes
: 
¤
metrics/recall/recall/add_2Add.metrics/recall/recall/true_positives/AssignAdd/metrics/recall/recall/false_negatives/AssignAdd*
T0*
_output_shapes
: 
f
!metrics/recall/recall/Greater_1/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 

metrics/recall/recall/Greater_1Greatermetrics/recall/recall/add_2!metrics/recall/recall/Greater_1/y*
T0*
_output_shapes
: 
¤
metrics/recall/recall/add_3Add.metrics/recall/recall/true_positives/AssignAdd/metrics/recall/recall/false_negatives/AssignAdd*
T0*
_output_shapes
: 

metrics/recall/recall/div_1RealDiv.metrics/recall/recall/true_positives/AssignAddmetrics/recall/recall/add_3*
T0*
_output_shapes
: 
f
!metrics/recall/recall/update_op/eConst*
valueB
 *    *
_output_shapes
: *
dtype0
Ť
metrics/recall/recall/update_opSelectmetrics/recall/recall/Greater_1metrics/recall/recall/div_1!metrics/recall/recall/update_op/e*
T0*
_output_shapes
: 
ů
metrics/recall/initNoOp9^metrics/precision/precision/false_positives/count/Assign8^metrics/precision/precision/true_positives/count/Assign3^metrics/recall/recall/false_negatives/count/Assign2^metrics/recall/recall/true_positives/count/Assign

metrics/recall/IdentityIdentitymetrics/recall/recall/value ^metrics/recall/recall/update_op*
_output_shapes
: *
T0
W
metrics/recall/ConstConst*
_output_shapes
: *
dtype0*
valueB 

metrics/recall/MeanMeanmetrics/recall/Identitymetrics/recall/Const*

Tidx0*
	keep_dims( *
_output_shapes
: *
T0
}
training/Adam/gradients/ShapeConst*
_class
loc:@loss/mul*
dtype0*
valueB *
_output_shapes
: 

!training/Adam/gradients/grad_ys_0Const*
_class
loc:@loss/mul*
dtype0*
_output_shapes
: *
valueB
 *  ?
ś
training/Adam/gradients/FillFilltraining/Adam/gradients/Shape!training/Adam/gradients/grad_ys_0*

index_type0*
T0*
_class
loc:@loss/mul*
_output_shapes
: 
Ś
)training/Adam/gradients/loss/mul_grad/MulMultraining/Adam/gradients/Fillloss/dense_1_loss/Mean_1*
T0*
_class
loc:@loss/mul*
_output_shapes
: 

+training/Adam/gradients/loss/mul_grad/Mul_1Multraining/Adam/gradients/Fill
loss/mul/x*
_class
loc:@loss/mul*
T0*
_output_shapes
: 
ł
Ctraining/Adam/gradients/loss/dense_1_loss/Mean_1_grad/Reshape/shapeConst*
valueB *
dtype0*+
_class!
loc:@loss/dense_1_loss/Mean_1*
_output_shapes
: 

=training/Adam/gradients/loss/dense_1_loss/Mean_1_grad/ReshapeReshape+training/Adam/gradients/loss/mul_grad/Mul_1Ctraining/Adam/gradients/loss/dense_1_loss/Mean_1_grad/Reshape/shape*+
_class!
loc:@loss/dense_1_loss/Mean_1*
T0*
Tshape0*
_output_shapes
: 
Ť
;training/Adam/gradients/loss/dense_1_loss/Mean_1_grad/ConstConst*+
_class!
loc:@loss/dense_1_loss/Mean_1*
dtype0*
valueB *
_output_shapes
: 

:training/Adam/gradients/loss/dense_1_loss/Mean_1_grad/TileTile=training/Adam/gradients/loss/dense_1_loss/Mean_1_grad/Reshape;training/Adam/gradients/loss/dense_1_loss/Mean_1_grad/Const*
T0*
_output_shapes
: *

Tmultiples0*+
_class!
loc:@loss/dense_1_loss/Mean_1
Ż
=training/Adam/gradients/loss/dense_1_loss/Mean_1_grad/Const_1Const*+
_class!
loc:@loss/dense_1_loss/Mean_1*
_output_shapes
: *
valueB
 *  ?*
dtype0

=training/Adam/gradients/loss/dense_1_loss/Mean_1_grad/truedivRealDiv:training/Adam/gradients/loss/dense_1_loss/Mean_1_grad/Tile=training/Adam/gradients/loss/dense_1_loss/Mean_1_grad/Const_1*
_output_shapes
: *+
_class!
loc:@loss/dense_1_loss/Mean_1*
T0
˛
@training/Adam/gradients/loss/dense_1_loss/Select_grad/zeros_likeConst*
dtype0*
_output_shapes
: *+
_class!
loc:@loss/dense_1_loss/Select*
valueB
 *    
°
<training/Adam/gradients/loss/dense_1_loss/Select_grad/SelectSelectloss/dense_1_loss/Greater=training/Adam/gradients/loss/dense_1_loss/Mean_1_grad/truediv@training/Adam/gradients/loss/dense_1_loss/Select_grad/zeros_like*
_output_shapes
: *+
_class!
loc:@loss/dense_1_loss/Select*
T0
˛
>training/Adam/gradients/loss/dense_1_loss/Select_grad/Select_1Selectloss/dense_1_loss/Greater@training/Adam/gradients/loss/dense_1_loss/Select_grad/zeros_like=training/Adam/gradients/loss/dense_1_loss/Mean_1_grad/truediv*
T0*+
_class!
loc:@loss/dense_1_loss/Select*
_output_shapes
: 
ą
>training/Adam/gradients/loss/dense_1_loss/truediv_1_grad/ShapeConst*.
_class$
" loc:@loss/dense_1_loss/truediv_1*
dtype0*
valueB *
_output_shapes
: 
ł
@training/Adam/gradients/loss/dense_1_loss/truediv_1_grad/Shape_1Const*.
_class$
" loc:@loss/dense_1_loss/truediv_1*
valueB *
_output_shapes
: *
dtype0
Ö
Ntraining/Adam/gradients/loss/dense_1_loss/truediv_1_grad/BroadcastGradientArgsBroadcastGradientArgs>training/Adam/gradients/loss/dense_1_loss/truediv_1_grad/Shape@training/Adam/gradients/loss/dense_1_loss/truediv_1_grad/Shape_1*
T0*.
_class$
" loc:@loss/dense_1_loss/truediv_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ó
@training/Adam/gradients/loss/dense_1_loss/truediv_1_grad/RealDivRealDiv<training/Adam/gradients/loss/dense_1_loss/Select_grad/Selectloss/dense_1_loss/Sum_1*.
_class$
" loc:@loss/dense_1_loss/truediv_1*
T0*
_output_shapes
: 
Ă
<training/Adam/gradients/loss/dense_1_loss/truediv_1_grad/SumSum@training/Adam/gradients/loss/dense_1_loss/truediv_1_grad/RealDivNtraining/Adam/gradients/loss/dense_1_loss/truediv_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*.
_class$
" loc:@loss/dense_1_loss/truediv_1*
_output_shapes
: *

Tidx0
¨
@training/Adam/gradients/loss/dense_1_loss/truediv_1_grad/ReshapeReshape<training/Adam/gradients/loss/dense_1_loss/truediv_1_grad/Sum>training/Adam/gradients/loss/dense_1_loss/truediv_1_grad/Shape*
T0*
_output_shapes
: *.
_class$
" loc:@loss/dense_1_loss/truediv_1*
Tshape0
Ť
<training/Adam/gradients/loss/dense_1_loss/truediv_1_grad/NegNegloss/dense_1_loss/Sum*
_output_shapes
: *
T0*.
_class$
" loc:@loss/dense_1_loss/truediv_1
ő
Btraining/Adam/gradients/loss/dense_1_loss/truediv_1_grad/RealDiv_1RealDiv<training/Adam/gradients/loss/dense_1_loss/truediv_1_grad/Negloss/dense_1_loss/Sum_1*
_output_shapes
: *
T0*.
_class$
" loc:@loss/dense_1_loss/truediv_1
ű
Btraining/Adam/gradients/loss/dense_1_loss/truediv_1_grad/RealDiv_2RealDivBtraining/Adam/gradients/loss/dense_1_loss/truediv_1_grad/RealDiv_1loss/dense_1_loss/Sum_1*.
_class$
" loc:@loss/dense_1_loss/truediv_1*
_output_shapes
: *
T0

<training/Adam/gradients/loss/dense_1_loss/truediv_1_grad/mulMul<training/Adam/gradients/loss/dense_1_loss/Select_grad/SelectBtraining/Adam/gradients/loss/dense_1_loss/truediv_1_grad/RealDiv_2*
_output_shapes
: *.
_class$
" loc:@loss/dense_1_loss/truediv_1*
T0
Ă
>training/Adam/gradients/loss/dense_1_loss/truediv_1_grad/Sum_1Sum<training/Adam/gradients/loss/dense_1_loss/truediv_1_grad/mulPtraining/Adam/gradients/loss/dense_1_loss/truediv_1_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0*
_output_shapes
: *.
_class$
" loc:@loss/dense_1_loss/truediv_1
Ž
Btraining/Adam/gradients/loss/dense_1_loss/truediv_1_grad/Reshape_1Reshape>training/Adam/gradients/loss/dense_1_loss/truediv_1_grad/Sum_1@training/Adam/gradients/loss/dense_1_loss/truediv_1_grad/Shape_1*
_output_shapes
: *
T0*.
_class$
" loc:@loss/dense_1_loss/truediv_1*
Tshape0
´
@training/Adam/gradients/loss/dense_1_loss/Sum_grad/Reshape/shapeConst*
valueB:*(
_class
loc:@loss/dense_1_loss/Sum*
_output_shapes
:*
dtype0
Ś
:training/Adam/gradients/loss/dense_1_loss/Sum_grad/ReshapeReshape@training/Adam/gradients/loss/dense_1_loss/truediv_1_grad/Reshape@training/Adam/gradients/loss/dense_1_loss/Sum_grad/Reshape/shape*
T0*
_output_shapes
:*
Tshape0*(
_class
loc:@loss/dense_1_loss/Sum
ˇ
8training/Adam/gradients/loss/dense_1_loss/Sum_grad/ShapeShapeloss/dense_1_loss/Mul*
_output_shapes
:*(
_class
loc:@loss/dense_1_loss/Sum*
T0*
out_type0

7training/Adam/gradients/loss/dense_1_loss/Sum_grad/TileTile:training/Adam/gradients/loss/dense_1_loss/Sum_grad/Reshape8training/Adam/gradients/loss/dense_1_loss/Sum_grad/Shape*

Tmultiples0*
T0*(
_class
loc:@loss/dense_1_loss/Sum*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
¸
8training/Adam/gradients/loss/dense_1_loss/Mul_grad/ShapeShapeloss/dense_1_loss/Mean*
out_type0*(
_class
loc:@loss/dense_1_loss/Mul*
T0*
_output_shapes
:
Ç
:training/Adam/gradients/loss/dense_1_loss/Mul_grad/Shape_1Shape#loss/dense_1_loss/broadcast_weights*
out_type0*
T0*(
_class
loc:@loss/dense_1_loss/Mul*
_output_shapes
:
ž
Htraining/Adam/gradients/loss/dense_1_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs8training/Adam/gradients/loss/dense_1_loss/Mul_grad/Shape:training/Adam/gradients/loss/dense_1_loss/Mul_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0*(
_class
loc:@loss/dense_1_loss/Mul
ó
6training/Adam/gradients/loss/dense_1_loss/Mul_grad/MulMul7training/Adam/gradients/loss/dense_1_loss/Sum_grad/Tile#loss/dense_1_loss/broadcast_weights*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*(
_class
loc:@loss/dense_1_loss/Mul*
T0
Š
6training/Adam/gradients/loss/dense_1_loss/Mul_grad/SumSum6training/Adam/gradients/loss/dense_1_loss/Mul_grad/MulHtraining/Adam/gradients/loss/dense_1_loss/Mul_grad/BroadcastGradientArgs*(
_class
loc:@loss/dense_1_loss/Mul*
_output_shapes
:*
	keep_dims( *
T0*

Tidx0

:training/Adam/gradients/loss/dense_1_loss/Mul_grad/ReshapeReshape6training/Adam/gradients/loss/dense_1_loss/Mul_grad/Sum8training/Adam/gradients/loss/dense_1_loss/Mul_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*(
_class
loc:@loss/dense_1_loss/Mul*
Tshape0
č
8training/Adam/gradients/loss/dense_1_loss/Mul_grad/Mul_1Mulloss/dense_1_loss/Mean7training/Adam/gradients/loss/dense_1_loss/Sum_grad/Tile*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*(
_class
loc:@loss/dense_1_loss/Mul*
T0
Ż
8training/Adam/gradients/loss/dense_1_loss/Mul_grad/Sum_1Sum8training/Adam/gradients/loss/dense_1_loss/Mul_grad/Mul_1Jtraining/Adam/gradients/loss/dense_1_loss/Mul_grad/BroadcastGradientArgs:1*
T0*(
_class
loc:@loss/dense_1_loss/Mul*
_output_shapes
:*
	keep_dims( *

Tidx0
Ł
<training/Adam/gradients/loss/dense_1_loss/Mul_grad/Reshape_1Reshape8training/Adam/gradients/loss/dense_1_loss/Mul_grad/Sum_1:training/Adam/gradients/loss/dense_1_loss/Mul_grad/Shape_1*(
_class
loc:@loss/dense_1_loss/Mul*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ă
9training/Adam/gradients/loss/dense_1_loss/Mean_grad/ShapeShapeloss/dense_1_loss/logistic_loss*
out_type0*
_output_shapes
:*)
_class
loc:@loss/dense_1_loss/Mean*
T0
Ľ
8training/Adam/gradients/loss/dense_1_loss/Mean_grad/SizeConst*)
_class
loc:@loss/dense_1_loss/Mean*
_output_shapes
: *
dtype0*
value	B :
î
7training/Adam/gradients/loss/dense_1_loss/Mean_grad/addAdd(loss/dense_1_loss/Mean/reduction_indices8training/Adam/gradients/loss/dense_1_loss/Mean_grad/Size*)
_class
loc:@loss/dense_1_loss/Mean*
_output_shapes
: *
T0

7training/Adam/gradients/loss/dense_1_loss/Mean_grad/modFloorMod7training/Adam/gradients/loss/dense_1_loss/Mean_grad/add8training/Adam/gradients/loss/dense_1_loss/Mean_grad/Size*)
_class
loc:@loss/dense_1_loss/Mean*
_output_shapes
: *
T0
Š
;training/Adam/gradients/loss/dense_1_loss/Mean_grad/Shape_1Const*
_output_shapes
: *
valueB *)
_class
loc:@loss/dense_1_loss/Mean*
dtype0
Ź
?training/Adam/gradients/loss/dense_1_loss/Mean_grad/range/startConst*
value	B : *
dtype0*
_output_shapes
: *)
_class
loc:@loss/dense_1_loss/Mean
Ź
?training/Adam/gradients/loss/dense_1_loss/Mean_grad/range/deltaConst*
dtype0*
_output_shapes
: *)
_class
loc:@loss/dense_1_loss/Mean*
value	B :
Ń
9training/Adam/gradients/loss/dense_1_loss/Mean_grad/rangeRange?training/Adam/gradients/loss/dense_1_loss/Mean_grad/range/start8training/Adam/gradients/loss/dense_1_loss/Mean_grad/Size?training/Adam/gradients/loss/dense_1_loss/Mean_grad/range/delta*

Tidx0*)
_class
loc:@loss/dense_1_loss/Mean*
_output_shapes
:
Ť
>training/Adam/gradients/loss/dense_1_loss/Mean_grad/Fill/valueConst*
_output_shapes
: *
value	B :*
dtype0*)
_class
loc:@loss/dense_1_loss/Mean

8training/Adam/gradients/loss/dense_1_loss/Mean_grad/FillFill;training/Adam/gradients/loss/dense_1_loss/Mean_grad/Shape_1>training/Adam/gradients/loss/dense_1_loss/Mean_grad/Fill/value*
_output_shapes
: *
T0*)
_class
loc:@loss/dense_1_loss/Mean*

index_type0

Atraining/Adam/gradients/loss/dense_1_loss/Mean_grad/DynamicStitchDynamicStitch9training/Adam/gradients/loss/dense_1_loss/Mean_grad/range7training/Adam/gradients/loss/dense_1_loss/Mean_grad/mod9training/Adam/gradients/loss/dense_1_loss/Mean_grad/Shape8training/Adam/gradients/loss/dense_1_loss/Mean_grad/Fill*
T0*
N*
_output_shapes
:*)
_class
loc:@loss/dense_1_loss/Mean
Ş
=training/Adam/gradients/loss/dense_1_loss/Mean_grad/Maximum/yConst*
_output_shapes
: *
value	B :*
dtype0*)
_class
loc:@loss/dense_1_loss/Mean

;training/Adam/gradients/loss/dense_1_loss/Mean_grad/MaximumMaximumAtraining/Adam/gradients/loss/dense_1_loss/Mean_grad/DynamicStitch=training/Adam/gradients/loss/dense_1_loss/Mean_grad/Maximum/y*)
_class
loc:@loss/dense_1_loss/Mean*
T0*
_output_shapes
:

<training/Adam/gradients/loss/dense_1_loss/Mean_grad/floordivFloorDiv9training/Adam/gradients/loss/dense_1_loss/Mean_grad/Shape;training/Adam/gradients/loss/dense_1_loss/Mean_grad/Maximum*
T0*
_output_shapes
:*)
_class
loc:@loss/dense_1_loss/Mean
š
;training/Adam/gradients/loss/dense_1_loss/Mean_grad/ReshapeReshape:training/Adam/gradients/loss/dense_1_loss/Mul_grad/ReshapeAtraining/Adam/gradients/loss/dense_1_loss/Mean_grad/DynamicStitch*)
_class
loc:@loss/dense_1_loss/Mean*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ł
8training/Adam/gradients/loss/dense_1_loss/Mean_grad/TileTile;training/Adam/gradients/loss/dense_1_loss/Mean_grad/Reshape<training/Adam/gradients/loss/dense_1_loss/Mean_grad/floordiv*
T0*)
_class
loc:@loss/dense_1_loss/Mean*

Tmultiples0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ĺ
;training/Adam/gradients/loss/dense_1_loss/Mean_grad/Shape_2Shapeloss/dense_1_loss/logistic_loss*)
_class
loc:@loss/dense_1_loss/Mean*
T0*
_output_shapes
:*
out_type0
ź
;training/Adam/gradients/loss/dense_1_loss/Mean_grad/Shape_3Shapeloss/dense_1_loss/Mean*
_output_shapes
:*
out_type0*
T0*)
_class
loc:@loss/dense_1_loss/Mean
Ž
9training/Adam/gradients/loss/dense_1_loss/Mean_grad/ConstConst*)
_class
loc:@loss/dense_1_loss/Mean*
dtype0*
_output_shapes
:*
valueB: 
Ą
8training/Adam/gradients/loss/dense_1_loss/Mean_grad/ProdProd;training/Adam/gradients/loss/dense_1_loss/Mean_grad/Shape_29training/Adam/gradients/loss/dense_1_loss/Mean_grad/Const*
T0*)
_class
loc:@loss/dense_1_loss/Mean*
_output_shapes
: *
	keep_dims( *

Tidx0
°
;training/Adam/gradients/loss/dense_1_loss/Mean_grad/Const_1Const*
valueB: *)
_class
loc:@loss/dense_1_loss/Mean*
_output_shapes
:*
dtype0
Ľ
:training/Adam/gradients/loss/dense_1_loss/Mean_grad/Prod_1Prod;training/Adam/gradients/loss/dense_1_loss/Mean_grad/Shape_3;training/Adam/gradients/loss/dense_1_loss/Mean_grad/Const_1*
_output_shapes
: *
	keep_dims( *)
_class
loc:@loss/dense_1_loss/Mean*
T0*

Tidx0
Ź
?training/Adam/gradients/loss/dense_1_loss/Mean_grad/Maximum_1/yConst*
dtype0*)
_class
loc:@loss/dense_1_loss/Mean*
_output_shapes
: *
value	B :

=training/Adam/gradients/loss/dense_1_loss/Mean_grad/Maximum_1Maximum:training/Adam/gradients/loss/dense_1_loss/Mean_grad/Prod_1?training/Adam/gradients/loss/dense_1_loss/Mean_grad/Maximum_1/y*
T0*)
_class
loc:@loss/dense_1_loss/Mean*
_output_shapes
: 

>training/Adam/gradients/loss/dense_1_loss/Mean_grad/floordiv_1FloorDiv8training/Adam/gradients/loss/dense_1_loss/Mean_grad/Prod=training/Adam/gradients/loss/dense_1_loss/Mean_grad/Maximum_1*
_output_shapes
: *)
_class
loc:@loss/dense_1_loss/Mean*
T0
ë
8training/Adam/gradients/loss/dense_1_loss/Mean_grad/CastCast>training/Adam/gradients/loss/dense_1_loss/Mean_grad/floordiv_1*
Truncate( *)
_class
loc:@loss/dense_1_loss/Mean*

SrcT0*
_output_shapes
: *

DstT0
 
;training/Adam/gradients/loss/dense_1_loss/Mean_grad/truedivRealDiv8training/Adam/gradients/loss/dense_1_loss/Mean_grad/Tile8training/Adam/gradients/loss/dense_1_loss/Mean_grad/Cast*
T0*)
_class
loc:@loss/dense_1_loss/Mean*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ů
Btraining/Adam/gradients/loss/dense_1_loss/logistic_loss_grad/ShapeShape#loss/dense_1_loss/logistic_loss/sub*
T0*2
_class(
&$loc:@loss/dense_1_loss/logistic_loss*
_output_shapes
:*
out_type0
Ý
Dtraining/Adam/gradients/loss/dense_1_loss/logistic_loss_grad/Shape_1Shape%loss/dense_1_loss/logistic_loss/Log1p*
out_type0*
_output_shapes
:*
T0*2
_class(
&$loc:@loss/dense_1_loss/logistic_loss
ć
Rtraining/Adam/gradients/loss/dense_1_loss/logistic_loss_grad/BroadcastGradientArgsBroadcastGradientArgsBtraining/Adam/gradients/loss/dense_1_loss/logistic_loss_grad/ShapeDtraining/Adam/gradients/loss/dense_1_loss/logistic_loss_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*2
_class(
&$loc:@loss/dense_1_loss/logistic_loss
Ě
@training/Adam/gradients/loss/dense_1_loss/logistic_loss_grad/SumSum;training/Adam/gradients/loss/dense_1_loss/Mean_grad/truedivRtraining/Adam/gradients/loss/dense_1_loss/logistic_loss_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*2
_class(
&$loc:@loss/dense_1_loss/logistic_loss*

Tidx0
Ň
Dtraining/Adam/gradients/loss/dense_1_loss/logistic_loss_grad/ReshapeReshape@training/Adam/gradients/loss/dense_1_loss/logistic_loss_grad/SumBtraining/Adam/gradients/loss/dense_1_loss/logistic_loss_grad/Shape*
T0*2
_class(
&$loc:@loss/dense_1_loss/logistic_loss*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Đ
Btraining/Adam/gradients/loss/dense_1_loss/logistic_loss_grad/Sum_1Sum;training/Adam/gradients/loss/dense_1_loss/Mean_grad/truedivTtraining/Adam/gradients/loss/dense_1_loss/logistic_loss_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
_output_shapes
:*2
_class(
&$loc:@loss/dense_1_loss/logistic_loss*
T0
Ď
Ftraining/Adam/gradients/loss/dense_1_loss/logistic_loss_grad/Reshape_1ReshapeBtraining/Adam/gradients/loss/dense_1_loss/logistic_loss_grad/Sum_1Dtraining/Adam/gradients/loss/dense_1_loss/logistic_loss_grad/Shape_1*2
_class(
&$loc:@loss/dense_1_loss/logistic_loss*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ä
Ftraining/Adam/gradients/loss/dense_1_loss/logistic_loss/sub_grad/ShapeShape&loss/dense_1_loss/logistic_loss/Select*6
_class,
*(loc:@loss/dense_1_loss/logistic_loss/sub*
_output_shapes
:*
out_type0*
T0
ă
Htraining/Adam/gradients/loss/dense_1_loss/logistic_loss/sub_grad/Shape_1Shape#loss/dense_1_loss/logistic_loss/mul*
out_type0*
_output_shapes
:*6
_class,
*(loc:@loss/dense_1_loss/logistic_loss/sub*
T0
ö
Vtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/sub_grad/BroadcastGradientArgsBroadcastGradientArgsFtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/sub_grad/ShapeHtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/sub_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0*6
_class,
*(loc:@loss/dense_1_loss/logistic_loss/sub
á
Dtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/sub_grad/SumSumDtraining/Adam/gradients/loss/dense_1_loss/logistic_loss_grad/ReshapeVtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/sub_grad/BroadcastGradientArgs*6
_class,
*(loc:@loss/dense_1_loss/logistic_loss/sub*

Tidx0*
	keep_dims( *
_output_shapes
:*
T0
Ů
Htraining/Adam/gradients/loss/dense_1_loss/logistic_loss/sub_grad/ReshapeReshapeDtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/sub_grad/SumFtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/sub_grad/Shape*
Tshape0*6
_class,
*(loc:@loss/dense_1_loss/logistic_loss/sub*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ĺ
Ftraining/Adam/gradients/loss/dense_1_loss/logistic_loss/sub_grad/Sum_1SumDtraining/Adam/gradients/loss/dense_1_loss/logistic_loss_grad/ReshapeXtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *
_output_shapes
:*6
_class,
*(loc:@loss/dense_1_loss/logistic_loss/sub*

Tidx0*
T0
î
Dtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/sub_grad/NegNegFtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/sub_grad/Sum_1*
_output_shapes
:*6
_class,
*(loc:@loss/dense_1_loss/logistic_loss/sub*
T0
ć
Jtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/sub_grad/Reshape_1ReshapeDtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/sub_grad/NegHtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/sub_grad/Shape_1*6
_class,
*(loc:@loss/dense_1_loss/logistic_loss/sub*
Tshape0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

Htraining/Adam/gradients/loss/dense_1_loss/logistic_loss/Log1p_grad/add/xConstG^training/Adam/gradients/loss/dense_1_loss/logistic_loss_grad/Reshape_1*
dtype0*
valueB
 *  ?*8
_class.
,*loc:@loss/dense_1_loss/logistic_loss/Log1p*
_output_shapes
: 
¨
Ftraining/Adam/gradients/loss/dense_1_loss/logistic_loss/Log1p_grad/addAddHtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/Log1p_grad/add/x#loss/dense_1_loss/logistic_loss/Exp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*8
_class.
,*loc:@loss/dense_1_loss/logistic_loss/Log1p

Mtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/Log1p_grad/Reciprocal
ReciprocalFtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/Log1p_grad/add*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*8
_class.
,*loc:@loss/dense_1_loss/logistic_loss/Log1p
Đ
Ftraining/Adam/gradients/loss/dense_1_loss/logistic_loss/Log1p_grad/mulMulFtraining/Adam/gradients/loss/dense_1_loss/logistic_loss_grad/Reshape_1Mtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/Log1p_grad/Reciprocal*
T0*8
_class.
,*loc:@loss/dense_1_loss/logistic_loss/Log1p*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ß
Ntraining/Adam/gradients/loss/dense_1_loss/logistic_loss/Select_grad/zeros_like	ZerosLikeloss/dense_1_loss/Log*9
_class/
-+loc:@loss/dense_1_loss/logistic_loss/Select*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Jtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/Select_grad/SelectSelect,loss/dense_1_loss/logistic_loss/GreaterEqualHtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/sub_grad/ReshapeNtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/Select_grad/zeros_like*9
_class/
-+loc:@loss/dense_1_loss/logistic_loss/Select*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ltraining/Adam/gradients/loss/dense_1_loss/logistic_loss/Select_grad/Select_1Select,loss/dense_1_loss/logistic_loss/GreaterEqualNtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/Select_grad/zeros_likeHtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/sub_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*9
_class/
-+loc:@loss/dense_1_loss/logistic_loss/Select*
T0
Ó
Ftraining/Adam/gradients/loss/dense_1_loss/logistic_loss/mul_grad/ShapeShapeloss/dense_1_loss/Log*
_output_shapes
:*
out_type0*
T0*6
_class,
*(loc:@loss/dense_1_loss/logistic_loss/mul
Î
Htraining/Adam/gradients/loss/dense_1_loss/logistic_loss/mul_grad/Shape_1Shapedense_1_target*
out_type0*
_output_shapes
:*
T0*6
_class,
*(loc:@loss/dense_1_loss/logistic_loss/mul
ö
Vtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgsFtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/mul_grad/ShapeHtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/mul_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0*6
_class,
*(loc:@loss/dense_1_loss/logistic_loss/mul

Dtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/mul_grad/MulMulJtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/sub_grad/Reshape_1dense_1_target*6
_class,
*(loc:@loss/dense_1_loss/logistic_loss/mul*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0
á
Dtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/mul_grad/SumSumDtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/mul_grad/MulVtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/mul_grad/BroadcastGradientArgs*
T0*

Tidx0*6
_class,
*(loc:@loss/dense_1_loss/logistic_loss/mul*
	keep_dims( *
_output_shapes
:
Ů
Htraining/Adam/gradients/loss/dense_1_loss/logistic_loss/mul_grad/ReshapeReshapeDtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/mul_grad/SumFtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/mul_grad/Shape*
T0*6
_class,
*(loc:@loss/dense_1_loss/logistic_loss/mul*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tshape0
Ł
Ftraining/Adam/gradients/loss/dense_1_loss/logistic_loss/mul_grad/Mul_1Mulloss/dense_1_loss/LogJtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/sub_grad/Reshape_1*
T0*6
_class,
*(loc:@loss/dense_1_loss/logistic_loss/mul*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ç
Ftraining/Adam/gradients/loss/dense_1_loss/logistic_loss/mul_grad/Sum_1SumFtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/mul_grad/Mul_1Xtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/mul_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0*
_output_shapes
:*6
_class,
*(loc:@loss/dense_1_loss/logistic_loss/mul
č
Jtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/mul_grad/Reshape_1ReshapeFtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/mul_grad/Sum_1Htraining/Adam/gradients/loss/dense_1_loss/logistic_loss/mul_grad/Shape_1*6
_class,
*(loc:@loss/dense_1_loss/logistic_loss/mul*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0
˘
Dtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/Exp_grad/mulMulFtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/Log1p_grad/mul#loss/dense_1_loss/logistic_loss/Exp*
T0*6
_class,
*(loc:@loss/dense_1_loss/logistic_loss/Exp*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ń
Ptraining/Adam/gradients/loss/dense_1_loss/logistic_loss/Select_1_grad/zeros_like	ZerosLike#loss/dense_1_loss/logistic_loss/Neg*;
_class1
/-loc:@loss/dense_1_loss/logistic_loss/Select_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ltraining/Adam/gradients/loss/dense_1_loss/logistic_loss/Select_1_grad/SelectSelect,loss/dense_1_loss/logistic_loss/GreaterEqualDtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/Exp_grad/mulPtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/Select_1_grad/zeros_like*
T0*;
_class1
/-loc:@loss/dense_1_loss/logistic_loss/Select_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ntraining/Adam/gradients/loss/dense_1_loss/logistic_loss/Select_1_grad/Select_1Select,loss/dense_1_loss/logistic_loss/GreaterEqualPtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/Select_1_grad/zeros_likeDtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/Exp_grad/mul*;
_class1
/-loc:@loss/dense_1_loss/logistic_loss/Select_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Dtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/Neg_grad/NegNegLtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/Select_1_grad/Select*6
_class,
*(loc:@loss/dense_1_loss/logistic_loss/Neg*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ć
training/Adam/gradients/AddNAddNJtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/Select_grad/SelectHtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/mul_grad/ReshapeNtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/Select_1_grad/Select_1Dtraining/Adam/gradients/loss/dense_1_loss/logistic_loss/Neg_grad/Neg*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
N*
T0*9
_class/
-+loc:@loss/dense_1_loss/logistic_loss/Select
á
=training/Adam/gradients/loss/dense_1_loss/Log_grad/Reciprocal
Reciprocalloss/dense_1_loss/truediv^training/Adam/gradients/AddN*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*(
_class
loc:@loss/dense_1_loss/Log
ö
6training/Adam/gradients/loss/dense_1_loss/Log_grad/mulMultraining/Adam/gradients/AddN=training/Adam/gradients/loss/dense_1_loss/Log_grad/Reciprocal*
T0*(
_class
loc:@loss/dense_1_loss/Log*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
É
<training/Adam/gradients/loss/dense_1_loss/truediv_grad/ShapeShapeloss/dense_1_loss/clip_by_value*
T0*,
_class"
 loc:@loss/dense_1_loss/truediv*
out_type0*
_output_shapes
:
Ă
>training/Adam/gradients/loss/dense_1_loss/truediv_grad/Shape_1Shapeloss/dense_1_loss/sub_1*,
_class"
 loc:@loss/dense_1_loss/truediv*
_output_shapes
:*
out_type0*
T0
Î
Ltraining/Adam/gradients/loss/dense_1_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs<training/Adam/gradients/loss/dense_1_loss/truediv_grad/Shape>training/Adam/gradients/loss/dense_1_loss/truediv_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*,
_class"
 loc:@loss/dense_1_loss/truediv*
T0
ú
>training/Adam/gradients/loss/dense_1_loss/truediv_grad/RealDivRealDiv6training/Adam/gradients/loss/dense_1_loss/Log_grad/mulloss/dense_1_loss/sub_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*,
_class"
 loc:@loss/dense_1_loss/truediv*
T0
˝
:training/Adam/gradients/loss/dense_1_loss/truediv_grad/SumSum>training/Adam/gradients/loss/dense_1_loss/truediv_grad/RealDivLtraining/Adam/gradients/loss/dense_1_loss/truediv_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *,
_class"
 loc:@loss/dense_1_loss/truediv*
T0*
_output_shapes
:
ą
>training/Adam/gradients/loss/dense_1_loss/truediv_grad/ReshapeReshape:training/Adam/gradients/loss/dense_1_loss/truediv_grad/Sum<training/Adam/gradients/loss/dense_1_loss/truediv_grad/Shape*,
_class"
 loc:@loss/dense_1_loss/truediv*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tshape0
Â
:training/Adam/gradients/loss/dense_1_loss/truediv_grad/NegNegloss/dense_1_loss/clip_by_value*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*,
_class"
 loc:@loss/dense_1_loss/truediv

@training/Adam/gradients/loss/dense_1_loss/truediv_grad/RealDiv_1RealDiv:training/Adam/gradients/loss/dense_1_loss/truediv_grad/Negloss/dense_1_loss/sub_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*,
_class"
 loc:@loss/dense_1_loss/truediv*
T0

@training/Adam/gradients/loss/dense_1_loss/truediv_grad/RealDiv_2RealDiv@training/Adam/gradients/loss/dense_1_loss/truediv_grad/RealDiv_1loss/dense_1_loss/sub_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*,
_class"
 loc:@loss/dense_1_loss/truediv*
T0

:training/Adam/gradients/loss/dense_1_loss/truediv_grad/mulMul6training/Adam/gradients/loss/dense_1_loss/Log_grad/mul@training/Adam/gradients/loss/dense_1_loss/truediv_grad/RealDiv_2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*,
_class"
 loc:@loss/dense_1_loss/truediv
˝
<training/Adam/gradients/loss/dense_1_loss/truediv_grad/Sum_1Sum:training/Adam/gradients/loss/dense_1_loss/truediv_grad/mulNtraining/Adam/gradients/loss/dense_1_loss/truediv_grad/BroadcastGradientArgs:1*
T0*,
_class"
 loc:@loss/dense_1_loss/truediv*
_output_shapes
:*
	keep_dims( *

Tidx0
ˇ
@training/Adam/gradients/loss/dense_1_loss/truediv_grad/Reshape_1Reshape<training/Adam/gradients/loss/dense_1_loss/truediv_grad/Sum_1>training/Adam/gradients/loss/dense_1_loss/truediv_grad/Shape_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*,
_class"
 loc:@loss/dense_1_loss/truediv*
Tshape0*
T0
Š
:training/Adam/gradients/loss/dense_1_loss/sub_1_grad/ShapeConst**
_class 
loc:@loss/dense_1_loss/sub_1*
valueB *
dtype0*
_output_shapes
: 
Ç
<training/Adam/gradients/loss/dense_1_loss/sub_1_grad/Shape_1Shapeloss/dense_1_loss/clip_by_value*
out_type0*
T0*
_output_shapes
:**
_class 
loc:@loss/dense_1_loss/sub_1
Ć
Jtraining/Adam/gradients/loss/dense_1_loss/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgs:training/Adam/gradients/loss/dense_1_loss/sub_1_grad/Shape<training/Adam/gradients/loss/dense_1_loss/sub_1_grad/Shape_1**
_class 
loc:@loss/dense_1_loss/sub_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
š
8training/Adam/gradients/loss/dense_1_loss/sub_1_grad/SumSum@training/Adam/gradients/loss/dense_1_loss/truediv_grad/Reshape_1Jtraining/Adam/gradients/loss/dense_1_loss/sub_1_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0**
_class 
loc:@loss/dense_1_loss/sub_1*
_output_shapes
:

<training/Adam/gradients/loss/dense_1_loss/sub_1_grad/ReshapeReshape8training/Adam/gradients/loss/dense_1_loss/sub_1_grad/Sum:training/Adam/gradients/loss/dense_1_loss/sub_1_grad/Shape**
_class 
loc:@loss/dense_1_loss/sub_1*
T0*
_output_shapes
: *
Tshape0
˝
:training/Adam/gradients/loss/dense_1_loss/sub_1_grad/Sum_1Sum@training/Adam/gradients/loss/dense_1_loss/truediv_grad/Reshape_1Ltraining/Adam/gradients/loss/dense_1_loss/sub_1_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:**
_class 
loc:@loss/dense_1_loss/sub_1*
	keep_dims( 
Ę
8training/Adam/gradients/loss/dense_1_loss/sub_1_grad/NegNeg:training/Adam/gradients/loss/dense_1_loss/sub_1_grad/Sum_1*
_output_shapes
:*
T0**
_class 
loc:@loss/dense_1_loss/sub_1
­
>training/Adam/gradients/loss/dense_1_loss/sub_1_grad/Reshape_1Reshape8training/Adam/gradients/loss/dense_1_loss/sub_1_grad/Neg<training/Adam/gradients/loss/dense_1_loss/sub_1_grad/Shape_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙**
_class 
loc:@loss/dense_1_loss/sub_1*
Tshape0*
T0

training/Adam/gradients/AddN_1AddN>training/Adam/gradients/loss/dense_1_loss/truediv_grad/Reshape>training/Adam/gradients/loss/dense_1_loss/sub_1_grad/Reshape_1*
N*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*,
_class"
 loc:@loss/dense_1_loss/truediv
Ý
Btraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/ShapeShape'loss/dense_1_loss/clip_by_value/Minimum*
out_type0*
T0*2
_class(
&$loc:@loss/dense_1_loss/clip_by_value*
_output_shapes
:
ť
Dtraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/Shape_1Const*
_output_shapes
: *2
_class(
&$loc:@loss/dense_1_loss/clip_by_value*
dtype0*
valueB 
Ö
Dtraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/Shape_2Shapetraining/Adam/gradients/AddN_1*
_output_shapes
:*2
_class(
&$loc:@loss/dense_1_loss/clip_by_value*
out_type0*
T0
Á
Htraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/zeros/ConstConst*2
_class(
&$loc:@loss/dense_1_loss/clip_by_value*
valueB
 *    *
_output_shapes
: *
dtype0
Ň
Btraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/zerosFillDtraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/Shape_2Htraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/zeros/Const*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*2
_class(
&$loc:@loss/dense_1_loss/clip_by_value*

index_type0

Itraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/GreaterEqualGreaterEqual'loss/dense_1_loss/clip_by_value/Minimumloss/dense_1_loss/Const*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*2
_class(
&$loc:@loss/dense_1_loss/clip_by_value
ć
Rtraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgsBtraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/ShapeDtraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0*2
_class(
&$loc:@loss/dense_1_loss/clip_by_value
â
Ctraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/SelectSelectItraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/GreaterEqualtraining/Adam/gradients/AddN_1Btraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/zeros*
T0*2
_class(
&$loc:@loss/dense_1_loss/clip_by_value*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ä
Etraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/Select_1SelectItraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/GreaterEqualBtraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/zerostraining/Adam/gradients/AddN_1*
T0*2
_class(
&$loc:@loss/dense_1_loss/clip_by_value*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ô
@training/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/SumSumCtraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/SelectRtraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( *
_output_shapes
:*2
_class(
&$loc:@loss/dense_1_loss/clip_by_value
É
Dtraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/ReshapeReshape@training/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/SumBtraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/Shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*2
_class(
&$loc:@loss/dense_1_loss/clip_by_value*
T0*
Tshape0
Ú
Btraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/Sum_1SumEtraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/Select_1Ttraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/BroadcastGradientArgs:1*

Tidx0*
_output_shapes
:*
T0*2
_class(
&$loc:@loss/dense_1_loss/clip_by_value*
	keep_dims( 
ž
Ftraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/Reshape_1ReshapeBtraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/Sum_1Dtraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/Shape_1*
_output_shapes
: *
Tshape0*
T0*2
_class(
&$loc:@loss/dense_1_loss/clip_by_value
Ő
Jtraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/ShapeShapedense_1/Sigmoid*
_output_shapes
:*
out_type0*
T0*:
_class0
.,loc:@loss/dense_1_loss/clip_by_value/Minimum
Ë
Ltraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/Shape_1Const*
dtype0*
valueB *:
_class0
.,loc:@loss/dense_1_loss/clip_by_value/Minimum*
_output_shapes
: 

Ltraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/Shape_2ShapeDtraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/Reshape*:
_class0
.,loc:@loss/dense_1_loss/clip_by_value/Minimum*
_output_shapes
:*
T0*
out_type0
Ń
Ptraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/zeros/ConstConst*
valueB
 *    *:
_class0
.,loc:@loss/dense_1_loss/clip_by_value/Minimum*
_output_shapes
: *
dtype0
ň
Jtraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/zerosFillLtraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/Shape_2Ptraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/zeros/Const*
T0*

index_type0*:
_class0
.,loc:@loss/dense_1_loss/clip_by_value/Minimum*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ń
Ntraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/LessEqual	LessEqualdense_1/Sigmoidloss/dense_1_loss/sub*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*:
_class0
.,loc:@loss/dense_1_loss/clip_by_value/Minimum

Ztraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsJtraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/ShapeLtraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*:
_class0
.,loc:@loss/dense_1_loss/clip_by_value/Minimum
Ľ
Ktraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/SelectSelectNtraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/LessEqualDtraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/ReshapeJtraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/zeros*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*:
_class0
.,loc:@loss/dense_1_loss/clip_by_value/Minimum
§
Mtraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/Select_1SelectNtraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/LessEqualJtraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/zerosDtraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/Reshape*:
_class0
.,loc:@loss/dense_1_loss/clip_by_value/Minimum*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ô
Htraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/SumSumKtraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/SelectZtraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs*

Tidx0*
_output_shapes
:*
T0*
	keep_dims( *:
_class0
.,loc:@loss/dense_1_loss/clip_by_value/Minimum
é
Ltraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/ReshapeReshapeHtraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/SumJtraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/Shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tshape0*
T0*:
_class0
.,loc:@loss/dense_1_loss/clip_by_value/Minimum
ú
Jtraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/Sum_1SumMtraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/Select_1\training/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*:
_class0
.,loc:@loss/dense_1_loss/clip_by_value/Minimum
Ţ
Ntraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/Reshape_1ReshapeJtraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/Sum_1Ltraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/Shape_1*:
_class0
.,loc:@loss/dense_1_loss/clip_by_value/Minimum*
Tshape0*
_output_shapes
: *
T0
ü
8training/Adam/gradients/dense_1/Sigmoid_grad/SigmoidGradSigmoidGraddense_1/SigmoidLtraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/Reshape*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*"
_class
loc:@dense_1/Sigmoid
á
8training/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad8training/Adam/gradients/dense_1/Sigmoid_grad/SigmoidGrad*
data_formatNHWC*
T0*
_output_shapes
:*"
_class
loc:@dense_1/BiasAdd

2training/Adam/gradients/dense_1/MatMul_grad/MatMulMatMul8training/Adam/gradients/dense_1/Sigmoid_grad/SigmoidGraddense_1/MatMul/ReadVariableOp*
transpose_b(*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0*!
_class
loc:@dense_1/MatMul*
transpose_a( 
ţ
4training/Adam/gradients/dense_1/MatMul_grad/MatMul_1MatMuldropout/cond/Merge8training/Adam/gradients/dense_1/Sigmoid_grad/SigmoidGrad*
T0*
transpose_b( *
transpose_a(*!
_class
loc:@dense_1/MatMul*
_output_shapes

:@
ő
9training/Adam/gradients/dropout/cond/Merge_grad/cond_gradSwitch2training/Adam/gradients/dense_1/MatMul_grad/MatMuldropout/cond/pred_id*:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@*!
_class
loc:@dense_1/MatMul*
T0
Ŕ
;training/Adam/gradients/dropout/cond/dropout/mul_grad/ShapeShapedropout/cond/dropout/div*
T0*
out_type0*
_output_shapes
:*+
_class!
loc:@dropout/cond/dropout/mul
Ä
=training/Adam/gradients/dropout/cond/dropout/mul_grad/Shape_1Shapedropout/cond/dropout/Floor*+
_class!
loc:@dropout/cond/dropout/mul*
T0*
_output_shapes
:*
out_type0
Ę
Ktraining/Adam/gradients/dropout/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs;training/Adam/gradients/dropout/cond/dropout/mul_grad/Shape=training/Adam/gradients/dropout/cond/dropout/mul_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0*+
_class!
loc:@dropout/cond/dropout/mul
ř
9training/Adam/gradients/dropout/cond/dropout/mul_grad/MulMul;training/Adam/gradients/dropout/cond/Merge_grad/cond_grad:1dropout/cond/dropout/Floor*
T0*+
_class!
loc:@dropout/cond/dropout/mul*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
ľ
9training/Adam/gradients/dropout/cond/dropout/mul_grad/SumSum9training/Adam/gradients/dropout/cond/dropout/mul_grad/MulKtraining/Adam/gradients/dropout/cond/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0*+
_class!
loc:@dropout/cond/dropout/mul
­
=training/Adam/gradients/dropout/cond/dropout/mul_grad/ReshapeReshape9training/Adam/gradients/dropout/cond/dropout/mul_grad/Sum;training/Adam/gradients/dropout/cond/dropout/mul_grad/Shape*
T0*
Tshape0*+
_class!
loc:@dropout/cond/dropout/mul*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
ř
;training/Adam/gradients/dropout/cond/dropout/mul_grad/Mul_1Muldropout/cond/dropout/div;training/Adam/gradients/dropout/cond/Merge_grad/cond_grad:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*+
_class!
loc:@dropout/cond/dropout/mul
ť
;training/Adam/gradients/dropout/cond/dropout/mul_grad/Sum_1Sum;training/Adam/gradients/dropout/cond/dropout/mul_grad/Mul_1Mtraining/Adam/gradients/dropout/cond/dropout/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *+
_class!
loc:@dropout/cond/dropout/mul*
T0
ł
?training/Adam/gradients/dropout/cond/dropout/mul_grad/Reshape_1Reshape;training/Adam/gradients/dropout/cond/dropout/mul_grad/Sum_1=training/Adam/gradients/dropout/cond/dropout/mul_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*+
_class!
loc:@dropout/cond/dropout/mul
Č
training/Adam/gradients/SwitchSwitchthresholded_re_lu_2/muldropout/cond/pred_id*
T0*:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@**
_class 
loc:@thresholded_re_lu_2/mul
Ź
 training/Adam/gradients/IdentityIdentity training/Adam/gradients/Switch:1**
_class 
loc:@thresholded_re_lu_2/mul*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
Ť
training/Adam/gradients/Shape_1Shape training/Adam/gradients/Switch:1*
_output_shapes
:**
_class 
loc:@thresholded_re_lu_2/mul*
out_type0*
T0
ˇ
#training/Adam/gradients/zeros/ConstConst!^training/Adam/gradients/Identity*
valueB
 *    **
_class 
loc:@thresholded_re_lu_2/mul*
dtype0*
_output_shapes
: 
Ű
training/Adam/gradients/zerosFilltraining/Adam/gradients/Shape_1#training/Adam/gradients/zeros/Const**
_class 
loc:@thresholded_re_lu_2/mul*
T0*

index_type0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@

Ctraining/Adam/gradients/dropout/cond/Identity/Switch_grad/cond_gradMerge9training/Adam/gradients/dropout/cond/Merge_grad/cond_gradtraining/Adam/gradients/zeros*)
_output_shapes
:˙˙˙˙˙˙˙˙˙@: *
T0*
N**
_class 
loc:@thresholded_re_lu_2/mul
Ë
;training/Adam/gradients/dropout/cond/dropout/div_grad/ShapeShape#dropout/cond/dropout/Shape/Switch:1*
_output_shapes
:*+
_class!
loc:@dropout/cond/dropout/div*
out_type0*
T0
­
=training/Adam/gradients/dropout/cond/dropout/div_grad/Shape_1Const*+
_class!
loc:@dropout/cond/dropout/div*
valueB *
_output_shapes
: *
dtype0
Ę
Ktraining/Adam/gradients/dropout/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs;training/Adam/gradients/dropout/cond/dropout/div_grad/Shape=training/Adam/gradients/dropout/cond/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*+
_class!
loc:@dropout/cond/dropout/div

=training/Adam/gradients/dropout/cond/dropout/div_grad/RealDivRealDiv=training/Adam/gradients/dropout/cond/dropout/mul_grad/Reshapedropout/cond/dropout/keep_prob*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*+
_class!
loc:@dropout/cond/dropout/div*
T0
š
9training/Adam/gradients/dropout/cond/dropout/div_grad/SumSum=training/Adam/gradients/dropout/cond/dropout/div_grad/RealDivKtraining/Adam/gradients/dropout/cond/dropout/div_grad/BroadcastGradientArgs*+
_class!
loc:@dropout/cond/dropout/div*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
­
=training/Adam/gradients/dropout/cond/dropout/div_grad/ReshapeReshape9training/Adam/gradients/dropout/cond/dropout/div_grad/Sum;training/Adam/gradients/dropout/cond/dropout/div_grad/Shape*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*+
_class!
loc:@dropout/cond/dropout/div*
T0
Ä
9training/Adam/gradients/dropout/cond/dropout/div_grad/NegNeg#dropout/cond/dropout/Shape/Switch:1*
T0*+
_class!
loc:@dropout/cond/dropout/div*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@

?training/Adam/gradients/dropout/cond/dropout/div_grad/RealDiv_1RealDiv9training/Adam/gradients/dropout/cond/dropout/div_grad/Negdropout/cond/dropout/keep_prob*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0*+
_class!
loc:@dropout/cond/dropout/div

?training/Adam/gradients/dropout/cond/dropout/div_grad/RealDiv_2RealDiv?training/Adam/gradients/dropout/cond/dropout/div_grad/RealDiv_1dropout/cond/dropout/keep_prob*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*+
_class!
loc:@dropout/cond/dropout/div

9training/Adam/gradients/dropout/cond/dropout/div_grad/mulMul=training/Adam/gradients/dropout/cond/dropout/mul_grad/Reshape?training/Adam/gradients/dropout/cond/dropout/div_grad/RealDiv_2*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*+
_class!
loc:@dropout/cond/dropout/div*
T0
š
;training/Adam/gradients/dropout/cond/dropout/div_grad/Sum_1Sum9training/Adam/gradients/dropout/cond/dropout/div_grad/mulMtraining/Adam/gradients/dropout/cond/dropout/div_grad/BroadcastGradientArgs:1*
	keep_dims( *+
_class!
loc:@dropout/cond/dropout/div*
_output_shapes
:*
T0*

Tidx0
˘
?training/Adam/gradients/dropout/cond/dropout/div_grad/Reshape_1Reshape;training/Adam/gradients/dropout/cond/dropout/div_grad/Sum_1=training/Adam/gradients/dropout/cond/dropout/div_grad/Shape_1*
_output_shapes
: *
T0*+
_class!
loc:@dropout/cond/dropout/div*
Tshape0
Ę
 training/Adam/gradients/Switch_1Switchthresholded_re_lu_2/muldropout/cond/pred_id*
T0**
_class 
loc:@thresholded_re_lu_2/mul*:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@
Ž
"training/Adam/gradients/Identity_1Identity training/Adam/gradients/Switch_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@**
_class 
loc:@thresholded_re_lu_2/mul*
T0
Ť
training/Adam/gradients/Shape_2Shape training/Adam/gradients/Switch_1**
_class 
loc:@thresholded_re_lu_2/mul*
T0*
out_type0*
_output_shapes
:
ť
%training/Adam/gradients/zeros_1/ConstConst#^training/Adam/gradients/Identity_1*
dtype0**
_class 
loc:@thresholded_re_lu_2/mul*
_output_shapes
: *
valueB
 *    
ß
training/Adam/gradients/zeros_1Filltraining/Adam/gradients/Shape_2%training/Adam/gradients/zeros_1/Const*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0*

index_type0**
_class 
loc:@thresholded_re_lu_2/mul

Htraining/Adam/gradients/dropout/cond/dropout/Shape/Switch_grad/cond_gradMergetraining/Adam/gradients/zeros_1=training/Adam/gradients/dropout/cond/dropout/div_grad/Reshape*)
_output_shapes
:˙˙˙˙˙˙˙˙˙@: **
_class 
loc:@thresholded_re_lu_2/mul*
T0*
N

training/Adam/gradients/AddN_2AddNCtraining/Adam/gradients/dropout/cond/Identity/Switch_grad/cond_gradHtraining/Adam/gradients/dropout/cond/dropout/Shape/Switch_grad/cond_grad*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@**
_class 
loc:@thresholded_re_lu_2/mul*
T0*
N
ł
:training/Adam/gradients/thresholded_re_lu_2/mul_grad/ShapeShapedense/BiasAdd**
_class 
loc:@thresholded_re_lu_2/mul*
out_type0*
_output_shapes
:*
T0
Ŕ
<training/Adam/gradients/thresholded_re_lu_2/mul_grad/Shape_1Shapethresholded_re_lu_2/Cast*
out_type0*
_output_shapes
:*
T0**
_class 
loc:@thresholded_re_lu_2/mul
Ć
Jtraining/Adam/gradients/thresholded_re_lu_2/mul_grad/BroadcastGradientArgsBroadcastGradientArgs:training/Adam/gradients/thresholded_re_lu_2/mul_grad/Shape<training/Adam/gradients/thresholded_re_lu_2/mul_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙**
_class 
loc:@thresholded_re_lu_2/mul*
T0
×
8training/Adam/gradients/thresholded_re_lu_2/mul_grad/MulMultraining/Adam/gradients/AddN_2thresholded_re_lu_2/Cast*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@**
_class 
loc:@thresholded_re_lu_2/mul*
T0
ą
8training/Adam/gradients/thresholded_re_lu_2/mul_grad/SumSum8training/Adam/gradients/thresholded_re_lu_2/mul_grad/MulJtraining/Adam/gradients/thresholded_re_lu_2/mul_grad/BroadcastGradientArgs*

Tidx0**
_class 
loc:@thresholded_re_lu_2/mul*
T0*
_output_shapes
:*
	keep_dims( 
Š
<training/Adam/gradients/thresholded_re_lu_2/mul_grad/ReshapeReshape8training/Adam/gradients/thresholded_re_lu_2/mul_grad/Sum:training/Adam/gradients/thresholded_re_lu_2/mul_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@**
_class 
loc:@thresholded_re_lu_2/mul
Î
:training/Adam/gradients/thresholded_re_lu_2/mul_grad/Mul_1Muldense/BiasAddtraining/Adam/gradients/AddN_2**
_class 
loc:@thresholded_re_lu_2/mul*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0
ˇ
:training/Adam/gradients/thresholded_re_lu_2/mul_grad/Sum_1Sum:training/Adam/gradients/thresholded_re_lu_2/mul_grad/Mul_1Ltraining/Adam/gradients/thresholded_re_lu_2/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
_output_shapes
:*
T0*

Tidx0**
_class 
loc:@thresholded_re_lu_2/mul
Ż
>training/Adam/gradients/thresholded_re_lu_2/mul_grad/Reshape_1Reshape:training/Adam/gradients/thresholded_re_lu_2/mul_grad/Sum_1<training/Adam/gradients/thresholded_re_lu_2/mul_grad/Shape_1*
Tshape0**
_class 
loc:@thresholded_re_lu_2/mul*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
á
6training/Adam/gradients/dense/BiasAdd_grad/BiasAddGradBiasAddGrad<training/Adam/gradients/thresholded_re_lu_2/mul_grad/Reshape*
_output_shapes
:@*
T0* 
_class
loc:@dense/BiasAdd*
data_formatNHWC

0training/Adam/gradients/dense/MatMul_grad/MatMulMatMul<training/Adam/gradients/thresholded_re_lu_2/mul_grad/Reshapedense/MatMul/ReadVariableOp*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
_class
loc:@dense/MatMul*
transpose_a( *
transpose_b(*
T0
ü
2training/Adam/gradients/dense/MatMul_grad/MatMul_1MatMulflatten/Reshape<training/Adam/gradients/thresholded_re_lu_2/mul_grad/Reshape*
transpose_b( *
_output_shapes
:	@*
T0*
transpose_a(*
_class
loc:@dense/MatMul
­
2training/Adam/gradients/flatten/Reshape_grad/ShapeShapemax_pooling1d_1/Squeeze*
_output_shapes
:*
T0*"
_class
loc:@flatten/Reshape*
out_type0

4training/Adam/gradients/flatten/Reshape_grad/ReshapeReshape0training/Adam/gradients/dense/MatMul_grad/MatMul2training/Adam/gradients/flatten/Reshape_grad/Shape*
T0*
Tshape0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*"
_class
loc:@flatten/Reshape
˝
:training/Adam/gradients/max_pooling1d_1/Squeeze_grad/ShapeShapemax_pooling1d_1/MaxPool*
T0*
out_type0*
_output_shapes
:**
_class 
loc:@max_pooling1d_1/Squeeze
Ž
<training/Adam/gradients/max_pooling1d_1/Squeeze_grad/ReshapeReshape4training/Adam/gradients/flatten/Reshape_grad/Reshape:training/Adam/gradients/max_pooling1d_1/Squeeze_grad/Shape**
_class 
loc:@max_pooling1d_1/Squeeze*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
ű
@training/Adam/gradients/max_pooling1d_1/MaxPool_grad/MaxPoolGradMaxPoolGradmax_pooling1d_1/ExpandDimsmax_pooling1d_1/MaxPool<training/Adam/gradients/max_pooling1d_1/Squeeze_grad/Reshape*
T0*
ksize
**
_class 
loc:@max_pooling1d_1/MaxPool*0
_output_shapes
:˙˙˙˙˙˙˙˙˙&*
strides
*
data_formatNHWC*
paddingSAME
Ă
=training/Adam/gradients/max_pooling1d_1/ExpandDims_grad/ShapeShapethresholded_re_lu_1/mul*
out_type0*
T0*-
_class#
!loc:@max_pooling1d_1/ExpandDims*
_output_shapes
:
ż
?training/Adam/gradients/max_pooling1d_1/ExpandDims_grad/ReshapeReshape@training/Adam/gradients/max_pooling1d_1/MaxPool_grad/MaxPoolGrad=training/Adam/gradients/max_pooling1d_1/ExpandDims_grad/Shape*
T0*-
_class#
!loc:@max_pooling1d_1/ExpandDims*,
_output_shapes
:˙˙˙˙˙˙˙˙˙&*
Tshape0
ś
:training/Adam/gradients/thresholded_re_lu_1/mul_grad/ShapeShapeconv1d_1/BiasAdd**
_class 
loc:@thresholded_re_lu_1/mul*
T0*
_output_shapes
:*
out_type0
Ŕ
<training/Adam/gradients/thresholded_re_lu_1/mul_grad/Shape_1Shapethresholded_re_lu_1/Cast**
_class 
loc:@thresholded_re_lu_1/mul*
_output_shapes
:*
out_type0*
T0
Ć
Jtraining/Adam/gradients/thresholded_re_lu_1/mul_grad/BroadcastGradientArgsBroadcastGradientArgs:training/Adam/gradients/thresholded_re_lu_1/mul_grad/Shape<training/Adam/gradients/thresholded_re_lu_1/mul_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙**
_class 
loc:@thresholded_re_lu_1/mul*
T0
ý
8training/Adam/gradients/thresholded_re_lu_1/mul_grad/MulMul?training/Adam/gradients/max_pooling1d_1/ExpandDims_grad/Reshapethresholded_re_lu_1/Cast*,
_output_shapes
:˙˙˙˙˙˙˙˙˙&**
_class 
loc:@thresholded_re_lu_1/mul*
T0
ą
8training/Adam/gradients/thresholded_re_lu_1/mul_grad/SumSum8training/Adam/gradients/thresholded_re_lu_1/mul_grad/MulJtraining/Adam/gradients/thresholded_re_lu_1/mul_grad/BroadcastGradientArgs**
_class 
loc:@thresholded_re_lu_1/mul*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
Ž
<training/Adam/gradients/thresholded_re_lu_1/mul_grad/ReshapeReshape8training/Adam/gradients/thresholded_re_lu_1/mul_grad/Sum:training/Adam/gradients/thresholded_re_lu_1/mul_grad/Shape*
Tshape0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙&**
_class 
loc:@thresholded_re_lu_1/mul*
T0
÷
:training/Adam/gradients/thresholded_re_lu_1/mul_grad/Mul_1Mulconv1d_1/BiasAdd?training/Adam/gradients/max_pooling1d_1/ExpandDims_grad/Reshape*,
_output_shapes
:˙˙˙˙˙˙˙˙˙&**
_class 
loc:@thresholded_re_lu_1/mul*
T0
ˇ
:training/Adam/gradients/thresholded_re_lu_1/mul_grad/Sum_1Sum:training/Adam/gradients/thresholded_re_lu_1/mul_grad/Mul_1Ltraining/Adam/gradients/thresholded_re_lu_1/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( **
_class 
loc:@thresholded_re_lu_1/mul*
T0*

Tidx0
´
>training/Adam/gradients/thresholded_re_lu_1/mul_grad/Reshape_1Reshape:training/Adam/gradients/thresholded_re_lu_1/mul_grad/Sum_1<training/Adam/gradients/thresholded_re_lu_1/mul_grad/Shape_1*
Tshape0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙&**
_class 
loc:@thresholded_re_lu_1/mul*
T0
č
9training/Adam/gradients/conv1d_1/BiasAdd_grad/BiasAddGradBiasAddGrad<training/Adam/gradients/thresholded_re_lu_1/mul_grad/Reshape*
data_formatNHWC*#
_class
loc:@conv1d_1/BiasAdd*
_output_shapes	
:*
T0
ź
:training/Adam/gradients/conv1d_1/conv1d/Squeeze_grad/ShapeShapeconv1d_1/conv1d/Conv2D*
out_type0**
_class 
loc:@conv1d_1/conv1d/Squeeze*
_output_shapes
:*
T0
ś
<training/Adam/gradients/conv1d_1/conv1d/Squeeze_grad/ReshapeReshape<training/Adam/gradients/thresholded_re_lu_1/mul_grad/Reshape:training/Adam/gradients/conv1d_1/conv1d/Squeeze_grad/Shape*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙&**
_class 
loc:@conv1d_1/conv1d/Squeeze*
T0
í
:training/Adam/gradients/conv1d_1/conv1d/Conv2D_grad/ShapeNShapeNconv1d_1/conv1d/ExpandDimsconv1d_1/conv1d/ExpandDims_1*
T0*)
_class
loc:@conv1d_1/conv1d/Conv2D* 
_output_shapes
::*
N*
out_type0
Ę
Gtraining/Adam/gradients/conv1d_1/conv1d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput:training/Adam/gradients/conv1d_1/conv1d/Conv2D_grad/ShapeNconv1d_1/conv1d/ExpandDims_1<training/Adam/gradients/conv1d_1/conv1d/Squeeze_grad/Reshape*
strides
*
data_formatNHWC*
	dilations
*)
_class
loc:@conv1d_1/conv1d/Conv2D*
paddingSAME*
use_cudnn_on_gpu(*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙&
Ä
Htraining/Adam/gradients/conv1d_1/conv1d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv1d_1/conv1d/ExpandDims<training/Adam/gradients/conv1d_1/conv1d/Conv2D_grad/ShapeN:1<training/Adam/gradients/conv1d_1/conv1d/Squeeze_grad/Reshape*)
_class
loc:@conv1d_1/conv1d/Conv2D*
use_cudnn_on_gpu(*
strides
*
paddingSAME*
T0*
data_formatNHWC*
	dilations
*(
_output_shapes
:
Á
=training/Adam/gradients/conv1d_1/conv1d/ExpandDims_grad/ShapeShapemax_pooling1d/Squeeze*
T0*-
_class#
!loc:@conv1d_1/conv1d/ExpandDims*
out_type0*
_output_shapes
:
Ć
?training/Adam/gradients/conv1d_1/conv1d/ExpandDims_grad/ReshapeReshapeGtraining/Adam/gradients/conv1d_1/conv1d/Conv2D_grad/Conv2DBackpropInput=training/Adam/gradients/conv1d_1/conv1d/ExpandDims_grad/Shape*
Tshape0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙&*-
_class#
!loc:@conv1d_1/conv1d/ExpandDims*
T0
Ĺ
?training/Adam/gradients/conv1d_1/conv1d/ExpandDims_1_grad/ShapeConst*
dtype0*/
_class%
#!loc:@conv1d_1/conv1d/ExpandDims_1*
_output_shapes
:*!
valueB"         
Ĺ
Atraining/Adam/gradients/conv1d_1/conv1d/ExpandDims_1_grad/ReshapeReshapeHtraining/Adam/gradients/conv1d_1/conv1d/Conv2D_grad/Conv2DBackpropFilter?training/Adam/gradients/conv1d_1/conv1d/ExpandDims_1_grad/Shape*
Tshape0*/
_class%
#!loc:@conv1d_1/conv1d/ExpandDims_1*
T0*$
_output_shapes
:
ˇ
8training/Adam/gradients/max_pooling1d/Squeeze_grad/ShapeShapemax_pooling1d/MaxPool*
T0*
out_type0*(
_class
loc:@max_pooling1d/Squeeze*
_output_shapes
:
ł
:training/Adam/gradients/max_pooling1d/Squeeze_grad/ReshapeReshape?training/Adam/gradients/conv1d_1/conv1d/ExpandDims_grad/Reshape8training/Adam/gradients/max_pooling1d/Squeeze_grad/Shape*(
_class
loc:@max_pooling1d/Squeeze*
Tshape0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙&
ń
>training/Adam/gradients/max_pooling1d/MaxPool_grad/MaxPoolGradMaxPoolGradmax_pooling1d/ExpandDimsmax_pooling1d/MaxPool:training/Adam/gradients/max_pooling1d/Squeeze_grad/Reshape*
data_formatNHWC*(
_class
loc:@max_pooling1d/MaxPool*
ksize
*0
_output_shapes
:˙˙˙˙˙˙˙˙˙K*
paddingSAME*
strides
*
T0
˝
;training/Adam/gradients/max_pooling1d/ExpandDims_grad/ShapeShapethresholded_re_lu/mul*
_output_shapes
:*
out_type0*+
_class!
loc:@max_pooling1d/ExpandDims*
T0
ˇ
=training/Adam/gradients/max_pooling1d/ExpandDims_grad/ReshapeReshape>training/Adam/gradients/max_pooling1d/MaxPool_grad/MaxPoolGrad;training/Adam/gradients/max_pooling1d/ExpandDims_grad/Shape*+
_class!
loc:@max_pooling1d/ExpandDims*,
_output_shapes
:˙˙˙˙˙˙˙˙˙K*
T0*
Tshape0
°
8training/Adam/gradients/thresholded_re_lu/mul_grad/ShapeShapeconv1d/BiasAdd*(
_class
loc:@thresholded_re_lu/mul*
out_type0*
_output_shapes
:*
T0
ş
:training/Adam/gradients/thresholded_re_lu/mul_grad/Shape_1Shapethresholded_re_lu/Cast*
_output_shapes
:*
out_type0*(
_class
loc:@thresholded_re_lu/mul*
T0
ž
Htraining/Adam/gradients/thresholded_re_lu/mul_grad/BroadcastGradientArgsBroadcastGradientArgs8training/Adam/gradients/thresholded_re_lu/mul_grad/Shape:training/Adam/gradients/thresholded_re_lu/mul_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*(
_class
loc:@thresholded_re_lu/mul
ő
6training/Adam/gradients/thresholded_re_lu/mul_grad/MulMul=training/Adam/gradients/max_pooling1d/ExpandDims_grad/Reshapethresholded_re_lu/Cast*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙K*(
_class
loc:@thresholded_re_lu/mul
Š
6training/Adam/gradients/thresholded_re_lu/mul_grad/SumSum6training/Adam/gradients/thresholded_re_lu/mul_grad/MulHtraining/Adam/gradients/thresholded_re_lu/mul_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *(
_class
loc:@thresholded_re_lu/mul*
T0
Ś
:training/Adam/gradients/thresholded_re_lu/mul_grad/ReshapeReshape6training/Adam/gradients/thresholded_re_lu/mul_grad/Sum8training/Adam/gradients/thresholded_re_lu/mul_grad/Shape*
Tshape0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙K*
T0*(
_class
loc:@thresholded_re_lu/mul
ď
8training/Adam/gradients/thresholded_re_lu/mul_grad/Mul_1Mulconv1d/BiasAdd=training/Adam/gradients/max_pooling1d/ExpandDims_grad/Reshape*(
_class
loc:@thresholded_re_lu/mul*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙K
Ż
8training/Adam/gradients/thresholded_re_lu/mul_grad/Sum_1Sum8training/Adam/gradients/thresholded_re_lu/mul_grad/Mul_1Jtraining/Adam/gradients/thresholded_re_lu/mul_grad/BroadcastGradientArgs:1*
T0*(
_class
loc:@thresholded_re_lu/mul*
	keep_dims( *

Tidx0*
_output_shapes
:
Ź
<training/Adam/gradients/thresholded_re_lu/mul_grad/Reshape_1Reshape8training/Adam/gradients/thresholded_re_lu/mul_grad/Sum_1:training/Adam/gradients/thresholded_re_lu/mul_grad/Shape_1*(
_class
loc:@thresholded_re_lu/mul*
Tshape0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙K*
T0
â
7training/Adam/gradients/conv1d/BiasAdd_grad/BiasAddGradBiasAddGrad:training/Adam/gradients/thresholded_re_lu/mul_grad/Reshape*
T0*!
_class
loc:@conv1d/BiasAdd*
data_formatNHWC*
_output_shapes	
:
ś
8training/Adam/gradients/conv1d/conv1d/Squeeze_grad/ShapeShapeconv1d/conv1d/Conv2D*
_output_shapes
:*
out_type0*
T0*(
_class
loc:@conv1d/conv1d/Squeeze
Ž
:training/Adam/gradients/conv1d/conv1d/Squeeze_grad/ReshapeReshape:training/Adam/gradients/thresholded_re_lu/mul_grad/Reshape8training/Adam/gradients/conv1d/conv1d/Squeeze_grad/Shape*(
_class
loc:@conv1d/conv1d/Squeeze*0
_output_shapes
:˙˙˙˙˙˙˙˙˙K*
T0*
Tshape0
ĺ
8training/Adam/gradients/conv1d/conv1d/Conv2D_grad/ShapeNShapeNconv1d/conv1d/ExpandDimsconv1d/conv1d/ExpandDims_1*
N*'
_class
loc:@conv1d/conv1d/Conv2D* 
_output_shapes
::*
out_type0*
T0
Ŕ
Etraining/Adam/gradients/conv1d/conv1d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput8training/Adam/gradients/conv1d/conv1d/Conv2D_grad/ShapeNconv1d/conv1d/ExpandDims_1:training/Adam/gradients/conv1d/conv1d/Squeeze_grad/Reshape*
strides
*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙K*'
_class
loc:@conv1d/conv1d/Conv2D*
	dilations
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC
ş
Ftraining/Adam/gradients/conv1d/conv1d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv1d/conv1d/ExpandDims:training/Adam/gradients/conv1d/conv1d/Conv2D_grad/ShapeN:1:training/Adam/gradients/conv1d/conv1d/Squeeze_grad/Reshape*
strides
*
paddingSAME*
	dilations
*
use_cudnn_on_gpu(*
T0*(
_output_shapes
:*'
_class
loc:@conv1d/conv1d/Conv2D*
data_formatNHWC
Í
;training/Adam/gradients/conv1d/conv1d/ExpandDims_grad/ShapeShape%embedding/embedding_lookup/Identity_2*
T0*
_output_shapes
:*
out_type0*+
_class!
loc:@conv1d/conv1d/ExpandDims
ž
=training/Adam/gradients/conv1d/conv1d/ExpandDims_grad/ReshapeReshapeEtraining/Adam/gradients/conv1d/conv1d/Conv2D_grad/Conv2DBackpropInput;training/Adam/gradients/conv1d/conv1d/ExpandDims_grad/Shape*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙K*+
_class!
loc:@conv1d/conv1d/ExpandDims*
Tshape0
Á
=training/Adam/gradients/conv1d/conv1d/ExpandDims_1_grad/ShapeConst*
dtype0*
_output_shapes
:*!
valueB"         *-
_class#
!loc:@conv1d/conv1d/ExpandDims_1
˝
?training/Adam/gradients/conv1d/conv1d/ExpandDims_1_grad/ReshapeReshapeFtraining/Adam/gradients/conv1d/conv1d/Conv2D_grad/Conv2DBackpropFilter=training/Adam/gradients/conv1d/conv1d/ExpandDims_1_grad/Shape*
Tshape0*-
_class#
!loc:@conv1d/conv1d/ExpandDims_1*$
_output_shapes
:*
T0
Ű
Etraining/Adam/gradients/embedding/embedding_lookup_grad/VariableShapeVariableShapeembedding/embeddings*
_output_shapes
:*
out_type0*A
_class7
53loc:@embedding/embedding_lookup/Read/ReadVariableOp
Ä
<training/Adam/gradients/embedding/embedding_lookup_grad/SizeSize
main_input*A
_class7
53loc:@embedding/embedding_lookup/Read/ReadVariableOp*
out_type0*
T0*
_output_shapes
: 
Ë
Ftraining/Adam/gradients/embedding/embedding_lookup_grad/ExpandDims/dimConst*
dtype0*A
_class7
53loc:@embedding/embedding_lookup/Read/ReadVariableOp*
value	B : *
_output_shapes
: 
Ę
Btraining/Adam/gradients/embedding/embedding_lookup_grad/ExpandDims
ExpandDims<training/Adam/gradients/embedding/embedding_lookup_grad/SizeFtraining/Adam/gradients/embedding/embedding_lookup_grad/ExpandDims/dim*
_output_shapes
:*A
_class7
53loc:@embedding/embedding_lookup/Read/ReadVariableOp*

Tdim0*
T0
Ř
Ktraining/Adam/gradients/embedding/embedding_lookup_grad/strided_slice/stackConst*
valueB:*A
_class7
53loc:@embedding/embedding_lookup/Read/ReadVariableOp*
_output_shapes
:*
dtype0
Ú
Mtraining/Adam/gradients/embedding/embedding_lookup_grad/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB: *A
_class7
53loc:@embedding/embedding_lookup/Read/ReadVariableOp
Ú
Mtraining/Adam/gradients/embedding/embedding_lookup_grad/strided_slice/stack_2Const*
valueB:*A
_class7
53loc:@embedding/embedding_lookup/Read/ReadVariableOp*
_output_shapes
:*
dtype0
ŕ
Etraining/Adam/gradients/embedding/embedding_lookup_grad/strided_sliceStridedSliceEtraining/Adam/gradients/embedding/embedding_lookup_grad/VariableShapeKtraining/Adam/gradients/embedding/embedding_lookup_grad/strided_slice/stackMtraining/Adam/gradients/embedding/embedding_lookup_grad/strided_slice/stack_1Mtraining/Adam/gradients/embedding/embedding_lookup_grad/strided_slice/stack_2*

begin_mask *
Index0*
shrink_axis_mask *
ellipsis_mask *
new_axis_mask *
_output_shapes
:*
T0*
end_mask*A
_class7
53loc:@embedding/embedding_lookup/Read/ReadVariableOp
Č
Ctraining/Adam/gradients/embedding/embedding_lookup_grad/concat/axisConst*
_output_shapes
: *
value	B : *
dtype0*A
_class7
53loc:@embedding/embedding_lookup/Read/ReadVariableOp

>training/Adam/gradients/embedding/embedding_lookup_grad/concatConcatV2Btraining/Adam/gradients/embedding/embedding_lookup_grad/ExpandDimsEtraining/Adam/gradients/embedding/embedding_lookup_grad/strided_sliceCtraining/Adam/gradients/embedding/embedding_lookup_grad/concat/axis*

Tidx0*
T0*
_output_shapes
:*
N*A
_class7
53loc:@embedding/embedding_lookup/Read/ReadVariableOp
Ő
?training/Adam/gradients/embedding/embedding_lookup_grad/ReshapeReshape=training/Adam/gradients/conv1d/conv1d/ExpandDims_grad/Reshape>training/Adam/gradients/embedding/embedding_lookup_grad/concat*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*A
_class7
53loc:@embedding/embedding_lookup/Read/ReadVariableOp*
T0

Atraining/Adam/gradients/embedding/embedding_lookup_grad/Reshape_1Reshape
main_inputBtraining/Adam/gradients/embedding/embedding_lookup_grad/ExpandDims*A
_class7
53loc:@embedding/embedding_lookup/Read/ReadVariableOp*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tshape0*
T0
U
training/Adam/ConstConst*
dtype0	*
value	B	 R*
_output_shapes
: 
k
!training/Adam/AssignAddVariableOpAssignAddVariableOpAdam/iterationstraining/Adam/Const*
dtype0	

training/Adam/ReadVariableOpReadVariableOpAdam/iterations"^training/Adam/AssignAddVariableOp*
_output_shapes
: *
dtype0	
i
!training/Adam/Cast/ReadVariableOpReadVariableOpAdam/iterations*
_output_shapes
: *
dtype0	
}
training/Adam/CastCast!training/Adam/Cast/ReadVariableOp*
Truncate( *

SrcT0	*

DstT0*
_output_shapes
: 
X
training/Adam/add/yConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
b
training/Adam/addAddtraining/Adam/Casttraining/Adam/add/y*
_output_shapes
: *
T0
d
 training/Adam/Pow/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
n
training/Adam/PowPow training/Adam/Pow/ReadVariableOptraining/Adam/add*
_output_shapes
: *
T0
X
training/Adam/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
a
training/Adam/subSubtraining/Adam/sub/xtraining/Adam/Pow*
_output_shapes
: *
T0
Z
training/Adam/Const_1Const*
_output_shapes
: *
valueB
 *    *
dtype0
Z
training/Adam/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *  
y
#training/Adam/clip_by_value/MinimumMinimumtraining/Adam/subtraining/Adam/Const_2*
T0*
_output_shapes
: 

training/Adam/clip_by_valueMaximum#training/Adam/clip_by_value/Minimumtraining/Adam/Const_1*
T0*
_output_shapes
: 
X
training/Adam/SqrtSqrttraining/Adam/clip_by_value*
_output_shapes
: *
T0
f
"training/Adam/Pow_1/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
r
training/Adam/Pow_1Pow"training/Adam/Pow_1/ReadVariableOptraining/Adam/add*
_output_shapes
: *
T0
Z
training/Adam/sub_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
g
training/Adam/sub_1Subtraining/Adam/sub_1/xtraining/Adam/Pow_1*
T0*
_output_shapes
: 
j
training/Adam/truedivRealDivtraining/Adam/Sqrttraining/Adam/sub_1*
T0*
_output_shapes
: 
^
training/Adam/ReadVariableOp_1ReadVariableOpAdam/lr*
_output_shapes
: *
dtype0
p
training/Adam/mulMultraining/Adam/ReadVariableOp_1training/Adam/truediv*
_output_shapes
: *
T0
t
#training/Adam/zeros/shape_as_tensorConst*
dtype0*
valueB"      *
_output_shapes
:
^
training/Adam/zeros/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0

training/Adam/zerosFill#training/Adam/zeros/shape_as_tensortraining/Adam/zeros/Const*

index_type0* 
_output_shapes
:
*
T0

training/Adam/VariableVarHandleOp*
dtype0*
shape:
*
	container *
_output_shapes
: *'
shared_nametraining/Adam/Variable
}
7training/Adam/Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable*
_output_shapes
: 

training/Adam/Variable/AssignAssignVariableOptraining/Adam/Variabletraining/Adam/zeros*)
_class
loc:@training/Adam/Variable*
dtype0
Ž
*training/Adam/Variable/Read/ReadVariableOpReadVariableOptraining/Adam/Variable*)
_class
loc:@training/Adam/Variable* 
_output_shapes
:
*
dtype0
z
%training/Adam/zeros_1/shape_as_tensorConst*!
valueB"         *
dtype0*
_output_shapes
:
`
training/Adam/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
˘
training/Adam/zeros_1Fill%training/Adam/zeros_1/shape_as_tensortraining/Adam/zeros_1/Const*
T0*$
_output_shapes
:*

index_type0
Ł
training/Adam/Variable_1VarHandleOp*
_output_shapes
: *
	container *
dtype0*)
shared_nametraining/Adam/Variable_1*
shape:

9training/Adam/Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_1*
_output_shapes
: 

training/Adam/Variable_1/AssignAssignVariableOptraining/Adam/Variable_1training/Adam/zeros_1*+
_class!
loc:@training/Adam/Variable_1*
dtype0
¸
,training/Adam/Variable_1/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_1*$
_output_shapes
:*
dtype0*+
_class!
loc:@training/Adam/Variable_1
d
training/Adam/zeros_2Const*
_output_shapes	
:*
valueB*    *
dtype0

training/Adam/Variable_2VarHandleOp*
dtype0*
	container *)
shared_nametraining/Adam/Variable_2*
_output_shapes
: *
shape:

9training/Adam/Variable_2/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_2*
_output_shapes
: 

training/Adam/Variable_2/AssignAssignVariableOptraining/Adam/Variable_2training/Adam/zeros_2*
dtype0*+
_class!
loc:@training/Adam/Variable_2
Ż
,training/Adam/Variable_2/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_2*
_output_shapes	
:*+
_class!
loc:@training/Adam/Variable_2*
dtype0
z
%training/Adam/zeros_3/shape_as_tensorConst*
_output_shapes
:*!
valueB"         *
dtype0
`
training/Adam/zeros_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
˘
training/Adam/zeros_3Fill%training/Adam/zeros_3/shape_as_tensortraining/Adam/zeros_3/Const*

index_type0*
T0*$
_output_shapes
:
Ł
training/Adam/Variable_3VarHandleOp*
shape:*)
shared_nametraining/Adam/Variable_3*
dtype0*
_output_shapes
: *
	container 

9training/Adam/Variable_3/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_3*
_output_shapes
: 

training/Adam/Variable_3/AssignAssignVariableOptraining/Adam/Variable_3training/Adam/zeros_3*+
_class!
loc:@training/Adam/Variable_3*
dtype0
¸
,training/Adam/Variable_3/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_3*+
_class!
loc:@training/Adam/Variable_3*$
_output_shapes
:*
dtype0
d
training/Adam/zeros_4Const*
dtype0*
_output_shapes	
:*
valueB*    

training/Adam/Variable_4VarHandleOp*
	container *
dtype0*)
shared_nametraining/Adam/Variable_4*
_output_shapes
: *
shape:

9training/Adam/Variable_4/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_4*
_output_shapes
: 

training/Adam/Variable_4/AssignAssignVariableOptraining/Adam/Variable_4training/Adam/zeros_4*+
_class!
loc:@training/Adam/Variable_4*
dtype0
Ż
,training/Adam/Variable_4/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_4*
dtype0*+
_class!
loc:@training/Adam/Variable_4*
_output_shapes	
:
v
%training/Adam/zeros_5/shape_as_tensorConst*
valueB"	  @   *
dtype0*
_output_shapes
:
`
training/Adam/zeros_5/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0

training/Adam/zeros_5Fill%training/Adam/zeros_5/shape_as_tensortraining/Adam/zeros_5/Const*
_output_shapes
:	@*
T0*

index_type0

training/Adam/Variable_5VarHandleOp*
_output_shapes
: *)
shared_nametraining/Adam/Variable_5*
dtype0*
	container *
shape:	@

9training/Adam/Variable_5/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_5*
_output_shapes
: 

training/Adam/Variable_5/AssignAssignVariableOptraining/Adam/Variable_5training/Adam/zeros_5*+
_class!
loc:@training/Adam/Variable_5*
dtype0
ł
,training/Adam/Variable_5/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_5*+
_class!
loc:@training/Adam/Variable_5*
_output_shapes
:	@*
dtype0
b
training/Adam/zeros_6Const*
valueB@*    *
dtype0*
_output_shapes
:@

training/Adam/Variable_6VarHandleOp*
	container *)
shared_nametraining/Adam/Variable_6*
shape:@*
dtype0*
_output_shapes
: 

9training/Adam/Variable_6/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_6*
_output_shapes
: 

training/Adam/Variable_6/AssignAssignVariableOptraining/Adam/Variable_6training/Adam/zeros_6*+
_class!
loc:@training/Adam/Variable_6*
dtype0
Ž
,training/Adam/Variable_6/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_6*+
_class!
loc:@training/Adam/Variable_6*
dtype0*
_output_shapes
:@
j
training/Adam/zeros_7Const*
valueB@*    *
_output_shapes

:@*
dtype0

training/Adam/Variable_7VarHandleOp*
shape
:@*)
shared_nametraining/Adam/Variable_7*
	container *
dtype0*
_output_shapes
: 

9training/Adam/Variable_7/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_7*
_output_shapes
: 

training/Adam/Variable_7/AssignAssignVariableOptraining/Adam/Variable_7training/Adam/zeros_7*
dtype0*+
_class!
loc:@training/Adam/Variable_7
˛
,training/Adam/Variable_7/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_7*
dtype0*+
_class!
loc:@training/Adam/Variable_7*
_output_shapes

:@
b
training/Adam/zeros_8Const*
_output_shapes
:*
dtype0*
valueB*    

training/Adam/Variable_8VarHandleOp*
	container *)
shared_nametraining/Adam/Variable_8*
dtype0*
_output_shapes
: *
shape:

9training/Adam/Variable_8/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_8*
_output_shapes
: 

training/Adam/Variable_8/AssignAssignVariableOptraining/Adam/Variable_8training/Adam/zeros_8*
dtype0*+
_class!
loc:@training/Adam/Variable_8
Ž
,training/Adam/Variable_8/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_8*
_output_shapes
:*+
_class!
loc:@training/Adam/Variable_8*
dtype0
v
%training/Adam/zeros_9/shape_as_tensorConst*
dtype0*
valueB"      *
_output_shapes
:
`
training/Adam/zeros_9/ConstConst*
dtype0*
valueB
 *    *
_output_shapes
: 

training/Adam/zeros_9Fill%training/Adam/zeros_9/shape_as_tensortraining/Adam/zeros_9/Const*

index_type0* 
_output_shapes
:
*
T0

training/Adam/Variable_9VarHandleOp*
shape:
*
_output_shapes
: *)
shared_nametraining/Adam/Variable_9*
	container *
dtype0

9training/Adam/Variable_9/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_9*
_output_shapes
: 

training/Adam/Variable_9/AssignAssignVariableOptraining/Adam/Variable_9training/Adam/zeros_9*
dtype0*+
_class!
loc:@training/Adam/Variable_9
´
,training/Adam/Variable_9/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_9*+
_class!
loc:@training/Adam/Variable_9*
dtype0* 
_output_shapes
:

{
&training/Adam/zeros_10/shape_as_tensorConst*
dtype0*!
valueB"         *
_output_shapes
:
a
training/Adam/zeros_10/ConstConst*
dtype0*
valueB
 *    *
_output_shapes
: 
Ľ
training/Adam/zeros_10Fill&training/Adam/zeros_10/shape_as_tensortraining/Adam/zeros_10/Const*
T0*

index_type0*$
_output_shapes
:
Ľ
training/Adam/Variable_10VarHandleOp*
shape:*
_output_shapes
: *
	container **
shared_nametraining/Adam/Variable_10*
dtype0

:training/Adam/Variable_10/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_10*
_output_shapes
: 
˘
 training/Adam/Variable_10/AssignAssignVariableOptraining/Adam/Variable_10training/Adam/zeros_10*
dtype0*,
_class"
 loc:@training/Adam/Variable_10
ť
-training/Adam/Variable_10/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_10*$
_output_shapes
:*,
_class"
 loc:@training/Adam/Variable_10*
dtype0
e
training/Adam/zeros_11Const*
dtype0*
valueB*    *
_output_shapes	
:

training/Adam/Variable_11VarHandleOp*
_output_shapes
: *
shape:**
shared_nametraining/Adam/Variable_11*
	container *
dtype0

:training/Adam/Variable_11/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_11*
_output_shapes
: 
˘
 training/Adam/Variable_11/AssignAssignVariableOptraining/Adam/Variable_11training/Adam/zeros_11*
dtype0*,
_class"
 loc:@training/Adam/Variable_11
˛
-training/Adam/Variable_11/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_11*
_output_shapes	
:*
dtype0*,
_class"
 loc:@training/Adam/Variable_11
{
&training/Adam/zeros_12/shape_as_tensorConst*
_output_shapes
:*
dtype0*!
valueB"         
a
training/Adam/zeros_12/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
Ľ
training/Adam/zeros_12Fill&training/Adam/zeros_12/shape_as_tensortraining/Adam/zeros_12/Const*$
_output_shapes
:*
T0*

index_type0
Ľ
training/Adam/Variable_12VarHandleOp*
dtype0**
shared_nametraining/Adam/Variable_12*
shape:*
	container *
_output_shapes
: 

:training/Adam/Variable_12/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_12*
_output_shapes
: 
˘
 training/Adam/Variable_12/AssignAssignVariableOptraining/Adam/Variable_12training/Adam/zeros_12*,
_class"
 loc:@training/Adam/Variable_12*
dtype0
ť
-training/Adam/Variable_12/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_12*,
_class"
 loc:@training/Adam/Variable_12*
dtype0*$
_output_shapes
:
e
training/Adam/zeros_13Const*
dtype0*
_output_shapes	
:*
valueB*    

training/Adam/Variable_13VarHandleOp*
shape:**
shared_nametraining/Adam/Variable_13*
_output_shapes
: *
dtype0*
	container 

:training/Adam/Variable_13/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_13*
_output_shapes
: 
˘
 training/Adam/Variable_13/AssignAssignVariableOptraining/Adam/Variable_13training/Adam/zeros_13*,
_class"
 loc:@training/Adam/Variable_13*
dtype0
˛
-training/Adam/Variable_13/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_13*
dtype0*,
_class"
 loc:@training/Adam/Variable_13*
_output_shapes	
:
w
&training/Adam/zeros_14/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"	  @   
a
training/Adam/zeros_14/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0
 
training/Adam/zeros_14Fill&training/Adam/zeros_14/shape_as_tensortraining/Adam/zeros_14/Const*
_output_shapes
:	@*
T0*

index_type0
 
training/Adam/Variable_14VarHandleOp*
shape:	@*
	container *
dtype0**
shared_nametraining/Adam/Variable_14*
_output_shapes
: 

:training/Adam/Variable_14/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_14*
_output_shapes
: 
˘
 training/Adam/Variable_14/AssignAssignVariableOptraining/Adam/Variable_14training/Adam/zeros_14*,
_class"
 loc:@training/Adam/Variable_14*
dtype0
ś
-training/Adam/Variable_14/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_14*
dtype0*,
_class"
 loc:@training/Adam/Variable_14*
_output_shapes
:	@
c
training/Adam/zeros_15Const*
_output_shapes
:@*
valueB@*    *
dtype0

training/Adam/Variable_15VarHandleOp*
dtype0*
shape:@*
	container *
_output_shapes
: **
shared_nametraining/Adam/Variable_15

:training/Adam/Variable_15/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_15*
_output_shapes
: 
˘
 training/Adam/Variable_15/AssignAssignVariableOptraining/Adam/Variable_15training/Adam/zeros_15*,
_class"
 loc:@training/Adam/Variable_15*
dtype0
ą
-training/Adam/Variable_15/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_15*,
_class"
 loc:@training/Adam/Variable_15*
dtype0*
_output_shapes
:@
k
training/Adam/zeros_16Const*
valueB@*    *
_output_shapes

:@*
dtype0

training/Adam/Variable_16VarHandleOp*
dtype0**
shared_nametraining/Adam/Variable_16*
_output_shapes
: *
	container *
shape
:@

:training/Adam/Variable_16/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_16*
_output_shapes
: 
˘
 training/Adam/Variable_16/AssignAssignVariableOptraining/Adam/Variable_16training/Adam/zeros_16*
dtype0*,
_class"
 loc:@training/Adam/Variable_16
ľ
-training/Adam/Variable_16/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_16*,
_class"
 loc:@training/Adam/Variable_16*
dtype0*
_output_shapes

:@
c
training/Adam/zeros_17Const*
valueB*    *
_output_shapes
:*
dtype0

training/Adam/Variable_17VarHandleOp*
dtype0*
shape:*
	container *
_output_shapes
: **
shared_nametraining/Adam/Variable_17

:training/Adam/Variable_17/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_17*
_output_shapes
: 
˘
 training/Adam/Variable_17/AssignAssignVariableOptraining/Adam/Variable_17training/Adam/zeros_17*
dtype0*,
_class"
 loc:@training/Adam/Variable_17
ą
-training/Adam/Variable_17/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_17*
dtype0*,
_class"
 loc:@training/Adam/Variable_17*
_output_shapes
:
p
&training/Adam/zeros_18/shape_as_tensorConst*
_output_shapes
:*
valueB:*
dtype0
a
training/Adam/zeros_18/ConstConst*
dtype0*
valueB
 *    *
_output_shapes
: 

training/Adam/zeros_18Fill&training/Adam/zeros_18/shape_as_tensortraining/Adam/zeros_18/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_18VarHandleOp*
shape:*
_output_shapes
: **
shared_nametraining/Adam/Variable_18*
	container *
dtype0

:training/Adam/Variable_18/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_18*
_output_shapes
: 
˘
 training/Adam/Variable_18/AssignAssignVariableOptraining/Adam/Variable_18training/Adam/zeros_18*
dtype0*,
_class"
 loc:@training/Adam/Variable_18
ą
-training/Adam/Variable_18/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_18*
dtype0*
_output_shapes
:*,
_class"
 loc:@training/Adam/Variable_18
p
&training/Adam/zeros_19/shape_as_tensorConst*
dtype0*
valueB:*
_output_shapes
:
a
training/Adam/zeros_19/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    

training/Adam/zeros_19Fill&training/Adam/zeros_19/shape_as_tensortraining/Adam/zeros_19/Const*
_output_shapes
:*
T0*

index_type0

training/Adam/Variable_19VarHandleOp**
shared_nametraining/Adam/Variable_19*
dtype0*
shape:*
_output_shapes
: *
	container 

:training/Adam/Variable_19/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_19*
_output_shapes
: 
˘
 training/Adam/Variable_19/AssignAssignVariableOptraining/Adam/Variable_19training/Adam/zeros_19*,
_class"
 loc:@training/Adam/Variable_19*
dtype0
ą
-training/Adam/Variable_19/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_19*,
_class"
 loc:@training/Adam/Variable_19*
dtype0*
_output_shapes
:
p
&training/Adam/zeros_20/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
a
training/Adam/zeros_20/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_20Fill&training/Adam/zeros_20/shape_as_tensortraining/Adam/zeros_20/Const*
_output_shapes
:*
T0*

index_type0

training/Adam/Variable_20VarHandleOp*
shape:**
shared_nametraining/Adam/Variable_20*
dtype0*
_output_shapes
: *
	container 

:training/Adam/Variable_20/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_20*
_output_shapes
: 
˘
 training/Adam/Variable_20/AssignAssignVariableOptraining/Adam/Variable_20training/Adam/zeros_20*,
_class"
 loc:@training/Adam/Variable_20*
dtype0
ą
-training/Adam/Variable_20/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_20*
dtype0*,
_class"
 loc:@training/Adam/Variable_20*
_output_shapes
:
p
&training/Adam/zeros_21/shape_as_tensorConst*
_output_shapes
:*
valueB:*
dtype0
a
training/Adam/zeros_21/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0

training/Adam/zeros_21Fill&training/Adam/zeros_21/shape_as_tensortraining/Adam/zeros_21/Const*
T0*
_output_shapes
:*

index_type0

training/Adam/Variable_21VarHandleOp*
shape:*
dtype0**
shared_nametraining/Adam/Variable_21*
_output_shapes
: *
	container 

:training/Adam/Variable_21/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_21*
_output_shapes
: 
˘
 training/Adam/Variable_21/AssignAssignVariableOptraining/Adam/Variable_21training/Adam/zeros_21*,
_class"
 loc:@training/Adam/Variable_21*
dtype0
ą
-training/Adam/Variable_21/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_21*
dtype0*
_output_shapes
:*,
_class"
 loc:@training/Adam/Variable_21
p
&training/Adam/zeros_22/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_22/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    

training/Adam/zeros_22Fill&training/Adam/zeros_22/shape_as_tensortraining/Adam/zeros_22/Const*
T0*
_output_shapes
:*

index_type0

training/Adam/Variable_22VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_22

:training/Adam/Variable_22/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_22*
_output_shapes
: 
˘
 training/Adam/Variable_22/AssignAssignVariableOptraining/Adam/Variable_22training/Adam/zeros_22*,
_class"
 loc:@training/Adam/Variable_22*
dtype0
ą
-training/Adam/Variable_22/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_22*
_output_shapes
:*
dtype0*,
_class"
 loc:@training/Adam/Variable_22
p
&training/Adam/zeros_23/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:
a
training/Adam/zeros_23/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0

training/Adam/zeros_23Fill&training/Adam/zeros_23/shape_as_tensortraining/Adam/zeros_23/Const*
_output_shapes
:*
T0*

index_type0

training/Adam/Variable_23VarHandleOp*
shape:*
_output_shapes
: **
shared_nametraining/Adam/Variable_23*
	container *
dtype0

:training/Adam/Variable_23/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_23*
_output_shapes
: 
˘
 training/Adam/Variable_23/AssignAssignVariableOptraining/Adam/Variable_23training/Adam/zeros_23*,
_class"
 loc:@training/Adam/Variable_23*
dtype0
ą
-training/Adam/Variable_23/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_23*
_output_shapes
:*
dtype0*,
_class"
 loc:@training/Adam/Variable_23
p
&training/Adam/zeros_24/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
a
training/Adam/zeros_24/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_24Fill&training/Adam/zeros_24/shape_as_tensortraining/Adam/zeros_24/Const*

index_type0*
T0*
_output_shapes
:

training/Adam/Variable_24VarHandleOp**
shared_nametraining/Adam/Variable_24*
	container *
shape:*
dtype0*
_output_shapes
: 

:training/Adam/Variable_24/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_24*
_output_shapes
: 
˘
 training/Adam/Variable_24/AssignAssignVariableOptraining/Adam/Variable_24training/Adam/zeros_24*
dtype0*,
_class"
 loc:@training/Adam/Variable_24
ą
-training/Adam/Variable_24/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_24*
dtype0*
_output_shapes
:*,
_class"
 loc:@training/Adam/Variable_24
p
&training/Adam/zeros_25/shape_as_tensorConst*
_output_shapes
:*
valueB:*
dtype0
a
training/Adam/zeros_25/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0

training/Adam/zeros_25Fill&training/Adam/zeros_25/shape_as_tensortraining/Adam/zeros_25/Const*

index_type0*
T0*
_output_shapes
:

training/Adam/Variable_25VarHandleOp*
_output_shapes
: **
shared_nametraining/Adam/Variable_25*
dtype0*
	container *
shape:

:training/Adam/Variable_25/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_25*
_output_shapes
: 
˘
 training/Adam/Variable_25/AssignAssignVariableOptraining/Adam/Variable_25training/Adam/zeros_25*
dtype0*,
_class"
 loc:@training/Adam/Variable_25
ą
-training/Adam/Variable_25/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_25*,
_class"
 loc:@training/Adam/Variable_25*
_output_shapes
:*
dtype0
p
&training/Adam/zeros_26/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:
a
training/Adam/zeros_26/ConstConst*
dtype0*
valueB
 *    *
_output_shapes
: 

training/Adam/zeros_26Fill&training/Adam/zeros_26/shape_as_tensortraining/Adam/zeros_26/Const*
T0*
_output_shapes
:*

index_type0

training/Adam/Variable_26VarHandleOp**
shared_nametraining/Adam/Variable_26*
dtype0*
_output_shapes
: *
shape:*
	container 

:training/Adam/Variable_26/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_26*
_output_shapes
: 
˘
 training/Adam/Variable_26/AssignAssignVariableOptraining/Adam/Variable_26training/Adam/zeros_26*
dtype0*,
_class"
 loc:@training/Adam/Variable_26
ą
-training/Adam/Variable_26/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_26*
_output_shapes
:*,
_class"
 loc:@training/Adam/Variable_26*
dtype0
b
training/Adam/ReadVariableOp_2ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
{
"training/Adam/mul_1/ReadVariableOpReadVariableOptraining/Adam/Variable* 
_output_shapes
:
*
dtype0

training/Adam/mul_1Multraining/Adam/ReadVariableOp_2"training/Adam/mul_1/ReadVariableOp* 
_output_shapes
:
*
T0
b
training/Adam/ReadVariableOp_3ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
Z
training/Adam/sub_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
r
training/Adam/sub_2Subtraining/Adam/sub_2/xtraining/Adam/ReadVariableOp_3*
T0*
_output_shapes
: 
q
'training/Adam/mul_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
s
)training/Adam/mul_2/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
s
)training/Adam/mul_2/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0

!training/Adam/mul_2/strided_sliceStridedSliceEtraining/Adam/gradients/embedding/embedding_lookup_grad/VariableShape'training/Adam/mul_2/strided_slice/stack)training/Adam/mul_2/strided_slice/stack_1)training/Adam/mul_2/strided_slice/stack_2*

begin_mask *
ellipsis_mask *
T0*
end_mask *
Index0*
_output_shapes
: *
new_axis_mask *
shrink_axis_mask
ą
training/Adam/mul_2/yUnsortedSegmentSum?training/Adam/gradients/embedding/embedding_lookup_grad/ReshapeAtraining/Adam/gradients/embedding/embedding_lookup_grad/Reshape_1!training/Adam/mul_2/strided_slice*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
Tnumsegments0*
Tindices0*
T0

training/Adam/mul_2Multraining/Adam/sub_2training/Adam/mul_2/y*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0
o
training/Adam/add_1Addtraining/Adam/mul_1training/Adam/mul_2*
T0* 
_output_shapes
:

b
training/Adam/ReadVariableOp_4ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
}
"training/Adam/mul_3/ReadVariableOpReadVariableOptraining/Adam/Variable_9*
dtype0* 
_output_shapes
:


training/Adam/mul_3Multraining/Adam/ReadVariableOp_4"training/Adam/mul_3/ReadVariableOp*
T0* 
_output_shapes
:

b
training/Adam/ReadVariableOp_5ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_3/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
r
training/Adam/sub_3Subtraining/Adam/sub_3/xtraining/Adam/ReadVariableOp_5*
_output_shapes
: *
T0
r
(training/Adam/Square/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
t
*training/Adam/Square/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
t
*training/Adam/Square/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0

"training/Adam/Square/strided_sliceStridedSliceEtraining/Adam/gradients/embedding/embedding_lookup_grad/VariableShape(training/Adam/Square/strided_slice/stack*training/Adam/Square/strided_slice/stack_1*training/Adam/Square/strided_slice/stack_2*

begin_mask *
end_mask *
ellipsis_mask *
T0*
shrink_axis_mask*
_output_shapes
: *
new_axis_mask *
Index0
ł
training/Adam/Square/xUnsortedSegmentSum?training/Adam/gradients/embedding/embedding_lookup_grad/ReshapeAtraining/Adam/gradients/embedding/embedding_lookup_grad/Reshape_1"training/Adam/Square/strided_slice*
Tnumsegments0*
Tindices0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0
q
training/Adam/SquareSquaretraining/Adam/Square/x*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

training/Adam/mul_4Multraining/Adam/sub_3training/Adam/Square*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0
o
training/Adam/add_2Addtraining/Adam/mul_3training/Adam/mul_4*
T0* 
_output_shapes
:

m
training/Adam/mul_5Multraining/Adam/multraining/Adam/add_1*
T0* 
_output_shapes
:

Z
training/Adam/Const_3Const*
_output_shapes
: *
valueB
 *    *
dtype0
Z
training/Adam/Const_4Const*
valueB
 *  *
_output_shapes
: *
dtype0

%training/Adam/clip_by_value_1/MinimumMinimumtraining/Adam/add_2training/Adam/Const_4*
T0* 
_output_shapes
:


training/Adam/clip_by_value_1Maximum%training/Adam/clip_by_value_1/Minimumtraining/Adam/Const_3* 
_output_shapes
:
*
T0
f
training/Adam/Sqrt_1Sqrttraining/Adam/clip_by_value_1*
T0* 
_output_shapes
:

Z
training/Adam/add_3/yConst*
valueB
 *żÖ3*
_output_shapes
: *
dtype0
r
training/Adam/add_3Addtraining/Adam/Sqrt_1training/Adam/add_3/y*
T0* 
_output_shapes
:

w
training/Adam/truediv_1RealDivtraining/Adam/mul_5training/Adam/add_3* 
_output_shapes
:
*
T0
u
training/Adam/ReadVariableOp_6ReadVariableOpembedding/embeddings* 
_output_shapes
:
*
dtype0
~
training/Adam/sub_4Subtraining/Adam/ReadVariableOp_6training/Adam/truediv_1*
T0* 
_output_shapes
:

l
training/Adam/AssignVariableOpAssignVariableOptraining/Adam/Variabletraining/Adam/add_1*
dtype0

training/Adam/ReadVariableOp_7ReadVariableOptraining/Adam/Variable^training/Adam/AssignVariableOp*
dtype0* 
_output_shapes
:

p
 training/Adam/AssignVariableOp_1AssignVariableOptraining/Adam/Variable_9training/Adam/add_2*
dtype0

training/Adam/ReadVariableOp_8ReadVariableOptraining/Adam/Variable_9!^training/Adam/AssignVariableOp_1* 
_output_shapes
:
*
dtype0
l
 training/Adam/AssignVariableOp_2AssignVariableOpembedding/embeddingstraining/Adam/sub_4*
dtype0

training/Adam/ReadVariableOp_9ReadVariableOpembedding/embeddings!^training/Adam/AssignVariableOp_2*
dtype0* 
_output_shapes
:

c
training/Adam/ReadVariableOp_10ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 

"training/Adam/mul_6/ReadVariableOpReadVariableOptraining/Adam/Variable_1*$
_output_shapes
:*
dtype0

training/Adam/mul_6Multraining/Adam/ReadVariableOp_10"training/Adam/mul_6/ReadVariableOp*$
_output_shapes
:*
T0
c
training/Adam/ReadVariableOp_11ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_5/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
s
training/Adam/sub_5Subtraining/Adam/sub_5/xtraining/Adam/ReadVariableOp_11*
_output_shapes
: *
T0

training/Adam/mul_7Multraining/Adam/sub_5?training/Adam/gradients/conv1d/conv1d/ExpandDims_1_grad/Reshape*
T0*$
_output_shapes
:
s
training/Adam/add_4Addtraining/Adam/mul_6training/Adam/mul_7*$
_output_shapes
:*
T0
c
training/Adam/ReadVariableOp_12ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 

"training/Adam/mul_8/ReadVariableOpReadVariableOptraining/Adam/Variable_10*
dtype0*$
_output_shapes
:

training/Adam/mul_8Multraining/Adam/ReadVariableOp_12"training/Adam/mul_8/ReadVariableOp*$
_output_shapes
:*
T0
c
training/Adam/ReadVariableOp_13ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
Z
training/Adam/sub_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
s
training/Adam/sub_6Subtraining/Adam/sub_6/xtraining/Adam/ReadVariableOp_13*
T0*
_output_shapes
: 

training/Adam/Square_1Square?training/Adam/gradients/conv1d/conv1d/ExpandDims_1_grad/Reshape*$
_output_shapes
:*
T0
v
training/Adam/mul_9Multraining/Adam/sub_6training/Adam/Square_1*$
_output_shapes
:*
T0
s
training/Adam/add_5Addtraining/Adam/mul_8training/Adam/mul_9*$
_output_shapes
:*
T0
r
training/Adam/mul_10Multraining/Adam/multraining/Adam/add_4*
T0*$
_output_shapes
:
Z
training/Adam/Const_5Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_6Const*
dtype0*
_output_shapes
: *
valueB
 *  

%training/Adam/clip_by_value_2/MinimumMinimumtraining/Adam/add_5training/Adam/Const_6*
T0*$
_output_shapes
:

training/Adam/clip_by_value_2Maximum%training/Adam/clip_by_value_2/Minimumtraining/Adam/Const_5*
T0*$
_output_shapes
:
j
training/Adam/Sqrt_2Sqrttraining/Adam/clip_by_value_2*$
_output_shapes
:*
T0
Z
training/Adam/add_6/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
v
training/Adam/add_6Addtraining/Adam/Sqrt_2training/Adam/add_6/y*$
_output_shapes
:*
T0
|
training/Adam/truediv_2RealDivtraining/Adam/mul_10training/Adam/add_6*
T0*$
_output_shapes
:
s
training/Adam/ReadVariableOp_14ReadVariableOpconv1d/kernel*$
_output_shapes
:*
dtype0

training/Adam/sub_7Subtraining/Adam/ReadVariableOp_14training/Adam/truediv_2*$
_output_shapes
:*
T0
p
 training/Adam/AssignVariableOp_3AssignVariableOptraining/Adam/Variable_1training/Adam/add_4*
dtype0
Ą
training/Adam/ReadVariableOp_15ReadVariableOptraining/Adam/Variable_1!^training/Adam/AssignVariableOp_3*$
_output_shapes
:*
dtype0
q
 training/Adam/AssignVariableOp_4AssignVariableOptraining/Adam/Variable_10training/Adam/add_5*
dtype0
˘
training/Adam/ReadVariableOp_16ReadVariableOptraining/Adam/Variable_10!^training/Adam/AssignVariableOp_4*
dtype0*$
_output_shapes
:
e
 training/Adam/AssignVariableOp_5AssignVariableOpconv1d/kerneltraining/Adam/sub_7*
dtype0

training/Adam/ReadVariableOp_17ReadVariableOpconv1d/kernel!^training/Adam/AssignVariableOp_5*
dtype0*$
_output_shapes
:
c
training/Adam/ReadVariableOp_18ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
y
#training/Adam/mul_11/ReadVariableOpReadVariableOptraining/Adam/Variable_2*
dtype0*
_output_shapes	
:

training/Adam/mul_11Multraining/Adam/ReadVariableOp_18#training/Adam/mul_11/ReadVariableOp*
T0*
_output_shapes	
:
c
training/Adam/ReadVariableOp_19ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
Z
training/Adam/sub_8/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
s
training/Adam/sub_8Subtraining/Adam/sub_8/xtraining/Adam/ReadVariableOp_19*
T0*
_output_shapes
: 

training/Adam/mul_12Multraining/Adam/sub_87training/Adam/gradients/conv1d/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
l
training/Adam/add_7Addtraining/Adam/mul_11training/Adam/mul_12*
T0*
_output_shapes	
:
c
training/Adam/ReadVariableOp_20ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
z
#training/Adam/mul_13/ReadVariableOpReadVariableOptraining/Adam/Variable_11*
_output_shapes	
:*
dtype0

training/Adam/mul_13Multraining/Adam/ReadVariableOp_20#training/Adam/mul_13/ReadVariableOp*
T0*
_output_shapes	
:
c
training/Adam/ReadVariableOp_21ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
Z
training/Adam/sub_9/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
s
training/Adam/sub_9Subtraining/Adam/sub_9/xtraining/Adam/ReadVariableOp_21*
T0*
_output_shapes
: 

training/Adam/Square_2Square7training/Adam/gradients/conv1d/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
n
training/Adam/mul_14Multraining/Adam/sub_9training/Adam/Square_2*
T0*
_output_shapes	
:
l
training/Adam/add_8Addtraining/Adam/mul_13training/Adam/mul_14*
_output_shapes	
:*
T0
i
training/Adam/mul_15Multraining/Adam/multraining/Adam/add_7*
T0*
_output_shapes	
:
Z
training/Adam/Const_7Const*
_output_shapes
: *
dtype0*
valueB
 *    
Z
training/Adam/Const_8Const*
dtype0*
_output_shapes
: *
valueB
 *  

%training/Adam/clip_by_value_3/MinimumMinimumtraining/Adam/add_8training/Adam/Const_8*
T0*
_output_shapes	
:

training/Adam/clip_by_value_3Maximum%training/Adam/clip_by_value_3/Minimumtraining/Adam/Const_7*
_output_shapes	
:*
T0
a
training/Adam/Sqrt_3Sqrttraining/Adam/clip_by_value_3*
T0*
_output_shapes	
:
Z
training/Adam/add_9/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
m
training/Adam/add_9Addtraining/Adam/Sqrt_3training/Adam/add_9/y*
T0*
_output_shapes	
:
s
training/Adam/truediv_3RealDivtraining/Adam/mul_15training/Adam/add_9*
_output_shapes	
:*
T0
h
training/Adam/ReadVariableOp_22ReadVariableOpconv1d/bias*
_output_shapes	
:*
dtype0
{
training/Adam/sub_10Subtraining/Adam/ReadVariableOp_22training/Adam/truediv_3*
T0*
_output_shapes	
:
p
 training/Adam/AssignVariableOp_6AssignVariableOptraining/Adam/Variable_2training/Adam/add_7*
dtype0

training/Adam/ReadVariableOp_23ReadVariableOptraining/Adam/Variable_2!^training/Adam/AssignVariableOp_6*
dtype0*
_output_shapes	
:
q
 training/Adam/AssignVariableOp_7AssignVariableOptraining/Adam/Variable_11training/Adam/add_8*
dtype0

training/Adam/ReadVariableOp_24ReadVariableOptraining/Adam/Variable_11!^training/Adam/AssignVariableOp_7*
_output_shapes	
:*
dtype0
d
 training/Adam/AssignVariableOp_8AssignVariableOpconv1d/biastraining/Adam/sub_10*
dtype0

training/Adam/ReadVariableOp_25ReadVariableOpconv1d/bias!^training/Adam/AssignVariableOp_8*
_output_shapes	
:*
dtype0
c
training/Adam/ReadVariableOp_26ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 

#training/Adam/mul_16/ReadVariableOpReadVariableOptraining/Adam/Variable_3*$
_output_shapes
:*
dtype0

training/Adam/mul_16Multraining/Adam/ReadVariableOp_26#training/Adam/mul_16/ReadVariableOp*
T0*$
_output_shapes
:
c
training/Adam/ReadVariableOp_27ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_11/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_11Subtraining/Adam/sub_11/xtraining/Adam/ReadVariableOp_27*
T0*
_output_shapes
: 
Ł
training/Adam/mul_17Multraining/Adam/sub_11Atraining/Adam/gradients/conv1d_1/conv1d/ExpandDims_1_grad/Reshape*
T0*$
_output_shapes
:
v
training/Adam/add_10Addtraining/Adam/mul_16training/Adam/mul_17*$
_output_shapes
:*
T0
c
training/Adam/ReadVariableOp_28ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0

#training/Adam/mul_18/ReadVariableOpReadVariableOptraining/Adam/Variable_12*$
_output_shapes
:*
dtype0

training/Adam/mul_18Multraining/Adam/ReadVariableOp_28#training/Adam/mul_18/ReadVariableOp*
T0*$
_output_shapes
:
c
training/Adam/ReadVariableOp_29ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
[
training/Adam/sub_12/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_12Subtraining/Adam/sub_12/xtraining/Adam/ReadVariableOp_29*
_output_shapes
: *
T0

training/Adam/Square_3SquareAtraining/Adam/gradients/conv1d_1/conv1d/ExpandDims_1_grad/Reshape*$
_output_shapes
:*
T0
x
training/Adam/mul_19Multraining/Adam/sub_12training/Adam/Square_3*$
_output_shapes
:*
T0
v
training/Adam/add_11Addtraining/Adam/mul_18training/Adam/mul_19*$
_output_shapes
:*
T0
s
training/Adam/mul_20Multraining/Adam/multraining/Adam/add_10*
T0*$
_output_shapes
:
Z
training/Adam/Const_9Const*
_output_shapes
: *
dtype0*
valueB
 *    
[
training/Adam/Const_10Const*
dtype0*
_output_shapes
: *
valueB
 *  

%training/Adam/clip_by_value_4/MinimumMinimumtraining/Adam/add_11training/Adam/Const_10*
T0*$
_output_shapes
:

training/Adam/clip_by_value_4Maximum%training/Adam/clip_by_value_4/Minimumtraining/Adam/Const_9*
T0*$
_output_shapes
:
j
training/Adam/Sqrt_4Sqrttraining/Adam/clip_by_value_4*
T0*$
_output_shapes
:
[
training/Adam/add_12/yConst*
_output_shapes
: *
valueB
 *żÖ3*
dtype0
x
training/Adam/add_12Addtraining/Adam/Sqrt_4training/Adam/add_12/y*$
_output_shapes
:*
T0
}
training/Adam/truediv_4RealDivtraining/Adam/mul_20training/Adam/add_12*$
_output_shapes
:*
T0
u
training/Adam/ReadVariableOp_30ReadVariableOpconv1d_1/kernel*
dtype0*$
_output_shapes
:

training/Adam/sub_13Subtraining/Adam/ReadVariableOp_30training/Adam/truediv_4*$
_output_shapes
:*
T0
q
 training/Adam/AssignVariableOp_9AssignVariableOptraining/Adam/Variable_3training/Adam/add_10*
dtype0
Ą
training/Adam/ReadVariableOp_31ReadVariableOptraining/Adam/Variable_3!^training/Adam/AssignVariableOp_9*$
_output_shapes
:*
dtype0
s
!training/Adam/AssignVariableOp_10AssignVariableOptraining/Adam/Variable_12training/Adam/add_11*
dtype0
Ł
training/Adam/ReadVariableOp_32ReadVariableOptraining/Adam/Variable_12"^training/Adam/AssignVariableOp_10*$
_output_shapes
:*
dtype0
i
!training/Adam/AssignVariableOp_11AssignVariableOpconv1d_1/kerneltraining/Adam/sub_13*
dtype0

training/Adam/ReadVariableOp_33ReadVariableOpconv1d_1/kernel"^training/Adam/AssignVariableOp_11*
dtype0*$
_output_shapes
:
c
training/Adam/ReadVariableOp_34ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
y
#training/Adam/mul_21/ReadVariableOpReadVariableOptraining/Adam/Variable_4*
_output_shapes	
:*
dtype0

training/Adam/mul_21Multraining/Adam/ReadVariableOp_34#training/Adam/mul_21/ReadVariableOp*
T0*
_output_shapes	
:
c
training/Adam/ReadVariableOp_35ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_14/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
u
training/Adam/sub_14Subtraining/Adam/sub_14/xtraining/Adam/ReadVariableOp_35*
_output_shapes
: *
T0

training/Adam/mul_22Multraining/Adam/sub_149training/Adam/gradients/conv1d_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
m
training/Adam/add_13Addtraining/Adam/mul_21training/Adam/mul_22*
T0*
_output_shapes	
:
c
training/Adam/ReadVariableOp_36ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
z
#training/Adam/mul_23/ReadVariableOpReadVariableOptraining/Adam/Variable_13*
dtype0*
_output_shapes	
:

training/Adam/mul_23Multraining/Adam/ReadVariableOp_36#training/Adam/mul_23/ReadVariableOp*
T0*
_output_shapes	
:
c
training/Adam/ReadVariableOp_37ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
[
training/Adam/sub_15/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
u
training/Adam/sub_15Subtraining/Adam/sub_15/xtraining/Adam/ReadVariableOp_37*
T0*
_output_shapes
: 

training/Adam/Square_4Square9training/Adam/gradients/conv1d_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
o
training/Adam/mul_24Multraining/Adam/sub_15training/Adam/Square_4*
_output_shapes	
:*
T0
m
training/Adam/add_14Addtraining/Adam/mul_23training/Adam/mul_24*
T0*
_output_shapes	
:
j
training/Adam/mul_25Multraining/Adam/multraining/Adam/add_13*
T0*
_output_shapes	
:
[
training/Adam/Const_11Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_12Const*
_output_shapes
: *
valueB
 *  *
dtype0

%training/Adam/clip_by_value_5/MinimumMinimumtraining/Adam/add_14training/Adam/Const_12*
T0*
_output_shapes	
:

training/Adam/clip_by_value_5Maximum%training/Adam/clip_by_value_5/Minimumtraining/Adam/Const_11*
T0*
_output_shapes	
:
a
training/Adam/Sqrt_5Sqrttraining/Adam/clip_by_value_5*
_output_shapes	
:*
T0
[
training/Adam/add_15/yConst*
dtype0*
_output_shapes
: *
valueB
 *żÖ3
o
training/Adam/add_15Addtraining/Adam/Sqrt_5training/Adam/add_15/y*
_output_shapes	
:*
T0
t
training/Adam/truediv_5RealDivtraining/Adam/mul_25training/Adam/add_15*
_output_shapes	
:*
T0
j
training/Adam/ReadVariableOp_38ReadVariableOpconv1d_1/bias*
dtype0*
_output_shapes	
:
{
training/Adam/sub_16Subtraining/Adam/ReadVariableOp_38training/Adam/truediv_5*
T0*
_output_shapes	
:
r
!training/Adam/AssignVariableOp_12AssignVariableOptraining/Adam/Variable_4training/Adam/add_13*
dtype0

training/Adam/ReadVariableOp_39ReadVariableOptraining/Adam/Variable_4"^training/Adam/AssignVariableOp_12*
_output_shapes	
:*
dtype0
s
!training/Adam/AssignVariableOp_13AssignVariableOptraining/Adam/Variable_13training/Adam/add_14*
dtype0

training/Adam/ReadVariableOp_40ReadVariableOptraining/Adam/Variable_13"^training/Adam/AssignVariableOp_13*
_output_shapes	
:*
dtype0
g
!training/Adam/AssignVariableOp_14AssignVariableOpconv1d_1/biastraining/Adam/sub_16*
dtype0

training/Adam/ReadVariableOp_41ReadVariableOpconv1d_1/bias"^training/Adam/AssignVariableOp_14*
dtype0*
_output_shapes	
:
c
training/Adam/ReadVariableOp_42ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
}
#training/Adam/mul_26/ReadVariableOpReadVariableOptraining/Adam/Variable_5*
_output_shapes
:	@*
dtype0

training/Adam/mul_26Multraining/Adam/ReadVariableOp_42#training/Adam/mul_26/ReadVariableOp*
_output_shapes
:	@*
T0
c
training/Adam/ReadVariableOp_43ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
[
training/Adam/sub_17/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_17Subtraining/Adam/sub_17/xtraining/Adam/ReadVariableOp_43*
_output_shapes
: *
T0

training/Adam/mul_27Multraining/Adam/sub_172training/Adam/gradients/dense/MatMul_grad/MatMul_1*
_output_shapes
:	@*
T0
q
training/Adam/add_16Addtraining/Adam/mul_26training/Adam/mul_27*
T0*
_output_shapes
:	@
c
training/Adam/ReadVariableOp_44ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
~
#training/Adam/mul_28/ReadVariableOpReadVariableOptraining/Adam/Variable_14*
dtype0*
_output_shapes
:	@

training/Adam/mul_28Multraining/Adam/ReadVariableOp_44#training/Adam/mul_28/ReadVariableOp*
T0*
_output_shapes
:	@
c
training/Adam/ReadVariableOp_45ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_18/xConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
u
training/Adam/sub_18Subtraining/Adam/sub_18/xtraining/Adam/ReadVariableOp_45*
T0*
_output_shapes
: 
~
training/Adam/Square_5Square2training/Adam/gradients/dense/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	@
s
training/Adam/mul_29Multraining/Adam/sub_18training/Adam/Square_5*
T0*
_output_shapes
:	@
q
training/Adam/add_17Addtraining/Adam/mul_28training/Adam/mul_29*
T0*
_output_shapes
:	@
n
training/Adam/mul_30Multraining/Adam/multraining/Adam/add_16*
T0*
_output_shapes
:	@
[
training/Adam/Const_13Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_14Const*
valueB
 *  *
_output_shapes
: *
dtype0

%training/Adam/clip_by_value_6/MinimumMinimumtraining/Adam/add_17training/Adam/Const_14*
_output_shapes
:	@*
T0

training/Adam/clip_by_value_6Maximum%training/Adam/clip_by_value_6/Minimumtraining/Adam/Const_13*
_output_shapes
:	@*
T0
e
training/Adam/Sqrt_6Sqrttraining/Adam/clip_by_value_6*
T0*
_output_shapes
:	@
[
training/Adam/add_18/yConst*
_output_shapes
: *
dtype0*
valueB
 *żÖ3
s
training/Adam/add_18Addtraining/Adam/Sqrt_6training/Adam/add_18/y*
T0*
_output_shapes
:	@
x
training/Adam/truediv_6RealDivtraining/Adam/mul_30training/Adam/add_18*
T0*
_output_shapes
:	@
m
training/Adam/ReadVariableOp_46ReadVariableOpdense/kernel*
dtype0*
_output_shapes
:	@

training/Adam/sub_19Subtraining/Adam/ReadVariableOp_46training/Adam/truediv_6*
_output_shapes
:	@*
T0
r
!training/Adam/AssignVariableOp_15AssignVariableOptraining/Adam/Variable_5training/Adam/add_16*
dtype0

training/Adam/ReadVariableOp_47ReadVariableOptraining/Adam/Variable_5"^training/Adam/AssignVariableOp_15*
dtype0*
_output_shapes
:	@
s
!training/Adam/AssignVariableOp_16AssignVariableOptraining/Adam/Variable_14training/Adam/add_17*
dtype0

training/Adam/ReadVariableOp_48ReadVariableOptraining/Adam/Variable_14"^training/Adam/AssignVariableOp_16*
_output_shapes
:	@*
dtype0
f
!training/Adam/AssignVariableOp_17AssignVariableOpdense/kerneltraining/Adam/sub_19*
dtype0

training/Adam/ReadVariableOp_49ReadVariableOpdense/kernel"^training/Adam/AssignVariableOp_17*
_output_shapes
:	@*
dtype0
c
training/Adam/ReadVariableOp_50ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
x
#training/Adam/mul_31/ReadVariableOpReadVariableOptraining/Adam/Variable_6*
dtype0*
_output_shapes
:@

training/Adam/mul_31Multraining/Adam/ReadVariableOp_50#training/Adam/mul_31/ReadVariableOp*
_output_shapes
:@*
T0
c
training/Adam/ReadVariableOp_51ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_20/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
u
training/Adam/sub_20Subtraining/Adam/sub_20/xtraining/Adam/ReadVariableOp_51*
_output_shapes
: *
T0

training/Adam/mul_32Multraining/Adam/sub_206training/Adam/gradients/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@*
T0
l
training/Adam/add_19Addtraining/Adam/mul_31training/Adam/mul_32*
T0*
_output_shapes
:@
c
training/Adam/ReadVariableOp_52ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
y
#training/Adam/mul_33/ReadVariableOpReadVariableOptraining/Adam/Variable_15*
dtype0*
_output_shapes
:@

training/Adam/mul_33Multraining/Adam/ReadVariableOp_52#training/Adam/mul_33/ReadVariableOp*
T0*
_output_shapes
:@
c
training/Adam/ReadVariableOp_53ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_21/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
u
training/Adam/sub_21Subtraining/Adam/sub_21/xtraining/Adam/ReadVariableOp_53*
_output_shapes
: *
T0
}
training/Adam/Square_6Square6training/Adam/gradients/dense/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
n
training/Adam/mul_34Multraining/Adam/sub_21training/Adam/Square_6*
_output_shapes
:@*
T0
l
training/Adam/add_20Addtraining/Adam/mul_33training/Adam/mul_34*
_output_shapes
:@*
T0
i
training/Adam/mul_35Multraining/Adam/multraining/Adam/add_19*
_output_shapes
:@*
T0
[
training/Adam/Const_15Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_16Const*
_output_shapes
: *
valueB
 *  *
dtype0

%training/Adam/clip_by_value_7/MinimumMinimumtraining/Adam/add_20training/Adam/Const_16*
T0*
_output_shapes
:@

training/Adam/clip_by_value_7Maximum%training/Adam/clip_by_value_7/Minimumtraining/Adam/Const_15*
_output_shapes
:@*
T0
`
training/Adam/Sqrt_7Sqrttraining/Adam/clip_by_value_7*
_output_shapes
:@*
T0
[
training/Adam/add_21/yConst*
dtype0*
_output_shapes
: *
valueB
 *żÖ3
n
training/Adam/add_21Addtraining/Adam/Sqrt_7training/Adam/add_21/y*
_output_shapes
:@*
T0
s
training/Adam/truediv_7RealDivtraining/Adam/mul_35training/Adam/add_21*
_output_shapes
:@*
T0
f
training/Adam/ReadVariableOp_54ReadVariableOp
dense/bias*
dtype0*
_output_shapes
:@
z
training/Adam/sub_22Subtraining/Adam/ReadVariableOp_54training/Adam/truediv_7*
_output_shapes
:@*
T0
r
!training/Adam/AssignVariableOp_18AssignVariableOptraining/Adam/Variable_6training/Adam/add_19*
dtype0

training/Adam/ReadVariableOp_55ReadVariableOptraining/Adam/Variable_6"^training/Adam/AssignVariableOp_18*
_output_shapes
:@*
dtype0
s
!training/Adam/AssignVariableOp_19AssignVariableOptraining/Adam/Variable_15training/Adam/add_20*
dtype0

training/Adam/ReadVariableOp_56ReadVariableOptraining/Adam/Variable_15"^training/Adam/AssignVariableOp_19*
_output_shapes
:@*
dtype0
d
!training/Adam/AssignVariableOp_20AssignVariableOp
dense/biastraining/Adam/sub_22*
dtype0

training/Adam/ReadVariableOp_57ReadVariableOp
dense/bias"^training/Adam/AssignVariableOp_20*
_output_shapes
:@*
dtype0
c
training/Adam/ReadVariableOp_58ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
|
#training/Adam/mul_36/ReadVariableOpReadVariableOptraining/Adam/Variable_7*
dtype0*
_output_shapes

:@

training/Adam/mul_36Multraining/Adam/ReadVariableOp_58#training/Adam/mul_36/ReadVariableOp*
_output_shapes

:@*
T0
c
training/Adam/ReadVariableOp_59ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
[
training/Adam/sub_23/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
u
training/Adam/sub_23Subtraining/Adam/sub_23/xtraining/Adam/ReadVariableOp_59*
T0*
_output_shapes
: 

training/Adam/mul_37Multraining/Adam/sub_234training/Adam/gradients/dense_1/MatMul_grad/MatMul_1*
_output_shapes

:@*
T0
p
training/Adam/add_22Addtraining/Adam/mul_36training/Adam/mul_37*
_output_shapes

:@*
T0
c
training/Adam/ReadVariableOp_60ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
}
#training/Adam/mul_38/ReadVariableOpReadVariableOptraining/Adam/Variable_16*
dtype0*
_output_shapes

:@

training/Adam/mul_38Multraining/Adam/ReadVariableOp_60#training/Adam/mul_38/ReadVariableOp*
_output_shapes

:@*
T0
c
training/Adam/ReadVariableOp_61ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_24/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
u
training/Adam/sub_24Subtraining/Adam/sub_24/xtraining/Adam/ReadVariableOp_61*
T0*
_output_shapes
: 

training/Adam/Square_7Square4training/Adam/gradients/dense_1/MatMul_grad/MatMul_1*
_output_shapes

:@*
T0
r
training/Adam/mul_39Multraining/Adam/sub_24training/Adam/Square_7*
_output_shapes

:@*
T0
p
training/Adam/add_23Addtraining/Adam/mul_38training/Adam/mul_39*
_output_shapes

:@*
T0
m
training/Adam/mul_40Multraining/Adam/multraining/Adam/add_22*
_output_shapes

:@*
T0
[
training/Adam/Const_17Const*
dtype0*
_output_shapes
: *
valueB
 *    
[
training/Adam/Const_18Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_8/MinimumMinimumtraining/Adam/add_23training/Adam/Const_18*
T0*
_output_shapes

:@

training/Adam/clip_by_value_8Maximum%training/Adam/clip_by_value_8/Minimumtraining/Adam/Const_17*
T0*
_output_shapes

:@
d
training/Adam/Sqrt_8Sqrttraining/Adam/clip_by_value_8*
_output_shapes

:@*
T0
[
training/Adam/add_24/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
r
training/Adam/add_24Addtraining/Adam/Sqrt_8training/Adam/add_24/y*
_output_shapes

:@*
T0
w
training/Adam/truediv_8RealDivtraining/Adam/mul_40training/Adam/add_24*
T0*
_output_shapes

:@
n
training/Adam/ReadVariableOp_62ReadVariableOpdense_1/kernel*
_output_shapes

:@*
dtype0
~
training/Adam/sub_25Subtraining/Adam/ReadVariableOp_62training/Adam/truediv_8*
T0*
_output_shapes

:@
r
!training/Adam/AssignVariableOp_21AssignVariableOptraining/Adam/Variable_7training/Adam/add_22*
dtype0

training/Adam/ReadVariableOp_63ReadVariableOptraining/Adam/Variable_7"^training/Adam/AssignVariableOp_21*
dtype0*
_output_shapes

:@
s
!training/Adam/AssignVariableOp_22AssignVariableOptraining/Adam/Variable_16training/Adam/add_23*
dtype0

training/Adam/ReadVariableOp_64ReadVariableOptraining/Adam/Variable_16"^training/Adam/AssignVariableOp_22*
_output_shapes

:@*
dtype0
h
!training/Adam/AssignVariableOp_23AssignVariableOpdense_1/kerneltraining/Adam/sub_25*
dtype0

training/Adam/ReadVariableOp_65ReadVariableOpdense_1/kernel"^training/Adam/AssignVariableOp_23*
dtype0*
_output_shapes

:@
c
training/Adam/ReadVariableOp_66ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
x
#training/Adam/mul_41/ReadVariableOpReadVariableOptraining/Adam/Variable_8*
dtype0*
_output_shapes
:

training/Adam/mul_41Multraining/Adam/ReadVariableOp_66#training/Adam/mul_41/ReadVariableOp*
_output_shapes
:*
T0
c
training/Adam/ReadVariableOp_67ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
[
training/Adam/sub_26/xConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
u
training/Adam/sub_26Subtraining/Adam/sub_26/xtraining/Adam/ReadVariableOp_67*
_output_shapes
: *
T0

training/Adam/mul_42Multraining/Adam/sub_268training/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
l
training/Adam/add_25Addtraining/Adam/mul_41training/Adam/mul_42*
T0*
_output_shapes
:
c
training/Adam/ReadVariableOp_68ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
y
#training/Adam/mul_43/ReadVariableOpReadVariableOptraining/Adam/Variable_17*
_output_shapes
:*
dtype0

training/Adam/mul_43Multraining/Adam/ReadVariableOp_68#training/Adam/mul_43/ReadVariableOp*
T0*
_output_shapes
:
c
training/Adam/ReadVariableOp_69ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
[
training/Adam/sub_27/xConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
u
training/Adam/sub_27Subtraining/Adam/sub_27/xtraining/Adam/ReadVariableOp_69*
T0*
_output_shapes
: 

training/Adam/Square_8Square8training/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
n
training/Adam/mul_44Multraining/Adam/sub_27training/Adam/Square_8*
_output_shapes
:*
T0
l
training/Adam/add_26Addtraining/Adam/mul_43training/Adam/mul_44*
_output_shapes
:*
T0
i
training/Adam/mul_45Multraining/Adam/multraining/Adam/add_25*
T0*
_output_shapes
:
[
training/Adam/Const_19Const*
dtype0*
valueB
 *    *
_output_shapes
: 
[
training/Adam/Const_20Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_9/MinimumMinimumtraining/Adam/add_26training/Adam/Const_20*
T0*
_output_shapes
:

training/Adam/clip_by_value_9Maximum%training/Adam/clip_by_value_9/Minimumtraining/Adam/Const_19*
_output_shapes
:*
T0
`
training/Adam/Sqrt_9Sqrttraining/Adam/clip_by_value_9*
T0*
_output_shapes
:
[
training/Adam/add_27/yConst*
dtype0*
valueB
 *żÖ3*
_output_shapes
: 
n
training/Adam/add_27Addtraining/Adam/Sqrt_9training/Adam/add_27/y*
_output_shapes
:*
T0
s
training/Adam/truediv_9RealDivtraining/Adam/mul_45training/Adam/add_27*
T0*
_output_shapes
:
h
training/Adam/ReadVariableOp_70ReadVariableOpdense_1/bias*
dtype0*
_output_shapes
:
z
training/Adam/sub_28Subtraining/Adam/ReadVariableOp_70training/Adam/truediv_9*
T0*
_output_shapes
:
r
!training/Adam/AssignVariableOp_24AssignVariableOptraining/Adam/Variable_8training/Adam/add_25*
dtype0

training/Adam/ReadVariableOp_71ReadVariableOptraining/Adam/Variable_8"^training/Adam/AssignVariableOp_24*
dtype0*
_output_shapes
:
s
!training/Adam/AssignVariableOp_25AssignVariableOptraining/Adam/Variable_17training/Adam/add_26*
dtype0

training/Adam/ReadVariableOp_72ReadVariableOptraining/Adam/Variable_17"^training/Adam/AssignVariableOp_25*
dtype0*
_output_shapes
:
f
!training/Adam/AssignVariableOp_26AssignVariableOpdense_1/biastraining/Adam/sub_28*
dtype0

training/Adam/ReadVariableOp_73ReadVariableOpdense_1/bias"^training/Adam/AssignVariableOp_26*
_output_shapes
:*
dtype0
ĺ
training/group_depsNoOp	^loss/mul^metrics/acc/Mean_1#^metrics/mean_absolute_error/Mean_1"^metrics/mean_squared_error/Mean_1^metrics/precision/Mean^metrics/recall/Mean^training/Adam/ReadVariableOp ^training/Adam/ReadVariableOp_15 ^training/Adam/ReadVariableOp_16 ^training/Adam/ReadVariableOp_17 ^training/Adam/ReadVariableOp_23 ^training/Adam/ReadVariableOp_24 ^training/Adam/ReadVariableOp_25 ^training/Adam/ReadVariableOp_31 ^training/Adam/ReadVariableOp_32 ^training/Adam/ReadVariableOp_33 ^training/Adam/ReadVariableOp_39 ^training/Adam/ReadVariableOp_40 ^training/Adam/ReadVariableOp_41 ^training/Adam/ReadVariableOp_47 ^training/Adam/ReadVariableOp_48 ^training/Adam/ReadVariableOp_49 ^training/Adam/ReadVariableOp_55 ^training/Adam/ReadVariableOp_56 ^training/Adam/ReadVariableOp_57 ^training/Adam/ReadVariableOp_63 ^training/Adam/ReadVariableOp_64 ^training/Adam/ReadVariableOp_65^training/Adam/ReadVariableOp_7 ^training/Adam/ReadVariableOp_71 ^training/Adam/ReadVariableOp_72 ^training/Adam/ReadVariableOp_73^training/Adam/ReadVariableOp_8^training/Adam/ReadVariableOp_9
Ş

group_depsNoOp	^loss/mul^metrics/acc/Mean_1#^metrics/mean_absolute_error/Mean_1"^metrics/mean_squared_error/Mean_1^metrics/precision/Mean^metrics/recall/Mean
[
VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_26*
_output_shapes
: 
\
VarIsInitializedOp_1VarIsInitializedOptraining/Adam/Variable_4*
_output_shapes
: 
Z
VarIsInitializedOp_2VarIsInitializedOptraining/Adam/Variable*
_output_shapes
: 
]
VarIsInitializedOp_3VarIsInitializedOptraining/Adam/Variable_21*
_output_shapes
: 
]
VarIsInitializedOp_4VarIsInitializedOptraining/Adam/Variable_13*
_output_shapes
: 
]
VarIsInitializedOp_5VarIsInitializedOptraining/Adam/Variable_10*
_output_shapes
: 
]
VarIsInitializedOp_6VarIsInitializedOptraining/Adam/Variable_15*
_output_shapes
: 
]
VarIsInitializedOp_7VarIsInitializedOptraining/Adam/Variable_19*
_output_shapes
: 
\
VarIsInitializedOp_8VarIsInitializedOptraining/Adam/Variable_2*
_output_shapes
: 
\
VarIsInitializedOp_9VarIsInitializedOptraining/Adam/Variable_9*
_output_shapes
: 
^
VarIsInitializedOp_10VarIsInitializedOptraining/Adam/Variable_24*
_output_shapes
: 
]
VarIsInitializedOp_11VarIsInitializedOptraining/Adam/Variable_3*
_output_shapes
: 
^
VarIsInitializedOp_12VarIsInitializedOptraining/Adam/Variable_12*
_output_shapes
: 
^
VarIsInitializedOp_13VarIsInitializedOptraining/Adam/Variable_20*
_output_shapes
: 
]
VarIsInitializedOp_14VarIsInitializedOptraining/Adam/Variable_5*
_output_shapes
: 
^
VarIsInitializedOp_15VarIsInitializedOptraining/Adam/Variable_22*
_output_shapes
: 
^
VarIsInitializedOp_16VarIsInitializedOptraining/Adam/Variable_11*
_output_shapes
: 
^
VarIsInitializedOp_17VarIsInitializedOptraining/Adam/Variable_23*
_output_shapes
: 
]
VarIsInitializedOp_18VarIsInitializedOptraining/Adam/Variable_7*
_output_shapes
: 
]
VarIsInitializedOp_19VarIsInitializedOptraining/Adam/Variable_6*
_output_shapes
: 
]
VarIsInitializedOp_20VarIsInitializedOptraining/Adam/Variable_8*
_output_shapes
: 
^
VarIsInitializedOp_21VarIsInitializedOptraining/Adam/Variable_16*
_output_shapes
: 
^
VarIsInitializedOp_22VarIsInitializedOptraining/Adam/Variable_14*
_output_shapes
: 
^
VarIsInitializedOp_23VarIsInitializedOptraining/Adam/Variable_18*
_output_shapes
: 
^
VarIsInitializedOp_24VarIsInitializedOptraining/Adam/Variable_17*
_output_shapes
: 
^
VarIsInitializedOp_25VarIsInitializedOptraining/Adam/Variable_25*
_output_shapes
: 
]
VarIsInitializedOp_26VarIsInitializedOptraining/Adam/Variable_1*
_output_shapes
: 
ą
initNoOp^training/Adam/Variable/Assign ^training/Adam/Variable_1/Assign!^training/Adam/Variable_10/Assign!^training/Adam/Variable_11/Assign!^training/Adam/Variable_12/Assign!^training/Adam/Variable_13/Assign!^training/Adam/Variable_14/Assign!^training/Adam/Variable_15/Assign!^training/Adam/Variable_16/Assign!^training/Adam/Variable_17/Assign!^training/Adam/Variable_18/Assign!^training/Adam/Variable_19/Assign ^training/Adam/Variable_2/Assign!^training/Adam/Variable_20/Assign!^training/Adam/Variable_21/Assign!^training/Adam/Variable_22/Assign!^training/Adam/Variable_23/Assign!^training/Adam/Variable_24/Assign!^training/Adam/Variable_25/Assign!^training/Adam/Variable_26/Assign ^training/Adam/Variable_3/Assign ^training/Adam/Variable_4/Assign ^training/Adam/Variable_5/Assign ^training/Adam/Variable_6/Assign ^training/Adam/Variable_7/Assign ^training/Adam/Variable_8/Assign ^training/Adam/Variable_9/Assign
P

save/ConstConst*
_output_shapes
: *
dtype0*
valueB Bmodel

save/StringJoin/inputs_1Const*
dtype0*<
value3B1 B+_temp_0e3883de5fc54586a638e0ef4b66a6da/part*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
	separator *
_output_shapes
: *
N
Q
save/num_shardsConst*
dtype0*
value	B :*
_output_shapes
: 
\
save/ShardedFilename/shardConst*
_output_shapes
: *
dtype0*
value	B : 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
ů
save/SaveV2/tensor_namesConst*
dtype0*Ź
value˘B)BAdam/beta_1BAdam/beta_2B
Adam/decayBAdam/iterationsBAdam/lrBconv1d/biasBconv1d/kernelBconv1d_1/biasBconv1d_1/kernelB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBembedding/embeddingsBtraining/Adam/VariableBtraining/Adam/Variable_1Btraining/Adam/Variable_10Btraining/Adam/Variable_11Btraining/Adam/Variable_12Btraining/Adam/Variable_13Btraining/Adam/Variable_14Btraining/Adam/Variable_15Btraining/Adam/Variable_16Btraining/Adam/Variable_17Btraining/Adam/Variable_18Btraining/Adam/Variable_19Btraining/Adam/Variable_2Btraining/Adam/Variable_20Btraining/Adam/Variable_21Btraining/Adam/Variable_22Btraining/Adam/Variable_23Btraining/Adam/Variable_24Btraining/Adam/Variable_25Btraining/Adam/Variable_26Btraining/Adam/Variable_3Btraining/Adam/Variable_4Btraining/Adam/Variable_5Btraining/Adam/Variable_6Btraining/Adam/Variable_7Btraining/Adam/Variable_8Btraining/Adam/Variable_9*
_output_shapes
:)
ľ
save/SaveV2/shape_and_slicesConst*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:)
ç
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp#Adam/iterations/Read/ReadVariableOpAdam/lr/Read/ReadVariableOpconv1d/bias/Read/ReadVariableOp!conv1d/kernel/Read/ReadVariableOp!conv1d_1/bias/Read/ReadVariableOp#conv1d_1/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp(embedding/embeddings/Read/ReadVariableOp*training/Adam/Variable/Read/ReadVariableOp,training/Adam/Variable_1/Read/ReadVariableOp-training/Adam/Variable_10/Read/ReadVariableOp-training/Adam/Variable_11/Read/ReadVariableOp-training/Adam/Variable_12/Read/ReadVariableOp-training/Adam/Variable_13/Read/ReadVariableOp-training/Adam/Variable_14/Read/ReadVariableOp-training/Adam/Variable_15/Read/ReadVariableOp-training/Adam/Variable_16/Read/ReadVariableOp-training/Adam/Variable_17/Read/ReadVariableOp-training/Adam/Variable_18/Read/ReadVariableOp-training/Adam/Variable_19/Read/ReadVariableOp,training/Adam/Variable_2/Read/ReadVariableOp-training/Adam/Variable_20/Read/ReadVariableOp-training/Adam/Variable_21/Read/ReadVariableOp-training/Adam/Variable_22/Read/ReadVariableOp-training/Adam/Variable_23/Read/ReadVariableOp-training/Adam/Variable_24/Read/ReadVariableOp-training/Adam/Variable_25/Read/ReadVariableOp-training/Adam/Variable_26/Read/ReadVariableOp,training/Adam/Variable_3/Read/ReadVariableOp,training/Adam/Variable_4/Read/ReadVariableOp,training/Adam/Variable_5/Read/ReadVariableOp,training/Adam/Variable_6/Read/ReadVariableOp,training/Adam/Variable_7/Read/ReadVariableOp,training/Adam/Variable_8/Read/ReadVariableOp,training/Adam/Variable_9/Read/ReadVariableOp*7
dtypes-
+2)	

save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 

+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
T0*
N*

axis *
_output_shapes
:
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency*
T0*
_output_shapes
: 
ü
save/RestoreV2/tensor_namesConst*
dtype0*Ź
value˘B)BAdam/beta_1BAdam/beta_2B
Adam/decayBAdam/iterationsBAdam/lrBconv1d/biasBconv1d/kernelBconv1d_1/biasBconv1d_1/kernelB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBembedding/embeddingsBtraining/Adam/VariableBtraining/Adam/Variable_1Btraining/Adam/Variable_10Btraining/Adam/Variable_11Btraining/Adam/Variable_12Btraining/Adam/Variable_13Btraining/Adam/Variable_14Btraining/Adam/Variable_15Btraining/Adam/Variable_16Btraining/Adam/Variable_17Btraining/Adam/Variable_18Btraining/Adam/Variable_19Btraining/Adam/Variable_2Btraining/Adam/Variable_20Btraining/Adam/Variable_21Btraining/Adam/Variable_22Btraining/Adam/Variable_23Btraining/Adam/Variable_24Btraining/Adam/Variable_25Btraining/Adam/Variable_26Btraining/Adam/Variable_3Btraining/Adam/Variable_4Btraining/Adam/Variable_5Btraining/Adam/Variable_6Btraining/Adam/Variable_7Btraining/Adam/Variable_8Btraining/Adam/Variable_9*
_output_shapes
:)
¸
save/RestoreV2/shape_and_slicesConst*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:)
Ű
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*7
dtypes-
+2)	*ş
_output_shapes§
¤:::::::::::::::::::::::::::::::::::::::::
N
save/Identity_1Identitysave/RestoreV2*
T0*
_output_shapes
:
T
save/AssignVariableOpAssignVariableOpAdam/beta_1save/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:1*
T0*
_output_shapes
:
V
save/AssignVariableOp_1AssignVariableOpAdam/beta_2save/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:2*
T0*
_output_shapes
:
U
save/AssignVariableOp_2AssignVariableOp
Adam/decaysave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:3*
T0	*
_output_shapes
:
Z
save/AssignVariableOp_3AssignVariableOpAdam/iterationssave/Identity_4*
dtype0	
P
save/Identity_5Identitysave/RestoreV2:4*
_output_shapes
:*
T0
R
save/AssignVariableOp_4AssignVariableOpAdam/lrsave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:5*
T0*
_output_shapes
:
V
save/AssignVariableOp_5AssignVariableOpconv1d/biassave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:6*
_output_shapes
:*
T0
X
save/AssignVariableOp_6AssignVariableOpconv1d/kernelsave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:7*
T0*
_output_shapes
:
X
save/AssignVariableOp_7AssignVariableOpconv1d_1/biassave/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:8*
T0*
_output_shapes
:
Z
save/AssignVariableOp_8AssignVariableOpconv1d_1/kernelsave/Identity_9*
dtype0
Q
save/Identity_10Identitysave/RestoreV2:9*
_output_shapes
:*
T0
V
save/AssignVariableOp_9AssignVariableOp
dense/biassave/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:10*
_output_shapes
:*
T0
Y
save/AssignVariableOp_10AssignVariableOpdense/kernelsave/Identity_11*
dtype0
R
save/Identity_12Identitysave/RestoreV2:11*
_output_shapes
:*
T0
Y
save/AssignVariableOp_11AssignVariableOpdense_1/biassave/Identity_12*
dtype0
R
save/Identity_13Identitysave/RestoreV2:12*
T0*
_output_shapes
:
[
save/AssignVariableOp_12AssignVariableOpdense_1/kernelsave/Identity_13*
dtype0
R
save/Identity_14Identitysave/RestoreV2:13*
T0*
_output_shapes
:
a
save/AssignVariableOp_13AssignVariableOpembedding/embeddingssave/Identity_14*
dtype0
R
save/Identity_15Identitysave/RestoreV2:14*
_output_shapes
:*
T0
c
save/AssignVariableOp_14AssignVariableOptraining/Adam/Variablesave/Identity_15*
dtype0
R
save/Identity_16Identitysave/RestoreV2:15*
T0*
_output_shapes
:
e
save/AssignVariableOp_15AssignVariableOptraining/Adam/Variable_1save/Identity_16*
dtype0
R
save/Identity_17Identitysave/RestoreV2:16*
T0*
_output_shapes
:
f
save/AssignVariableOp_16AssignVariableOptraining/Adam/Variable_10save/Identity_17*
dtype0
R
save/Identity_18Identitysave/RestoreV2:17*
_output_shapes
:*
T0
f
save/AssignVariableOp_17AssignVariableOptraining/Adam/Variable_11save/Identity_18*
dtype0
R
save/Identity_19Identitysave/RestoreV2:18*
_output_shapes
:*
T0
f
save/AssignVariableOp_18AssignVariableOptraining/Adam/Variable_12save/Identity_19*
dtype0
R
save/Identity_20Identitysave/RestoreV2:19*
T0*
_output_shapes
:
f
save/AssignVariableOp_19AssignVariableOptraining/Adam/Variable_13save/Identity_20*
dtype0
R
save/Identity_21Identitysave/RestoreV2:20*
T0*
_output_shapes
:
f
save/AssignVariableOp_20AssignVariableOptraining/Adam/Variable_14save/Identity_21*
dtype0
R
save/Identity_22Identitysave/RestoreV2:21*
T0*
_output_shapes
:
f
save/AssignVariableOp_21AssignVariableOptraining/Adam/Variable_15save/Identity_22*
dtype0
R
save/Identity_23Identitysave/RestoreV2:22*
T0*
_output_shapes
:
f
save/AssignVariableOp_22AssignVariableOptraining/Adam/Variable_16save/Identity_23*
dtype0
R
save/Identity_24Identitysave/RestoreV2:23*
T0*
_output_shapes
:
f
save/AssignVariableOp_23AssignVariableOptraining/Adam/Variable_17save/Identity_24*
dtype0
R
save/Identity_25Identitysave/RestoreV2:24*
_output_shapes
:*
T0
f
save/AssignVariableOp_24AssignVariableOptraining/Adam/Variable_18save/Identity_25*
dtype0
R
save/Identity_26Identitysave/RestoreV2:25*
T0*
_output_shapes
:
f
save/AssignVariableOp_25AssignVariableOptraining/Adam/Variable_19save/Identity_26*
dtype0
R
save/Identity_27Identitysave/RestoreV2:26*
_output_shapes
:*
T0
e
save/AssignVariableOp_26AssignVariableOptraining/Adam/Variable_2save/Identity_27*
dtype0
R
save/Identity_28Identitysave/RestoreV2:27*
_output_shapes
:*
T0
f
save/AssignVariableOp_27AssignVariableOptraining/Adam/Variable_20save/Identity_28*
dtype0
R
save/Identity_29Identitysave/RestoreV2:28*
T0*
_output_shapes
:
f
save/AssignVariableOp_28AssignVariableOptraining/Adam/Variable_21save/Identity_29*
dtype0
R
save/Identity_30Identitysave/RestoreV2:29*
T0*
_output_shapes
:
f
save/AssignVariableOp_29AssignVariableOptraining/Adam/Variable_22save/Identity_30*
dtype0
R
save/Identity_31Identitysave/RestoreV2:30*
T0*
_output_shapes
:
f
save/AssignVariableOp_30AssignVariableOptraining/Adam/Variable_23save/Identity_31*
dtype0
R
save/Identity_32Identitysave/RestoreV2:31*
T0*
_output_shapes
:
f
save/AssignVariableOp_31AssignVariableOptraining/Adam/Variable_24save/Identity_32*
dtype0
R
save/Identity_33Identitysave/RestoreV2:32*
_output_shapes
:*
T0
f
save/AssignVariableOp_32AssignVariableOptraining/Adam/Variable_25save/Identity_33*
dtype0
R
save/Identity_34Identitysave/RestoreV2:33*
_output_shapes
:*
T0
f
save/AssignVariableOp_33AssignVariableOptraining/Adam/Variable_26save/Identity_34*
dtype0
R
save/Identity_35Identitysave/RestoreV2:34*
_output_shapes
:*
T0
e
save/AssignVariableOp_34AssignVariableOptraining/Adam/Variable_3save/Identity_35*
dtype0
R
save/Identity_36Identitysave/RestoreV2:35*
_output_shapes
:*
T0
e
save/AssignVariableOp_35AssignVariableOptraining/Adam/Variable_4save/Identity_36*
dtype0
R
save/Identity_37Identitysave/RestoreV2:36*
T0*
_output_shapes
:
e
save/AssignVariableOp_36AssignVariableOptraining/Adam/Variable_5save/Identity_37*
dtype0
R
save/Identity_38Identitysave/RestoreV2:37*
T0*
_output_shapes
:
e
save/AssignVariableOp_37AssignVariableOptraining/Adam/Variable_6save/Identity_38*
dtype0
R
save/Identity_39Identitysave/RestoreV2:38*
T0*
_output_shapes
:
e
save/AssignVariableOp_38AssignVariableOptraining/Adam/Variable_7save/Identity_39*
dtype0
R
save/Identity_40Identitysave/RestoreV2:39*
T0*
_output_shapes
:
e
save/AssignVariableOp_39AssignVariableOptraining/Adam/Variable_8save/Identity_40*
dtype0
R
save/Identity_41Identitysave/RestoreV2:40*
_output_shapes
:*
T0
e
save/AssignVariableOp_40AssignVariableOptraining/Adam/Variable_9save/Identity_41*
dtype0
á
save/restore_shardNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_17^save/AssignVariableOp_18^save/AssignVariableOp_19^save/AssignVariableOp_2^save/AssignVariableOp_20^save/AssignVariableOp_21^save/AssignVariableOp_22^save/AssignVariableOp_23^save/AssignVariableOp_24^save/AssignVariableOp_25^save/AssignVariableOp_26^save/AssignVariableOp_27^save/AssignVariableOp_28^save/AssignVariableOp_29^save/AssignVariableOp_3^save/AssignVariableOp_30^save/AssignVariableOp_31^save/AssignVariableOp_32^save/AssignVariableOp_33^save/AssignVariableOp_34^save/AssignVariableOp_35^save/AssignVariableOp_36^save/AssignVariableOp_37^save/AssignVariableOp_38^save/AssignVariableOp_39^save/AssignVariableOp_4^save/AssignVariableOp_40^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9
-
save/restore_allNoOp^save/restore_shard "<
save/Const:0save/Identity:0save/restore_all (5 @F8"Ő+
trainable_variables˝+ş+

embedding/embeddings:0embedding/embeddings/Assign*embedding/embeddings/Read/ReadVariableOp:0(21embedding/embeddings/Initializer/random_uniform:08
|
conv1d/kernel:0conv1d/kernel/Assign#conv1d/kernel/Read/ReadVariableOp:0(2*conv1d/kernel/Initializer/random_uniform:08
k
conv1d/bias:0conv1d/bias/Assign!conv1d/bias/Read/ReadVariableOp:0(2conv1d/bias/Initializer/zeros:08

conv1d_1/kernel:0conv1d_1/kernel/Assign%conv1d_1/kernel/Read/ReadVariableOp:0(2,conv1d_1/kernel/Initializer/random_uniform:08
s
conv1d_1/bias:0conv1d_1/bias/Assign#conv1d_1/bias/Read/ReadVariableOp:0(2!conv1d_1/bias/Initializer/zeros:08
x
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2)dense/kernel/Initializer/random_uniform:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08

dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2+dense_1/kernel/Initializer/random_uniform:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08

Adam/iterations:0Adam/iterations/Assign%Adam/iterations/Read/ReadVariableOp:0(2+Adam/iterations/Initializer/initial_value:08
c
	Adam/lr:0Adam/lr/AssignAdam/lr/Read/ReadVariableOp:0(2#Adam/lr/Initializer/initial_value:08
s
Adam/beta_1:0Adam/beta_1/Assign!Adam/beta_1/Read/ReadVariableOp:0(2'Adam/beta_1/Initializer/initial_value:08
s
Adam/beta_2:0Adam/beta_2/Assign!Adam/beta_2/Read/ReadVariableOp:0(2'Adam/beta_2/Initializer/initial_value:08
o
Adam/decay:0Adam/decay/Assign Adam/decay/Read/ReadVariableOp:0(2&Adam/decay/Initializer/initial_value:08

training/Adam/Variable:0training/Adam/Variable/Assign,training/Adam/Variable/Read/ReadVariableOp:0(2training/Adam/zeros:08

training/Adam/Variable_1:0training/Adam/Variable_1/Assign.training/Adam/Variable_1/Read/ReadVariableOp:0(2training/Adam/zeros_1:08

training/Adam/Variable_2:0training/Adam/Variable_2/Assign.training/Adam/Variable_2/Read/ReadVariableOp:0(2training/Adam/zeros_2:08

training/Adam/Variable_3:0training/Adam/Variable_3/Assign.training/Adam/Variable_3/Read/ReadVariableOp:0(2training/Adam/zeros_3:08

training/Adam/Variable_4:0training/Adam/Variable_4/Assign.training/Adam/Variable_4/Read/ReadVariableOp:0(2training/Adam/zeros_4:08

training/Adam/Variable_5:0training/Adam/Variable_5/Assign.training/Adam/Variable_5/Read/ReadVariableOp:0(2training/Adam/zeros_5:08

training/Adam/Variable_6:0training/Adam/Variable_6/Assign.training/Adam/Variable_6/Read/ReadVariableOp:0(2training/Adam/zeros_6:08

training/Adam/Variable_7:0training/Adam/Variable_7/Assign.training/Adam/Variable_7/Read/ReadVariableOp:0(2training/Adam/zeros_7:08

training/Adam/Variable_8:0training/Adam/Variable_8/Assign.training/Adam/Variable_8/Read/ReadVariableOp:0(2training/Adam/zeros_8:08

training/Adam/Variable_9:0training/Adam/Variable_9/Assign.training/Adam/Variable_9/Read/ReadVariableOp:0(2training/Adam/zeros_9:08

training/Adam/Variable_10:0 training/Adam/Variable_10/Assign/training/Adam/Variable_10/Read/ReadVariableOp:0(2training/Adam/zeros_10:08

training/Adam/Variable_11:0 training/Adam/Variable_11/Assign/training/Adam/Variable_11/Read/ReadVariableOp:0(2training/Adam/zeros_11:08

training/Adam/Variable_12:0 training/Adam/Variable_12/Assign/training/Adam/Variable_12/Read/ReadVariableOp:0(2training/Adam/zeros_12:08

training/Adam/Variable_13:0 training/Adam/Variable_13/Assign/training/Adam/Variable_13/Read/ReadVariableOp:0(2training/Adam/zeros_13:08

training/Adam/Variable_14:0 training/Adam/Variable_14/Assign/training/Adam/Variable_14/Read/ReadVariableOp:0(2training/Adam/zeros_14:08

training/Adam/Variable_15:0 training/Adam/Variable_15/Assign/training/Adam/Variable_15/Read/ReadVariableOp:0(2training/Adam/zeros_15:08

training/Adam/Variable_16:0 training/Adam/Variable_16/Assign/training/Adam/Variable_16/Read/ReadVariableOp:0(2training/Adam/zeros_16:08

training/Adam/Variable_17:0 training/Adam/Variable_17/Assign/training/Adam/Variable_17/Read/ReadVariableOp:0(2training/Adam/zeros_17:08

training/Adam/Variable_18:0 training/Adam/Variable_18/Assign/training/Adam/Variable_18/Read/ReadVariableOp:0(2training/Adam/zeros_18:08

training/Adam/Variable_19:0 training/Adam/Variable_19/Assign/training/Adam/Variable_19/Read/ReadVariableOp:0(2training/Adam/zeros_19:08

training/Adam/Variable_20:0 training/Adam/Variable_20/Assign/training/Adam/Variable_20/Read/ReadVariableOp:0(2training/Adam/zeros_20:08

training/Adam/Variable_21:0 training/Adam/Variable_21/Assign/training/Adam/Variable_21/Read/ReadVariableOp:0(2training/Adam/zeros_21:08

training/Adam/Variable_22:0 training/Adam/Variable_22/Assign/training/Adam/Variable_22/Read/ReadVariableOp:0(2training/Adam/zeros_22:08

training/Adam/Variable_23:0 training/Adam/Variable_23/Assign/training/Adam/Variable_23/Read/ReadVariableOp:0(2training/Adam/zeros_23:08

training/Adam/Variable_24:0 training/Adam/Variable_24/Assign/training/Adam/Variable_24/Read/ReadVariableOp:0(2training/Adam/zeros_24:08

training/Adam/Variable_25:0 training/Adam/Variable_25/Assign/training/Adam/Variable_25/Read/ReadVariableOp:0(2training/Adam/zeros_25:08

training/Adam/Variable_26:0 training/Adam/Variable_26/Assign/training/Adam/Variable_26/Read/ReadVariableOp:0(2training/Adam/zeros_26:08"Ţ
metric_variablesÉ
Ć
2metrics/precision/precision/true_positives/count:0
3metrics/precision/precision/false_positives/count:0
,metrics/recall/recall/true_positives/count:0
-metrics/recall/recall/false_negatives/count:0"ć
cond_contextŐŇ
í
dropout/cond/cond_textdropout/cond/pred_id:0dropout/cond/switch_t:0 *
dropout/cond/dropout/Floor:0
#dropout/cond/dropout/Shape/Switch:1
dropout/cond/dropout/Shape:0
dropout/cond/dropout/add:0
dropout/cond/dropout/div:0
 dropout/cond/dropout/keep_prob:0
dropout/cond/dropout/mul:0
3dropout/cond/dropout/random_uniform/RandomUniform:0
)dropout/cond/dropout/random_uniform/max:0
)dropout/cond/dropout/random_uniform/min:0
)dropout/cond/dropout/random_uniform/mul:0
)dropout/cond/dropout/random_uniform/sub:0
%dropout/cond/dropout/random_uniform:0
dropout/cond/pred_id:0
dropout/cond/switch_t:0
thresholded_re_lu_2/mul:00
dropout/cond/pred_id:0dropout/cond/pred_id:0@
thresholded_re_lu_2/mul:0#dropout/cond/dropout/Shape/Switch:1
Â
dropout/cond/cond_text_1dropout/cond/pred_id:0dropout/cond/switch_f:0*ô
dropout/cond/Identity/Switch:0
dropout/cond/Identity:0
dropout/cond/pred_id:0
dropout/cond/switch_f:0
thresholded_re_lu_2/mul:0;
thresholded_re_lu_2/mul:0dropout/cond/Identity/Switch:00
dropout/cond/pred_id:0dropout/cond/pred_id:0
Ú
Qloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/cond_textQloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Rloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_t:0 *Ű
Dloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_scalar:0
Rloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:0
Rloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1
Qloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
Rloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_t:0
Dloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_scalar:0Rloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1Ś
Qloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Qloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
ëV
Sloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/cond_text_1Qloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Rloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_f:0*Ŕ'
iloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:0
iloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:1
jloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:0
jloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1
lloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
lloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
{loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
~loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
vloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
tloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
wloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0
yloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0
ploss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
kloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
lloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0
lloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Qloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
Rloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_f:0
Floss/dense_1_loss/broadcast_weights/assert_broadcastable/values/rank:0
Gloss/dense_1_loss/broadcast_weights/assert_broadcastable/values/shape:0
Gloss/dense_1_loss/broadcast_weights/assert_broadcastable/weights/rank:0
Hloss/dense_1_loss/broadcast_weights/assert_broadcastable/weights/shape:0Ő
Hloss/dense_1_loss/broadcast_weights/assert_broadcastable/weights/shape:0loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0Ä
Gloss/dense_1_loss/broadcast_weights/assert_broadcastable/weights/rank:0yloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0Á
Floss/dense_1_loss/broadcast_weights/assert_broadcastable/values/rank:0wloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0Ś
Qloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Qloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Ň
Gloss/dense_1_loss/broadcast_weights/assert_broadcastable/values/shape:0loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:02í"
ę"
kloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_textkloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0lloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0 * 
loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
{loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
~loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
vloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
tloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
kloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
lloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Gloss/dense_1_loss/broadcast_weights/assert_broadcastable/values/shape:0
Hloss/dense_1_loss/broadcast_weights/assert_broadcastable/weights/shape:0Ô
Gloss/dense_1_loss/broadcast_weights/assert_broadcastable/values/shape:0loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1×
Hloss/dense_1_loss/broadcast_weights/assert_broadcastable/weights/shape:0loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1Ú
kloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0kloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0loss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:02š

ś

mloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_text_1kloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0lloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0*é
lloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
lloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
ploss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
kloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
lloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0Ú
kloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0kloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0ŕ
ploss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0lloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0

Nloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/cond_textNloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Oloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t:0 *
Yloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency:0
Nloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
Oloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t:0 
Nloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Nloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
ˇ
Ploss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/cond_text_1Nloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Oloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f:0*Á
Tloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch:0
Vloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1:0
Vloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2:0
Vloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3:0
Tloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0:0
Tloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1:0
Tloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2:0
Tloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4:0
Tloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5:0
Tloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7:0
[loss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1:0
Nloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
Oloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f:0
Dloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_scalar:0
Oloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge:0
Gloss/dense_1_loss/broadcast_weights/assert_broadcastable/values/shape:0
Hloss/dense_1_loss/broadcast_weights/assert_broadcastable/weights/shape:0
Dloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_scalar:0Vloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3:0§
Oloss/dense_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge:0Tloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch:0 
Nloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Nloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Ą
Gloss/dense_1_loss/broadcast_weights/assert_broadcastable/values/shape:0Vloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2:0˘
Hloss/dense_1_loss/broadcast_weights/assert_broadcastable/weights/shape:0Vloss/dense_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1:0"Ť
local_variables
ě
2metrics/precision/precision/true_positives/count:07metrics/precision/precision/true_positives/count/Assign7metrics/precision/precision/true_positives/count/read:02Dmetrics/precision/precision/true_positives/count/Initializer/zeros:0
đ
3metrics/precision/precision/false_positives/count:08metrics/precision/precision/false_positives/count/Assign8metrics/precision/precision/false_positives/count/read:02Emetrics/precision/precision/false_positives/count/Initializer/zeros:0
Ô
,metrics/recall/recall/true_positives/count:01metrics/recall/recall/true_positives/count/Assign1metrics/recall/recall/true_positives/count/read:02>metrics/recall/recall/true_positives/count/Initializer/zeros:0
Ř
-metrics/recall/recall/false_negatives/count:02metrics/recall/recall/false_negatives/count/Assign2metrics/recall/recall/false_negatives/count/read:02?metrics/recall/recall/false_negatives/count/Initializer/zeros:0"Ë+
	variables˝+ş+

embedding/embeddings:0embedding/embeddings/Assign*embedding/embeddings/Read/ReadVariableOp:0(21embedding/embeddings/Initializer/random_uniform:08
|
conv1d/kernel:0conv1d/kernel/Assign#conv1d/kernel/Read/ReadVariableOp:0(2*conv1d/kernel/Initializer/random_uniform:08
k
conv1d/bias:0conv1d/bias/Assign!conv1d/bias/Read/ReadVariableOp:0(2conv1d/bias/Initializer/zeros:08

conv1d_1/kernel:0conv1d_1/kernel/Assign%conv1d_1/kernel/Read/ReadVariableOp:0(2,conv1d_1/kernel/Initializer/random_uniform:08
s
conv1d_1/bias:0conv1d_1/bias/Assign#conv1d_1/bias/Read/ReadVariableOp:0(2!conv1d_1/bias/Initializer/zeros:08
x
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2)dense/kernel/Initializer/random_uniform:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08

dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2+dense_1/kernel/Initializer/random_uniform:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08

Adam/iterations:0Adam/iterations/Assign%Adam/iterations/Read/ReadVariableOp:0(2+Adam/iterations/Initializer/initial_value:08
c
	Adam/lr:0Adam/lr/AssignAdam/lr/Read/ReadVariableOp:0(2#Adam/lr/Initializer/initial_value:08
s
Adam/beta_1:0Adam/beta_1/Assign!Adam/beta_1/Read/ReadVariableOp:0(2'Adam/beta_1/Initializer/initial_value:08
s
Adam/beta_2:0Adam/beta_2/Assign!Adam/beta_2/Read/ReadVariableOp:0(2'Adam/beta_2/Initializer/initial_value:08
o
Adam/decay:0Adam/decay/Assign Adam/decay/Read/ReadVariableOp:0(2&Adam/decay/Initializer/initial_value:08

training/Adam/Variable:0training/Adam/Variable/Assign,training/Adam/Variable/Read/ReadVariableOp:0(2training/Adam/zeros:08

training/Adam/Variable_1:0training/Adam/Variable_1/Assign.training/Adam/Variable_1/Read/ReadVariableOp:0(2training/Adam/zeros_1:08

training/Adam/Variable_2:0training/Adam/Variable_2/Assign.training/Adam/Variable_2/Read/ReadVariableOp:0(2training/Adam/zeros_2:08

training/Adam/Variable_3:0training/Adam/Variable_3/Assign.training/Adam/Variable_3/Read/ReadVariableOp:0(2training/Adam/zeros_3:08

training/Adam/Variable_4:0training/Adam/Variable_4/Assign.training/Adam/Variable_4/Read/ReadVariableOp:0(2training/Adam/zeros_4:08

training/Adam/Variable_5:0training/Adam/Variable_5/Assign.training/Adam/Variable_5/Read/ReadVariableOp:0(2training/Adam/zeros_5:08

training/Adam/Variable_6:0training/Adam/Variable_6/Assign.training/Adam/Variable_6/Read/ReadVariableOp:0(2training/Adam/zeros_6:08

training/Adam/Variable_7:0training/Adam/Variable_7/Assign.training/Adam/Variable_7/Read/ReadVariableOp:0(2training/Adam/zeros_7:08

training/Adam/Variable_8:0training/Adam/Variable_8/Assign.training/Adam/Variable_8/Read/ReadVariableOp:0(2training/Adam/zeros_8:08

training/Adam/Variable_9:0training/Adam/Variable_9/Assign.training/Adam/Variable_9/Read/ReadVariableOp:0(2training/Adam/zeros_9:08

training/Adam/Variable_10:0 training/Adam/Variable_10/Assign/training/Adam/Variable_10/Read/ReadVariableOp:0(2training/Adam/zeros_10:08

training/Adam/Variable_11:0 training/Adam/Variable_11/Assign/training/Adam/Variable_11/Read/ReadVariableOp:0(2training/Adam/zeros_11:08

training/Adam/Variable_12:0 training/Adam/Variable_12/Assign/training/Adam/Variable_12/Read/ReadVariableOp:0(2training/Adam/zeros_12:08

training/Adam/Variable_13:0 training/Adam/Variable_13/Assign/training/Adam/Variable_13/Read/ReadVariableOp:0(2training/Adam/zeros_13:08

training/Adam/Variable_14:0 training/Adam/Variable_14/Assign/training/Adam/Variable_14/Read/ReadVariableOp:0(2training/Adam/zeros_14:08

training/Adam/Variable_15:0 training/Adam/Variable_15/Assign/training/Adam/Variable_15/Read/ReadVariableOp:0(2training/Adam/zeros_15:08

training/Adam/Variable_16:0 training/Adam/Variable_16/Assign/training/Adam/Variable_16/Read/ReadVariableOp:0(2training/Adam/zeros_16:08

training/Adam/Variable_17:0 training/Adam/Variable_17/Assign/training/Adam/Variable_17/Read/ReadVariableOp:0(2training/Adam/zeros_17:08

training/Adam/Variable_18:0 training/Adam/Variable_18/Assign/training/Adam/Variable_18/Read/ReadVariableOp:0(2training/Adam/zeros_18:08

training/Adam/Variable_19:0 training/Adam/Variable_19/Assign/training/Adam/Variable_19/Read/ReadVariableOp:0(2training/Adam/zeros_19:08

training/Adam/Variable_20:0 training/Adam/Variable_20/Assign/training/Adam/Variable_20/Read/ReadVariableOp:0(2training/Adam/zeros_20:08

training/Adam/Variable_21:0 training/Adam/Variable_21/Assign/training/Adam/Variable_21/Read/ReadVariableOp:0(2training/Adam/zeros_21:08

training/Adam/Variable_22:0 training/Adam/Variable_22/Assign/training/Adam/Variable_22/Read/ReadVariableOp:0(2training/Adam/zeros_22:08

training/Adam/Variable_23:0 training/Adam/Variable_23/Assign/training/Adam/Variable_23/Read/ReadVariableOp:0(2training/Adam/zeros_23:08

training/Adam/Variable_24:0 training/Adam/Variable_24/Assign/training/Adam/Variable_24/Read/ReadVariableOp:0(2training/Adam/zeros_24:08

training/Adam/Variable_25:0 training/Adam/Variable_25/Assign/training/Adam/Variable_25/Read/ReadVariableOp:0(2training/Adam/zeros_25:08

training/Adam/Variable_26:0 training/Adam/Variable_26/Assign/training/Adam/Variable_26/Read/ReadVariableOp:0(2training/Adam/zeros_26:08*Ł
serving_default
2
input_image#
main_input:0˙˙˙˙˙˙˙˙˙K=
dense_1/Sigmoid:0(
dense_1/Sigmoid:0˙˙˙˙˙˙˙˙˙tensorflow/serving/predict