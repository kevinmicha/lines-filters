ό!
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
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
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
	MirrorPad

input"T
paddings"	Tpaddings
output"T"	
Ttype"
	Tpaddingstype0:
2	"&
modestring:
REFLECT	SYMMETRIC
=
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
@
ReadVariableOp
resource
value"dtype"
dtypetype?
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
?
ResizeBicubic
images"T
size
resized_images"
Ttype:
2
	"
align_cornersbool( "
half_pixel_centersbool( 
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
?
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
;
Sub
x"T
y"T
z"T"
Ttype:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.4.12v2.4.1-0-g85c8b2a817f8??
|
normalisation/normVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_namenormalisation/norm
u
&normalisation/norm/Read/ReadVariableOpReadVariableOpnormalisation/norm*
_output_shapes
:@*
dtype0
?
normalisation_1/normVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_namenormalisation_1/norm
y
(normalisation_1/norm/Read/ReadVariableOpReadVariableOpnormalisation_1/norm*
_output_shapes
:@*
dtype0
?
normalisation_2/normVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_namenormalisation_2/norm
y
(normalisation_2/norm/Read/ReadVariableOpReadVariableOpnormalisation_2/norm*
_output_shapes
:@*
dtype0
?
normalisation_3/normVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_namenormalisation_3/norm
y
(normalisation_3/norm/Read/ReadVariableOpReadVariableOpnormalisation_3/norm*
_output_shapes
:@*
dtype0
?
normalisation_4/normVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_namenormalisation_4/norm
y
(normalisation_4/norm/Read/ReadVariableOpReadVariableOpnormalisation_4/norm*
_output_shapes
:@*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
?
)learnlet_analysis/details_tiling_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*:
shared_name+)learnlet_analysis/details_tiling_1/kernel
?
=learnlet_analysis/details_tiling_1/kernel/Read/ReadVariableOpReadVariableOp)learnlet_analysis/details_tiling_1/kernel*&
_output_shapes
:@*
dtype0
?
)learnlet_analysis/details_tiling_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*:
shared_name+)learnlet_analysis/details_tiling_2/kernel
?
=learnlet_analysis/details_tiling_2/kernel/Read/ReadVariableOpReadVariableOp)learnlet_analysis/details_tiling_2/kernel*&
_output_shapes
:@*
dtype0
?
)learnlet_analysis/details_tiling_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*:
shared_name+)learnlet_analysis/details_tiling_3/kernel
?
=learnlet_analysis/details_tiling_3/kernel/Read/ReadVariableOpReadVariableOp)learnlet_analysis/details_tiling_3/kernel*&
_output_shapes
:@*
dtype0
?
)learnlet_analysis/details_tiling_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*:
shared_name+)learnlet_analysis/details_tiling_4/kernel
?
=learnlet_analysis/details_tiling_4/kernel/Read/ReadVariableOpReadVariableOp)learnlet_analysis/details_tiling_4/kernel*&
_output_shapes
:@*
dtype0
?
)learnlet_analysis/details_tiling_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*:
shared_name+)learnlet_analysis/details_tiling_5/kernel
?
=learnlet_analysis/details_tiling_5/kernel/Read/ReadVariableOpReadVariableOp)learnlet_analysis/details_tiling_5/kernel*&
_output_shapes
:@*
dtype0
?
Flearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*W
shared_nameHFlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/kernel
?
Zlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/kernel/Read/ReadVariableOpReadVariableOpFlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/kernel*&
_output_shapes
:*
dtype0
?
*learnlet_synthesis/groupping_conv_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:A*;
shared_name,*learnlet_synthesis/groupping_conv_1/kernel
?
>learnlet_synthesis/groupping_conv_1/kernel/Read/ReadVariableOpReadVariableOp*learnlet_synthesis/groupping_conv_1/kernel*&
_output_shapes
:A*
dtype0
?
*learnlet_synthesis/groupping_conv_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:A*;
shared_name,*learnlet_synthesis/groupping_conv_2/kernel
?
>learnlet_synthesis/groupping_conv_2/kernel/Read/ReadVariableOpReadVariableOp*learnlet_synthesis/groupping_conv_2/kernel*&
_output_shapes
:A*
dtype0
?
*learnlet_synthesis/groupping_conv_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:A*;
shared_name,*learnlet_synthesis/groupping_conv_3/kernel
?
>learnlet_synthesis/groupping_conv_3/kernel/Read/ReadVariableOpReadVariableOp*learnlet_synthesis/groupping_conv_3/kernel*&
_output_shapes
:A*
dtype0
?
*learnlet_synthesis/groupping_conv_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:A*;
shared_name,*learnlet_synthesis/groupping_conv_4/kernel
?
>learnlet_synthesis/groupping_conv_4/kernel/Read/ReadVariableOpReadVariableOp*learnlet_synthesis/groupping_conv_4/kernel*&
_output_shapes
:A*
dtype0
?
*learnlet_synthesis/groupping_conv_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:A*;
shared_name,*learnlet_synthesis/groupping_conv_5/kernel
?
>learnlet_synthesis/groupping_conv_5/kernel/Read/ReadVariableOpReadVariableOp*learnlet_synthesis/groupping_conv_5/kernel*&
_output_shapes
:A*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
b
total_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_3
[
total_3/Read/ReadVariableOpReadVariableOptotal_3*
_output_shapes
: *
dtype0
b
count_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_3
[
count_3/Read/ReadVariableOpReadVariableOpcount_3*
_output_shapes
: *
dtype0
?
0Adam/learnlet_analysis/details_tiling_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*A
shared_name20Adam/learnlet_analysis/details_tiling_1/kernel/m
?
DAdam/learnlet_analysis/details_tiling_1/kernel/m/Read/ReadVariableOpReadVariableOp0Adam/learnlet_analysis/details_tiling_1/kernel/m*&
_output_shapes
:@*
dtype0
?
0Adam/learnlet_analysis/details_tiling_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*A
shared_name20Adam/learnlet_analysis/details_tiling_2/kernel/m
?
DAdam/learnlet_analysis/details_tiling_2/kernel/m/Read/ReadVariableOpReadVariableOp0Adam/learnlet_analysis/details_tiling_2/kernel/m*&
_output_shapes
:@*
dtype0
?
0Adam/learnlet_analysis/details_tiling_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*A
shared_name20Adam/learnlet_analysis/details_tiling_3/kernel/m
?
DAdam/learnlet_analysis/details_tiling_3/kernel/m/Read/ReadVariableOpReadVariableOp0Adam/learnlet_analysis/details_tiling_3/kernel/m*&
_output_shapes
:@*
dtype0
?
0Adam/learnlet_analysis/details_tiling_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*A
shared_name20Adam/learnlet_analysis/details_tiling_4/kernel/m
?
DAdam/learnlet_analysis/details_tiling_4/kernel/m/Read/ReadVariableOpReadVariableOp0Adam/learnlet_analysis/details_tiling_4/kernel/m*&
_output_shapes
:@*
dtype0
?
0Adam/learnlet_analysis/details_tiling_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*A
shared_name20Adam/learnlet_analysis/details_tiling_5/kernel/m
?
DAdam/learnlet_analysis/details_tiling_5/kernel/m/Read/ReadVariableOpReadVariableOp0Adam/learnlet_analysis/details_tiling_5/kernel/m*&
_output_shapes
:@*
dtype0
?
1Adam/learnlet_synthesis/groupping_conv_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:A*B
shared_name31Adam/learnlet_synthesis/groupping_conv_1/kernel/m
?
EAdam/learnlet_synthesis/groupping_conv_1/kernel/m/Read/ReadVariableOpReadVariableOp1Adam/learnlet_synthesis/groupping_conv_1/kernel/m*&
_output_shapes
:A*
dtype0
?
1Adam/learnlet_synthesis/groupping_conv_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:A*B
shared_name31Adam/learnlet_synthesis/groupping_conv_2/kernel/m
?
EAdam/learnlet_synthesis/groupping_conv_2/kernel/m/Read/ReadVariableOpReadVariableOp1Adam/learnlet_synthesis/groupping_conv_2/kernel/m*&
_output_shapes
:A*
dtype0
?
1Adam/learnlet_synthesis/groupping_conv_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:A*B
shared_name31Adam/learnlet_synthesis/groupping_conv_3/kernel/m
?
EAdam/learnlet_synthesis/groupping_conv_3/kernel/m/Read/ReadVariableOpReadVariableOp1Adam/learnlet_synthesis/groupping_conv_3/kernel/m*&
_output_shapes
:A*
dtype0
?
1Adam/learnlet_synthesis/groupping_conv_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:A*B
shared_name31Adam/learnlet_synthesis/groupping_conv_4/kernel/m
?
EAdam/learnlet_synthesis/groupping_conv_4/kernel/m/Read/ReadVariableOpReadVariableOp1Adam/learnlet_synthesis/groupping_conv_4/kernel/m*&
_output_shapes
:A*
dtype0
?
1Adam/learnlet_synthesis/groupping_conv_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:A*B
shared_name31Adam/learnlet_synthesis/groupping_conv_5/kernel/m
?
EAdam/learnlet_synthesis/groupping_conv_5/kernel/m/Read/ReadVariableOpReadVariableOp1Adam/learnlet_synthesis/groupping_conv_5/kernel/m*&
_output_shapes
:A*
dtype0
?
0Adam/learnlet_analysis/details_tiling_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*A
shared_name20Adam/learnlet_analysis/details_tiling_1/kernel/v
?
DAdam/learnlet_analysis/details_tiling_1/kernel/v/Read/ReadVariableOpReadVariableOp0Adam/learnlet_analysis/details_tiling_1/kernel/v*&
_output_shapes
:@*
dtype0
?
0Adam/learnlet_analysis/details_tiling_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*A
shared_name20Adam/learnlet_analysis/details_tiling_2/kernel/v
?
DAdam/learnlet_analysis/details_tiling_2/kernel/v/Read/ReadVariableOpReadVariableOp0Adam/learnlet_analysis/details_tiling_2/kernel/v*&
_output_shapes
:@*
dtype0
?
0Adam/learnlet_analysis/details_tiling_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*A
shared_name20Adam/learnlet_analysis/details_tiling_3/kernel/v
?
DAdam/learnlet_analysis/details_tiling_3/kernel/v/Read/ReadVariableOpReadVariableOp0Adam/learnlet_analysis/details_tiling_3/kernel/v*&
_output_shapes
:@*
dtype0
?
0Adam/learnlet_analysis/details_tiling_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*A
shared_name20Adam/learnlet_analysis/details_tiling_4/kernel/v
?
DAdam/learnlet_analysis/details_tiling_4/kernel/v/Read/ReadVariableOpReadVariableOp0Adam/learnlet_analysis/details_tiling_4/kernel/v*&
_output_shapes
:@*
dtype0
?
0Adam/learnlet_analysis/details_tiling_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*A
shared_name20Adam/learnlet_analysis/details_tiling_5/kernel/v
?
DAdam/learnlet_analysis/details_tiling_5/kernel/v/Read/ReadVariableOpReadVariableOp0Adam/learnlet_analysis/details_tiling_5/kernel/v*&
_output_shapes
:@*
dtype0
?
1Adam/learnlet_synthesis/groupping_conv_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:A*B
shared_name31Adam/learnlet_synthesis/groupping_conv_1/kernel/v
?
EAdam/learnlet_synthesis/groupping_conv_1/kernel/v/Read/ReadVariableOpReadVariableOp1Adam/learnlet_synthesis/groupping_conv_1/kernel/v*&
_output_shapes
:A*
dtype0
?
1Adam/learnlet_synthesis/groupping_conv_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:A*B
shared_name31Adam/learnlet_synthesis/groupping_conv_2/kernel/v
?
EAdam/learnlet_synthesis/groupping_conv_2/kernel/v/Read/ReadVariableOpReadVariableOp1Adam/learnlet_synthesis/groupping_conv_2/kernel/v*&
_output_shapes
:A*
dtype0
?
1Adam/learnlet_synthesis/groupping_conv_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:A*B
shared_name31Adam/learnlet_synthesis/groupping_conv_3/kernel/v
?
EAdam/learnlet_synthesis/groupping_conv_3/kernel/v/Read/ReadVariableOpReadVariableOp1Adam/learnlet_synthesis/groupping_conv_3/kernel/v*&
_output_shapes
:A*
dtype0
?
1Adam/learnlet_synthesis/groupping_conv_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:A*B
shared_name31Adam/learnlet_synthesis/groupping_conv_4/kernel/v
?
EAdam/learnlet_synthesis/groupping_conv_4/kernel/v/Read/ReadVariableOpReadVariableOp1Adam/learnlet_synthesis/groupping_conv_4/kernel/v*&
_output_shapes
:A*
dtype0
?
1Adam/learnlet_synthesis/groupping_conv_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:A*B
shared_name31Adam/learnlet_synthesis/groupping_conv_5/kernel/v
?
EAdam/learnlet_synthesis/groupping_conv_5/kernel/v/Read/ReadVariableOpReadVariableOp1Adam/learnlet_synthesis/groupping_conv_5/kernel/v*&
_output_shapes
:A*
dtype0
v
ConstConst*
_output_shapes

:*
dtype0*9
value0B."                             

NoOpNoOp
?w
Const_1Const"/device:CPU:0*
_output_shapes
: *
dtype0*?w
value?wB?w B?w
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
layer-7
	layer_with_weights-6
	layer-8

	optimizer
regularization_losses
	variables
trainable_variables
	keras_api

signatures
 
}
wav_analysis
convs_detail_tiling
regularization_losses
	variables
trainable_variables
	keras_api
\
norm
regularization_losses
	variables
trainable_variables
	keras_api
\
norm
regularization_losses
	variables
trainable_variables
	keras_api
\
 norm
!regularization_losses
"	variables
#trainable_variables
$	keras_api
\
%norm
&regularization_losses
'	variables
(trainable_variables
)	keras_api
\
*norm
+regularization_losses
,	variables
-trainable_variables
.	keras_api
R
/regularization_losses
0	variables
1trainable_variables
2	keras_api
?
3wav_filters_norm
4
upsampling
5convs_groupping
6regularization_losses
7	variables
8trainable_variables
9	keras_api
?
:iter

;beta_1

<beta_2
	=decay
>learning_rate?m?@m?Am?Bm?Cm?Em?Fm?Gm?Hm?Im??v?@v?Av?Bv?Cv?Ev?Fv?Gv?Hv?Iv?
 
v
?0
@1
A2
B3
C4
D5
6
7
 8
%9
*10
E11
F12
G13
H14
I15
F
?0
@1
A2
B3
C4
E5
F6
G7
H8
I9
?
Jmetrics
regularization_losses
Knon_trainable_variables
Llayer_metrics

Mlayers
Nlayer_regularization_losses
	variables
trainable_variables
 
?
Owav_pooling
Ppooling
Qwav_filters_norm
Rregularization_losses
S	variables
Ttrainable_variables
U	keras_api
#
V0
W1
X2
Y3
Z4
 
*
?0
@1
A2
B3
C4
D5
#
?0
@1
A2
B3
C4
?
[metrics
regularization_losses
\non_trainable_variables
]layer_metrics

^layers
_layer_regularization_losses
	variables
trainable_variables
\Z
VARIABLE_VALUEnormalisation/norm4layer_with_weights-1/norm/.ATTRIBUTES/VARIABLE_VALUE
 

0
 
?
`metrics
regularization_losses
anon_trainable_variables
blayer_metrics

clayers
dlayer_regularization_losses
	variables
trainable_variables
^\
VARIABLE_VALUEnormalisation_1/norm4layer_with_weights-2/norm/.ATTRIBUTES/VARIABLE_VALUE
 

0
 
?
emetrics
regularization_losses
fnon_trainable_variables
glayer_metrics

hlayers
ilayer_regularization_losses
	variables
trainable_variables
^\
VARIABLE_VALUEnormalisation_2/norm4layer_with_weights-3/norm/.ATTRIBUTES/VARIABLE_VALUE
 

 0
 
?
jmetrics
!regularization_losses
knon_trainable_variables
llayer_metrics

mlayers
nlayer_regularization_losses
"	variables
#trainable_variables
^\
VARIABLE_VALUEnormalisation_3/norm4layer_with_weights-4/norm/.ATTRIBUTES/VARIABLE_VALUE
 

%0
 
?
ometrics
&regularization_losses
pnon_trainable_variables
qlayer_metrics

rlayers
slayer_regularization_losses
'	variables
(trainable_variables
^\
VARIABLE_VALUEnormalisation_4/norm4layer_with_weights-5/norm/.ATTRIBUTES/VARIABLE_VALUE
 

*0
 
?
tmetrics
+regularization_losses
unon_trainable_variables
vlayer_metrics

wlayers
xlayer_regularization_losses
,	variables
-trainable_variables
 
 
 
?
ymetrics
/regularization_losses
znon_trainable_variables
{layer_metrics

|layers
}layer_regularization_losses
0	variables
1trainable_variables
 
T
~regularization_losses
	variables
?trainable_variables
?	keras_api
(
?0
?1
?2
?3
?4
 
#
E0
F1
G2
H3
I4
#
E0
F1
G2
H3
I4
?
?metrics
6regularization_losses
?non_trainable_variables
?layer_metrics
?layers
 ?layer_regularization_losses
7	variables
8trainable_variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUE)learnlet_analysis/details_tiling_1/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUE)learnlet_analysis/details_tiling_2/kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUE)learnlet_analysis/details_tiling_3/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUE)learnlet_analysis/details_tiling_4/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUE)learnlet_analysis/details_tiling_5/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEFlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/kernel&variables/5/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUE*learnlet_synthesis/groupping_conv_1/kernel'variables/11/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUE*learnlet_synthesis/groupping_conv_2/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUE*learnlet_synthesis/groupping_conv_3/kernel'variables/13/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUE*learnlet_synthesis/groupping_conv_4/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUE*learnlet_synthesis/groupping_conv_5/kernel'variables/15/.ATTRIBUTES/VARIABLE_VALUE
 
?0
?1
?2
?3
*
D0
1
2
 3
%4
*5
 
?
0
1
2
3
4
5
6
7
	8
 
w
?conv_h
	?down
?up
?regularization_losses
?	variables
?trainable_variables
?	keras_api
V
?regularization_losses
?	variables
?trainable_variables
?	keras_api
 
 

D0
 
?
?metrics
Rregularization_losses
?non_trainable_variables
?layer_metrics
?layers
 ?layer_regularization_losses
S	variables
Ttrainable_variables
b

?kernel
?regularization_losses
?	variables
?trainable_variables
?	keras_api
b

@kernel
?regularization_losses
?	variables
?trainable_variables
?	keras_api
b

Akernel
?regularization_losses
?	variables
?trainable_variables
?	keras_api
b

Bkernel
?regularization_losses
?	variables
?trainable_variables
?	keras_api
b

Ckernel
?regularization_losses
?	variables
?trainable_variables
?	keras_api
 

D0
 
*
0
V1
W2
X3
Y4
Z5
 
 

0
 
 
 
 

0
 
 
 
 

 0
 
 
 
 

%0
 
 
 
 

*0
 
 
 
 
 
 
 
 
 
 
 
?
?metrics
~regularization_losses
?non_trainable_variables
?layer_metrics
?layers
 ?layer_regularization_losses
	variables
?trainable_variables
b

Ekernel
?regularization_losses
?	variables
?trainable_variables
?	keras_api
b

Fkernel
?regularization_losses
?	variables
?trainable_variables
?	keras_api
b

Gkernel
?regularization_losses
?	variables
?trainable_variables
?	keras_api
b

Hkernel
?regularization_losses
?	variables
?trainable_variables
?	keras_api
b

Ikernel
?regularization_losses
?	variables
?trainable_variables
?	keras_api
 
 
 
/
40
?1
?2
?3
?4
?5
 
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
b

Dkernel
?regularization_losses
?	variables
?trainable_variables
?	keras_api
V
?regularization_losses
?	variables
?trainable_variables
?	keras_api
V
?regularization_losses
?	variables
?trainable_variables
?	keras_api
 

D0
 
?
?metrics
?regularization_losses
?non_trainable_variables
?layer_metrics
?layers
 ?layer_regularization_losses
?	variables
?trainable_variables
 
 
 
?
?metrics
?regularization_losses
?non_trainable_variables
?layer_metrics
?layers
 ?layer_regularization_losses
?	variables
?trainable_variables
 

D0
 

O0
P1
 
 

?0

?0
?
?metrics
?regularization_losses
?non_trainable_variables
?layer_metrics
?layers
 ?layer_regularization_losses
?	variables
?trainable_variables
 

@0

@0
?
?metrics
?regularization_losses
?non_trainable_variables
?layer_metrics
?layers
 ?layer_regularization_losses
?	variables
?trainable_variables
 

A0

A0
?
?metrics
?regularization_losses
?non_trainable_variables
?layer_metrics
?layers
 ?layer_regularization_losses
?	variables
?trainable_variables
 

B0

B0
?
?metrics
?regularization_losses
?non_trainable_variables
?layer_metrics
?layers
 ?layer_regularization_losses
?	variables
?trainable_variables
 

C0

C0
?
?metrics
?regularization_losses
?non_trainable_variables
?layer_metrics
?layers
 ?layer_regularization_losses
?	variables
?trainable_variables
 
 
 
 
 
 

E0

E0
?
?metrics
?regularization_losses
?non_trainable_variables
?layer_metrics
?layers
 ?layer_regularization_losses
?	variables
?trainable_variables
 

F0

F0
?
?metrics
?regularization_losses
?non_trainable_variables
?layer_metrics
?layers
 ?layer_regularization_losses
?	variables
?trainable_variables
 

G0

G0
?
?metrics
?regularization_losses
?non_trainable_variables
?layer_metrics
?layers
 ?layer_regularization_losses
?	variables
?trainable_variables
 

H0

H0
?
?metrics
?regularization_losses
?non_trainable_variables
?layer_metrics
?layers
 ?layer_regularization_losses
?	variables
?trainable_variables
 

I0

I0
?
?metrics
?regularization_losses
?non_trainable_variables
?layer_metrics
?layers
 ?layer_regularization_losses
?	variables
?trainable_variables
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_34keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_34keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
 

D0
 
?
?metrics
?regularization_losses
?non_trainable_variables
?layer_metrics
?layers
 ?layer_regularization_losses
?	variables
?trainable_variables
 
 
 
?
?metrics
?regularization_losses
?non_trainable_variables
?layer_metrics
?layers
 ?layer_regularization_losses
?	variables
?trainable_variables
 
 
 
?
?metrics
?regularization_losses
?non_trainable_variables
?layer_metrics
?layers
 ?layer_regularization_losses
?	variables
?trainable_variables
 

D0
 

?0
?1
?2
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

D0
 
 
 
 
 
 
 
 
 
 
 
 
 
??
VARIABLE_VALUE0Adam/learnlet_analysis/details_tiling_1/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE0Adam/learnlet_analysis/details_tiling_2/kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE0Adam/learnlet_analysis/details_tiling_3/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE0Adam/learnlet_analysis/details_tiling_4/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE0Adam/learnlet_analysis/details_tiling_5/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE1Adam/learnlet_synthesis/groupping_conv_1/kernel/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE1Adam/learnlet_synthesis/groupping_conv_2/kernel/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE1Adam/learnlet_synthesis/groupping_conv_3/kernel/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE1Adam/learnlet_synthesis/groupping_conv_4/kernel/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE1Adam/learnlet_synthesis/groupping_conv_5/kernel/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE0Adam/learnlet_analysis/details_tiling_1/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE0Adam/learnlet_analysis/details_tiling_2/kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE0Adam/learnlet_analysis/details_tiling_3/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE0Adam/learnlet_analysis/details_tiling_4/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE0Adam/learnlet_analysis/details_tiling_5/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE1Adam/learnlet_synthesis/groupping_conv_1/kernel/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE1Adam/learnlet_synthesis/groupping_conv_2/kernel/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE1Adam/learnlet_synthesis/groupping_conv_3/kernel/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE1Adam/learnlet_synthesis/groupping_conv_4/kernel/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE1Adam/learnlet_synthesis/groupping_conv_5/kernel/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_input_1Placeholder*/
_output_shapes
:?????????@@*
dtype0*$
shape:?????????@@
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1ConstFlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/kernel)learnlet_analysis/details_tiling_1/kernel)learnlet_analysis/details_tiling_2/kernel)learnlet_analysis/details_tiling_3/kernel)learnlet_analysis/details_tiling_4/kernel)learnlet_analysis/details_tiling_5/kernelnormalisation_4/normnormalisation_3/normnormalisation_2/normnormalisation_1/normnormalisation/norm*learnlet_synthesis/groupping_conv_1/kernel*learnlet_synthesis/groupping_conv_2/kernel*learnlet_synthesis/groupping_conv_3/kernel*learnlet_synthesis/groupping_conv_4/kernel*learnlet_synthesis/groupping_conv_5/kernel*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *.
f)R'
%__inference_signature_wrapper_1916041
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename&normalisation/norm/Read/ReadVariableOp(normalisation_1/norm/Read/ReadVariableOp(normalisation_2/norm/Read/ReadVariableOp(normalisation_3/norm/Read/ReadVariableOp(normalisation_4/norm/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp=learnlet_analysis/details_tiling_1/kernel/Read/ReadVariableOp=learnlet_analysis/details_tiling_2/kernel/Read/ReadVariableOp=learnlet_analysis/details_tiling_3/kernel/Read/ReadVariableOp=learnlet_analysis/details_tiling_4/kernel/Read/ReadVariableOp=learnlet_analysis/details_tiling_5/kernel/Read/ReadVariableOpZlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/kernel/Read/ReadVariableOp>learnlet_synthesis/groupping_conv_1/kernel/Read/ReadVariableOp>learnlet_synthesis/groupping_conv_2/kernel/Read/ReadVariableOp>learnlet_synthesis/groupping_conv_3/kernel/Read/ReadVariableOp>learnlet_synthesis/groupping_conv_4/kernel/Read/ReadVariableOp>learnlet_synthesis/groupping_conv_5/kernel/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOptotal_3/Read/ReadVariableOpcount_3/Read/ReadVariableOpDAdam/learnlet_analysis/details_tiling_1/kernel/m/Read/ReadVariableOpDAdam/learnlet_analysis/details_tiling_2/kernel/m/Read/ReadVariableOpDAdam/learnlet_analysis/details_tiling_3/kernel/m/Read/ReadVariableOpDAdam/learnlet_analysis/details_tiling_4/kernel/m/Read/ReadVariableOpDAdam/learnlet_analysis/details_tiling_5/kernel/m/Read/ReadVariableOpEAdam/learnlet_synthesis/groupping_conv_1/kernel/m/Read/ReadVariableOpEAdam/learnlet_synthesis/groupping_conv_2/kernel/m/Read/ReadVariableOpEAdam/learnlet_synthesis/groupping_conv_3/kernel/m/Read/ReadVariableOpEAdam/learnlet_synthesis/groupping_conv_4/kernel/m/Read/ReadVariableOpEAdam/learnlet_synthesis/groupping_conv_5/kernel/m/Read/ReadVariableOpDAdam/learnlet_analysis/details_tiling_1/kernel/v/Read/ReadVariableOpDAdam/learnlet_analysis/details_tiling_2/kernel/v/Read/ReadVariableOpDAdam/learnlet_analysis/details_tiling_3/kernel/v/Read/ReadVariableOpDAdam/learnlet_analysis/details_tiling_4/kernel/v/Read/ReadVariableOpDAdam/learnlet_analysis/details_tiling_5/kernel/v/Read/ReadVariableOpEAdam/learnlet_synthesis/groupping_conv_1/kernel/v/Read/ReadVariableOpEAdam/learnlet_synthesis/groupping_conv_2/kernel/v/Read/ReadVariableOpEAdam/learnlet_synthesis/groupping_conv_3/kernel/v/Read/ReadVariableOpEAdam/learnlet_synthesis/groupping_conv_4/kernel/v/Read/ReadVariableOpEAdam/learnlet_synthesis/groupping_conv_5/kernel/v/Read/ReadVariableOpConst_1*>
Tin7
523	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference__traced_save_1917081
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamenormalisation/normnormalisation_1/normnormalisation_2/normnormalisation_3/normnormalisation_4/norm	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rate)learnlet_analysis/details_tiling_1/kernel)learnlet_analysis/details_tiling_2/kernel)learnlet_analysis/details_tiling_3/kernel)learnlet_analysis/details_tiling_4/kernel)learnlet_analysis/details_tiling_5/kernelFlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/kernel*learnlet_synthesis/groupping_conv_1/kernel*learnlet_synthesis/groupping_conv_2/kernel*learnlet_synthesis/groupping_conv_3/kernel*learnlet_synthesis/groupping_conv_4/kernel*learnlet_synthesis/groupping_conv_5/kerneltotalcounttotal_1count_1total_2count_2total_3count_30Adam/learnlet_analysis/details_tiling_1/kernel/m0Adam/learnlet_analysis/details_tiling_2/kernel/m0Adam/learnlet_analysis/details_tiling_3/kernel/m0Adam/learnlet_analysis/details_tiling_4/kernel/m0Adam/learnlet_analysis/details_tiling_5/kernel/m1Adam/learnlet_synthesis/groupping_conv_1/kernel/m1Adam/learnlet_synthesis/groupping_conv_2/kernel/m1Adam/learnlet_synthesis/groupping_conv_3/kernel/m1Adam/learnlet_synthesis/groupping_conv_4/kernel/m1Adam/learnlet_synthesis/groupping_conv_5/kernel/m0Adam/learnlet_analysis/details_tiling_1/kernel/v0Adam/learnlet_analysis/details_tiling_2/kernel/v0Adam/learnlet_analysis/details_tiling_3/kernel/v0Adam/learnlet_analysis/details_tiling_4/kernel/v0Adam/learnlet_analysis/details_tiling_5/kernel/v1Adam/learnlet_synthesis/groupping_conv_1/kernel/v1Adam/learnlet_synthesis/groupping_conv_2/kernel/v1Adam/learnlet_synthesis/groupping_conv_3/kernel/v1Adam/learnlet_synthesis/groupping_conv_4/kernel/v1Adam/learnlet_synthesis/groupping_conv_5/kernel/v*=
Tin6
422*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference__traced_restore_1917238??
?
J
.__inference_thresholding_layer_call_fn_1916766

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_thresholding_layer_call_and_return_conditional_losses_19154912
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
??
?
N__inference_learnlet_analysis_layer_call_and_return_conditional_losses_1915317	
image/
+wav_analysis_wav_pooling_mirrorpad_paddingsP
Lwav_analysis_wav_pooling_low_pass_filtering_1_conv2d_readvariableop_resource3
/details_tiling_1_conv2d_readvariableop_resource3
/details_tiling_2_conv2d_readvariableop_resource3
/details_tiling_3_conv2d_readvariableop_resource3
/details_tiling_4_conv2d_readvariableop_resource3
/details_tiling_5_conv2d_readvariableop_resource
identity

identity_1

identity_2

identity_3

identity_4

identity_5??&details_tiling_1/Conv2D/ReadVariableOp?&details_tiling_2/Conv2D/ReadVariableOp?&details_tiling_3/Conv2D/ReadVariableOp?&details_tiling_4/Conv2D/ReadVariableOp?&details_tiling_5/Conv2D/ReadVariableOp?Cwav_analysis/wav_pooling/low_pass_filtering_1/Conv2D/ReadVariableOp?Ewav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1/ReadVariableOp?Ewav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2/ReadVariableOp?Ewav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3/ReadVariableOp?Ewav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4/ReadVariableOp?
"wav_analysis/wav_pooling/MirrorPad	MirrorPadimage+wav_analysis_wav_pooling_mirrorpad_paddings*
T0*/
_output_shapes
:?????????DD*
mode	SYMMETRIC2$
"wav_analysis/wav_pooling/MirrorPad?
Cwav_analysis/wav_pooling/low_pass_filtering_1/Conv2D/ReadVariableOpReadVariableOpLwav_analysis_wav_pooling_low_pass_filtering_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02E
Cwav_analysis/wav_pooling/low_pass_filtering_1/Conv2D/ReadVariableOp?
4wav_analysis/wav_pooling/low_pass_filtering_1/Conv2DConv2D+wav_analysis/wav_pooling/MirrorPad:output:0Kwav_analysis/wav_pooling/low_pass_filtering_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@*
paddingVALID*
strides
26
4wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D?
@wav_analysis/wav_pooling/fixed_point_pooling/strided_slice/stackConst*
_output_shapes
:*
dtype0*%
valueB"                2B
@wav_analysis/wav_pooling/fixed_point_pooling/strided_slice/stack?
Bwav_analysis/wav_pooling/fixed_point_pooling/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                2D
Bwav_analysis/wav_pooling/fixed_point_pooling/strided_slice/stack_1?
Bwav_analysis/wav_pooling/fixed_point_pooling/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            2D
Bwav_analysis/wav_pooling/fixed_point_pooling/strided_slice/stack_2?
:wav_analysis/wav_pooling/fixed_point_pooling/strided_sliceStridedSlice=wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D:output:0Iwav_analysis/wav_pooling/fixed_point_pooling/strided_slice/stack:output:0Kwav_analysis/wav_pooling/fixed_point_pooling/strided_slice/stack_1:output:0Kwav_analysis/wav_pooling/fixed_point_pooling/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????  *

begin_mask*
end_mask2<
:wav_analysis/wav_pooling/fixed_point_pooling/strided_slice?
6wav_analysis/wav_pooling/fixed_point_up_sampling/ShapeShapeCwav_analysis/wav_pooling/fixed_point_pooling/strided_slice:output:0*
T0*
_output_shapes
:28
6wav_analysis/wav_pooling/fixed_point_up_sampling/Shape?
Dwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2F
Dwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice/stack?
Fwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2H
Fwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice/stack_1?
Fwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2H
Fwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice/stack_2?
>wav_analysis/wav_pooling/fixed_point_up_sampling/strided_sliceStridedSlice?wav_analysis/wav_pooling/fixed_point_up_sampling/Shape:output:0Mwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice/stack:output:0Owav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice/stack_1:output:0Owav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2@
>wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice?
6wav_analysis/wav_pooling/fixed_point_up_sampling/mul/xConst*
_output_shapes
: *
dtype0*
value	B :28
6wav_analysis/wav_pooling/fixed_point_up_sampling/mul/x?
4wav_analysis/wav_pooling/fixed_point_up_sampling/mulMul?wav_analysis/wav_pooling/fixed_point_up_sampling/mul/x:output:0Gwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice:output:0*
T0*
_output_shapes
:26
4wav_analysis/wav_pooling/fixed_point_up_sampling/mul?
>wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubicResizeBicubicCwav_analysis/wav_pooling/fixed_point_pooling/strided_slice:output:08wav_analysis/wav_pooling/fixed_point_up_sampling/mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2@
>wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic?
wav_analysis/wav_pooling/subSubimageOwav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic:resized_images:0*
T0*/
_output_shapes
:?????????@@2
wav_analysis/wav_pooling/subu
wav_analysis/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *??j?2
wav_analysis/truediv/y?
wav_analysis/truedivRealDiv wav_analysis/wav_pooling/sub:z:0wav_analysis/truediv/y:output:0*
T0*/
_output_shapes
:?????????@@2
wav_analysis/truediv?
6wav_analysis/fixed_point_pooling_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*%
valueB"                28
6wav_analysis/fixed_point_pooling_1/strided_slice/stack?
8wav_analysis/fixed_point_pooling_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                2:
8wav_analysis/fixed_point_pooling_1/strided_slice/stack_1?
8wav_analysis/fixed_point_pooling_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            2:
8wav_analysis/fixed_point_pooling_1/strided_slice/stack_2?
0wav_analysis/fixed_point_pooling_1/strided_sliceStridedSlice=wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D:output:0?wav_analysis/fixed_point_pooling_1/strided_slice/stack:output:0Awav_analysis/fixed_point_pooling_1/strided_slice/stack_1:output:0Awav_analysis/fixed_point_pooling_1/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????  *

begin_mask*
end_mask22
0wav_analysis/fixed_point_pooling_1/strided_slice?
$wav_analysis/wav_pooling/MirrorPad_1	MirrorPad9wav_analysis/fixed_point_pooling_1/strided_slice:output:0+wav_analysis_wav_pooling_mirrorpad_paddings*
T0*/
_output_shapes
:?????????$$*
mode	SYMMETRIC2&
$wav_analysis/wav_pooling/MirrorPad_1?
Ewav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1/ReadVariableOpReadVariableOpLwav_analysis_wav_pooling_low_pass_filtering_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02G
Ewav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1/ReadVariableOp?
6wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1Conv2D-wav_analysis/wav_pooling/MirrorPad_1:output:0Mwav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  *
paddingVALID*
strides
28
6wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1?
Bwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*%
valueB"                2D
Bwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1/stack?
Dwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                2F
Dwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1/stack_1?
Dwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            2F
Dwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1/stack_2?
<wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1StridedSlice?wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1:output:0Kwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1/stack:output:0Mwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1/stack_1:output:0Mwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????*

begin_mask*
end_mask2>
<wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1?
8wav_analysis/wav_pooling/fixed_point_up_sampling/Shape_1ShapeEwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1:output:0*
T0*
_output_shapes
:2:
8wav_analysis/wav_pooling/fixed_point_up_sampling/Shape_1?
Fwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2H
Fwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1/stack?
Hwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2J
Hwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1/stack_1?
Hwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2J
Hwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1/stack_2?
@wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1StridedSliceAwav_analysis/wav_pooling/fixed_point_up_sampling/Shape_1:output:0Owav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1/stack:output:0Qwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1/stack_1:output:0Qwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:2B
@wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1?
8wav_analysis/wav_pooling/fixed_point_up_sampling/mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :2:
8wav_analysis/wav_pooling/fixed_point_up_sampling/mul_1/x?
6wav_analysis/wav_pooling/fixed_point_up_sampling/mul_1MulAwav_analysis/wav_pooling/fixed_point_up_sampling/mul_1/x:output:0Iwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1:output:0*
T0*
_output_shapes
:28
6wav_analysis/wav_pooling/fixed_point_up_sampling/mul_1?
@wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_1ResizeBicubicEwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1:output:0:wav_analysis/wav_pooling/fixed_point_up_sampling/mul_1:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2B
@wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_1?
wav_analysis/wav_pooling/sub_1Sub9wav_analysis/fixed_point_pooling_1/strided_slice:output:0Qwav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_1:resized_images:0*
T0*/
_output_shapes
:?????????  2 
wav_analysis/wav_pooling/sub_1y
wav_analysis/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *??Z>2
wav_analysis/truediv_1/y?
wav_analysis/truediv_1RealDiv"wav_analysis/wav_pooling/sub_1:z:0!wav_analysis/truediv_1/y:output:0*
T0*/
_output_shapes
:?????????  2
wav_analysis/truediv_1?
8wav_analysis/fixed_point_pooling_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*%
valueB"                2:
8wav_analysis/fixed_point_pooling_1/strided_slice_1/stack?
:wav_analysis/fixed_point_pooling_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                2<
:wav_analysis/fixed_point_pooling_1/strided_slice_1/stack_1?
:wav_analysis/fixed_point_pooling_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            2<
:wav_analysis/fixed_point_pooling_1/strided_slice_1/stack_2?
2wav_analysis/fixed_point_pooling_1/strided_slice_1StridedSlice?wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1:output:0Awav_analysis/fixed_point_pooling_1/strided_slice_1/stack:output:0Cwav_analysis/fixed_point_pooling_1/strided_slice_1/stack_1:output:0Cwav_analysis/fixed_point_pooling_1/strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????*

begin_mask*
end_mask24
2wav_analysis/fixed_point_pooling_1/strided_slice_1?
$wav_analysis/wav_pooling/MirrorPad_2	MirrorPad;wav_analysis/fixed_point_pooling_1/strided_slice_1:output:0+wav_analysis_wav_pooling_mirrorpad_paddings*
T0*/
_output_shapes
:?????????*
mode	SYMMETRIC2&
$wav_analysis/wav_pooling/MirrorPad_2?
Ewav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2/ReadVariableOpReadVariableOpLwav_analysis_wav_pooling_low_pass_filtering_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02G
Ewav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2/ReadVariableOp?
6wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2Conv2D-wav_analysis/wav_pooling/MirrorPad_2:output:0Mwav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
28
6wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2?
Bwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*%
valueB"                2D
Bwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2/stack?
Dwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                2F
Dwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2/stack_1?
Dwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            2F
Dwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2/stack_2?
<wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2StridedSlice?wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2:output:0Kwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2/stack:output:0Mwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2/stack_1:output:0Mwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????*

begin_mask*
end_mask2>
<wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2?
8wav_analysis/wav_pooling/fixed_point_up_sampling/Shape_2ShapeEwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2:output:0*
T0*
_output_shapes
:2:
8wav_analysis/wav_pooling/fixed_point_up_sampling/Shape_2?
Fwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2H
Fwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2/stack?
Hwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2J
Hwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2/stack_1?
Hwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2J
Hwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2/stack_2?
@wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2StridedSliceAwav_analysis/wav_pooling/fixed_point_up_sampling/Shape_2:output:0Owav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2/stack:output:0Qwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2/stack_1:output:0Qwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:2B
@wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2?
8wav_analysis/wav_pooling/fixed_point_up_sampling/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :2:
8wav_analysis/wav_pooling/fixed_point_up_sampling/mul_2/x?
6wav_analysis/wav_pooling/fixed_point_up_sampling/mul_2MulAwav_analysis/wav_pooling/fixed_point_up_sampling/mul_2/x:output:0Iwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2:output:0*
T0*
_output_shapes
:28
6wav_analysis/wav_pooling/fixed_point_up_sampling/mul_2?
@wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_2ResizeBicubicEwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2:output:0:wav_analysis/wav_pooling/fixed_point_up_sampling/mul_2:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2B
@wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_2?
wav_analysis/wav_pooling/sub_2Sub;wav_analysis/fixed_point_pooling_1/strided_slice_1:output:0Qwav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_2:resized_images:0*
T0*/
_output_shapes
:?????????2 
wav_analysis/wav_pooling/sub_2y
wav_analysis/truediv_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *J??=2
wav_analysis/truediv_2/y?
wav_analysis/truediv_2RealDiv"wav_analysis/wav_pooling/sub_2:z:0!wav_analysis/truediv_2/y:output:0*
T0*/
_output_shapes
:?????????2
wav_analysis/truediv_2?
8wav_analysis/fixed_point_pooling_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*%
valueB"                2:
8wav_analysis/fixed_point_pooling_1/strided_slice_2/stack?
:wav_analysis/fixed_point_pooling_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                2<
:wav_analysis/fixed_point_pooling_1/strided_slice_2/stack_1?
:wav_analysis/fixed_point_pooling_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            2<
:wav_analysis/fixed_point_pooling_1/strided_slice_2/stack_2?
2wav_analysis/fixed_point_pooling_1/strided_slice_2StridedSlice?wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2:output:0Awav_analysis/fixed_point_pooling_1/strided_slice_2/stack:output:0Cwav_analysis/fixed_point_pooling_1/strided_slice_2/stack_1:output:0Cwav_analysis/fixed_point_pooling_1/strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????*

begin_mask*
end_mask24
2wav_analysis/fixed_point_pooling_1/strided_slice_2?
$wav_analysis/wav_pooling/MirrorPad_3	MirrorPad;wav_analysis/fixed_point_pooling_1/strided_slice_2:output:0+wav_analysis_wav_pooling_mirrorpad_paddings*
T0*/
_output_shapes
:?????????*
mode	SYMMETRIC2&
$wav_analysis/wav_pooling/MirrorPad_3?
Ewav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3/ReadVariableOpReadVariableOpLwav_analysis_wav_pooling_low_pass_filtering_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02G
Ewav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3/ReadVariableOp?
6wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3Conv2D-wav_analysis/wav_pooling/MirrorPad_3:output:0Mwav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
28
6wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3?
Bwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*%
valueB"                2D
Bwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3/stack?
Dwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                2F
Dwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3/stack_1?
Dwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            2F
Dwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3/stack_2?
<wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3StridedSlice?wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3:output:0Kwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3/stack:output:0Mwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3/stack_1:output:0Mwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????*

begin_mask*
end_mask2>
<wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3?
8wav_analysis/wav_pooling/fixed_point_up_sampling/Shape_3ShapeEwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3:output:0*
T0*
_output_shapes
:2:
8wav_analysis/wav_pooling/fixed_point_up_sampling/Shape_3?
Fwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2H
Fwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3/stack?
Hwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2J
Hwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3/stack_1?
Hwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2J
Hwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3/stack_2?
@wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3StridedSliceAwav_analysis/wav_pooling/fixed_point_up_sampling/Shape_3:output:0Owav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3/stack:output:0Qwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3/stack_1:output:0Qwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:2B
@wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3?
8wav_analysis/wav_pooling/fixed_point_up_sampling/mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :2:
8wav_analysis/wav_pooling/fixed_point_up_sampling/mul_3/x?
6wav_analysis/wav_pooling/fixed_point_up_sampling/mul_3MulAwav_analysis/wav_pooling/fixed_point_up_sampling/mul_3/x:output:0Iwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3:output:0*
T0*
_output_shapes
:28
6wav_analysis/wav_pooling/fixed_point_up_sampling/mul_3?
@wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_3ResizeBicubicEwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3:output:0:wav_analysis/wav_pooling/fixed_point_up_sampling/mul_3:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2B
@wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_3?
wav_analysis/wav_pooling/sub_3Sub;wav_analysis/fixed_point_pooling_1/strided_slice_2:output:0Qwav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_3:resized_images:0*
T0*/
_output_shapes
:?????????2 
wav_analysis/wav_pooling/sub_3y
wav_analysis/truediv_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?9=2
wav_analysis/truediv_3/y?
wav_analysis/truediv_3RealDiv"wav_analysis/wav_pooling/sub_3:z:0!wav_analysis/truediv_3/y:output:0*
T0*/
_output_shapes
:?????????2
wav_analysis/truediv_3?
8wav_analysis/fixed_point_pooling_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*%
valueB"                2:
8wav_analysis/fixed_point_pooling_1/strided_slice_3/stack?
:wav_analysis/fixed_point_pooling_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                2<
:wav_analysis/fixed_point_pooling_1/strided_slice_3/stack_1?
:wav_analysis/fixed_point_pooling_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            2<
:wav_analysis/fixed_point_pooling_1/strided_slice_3/stack_2?
2wav_analysis/fixed_point_pooling_1/strided_slice_3StridedSlice?wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3:output:0Awav_analysis/fixed_point_pooling_1/strided_slice_3/stack:output:0Cwav_analysis/fixed_point_pooling_1/strided_slice_3/stack_1:output:0Cwav_analysis/fixed_point_pooling_1/strided_slice_3/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????*

begin_mask*
end_mask24
2wav_analysis/fixed_point_pooling_1/strided_slice_3?
$wav_analysis/wav_pooling/MirrorPad_4	MirrorPad;wav_analysis/fixed_point_pooling_1/strided_slice_3:output:0+wav_analysis_wav_pooling_mirrorpad_paddings*
T0*/
_output_shapes
:?????????*
mode	SYMMETRIC2&
$wav_analysis/wav_pooling/MirrorPad_4?
Ewav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4/ReadVariableOpReadVariableOpLwav_analysis_wav_pooling_low_pass_filtering_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02G
Ewav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4/ReadVariableOp?
6wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4Conv2D-wav_analysis/wav_pooling/MirrorPad_4:output:0Mwav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
28
6wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4?
Bwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*%
valueB"                2D
Bwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4/stack?
Dwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                2F
Dwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4/stack_1?
Dwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            2F
Dwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4/stack_2?
<wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4StridedSlice?wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4:output:0Kwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4/stack:output:0Mwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4/stack_1:output:0Mwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????*

begin_mask*
end_mask2>
<wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4?
8wav_analysis/wav_pooling/fixed_point_up_sampling/Shape_4ShapeEwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4:output:0*
T0*
_output_shapes
:2:
8wav_analysis/wav_pooling/fixed_point_up_sampling/Shape_4?
Fwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:2H
Fwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4/stack?
Hwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2J
Hwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4/stack_1?
Hwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2J
Hwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4/stack_2?
@wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4StridedSliceAwav_analysis/wav_pooling/fixed_point_up_sampling/Shape_4:output:0Owav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4/stack:output:0Qwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4/stack_1:output:0Qwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
:2B
@wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4?
8wav_analysis/wav_pooling/fixed_point_up_sampling/mul_4/xConst*
_output_shapes
: *
dtype0*
value	B :2:
8wav_analysis/wav_pooling/fixed_point_up_sampling/mul_4/x?
6wav_analysis/wav_pooling/fixed_point_up_sampling/mul_4MulAwav_analysis/wav_pooling/fixed_point_up_sampling/mul_4/x:output:0Iwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4:output:0*
T0*
_output_shapes
:28
6wav_analysis/wav_pooling/fixed_point_up_sampling/mul_4?
@wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_4ResizeBicubicEwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4:output:0:wav_analysis/wav_pooling/fixed_point_up_sampling/mul_4:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2B
@wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_4?
wav_analysis/wav_pooling/sub_4Sub;wav_analysis/fixed_point_pooling_1/strided_slice_3:output:0Qwav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_4:resized_images:0*
T0*/
_output_shapes
:?????????2 
wav_analysis/wav_pooling/sub_4y
wav_analysis/truediv_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *?8?<2
wav_analysis/truediv_4/y?
wav_analysis/truediv_4RealDiv"wav_analysis/wav_pooling/sub_4:z:0!wav_analysis/truediv_4/y:output:0*
T0*/
_output_shapes
:?????????2
wav_analysis/truediv_4?
8wav_analysis/fixed_point_pooling_1/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*%
valueB"                2:
8wav_analysis/fixed_point_pooling_1/strided_slice_4/stack?
:wav_analysis/fixed_point_pooling_1/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                2<
:wav_analysis/fixed_point_pooling_1/strided_slice_4/stack_1?
:wav_analysis/fixed_point_pooling_1/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            2<
:wav_analysis/fixed_point_pooling_1/strided_slice_4/stack_2?
2wav_analysis/fixed_point_pooling_1/strided_slice_4StridedSlice?wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4:output:0Awav_analysis/fixed_point_pooling_1/strided_slice_4/stack:output:0Cwav_analysis/fixed_point_pooling_1/strided_slice_4/stack_1:output:0Cwav_analysis/fixed_point_pooling_1/strided_slice_4/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????*

begin_mask*
end_mask24
2wav_analysis/fixed_point_pooling_1/strided_slice_4?
&details_tiling_1/Conv2D/ReadVariableOpReadVariableOp/details_tiling_1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02(
&details_tiling_1/Conv2D/ReadVariableOp?
details_tiling_1/Conv2DConv2Dwav_analysis/truediv:z:0.details_tiling_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@*
paddingSAME*
strides
2
details_tiling_1/Conv2D?
&details_tiling_2/Conv2D/ReadVariableOpReadVariableOp/details_tiling_2_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02(
&details_tiling_2/Conv2D/ReadVariableOp?
details_tiling_2/Conv2DConv2Dwav_analysis/truediv_1:z:0.details_tiling_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @*
paddingSAME*
strides
2
details_tiling_2/Conv2D?
&details_tiling_3/Conv2D/ReadVariableOpReadVariableOp/details_tiling_3_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02(
&details_tiling_3/Conv2D/ReadVariableOp?
details_tiling_3/Conv2DConv2Dwav_analysis/truediv_2:z:0.details_tiling_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
details_tiling_3/Conv2D?
&details_tiling_4/Conv2D/ReadVariableOpReadVariableOp/details_tiling_4_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02(
&details_tiling_4/Conv2D/ReadVariableOp?
details_tiling_4/Conv2DConv2Dwav_analysis/truediv_3:z:0.details_tiling_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
details_tiling_4/Conv2D?
&details_tiling_5/Conv2D/ReadVariableOpReadVariableOp/details_tiling_5_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02(
&details_tiling_5/Conv2D/ReadVariableOp?
details_tiling_5/Conv2DConv2Dwav_analysis/truediv_4:z:0.details_tiling_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
details_tiling_5/Conv2D?
IdentityIdentity details_tiling_1/Conv2D:output:0'^details_tiling_1/Conv2D/ReadVariableOp'^details_tiling_2/Conv2D/ReadVariableOp'^details_tiling_3/Conv2D/ReadVariableOp'^details_tiling_4/Conv2D/ReadVariableOp'^details_tiling_5/Conv2D/ReadVariableOpD^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D/ReadVariableOpF^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1/ReadVariableOpF^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2/ReadVariableOpF^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3/ReadVariableOpF^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4/ReadVariableOp*
T0*/
_output_shapes
:?????????@@@2

Identity?

Identity_1Identity details_tiling_2/Conv2D:output:0'^details_tiling_1/Conv2D/ReadVariableOp'^details_tiling_2/Conv2D/ReadVariableOp'^details_tiling_3/Conv2D/ReadVariableOp'^details_tiling_4/Conv2D/ReadVariableOp'^details_tiling_5/Conv2D/ReadVariableOpD^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D/ReadVariableOpF^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1/ReadVariableOpF^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2/ReadVariableOpF^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3/ReadVariableOpF^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4/ReadVariableOp*
T0*/
_output_shapes
:?????????  @2

Identity_1?

Identity_2Identity details_tiling_3/Conv2D:output:0'^details_tiling_1/Conv2D/ReadVariableOp'^details_tiling_2/Conv2D/ReadVariableOp'^details_tiling_3/Conv2D/ReadVariableOp'^details_tiling_4/Conv2D/ReadVariableOp'^details_tiling_5/Conv2D/ReadVariableOpD^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D/ReadVariableOpF^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1/ReadVariableOpF^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2/ReadVariableOpF^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3/ReadVariableOpF^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity_2?

Identity_3Identity details_tiling_4/Conv2D:output:0'^details_tiling_1/Conv2D/ReadVariableOp'^details_tiling_2/Conv2D/ReadVariableOp'^details_tiling_3/Conv2D/ReadVariableOp'^details_tiling_4/Conv2D/ReadVariableOp'^details_tiling_5/Conv2D/ReadVariableOpD^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D/ReadVariableOpF^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1/ReadVariableOpF^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2/ReadVariableOpF^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3/ReadVariableOpF^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity_3?

Identity_4Identity details_tiling_5/Conv2D:output:0'^details_tiling_1/Conv2D/ReadVariableOp'^details_tiling_2/Conv2D/ReadVariableOp'^details_tiling_3/Conv2D/ReadVariableOp'^details_tiling_4/Conv2D/ReadVariableOp'^details_tiling_5/Conv2D/ReadVariableOpD^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D/ReadVariableOpF^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1/ReadVariableOpF^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2/ReadVariableOpF^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3/ReadVariableOpF^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity_4?

Identity_5Identity;wav_analysis/fixed_point_pooling_1/strided_slice_4:output:0'^details_tiling_1/Conv2D/ReadVariableOp'^details_tiling_2/Conv2D/ReadVariableOp'^details_tiling_3/Conv2D/ReadVariableOp'^details_tiling_4/Conv2D/ReadVariableOp'^details_tiling_5/Conv2D/ReadVariableOpD^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D/ReadVariableOpF^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1/ReadVariableOpF^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2/ReadVariableOpF^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3/ReadVariableOpF^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*P
_input_shapes?
=:?????????@@:::::::2P
&details_tiling_1/Conv2D/ReadVariableOp&details_tiling_1/Conv2D/ReadVariableOp2P
&details_tiling_2/Conv2D/ReadVariableOp&details_tiling_2/Conv2D/ReadVariableOp2P
&details_tiling_3/Conv2D/ReadVariableOp&details_tiling_3/Conv2D/ReadVariableOp2P
&details_tiling_4/Conv2D/ReadVariableOp&details_tiling_4/Conv2D/ReadVariableOp2P
&details_tiling_5/Conv2D/ReadVariableOp&details_tiling_5/Conv2D/ReadVariableOp2?
Cwav_analysis/wav_pooling/low_pass_filtering_1/Conv2D/ReadVariableOpCwav_analysis/wav_pooling/low_pass_filtering_1/Conv2D/ReadVariableOp2?
Ewav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1/ReadVariableOpEwav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1/ReadVariableOp2?
Ewav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2/ReadVariableOpEwav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2/ReadVariableOp2?
Ewav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3/ReadVariableOpEwav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3/ReadVariableOp2?
Ewav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4/ReadVariableOpEwav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4/ReadVariableOp:V R
/
_output_shapes
:?????????@@

_user_specified_nameimage:$ 

_output_shapes

:
??
?
#__inference__traced_restore_1917238
file_prefix'
#assignvariableop_normalisation_norm+
'assignvariableop_1_normalisation_1_norm+
'assignvariableop_2_normalisation_2_norm+
'assignvariableop_3_normalisation_3_norm+
'assignvariableop_4_normalisation_4_norm 
assignvariableop_5_adam_iter"
assignvariableop_6_adam_beta_1"
assignvariableop_7_adam_beta_2!
assignvariableop_8_adam_decay)
%assignvariableop_9_adam_learning_rateA
=assignvariableop_10_learnlet_analysis_details_tiling_1_kernelA
=assignvariableop_11_learnlet_analysis_details_tiling_2_kernelA
=assignvariableop_12_learnlet_analysis_details_tiling_3_kernelA
=assignvariableop_13_learnlet_analysis_details_tiling_4_kernelA
=assignvariableop_14_learnlet_analysis_details_tiling_5_kernel^
Zassignvariableop_15_learnlet_analysis_wav_analysis_wav_pooling_low_pass_filtering_1_kernelB
>assignvariableop_16_learnlet_synthesis_groupping_conv_1_kernelB
>assignvariableop_17_learnlet_synthesis_groupping_conv_2_kernelB
>assignvariableop_18_learnlet_synthesis_groupping_conv_3_kernelB
>assignvariableop_19_learnlet_synthesis_groupping_conv_4_kernelB
>assignvariableop_20_learnlet_synthesis_groupping_conv_5_kernel
assignvariableop_21_total
assignvariableop_22_count
assignvariableop_23_total_1
assignvariableop_24_count_1
assignvariableop_25_total_2
assignvariableop_26_count_2
assignvariableop_27_total_3
assignvariableop_28_count_3H
Dassignvariableop_29_adam_learnlet_analysis_details_tiling_1_kernel_mH
Dassignvariableop_30_adam_learnlet_analysis_details_tiling_2_kernel_mH
Dassignvariableop_31_adam_learnlet_analysis_details_tiling_3_kernel_mH
Dassignvariableop_32_adam_learnlet_analysis_details_tiling_4_kernel_mH
Dassignvariableop_33_adam_learnlet_analysis_details_tiling_5_kernel_mI
Eassignvariableop_34_adam_learnlet_synthesis_groupping_conv_1_kernel_mI
Eassignvariableop_35_adam_learnlet_synthesis_groupping_conv_2_kernel_mI
Eassignvariableop_36_adam_learnlet_synthesis_groupping_conv_3_kernel_mI
Eassignvariableop_37_adam_learnlet_synthesis_groupping_conv_4_kernel_mI
Eassignvariableop_38_adam_learnlet_synthesis_groupping_conv_5_kernel_mH
Dassignvariableop_39_adam_learnlet_analysis_details_tiling_1_kernel_vH
Dassignvariableop_40_adam_learnlet_analysis_details_tiling_2_kernel_vH
Dassignvariableop_41_adam_learnlet_analysis_details_tiling_3_kernel_vH
Dassignvariableop_42_adam_learnlet_analysis_details_tiling_4_kernel_vH
Dassignvariableop_43_adam_learnlet_analysis_details_tiling_5_kernel_vI
Eassignvariableop_44_adam_learnlet_synthesis_groupping_conv_1_kernel_vI
Eassignvariableop_45_adam_learnlet_synthesis_groupping_conv_2_kernel_vI
Eassignvariableop_46_adam_learnlet_synthesis_groupping_conv_3_kernel_vI
Eassignvariableop_47_adam_learnlet_synthesis_groupping_conv_4_kernel_vI
Eassignvariableop_48_adam_learnlet_synthesis_groupping_conv_5_kernel_v
identity_50??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:2*
dtype0*?
value?B?2B4layer_with_weights-1/norm/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/norm/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/norm/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/norm/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/norm/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:2*
dtype0*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::*@
dtypes6
422	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp#assignvariableop_normalisation_normIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp'assignvariableop_1_normalisation_1_normIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp'assignvariableop_2_normalisation_2_normIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp'assignvariableop_3_normalisation_3_normIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp'assignvariableop_4_normalisation_4_normIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_iterIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_1Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_2Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_decayIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp%assignvariableop_9_adam_learning_rateIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp=assignvariableop_10_learnlet_analysis_details_tiling_1_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp=assignvariableop_11_learnlet_analysis_details_tiling_2_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp=assignvariableop_12_learnlet_analysis_details_tiling_3_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp=assignvariableop_13_learnlet_analysis_details_tiling_4_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp=assignvariableop_14_learnlet_analysis_details_tiling_5_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpZassignvariableop_15_learnlet_analysis_wav_analysis_wav_pooling_low_pass_filtering_1_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp>assignvariableop_16_learnlet_synthesis_groupping_conv_1_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp>assignvariableop_17_learnlet_synthesis_groupping_conv_2_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp>assignvariableop_18_learnlet_synthesis_groupping_conv_3_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp>assignvariableop_19_learnlet_synthesis_groupping_conv_4_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp>assignvariableop_20_learnlet_synthesis_groupping_conv_5_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOpassignvariableop_21_totalIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOpassignvariableop_22_countIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOpassignvariableop_23_total_1Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOpassignvariableop_24_count_1Identity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOpassignvariableop_25_total_2Identity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOpassignvariableop_26_count_2Identity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOpassignvariableop_27_total_3Identity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOpassignvariableop_28_count_3Identity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOpDassignvariableop_29_adam_learnlet_analysis_details_tiling_1_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOpDassignvariableop_30_adam_learnlet_analysis_details_tiling_2_kernel_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOpDassignvariableop_31_adam_learnlet_analysis_details_tiling_3_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOpDassignvariableop_32_adam_learnlet_analysis_details_tiling_4_kernel_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOpDassignvariableop_33_adam_learnlet_analysis_details_tiling_5_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOpEassignvariableop_34_adam_learnlet_synthesis_groupping_conv_1_kernel_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOpEassignvariableop_35_adam_learnlet_synthesis_groupping_conv_2_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOpEassignvariableop_36_adam_learnlet_synthesis_groupping_conv_3_kernel_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOpEassignvariableop_37_adam_learnlet_synthesis_groupping_conv_4_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOpEassignvariableop_38_adam_learnlet_synthesis_groupping_conv_5_kernel_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOpDassignvariableop_39_adam_learnlet_analysis_details_tiling_1_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOpDassignvariableop_40_adam_learnlet_analysis_details_tiling_2_kernel_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOpDassignvariableop_41_adam_learnlet_analysis_details_tiling_3_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOpDassignvariableop_42_adam_learnlet_analysis_details_tiling_4_kernel_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOpDassignvariableop_43_adam_learnlet_analysis_details_tiling_5_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOpEassignvariableop_44_adam_learnlet_synthesis_groupping_conv_1_kernel_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOpEassignvariableop_45_adam_learnlet_synthesis_groupping_conv_2_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOpEassignvariableop_46_adam_learnlet_synthesis_groupping_conv_3_kernel_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOpEassignvariableop_47_adam_learnlet_synthesis_groupping_conv_4_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOpEassignvariableop_48_adam_learnlet_synthesis_groupping_conv_5_kernel_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_489
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?	
Identity_49Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_49?	
Identity_50IdentityIdentity_49:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_50"#
identity_50Identity_50:output:0*?
_input_shapes?
?: :::::::::::::::::::::::::::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
J
.__inference_thresholding_layer_call_fn_1916806

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_thresholding_layer_call_and_return_conditional_losses_19154682
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
J__inference_normalisation_layer_call_and_return_conditional_losses_1915526
x
mul_readvariableop_resource
identity??mul/ReadVariableOp?
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:@*
dtype02
mul/ReadVariableOpj
mulMulxmul/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@2
mulx
IdentityIdentitymul:z:0^mul/ReadVariableOp*
T0*/
_output_shapes
:?????????@@@2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????@@@:2(
mul/ReadVariableOpmul/ReadVariableOp:R N
/
_output_shapes
:?????????@@@

_user_specified_namex
?
?
L__inference_normalisation_1_layer_call_and_return_conditional_losses_1915432
x#
truediv_readvariableop_resource
identity??truediv/ReadVariableOp?
truediv/ReadVariableOpReadVariableOptruediv_readvariableop_resource*
_output_shapes
:@*
dtype02
truediv/ReadVariableOpz
truedivRealDivxtruediv/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @2	
truediv?
IdentityIdentitytruediv:z:0^truediv/ReadVariableOp*
T0*/
_output_shapes
:?????????  @2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????  @:20
truediv/ReadVariableOptruediv/ReadVariableOp:R N
/
_output_shapes
:?????????  @

_user_specified_namex
?
?
L__inference_normalisation_3_layer_call_and_return_conditional_losses_1915394
x#
truediv_readvariableop_resource
identity??truediv/ReadVariableOp?
truediv/ReadVariableOpReadVariableOptruediv_readvariableop_resource*
_output_shapes
:@*
dtype02
truediv/ReadVariableOpz
truedivRealDivxtruediv/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2	
truediv?
IdentityIdentitytruediv:z:0^truediv/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????@:20
truediv/ReadVariableOptruediv/ReadVariableOp:R N
/
_output_shapes
:?????????@

_user_specified_namex
?
?
'__inference_model_layer_call_fn_1915992
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_19159552
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@@2

Identity"
identityIdentity:output:0*x
_input_shapesg
e:?????????@@:::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:?????????@@
!
_user_specified_name	input_1:$ 

_output_shapes

:
?Y
?
B__inference_model_layer_call_and_return_conditional_losses_1915718
input_1
learnlet_analysis_1915348
learnlet_analysis_1915350
learnlet_analysis_1915352
learnlet_analysis_1915354
learnlet_analysis_1915356
learnlet_analysis_1915358
learnlet_analysis_1915360
normalisation_4_1915384
normalisation_3_1915403
normalisation_2_1915422
normalisation_1_1915441
normalisation_1915460
learnlet_synthesis_1915706
learnlet_synthesis_1915708
learnlet_synthesis_1915710
learnlet_synthesis_1915712
learnlet_synthesis_1915714
identity??)learnlet_analysis/StatefulPartitionedCall?*learnlet_synthesis/StatefulPartitionedCall?%normalisation/StatefulPartitionedCall?'normalisation/StatefulPartitionedCall_1?'normalisation_1/StatefulPartitionedCall?)normalisation_1/StatefulPartitionedCall_1?'normalisation_2/StatefulPartitionedCall?)normalisation_2/StatefulPartitionedCall_1?'normalisation_3/StatefulPartitionedCall?)normalisation_3/StatefulPartitionedCall_1?'normalisation_4/StatefulPartitionedCall?)normalisation_4/StatefulPartitionedCall_1?
)learnlet_analysis/StatefulPartitionedCallStatefulPartitionedCallinput_1learnlet_analysis_1915348learnlet_analysis_1915350learnlet_analysis_1915352learnlet_analysis_1915354learnlet_analysis_1915356learnlet_analysis_1915358learnlet_analysis_1915360*
Tin

2*
Tout

2*
_collective_manager_ids
 *?
_output_shapes?
?:?????????@@@:?????????  @:?????????@:?????????@:?????????@:?????????*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_learnlet_analysis_layer_call_and_return_conditional_losses_19153172+
)learnlet_analysis/StatefulPartitionedCall?
'normalisation_4/StatefulPartitionedCallStatefulPartitionedCall2learnlet_analysis/StatefulPartitionedCall:output:4normalisation_4_1915384*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_normalisation_4_layer_call_and_return_conditional_losses_19153752)
'normalisation_4/StatefulPartitionedCall?
'normalisation_3/StatefulPartitionedCallStatefulPartitionedCall2learnlet_analysis/StatefulPartitionedCall:output:3normalisation_3_1915403*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_normalisation_3_layer_call_and_return_conditional_losses_19153942)
'normalisation_3/StatefulPartitionedCall?
'normalisation_2/StatefulPartitionedCallStatefulPartitionedCall2learnlet_analysis/StatefulPartitionedCall:output:2normalisation_2_1915422*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_normalisation_2_layer_call_and_return_conditional_losses_19154132)
'normalisation_2/StatefulPartitionedCall?
'normalisation_1/StatefulPartitionedCallStatefulPartitionedCall2learnlet_analysis/StatefulPartitionedCall:output:1normalisation_1_1915441*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_normalisation_1_layer_call_and_return_conditional_losses_19154322)
'normalisation_1/StatefulPartitionedCall?
%normalisation/StatefulPartitionedCallStatefulPartitionedCall2learnlet_analysis/StatefulPartitionedCall:output:0normalisation_1915460*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_normalisation_layer_call_and_return_conditional_losses_19154512'
%normalisation/StatefulPartitionedCall?
thresholding/PartitionedCallPartitionedCall0normalisation_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_thresholding_layer_call_and_return_conditional_losses_19154682
thresholding/PartitionedCall?
thresholding/PartitionedCall_1PartitionedCall0normalisation_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_thresholding_layer_call_and_return_conditional_losses_19154802 
thresholding/PartitionedCall_1?
thresholding/PartitionedCall_2PartitionedCall0normalisation_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_thresholding_layer_call_and_return_conditional_losses_19154912 
thresholding/PartitionedCall_2?
thresholding/PartitionedCall_3PartitionedCall0normalisation_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_thresholding_layer_call_and_return_conditional_losses_19155022 
thresholding/PartitionedCall_3?
thresholding/PartitionedCall_4PartitionedCall.normalisation/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_thresholding_layer_call_and_return_conditional_losses_19155132 
thresholding/PartitionedCall_4?
'normalisation/StatefulPartitionedCall_1StatefulPartitionedCall'thresholding/PartitionedCall_4:output:0normalisation_1915460*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_normalisation_layer_call_and_return_conditional_losses_19155262)
'normalisation/StatefulPartitionedCall_1?
)normalisation_1/StatefulPartitionedCall_1StatefulPartitionedCall'thresholding/PartitionedCall_3:output:0normalisation_1_1915441*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_normalisation_1_layer_call_and_return_conditional_losses_19155422+
)normalisation_1/StatefulPartitionedCall_1?
)normalisation_2/StatefulPartitionedCall_1StatefulPartitionedCall'thresholding/PartitionedCall_2:output:0normalisation_2_1915422*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_normalisation_2_layer_call_and_return_conditional_losses_19155582+
)normalisation_2/StatefulPartitionedCall_1?
)normalisation_3/StatefulPartitionedCall_1StatefulPartitionedCall'thresholding/PartitionedCall_1:output:0normalisation_3_1915403*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_normalisation_3_layer_call_and_return_conditional_losses_19155742+
)normalisation_3/StatefulPartitionedCall_1?
)normalisation_4/StatefulPartitionedCall_1StatefulPartitionedCall%thresholding/PartitionedCall:output:0normalisation_4_1915384*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_normalisation_4_layer_call_and_return_conditional_losses_19155902+
)normalisation_4/StatefulPartitionedCall_1?
*learnlet_synthesis/StatefulPartitionedCallStatefulPartitionedCall0normalisation/StatefulPartitionedCall_1:output:02normalisation_1/StatefulPartitionedCall_1:output:02normalisation_2/StatefulPartitionedCall_1:output:02normalisation_3/StatefulPartitionedCall_1:output:02normalisation_4/StatefulPartitionedCall_1:output:02learnlet_analysis/StatefulPartitionedCall:output:5learnlet_synthesis_1915706learnlet_synthesis_1915708learnlet_synthesis_1915710learnlet_synthesis_1915712learnlet_synthesis_1915714*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*'
_read_only_resource_inputs	
	
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_learnlet_synthesis_layer_call_and_return_conditional_losses_19156842,
*learnlet_synthesis/StatefulPartitionedCall?
IdentityIdentity3learnlet_synthesis/StatefulPartitionedCall:output:0*^learnlet_analysis/StatefulPartitionedCall+^learnlet_synthesis/StatefulPartitionedCall&^normalisation/StatefulPartitionedCall(^normalisation/StatefulPartitionedCall_1(^normalisation_1/StatefulPartitionedCall*^normalisation_1/StatefulPartitionedCall_1(^normalisation_2/StatefulPartitionedCall*^normalisation_2/StatefulPartitionedCall_1(^normalisation_3/StatefulPartitionedCall*^normalisation_3/StatefulPartitionedCall_1(^normalisation_4/StatefulPartitionedCall*^normalisation_4/StatefulPartitionedCall_1*
T0*/
_output_shapes
:?????????@@2

Identity"
identityIdentity:output:0*x
_input_shapesg
e:?????????@@:::::::::::::::::2V
)learnlet_analysis/StatefulPartitionedCall)learnlet_analysis/StatefulPartitionedCall2X
*learnlet_synthesis/StatefulPartitionedCall*learnlet_synthesis/StatefulPartitionedCall2N
%normalisation/StatefulPartitionedCall%normalisation/StatefulPartitionedCall2R
'normalisation/StatefulPartitionedCall_1'normalisation/StatefulPartitionedCall_12R
'normalisation_1/StatefulPartitionedCall'normalisation_1/StatefulPartitionedCall2V
)normalisation_1/StatefulPartitionedCall_1)normalisation_1/StatefulPartitionedCall_12R
'normalisation_2/StatefulPartitionedCall'normalisation_2/StatefulPartitionedCall2V
)normalisation_2/StatefulPartitionedCall_1)normalisation_2/StatefulPartitionedCall_12R
'normalisation_3/StatefulPartitionedCall'normalisation_3/StatefulPartitionedCall2V
)normalisation_3/StatefulPartitionedCall_1)normalisation_3/StatefulPartitionedCall_12R
'normalisation_4/StatefulPartitionedCall'normalisation_4/StatefulPartitionedCall2V
)normalisation_4/StatefulPartitionedCall_1)normalisation_4/StatefulPartitionedCall_1:X T
/
_output_shapes
:?????????@@
!
_user_specified_name	input_1:$ 

_output_shapes

:
??
?
"__inference__wrapped_model_1915177
input_1G
Cmodel_learnlet_analysis_wav_analysis_wav_pooling_mirrorpad_paddingsh
dmodel_learnlet_analysis_wav_analysis_wav_pooling_low_pass_filtering_1_conv2d_readvariableop_resourceK
Gmodel_learnlet_analysis_details_tiling_1_conv2d_readvariableop_resourceK
Gmodel_learnlet_analysis_details_tiling_2_conv2d_readvariableop_resourceK
Gmodel_learnlet_analysis_details_tiling_3_conv2d_readvariableop_resourceK
Gmodel_learnlet_analysis_details_tiling_4_conv2d_readvariableop_resourceK
Gmodel_learnlet_analysis_details_tiling_5_conv2d_readvariableop_resource9
5model_normalisation_4_truediv_readvariableop_resource9
5model_normalisation_3_truediv_readvariableop_resource9
5model_normalisation_2_truediv_readvariableop_resource9
5model_normalisation_1_truediv_readvariableop_resource7
3model_normalisation_truediv_readvariableop_resourceL
Hmodel_learnlet_synthesis_groupping_conv_1_conv2d_readvariableop_resourceL
Hmodel_learnlet_synthesis_groupping_conv_2_conv2d_readvariableop_resourceL
Hmodel_learnlet_synthesis_groupping_conv_3_conv2d_readvariableop_resourceL
Hmodel_learnlet_synthesis_groupping_conv_4_conv2d_readvariableop_resourceL
Hmodel_learnlet_synthesis_groupping_conv_5_conv2d_readvariableop_resource
identity??>model/learnlet_analysis/details_tiling_1/Conv2D/ReadVariableOp?>model/learnlet_analysis/details_tiling_2/Conv2D/ReadVariableOp?>model/learnlet_analysis/details_tiling_3/Conv2D/ReadVariableOp?>model/learnlet_analysis/details_tiling_4/Conv2D/ReadVariableOp?>model/learnlet_analysis/details_tiling_5/Conv2D/ReadVariableOp?[model/learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D/ReadVariableOp?]model/learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1/ReadVariableOp?]model/learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2/ReadVariableOp?]model/learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3/ReadVariableOp?]model/learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4/ReadVariableOp??model/learnlet_synthesis/groupping_conv_1/Conv2D/ReadVariableOp??model/learnlet_synthesis/groupping_conv_2/Conv2D/ReadVariableOp??model/learnlet_synthesis/groupping_conv_3/Conv2D/ReadVariableOp??model/learnlet_synthesis/groupping_conv_4/Conv2D/ReadVariableOp??model/learnlet_synthesis/groupping_conv_5/Conv2D/ReadVariableOp?&model/normalisation/mul/ReadVariableOp?*model/normalisation/truediv/ReadVariableOp?(model/normalisation_1/mul/ReadVariableOp?,model/normalisation_1/truediv/ReadVariableOp?(model/normalisation_2/mul/ReadVariableOp?,model/normalisation_2/truediv/ReadVariableOp?(model/normalisation_3/mul/ReadVariableOp?,model/normalisation_3/truediv/ReadVariableOp?(model/normalisation_4/mul/ReadVariableOp?,model/normalisation_4/truediv/ReadVariableOp?
:model/learnlet_analysis/wav_analysis/wav_pooling/MirrorPad	MirrorPadinput_1Cmodel_learnlet_analysis_wav_analysis_wav_pooling_mirrorpad_paddings*
T0*/
_output_shapes
:?????????DD*
mode	SYMMETRIC2<
:model/learnlet_analysis/wav_analysis/wav_pooling/MirrorPad?
[model/learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D/ReadVariableOpReadVariableOpdmodel_learnlet_analysis_wav_analysis_wav_pooling_low_pass_filtering_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02]
[model/learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D/ReadVariableOp?
Lmodel/learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2DConv2DCmodel/learnlet_analysis/wav_analysis/wav_pooling/MirrorPad:output:0cmodel/learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@*
paddingVALID*
strides
2N
Lmodel/learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D?
Xmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice/stackConst*
_output_shapes
:*
dtype0*%
valueB"                2Z
Xmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice/stack?
Zmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                2\
Zmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice/stack_1?
Zmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            2\
Zmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice/stack_2?
Rmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_sliceStridedSliceUmodel/learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D:output:0amodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice/stack:output:0cmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice/stack_1:output:0cmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????  *

begin_mask*
end_mask2T
Rmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice?
Nmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/ShapeShape[model/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice:output:0*
T0*
_output_shapes
:2P
Nmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/Shape?
\model/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2^
\model/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice/stack?
^model/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2`
^model/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice/stack_1?
^model/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2`
^model/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice/stack_2?
Vmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_sliceStridedSliceWmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/Shape:output:0emodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice/stack:output:0gmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice/stack_1:output:0gmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2X
Vmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice?
Nmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul/xConst*
_output_shapes
: *
dtype0*
value	B :2P
Nmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul/x?
Lmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mulMulWmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul/x:output:0_model/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice:output:0*
T0*
_output_shapes
:2N
Lmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul?
Vmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubicResizeBicubic[model/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice:output:0Pmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2X
Vmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic?
4model/learnlet_analysis/wav_analysis/wav_pooling/subSubinput_1gmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic:resized_images:0*
T0*/
_output_shapes
:?????????@@26
4model/learnlet_analysis/wav_analysis/wav_pooling/sub?
.model/learnlet_analysis/wav_analysis/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *??j?20
.model/learnlet_analysis/wav_analysis/truediv/y?
,model/learnlet_analysis/wav_analysis/truedivRealDiv8model/learnlet_analysis/wav_analysis/wav_pooling/sub:z:07model/learnlet_analysis/wav_analysis/truediv/y:output:0*
T0*/
_output_shapes
:?????????@@2.
,model/learnlet_analysis/wav_analysis/truediv?
Nmodel/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*%
valueB"                2P
Nmodel/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice/stack?
Pmodel/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                2R
Pmodel/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice/stack_1?
Pmodel/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            2R
Pmodel/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice/stack_2?
Hmodel/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_sliceStridedSliceUmodel/learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D:output:0Wmodel/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice/stack:output:0Ymodel/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice/stack_1:output:0Ymodel/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????  *

begin_mask*
end_mask2J
Hmodel/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice?
<model/learnlet_analysis/wav_analysis/wav_pooling/MirrorPad_1	MirrorPadQmodel/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice:output:0Cmodel_learnlet_analysis_wav_analysis_wav_pooling_mirrorpad_paddings*
T0*/
_output_shapes
:?????????$$*
mode	SYMMETRIC2>
<model/learnlet_analysis/wav_analysis/wav_pooling/MirrorPad_1?
]model/learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1/ReadVariableOpReadVariableOpdmodel_learnlet_analysis_wav_analysis_wav_pooling_low_pass_filtering_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02_
]model/learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1/ReadVariableOp?
Nmodel/learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1Conv2DEmodel/learnlet_analysis/wav_analysis/wav_pooling/MirrorPad_1:output:0emodel/learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  *
paddingVALID*
strides
2P
Nmodel/learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1?
Zmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*%
valueB"                2\
Zmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1/stack?
\model/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                2^
\model/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1/stack_1?
\model/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            2^
\model/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1/stack_2?
Tmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1StridedSliceWmodel/learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1:output:0cmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1/stack:output:0emodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1/stack_1:output:0emodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????*

begin_mask*
end_mask2V
Tmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1?
Pmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/Shape_1Shape]model/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1:output:0*
T0*
_output_shapes
:2R
Pmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/Shape_1?
^model/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2`
^model/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1/stack?
`model/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2b
`model/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1/stack_1?
`model/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2b
`model/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1/stack_2?
Xmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1StridedSliceYmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/Shape_1:output:0gmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1/stack:output:0imodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1/stack_1:output:0imodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:2Z
Xmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1?
Pmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :2R
Pmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_1/x?
Nmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_1MulYmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_1/x:output:0amodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1:output:0*
T0*
_output_shapes
:2P
Nmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_1?
Xmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_1ResizeBicubic]model/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1:output:0Rmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_1:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2Z
Xmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_1?
6model/learnlet_analysis/wav_analysis/wav_pooling/sub_1SubQmodel/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice:output:0imodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_1:resized_images:0*
T0*/
_output_shapes
:?????????  28
6model/learnlet_analysis/wav_analysis/wav_pooling/sub_1?
0model/learnlet_analysis/wav_analysis/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *??Z>22
0model/learnlet_analysis/wav_analysis/truediv_1/y?
.model/learnlet_analysis/wav_analysis/truediv_1RealDiv:model/learnlet_analysis/wav_analysis/wav_pooling/sub_1:z:09model/learnlet_analysis/wav_analysis/truediv_1/y:output:0*
T0*/
_output_shapes
:?????????  20
.model/learnlet_analysis/wav_analysis/truediv_1?
Pmodel/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*%
valueB"                2R
Pmodel/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_1/stack?
Rmodel/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                2T
Rmodel/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_1/stack_1?
Rmodel/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            2T
Rmodel/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_1/stack_2?
Jmodel/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_1StridedSliceWmodel/learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1:output:0Ymodel/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_1/stack:output:0[model/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_1/stack_1:output:0[model/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????*

begin_mask*
end_mask2L
Jmodel/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_1?
<model/learnlet_analysis/wav_analysis/wav_pooling/MirrorPad_2	MirrorPadSmodel/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_1:output:0Cmodel_learnlet_analysis_wav_analysis_wav_pooling_mirrorpad_paddings*
T0*/
_output_shapes
:?????????*
mode	SYMMETRIC2>
<model/learnlet_analysis/wav_analysis/wav_pooling/MirrorPad_2?
]model/learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2/ReadVariableOpReadVariableOpdmodel_learnlet_analysis_wav_analysis_wav_pooling_low_pass_filtering_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02_
]model/learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2/ReadVariableOp?
Nmodel/learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2Conv2DEmodel/learnlet_analysis/wav_analysis/wav_pooling/MirrorPad_2:output:0emodel/learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2P
Nmodel/learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2?
Zmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*%
valueB"                2\
Zmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2/stack?
\model/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                2^
\model/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2/stack_1?
\model/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            2^
\model/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2/stack_2?
Tmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2StridedSliceWmodel/learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2:output:0cmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2/stack:output:0emodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2/stack_1:output:0emodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????*

begin_mask*
end_mask2V
Tmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2?
Pmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/Shape_2Shape]model/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2:output:0*
T0*
_output_shapes
:2R
Pmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/Shape_2?
^model/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2`
^model/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2/stack?
`model/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2b
`model/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2/stack_1?
`model/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2b
`model/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2/stack_2?
Xmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2StridedSliceYmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/Shape_2:output:0gmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2/stack:output:0imodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2/stack_1:output:0imodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:2Z
Xmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2?
Pmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :2R
Pmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_2/x?
Nmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_2MulYmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_2/x:output:0amodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2:output:0*
T0*
_output_shapes
:2P
Nmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_2?
Xmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_2ResizeBicubic]model/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2:output:0Rmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_2:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2Z
Xmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_2?
6model/learnlet_analysis/wav_analysis/wav_pooling/sub_2SubSmodel/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_1:output:0imodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_2:resized_images:0*
T0*/
_output_shapes
:?????????28
6model/learnlet_analysis/wav_analysis/wav_pooling/sub_2?
0model/learnlet_analysis/wav_analysis/truediv_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *J??=22
0model/learnlet_analysis/wav_analysis/truediv_2/y?
.model/learnlet_analysis/wav_analysis/truediv_2RealDiv:model/learnlet_analysis/wav_analysis/wav_pooling/sub_2:z:09model/learnlet_analysis/wav_analysis/truediv_2/y:output:0*
T0*/
_output_shapes
:?????????20
.model/learnlet_analysis/wav_analysis/truediv_2?
Pmodel/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*%
valueB"                2R
Pmodel/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_2/stack?
Rmodel/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                2T
Rmodel/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_2/stack_1?
Rmodel/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            2T
Rmodel/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_2/stack_2?
Jmodel/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_2StridedSliceWmodel/learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2:output:0Ymodel/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_2/stack:output:0[model/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_2/stack_1:output:0[model/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????*

begin_mask*
end_mask2L
Jmodel/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_2?
<model/learnlet_analysis/wav_analysis/wav_pooling/MirrorPad_3	MirrorPadSmodel/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_2:output:0Cmodel_learnlet_analysis_wav_analysis_wav_pooling_mirrorpad_paddings*
T0*/
_output_shapes
:?????????*
mode	SYMMETRIC2>
<model/learnlet_analysis/wav_analysis/wav_pooling/MirrorPad_3?
]model/learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3/ReadVariableOpReadVariableOpdmodel_learnlet_analysis_wav_analysis_wav_pooling_low_pass_filtering_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02_
]model/learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3/ReadVariableOp?
Nmodel/learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3Conv2DEmodel/learnlet_analysis/wav_analysis/wav_pooling/MirrorPad_3:output:0emodel/learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2P
Nmodel/learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3?
Zmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*%
valueB"                2\
Zmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3/stack?
\model/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                2^
\model/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3/stack_1?
\model/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            2^
\model/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3/stack_2?
Tmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3StridedSliceWmodel/learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3:output:0cmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3/stack:output:0emodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3/stack_1:output:0emodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????*

begin_mask*
end_mask2V
Tmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3?
Pmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/Shape_3Shape]model/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3:output:0*
T0*
_output_shapes
:2R
Pmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/Shape_3?
^model/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2`
^model/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3/stack?
`model/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2b
`model/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3/stack_1?
`model/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2b
`model/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3/stack_2?
Xmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3StridedSliceYmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/Shape_3:output:0gmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3/stack:output:0imodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3/stack_1:output:0imodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:2Z
Xmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3?
Pmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :2R
Pmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_3/x?
Nmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_3MulYmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_3/x:output:0amodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3:output:0*
T0*
_output_shapes
:2P
Nmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_3?
Xmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_3ResizeBicubic]model/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3:output:0Rmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_3:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2Z
Xmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_3?
6model/learnlet_analysis/wav_analysis/wav_pooling/sub_3SubSmodel/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_2:output:0imodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_3:resized_images:0*
T0*/
_output_shapes
:?????????28
6model/learnlet_analysis/wav_analysis/wav_pooling/sub_3?
0model/learnlet_analysis/wav_analysis/truediv_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?9=22
0model/learnlet_analysis/wav_analysis/truediv_3/y?
.model/learnlet_analysis/wav_analysis/truediv_3RealDiv:model/learnlet_analysis/wav_analysis/wav_pooling/sub_3:z:09model/learnlet_analysis/wav_analysis/truediv_3/y:output:0*
T0*/
_output_shapes
:?????????20
.model/learnlet_analysis/wav_analysis/truediv_3?
Pmodel/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*%
valueB"                2R
Pmodel/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_3/stack?
Rmodel/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                2T
Rmodel/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_3/stack_1?
Rmodel/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            2T
Rmodel/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_3/stack_2?
Jmodel/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_3StridedSliceWmodel/learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3:output:0Ymodel/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_3/stack:output:0[model/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_3/stack_1:output:0[model/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_3/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????*

begin_mask*
end_mask2L
Jmodel/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_3?
<model/learnlet_analysis/wav_analysis/wav_pooling/MirrorPad_4	MirrorPadSmodel/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_3:output:0Cmodel_learnlet_analysis_wav_analysis_wav_pooling_mirrorpad_paddings*
T0*/
_output_shapes
:?????????*
mode	SYMMETRIC2>
<model/learnlet_analysis/wav_analysis/wav_pooling/MirrorPad_4?
]model/learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4/ReadVariableOpReadVariableOpdmodel_learnlet_analysis_wav_analysis_wav_pooling_low_pass_filtering_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02_
]model/learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4/ReadVariableOp?
Nmodel/learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4Conv2DEmodel/learnlet_analysis/wav_analysis/wav_pooling/MirrorPad_4:output:0emodel/learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2P
Nmodel/learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4?
Zmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*%
valueB"                2\
Zmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4/stack?
\model/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                2^
\model/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4/stack_1?
\model/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            2^
\model/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4/stack_2?
Tmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4StridedSliceWmodel/learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4:output:0cmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4/stack:output:0emodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4/stack_1:output:0emodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????*

begin_mask*
end_mask2V
Tmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4?
Pmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/Shape_4Shape]model/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4:output:0*
T0*
_output_shapes
:2R
Pmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/Shape_4?
^model/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:2`
^model/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4/stack?
`model/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2b
`model/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4/stack_1?
`model/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2b
`model/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4/stack_2?
Xmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4StridedSliceYmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/Shape_4:output:0gmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4/stack:output:0imodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4/stack_1:output:0imodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
:2Z
Xmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4?
Pmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_4/xConst*
_output_shapes
: *
dtype0*
value	B :2R
Pmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_4/x?
Nmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_4MulYmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_4/x:output:0amodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4:output:0*
T0*
_output_shapes
:2P
Nmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_4?
Xmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_4ResizeBicubic]model/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4:output:0Rmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_4:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2Z
Xmodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_4?
6model/learnlet_analysis/wav_analysis/wav_pooling/sub_4SubSmodel/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_3:output:0imodel/learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_4:resized_images:0*
T0*/
_output_shapes
:?????????28
6model/learnlet_analysis/wav_analysis/wav_pooling/sub_4?
0model/learnlet_analysis/wav_analysis/truediv_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *?8?<22
0model/learnlet_analysis/wav_analysis/truediv_4/y?
.model/learnlet_analysis/wav_analysis/truediv_4RealDiv:model/learnlet_analysis/wav_analysis/wav_pooling/sub_4:z:09model/learnlet_analysis/wav_analysis/truediv_4/y:output:0*
T0*/
_output_shapes
:?????????20
.model/learnlet_analysis/wav_analysis/truediv_4?
Pmodel/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*%
valueB"                2R
Pmodel/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_4/stack?
Rmodel/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                2T
Rmodel/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_4/stack_1?
Rmodel/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            2T
Rmodel/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_4/stack_2?
Jmodel/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_4StridedSliceWmodel/learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4:output:0Ymodel/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_4/stack:output:0[model/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_4/stack_1:output:0[model/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_4/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????*

begin_mask*
end_mask2L
Jmodel/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_4?
>model/learnlet_analysis/details_tiling_1/Conv2D/ReadVariableOpReadVariableOpGmodel_learnlet_analysis_details_tiling_1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02@
>model/learnlet_analysis/details_tiling_1/Conv2D/ReadVariableOp?
/model/learnlet_analysis/details_tiling_1/Conv2DConv2D0model/learnlet_analysis/wav_analysis/truediv:z:0Fmodel/learnlet_analysis/details_tiling_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@*
paddingSAME*
strides
21
/model/learnlet_analysis/details_tiling_1/Conv2D?
>model/learnlet_analysis/details_tiling_2/Conv2D/ReadVariableOpReadVariableOpGmodel_learnlet_analysis_details_tiling_2_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02@
>model/learnlet_analysis/details_tiling_2/Conv2D/ReadVariableOp?
/model/learnlet_analysis/details_tiling_2/Conv2DConv2D2model/learnlet_analysis/wav_analysis/truediv_1:z:0Fmodel/learnlet_analysis/details_tiling_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @*
paddingSAME*
strides
21
/model/learnlet_analysis/details_tiling_2/Conv2D?
>model/learnlet_analysis/details_tiling_3/Conv2D/ReadVariableOpReadVariableOpGmodel_learnlet_analysis_details_tiling_3_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02@
>model/learnlet_analysis/details_tiling_3/Conv2D/ReadVariableOp?
/model/learnlet_analysis/details_tiling_3/Conv2DConv2D2model/learnlet_analysis/wav_analysis/truediv_2:z:0Fmodel/learnlet_analysis/details_tiling_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
21
/model/learnlet_analysis/details_tiling_3/Conv2D?
>model/learnlet_analysis/details_tiling_4/Conv2D/ReadVariableOpReadVariableOpGmodel_learnlet_analysis_details_tiling_4_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02@
>model/learnlet_analysis/details_tiling_4/Conv2D/ReadVariableOp?
/model/learnlet_analysis/details_tiling_4/Conv2DConv2D2model/learnlet_analysis/wav_analysis/truediv_3:z:0Fmodel/learnlet_analysis/details_tiling_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
21
/model/learnlet_analysis/details_tiling_4/Conv2D?
>model/learnlet_analysis/details_tiling_5/Conv2D/ReadVariableOpReadVariableOpGmodel_learnlet_analysis_details_tiling_5_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02@
>model/learnlet_analysis/details_tiling_5/Conv2D/ReadVariableOp?
/model/learnlet_analysis/details_tiling_5/Conv2DConv2D2model/learnlet_analysis/wav_analysis/truediv_4:z:0Fmodel/learnlet_analysis/details_tiling_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
21
/model/learnlet_analysis/details_tiling_5/Conv2D?
,model/normalisation_4/truediv/ReadVariableOpReadVariableOp5model_normalisation_4_truediv_readvariableop_resource*
_output_shapes
:@*
dtype02.
,model/normalisation_4/truediv/ReadVariableOp?
model/normalisation_4/truedivRealDiv8model/learnlet_analysis/details_tiling_5/Conv2D:output:04model/normalisation_4/truediv/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
model/normalisation_4/truediv?
,model/normalisation_3/truediv/ReadVariableOpReadVariableOp5model_normalisation_3_truediv_readvariableop_resource*
_output_shapes
:@*
dtype02.
,model/normalisation_3/truediv/ReadVariableOp?
model/normalisation_3/truedivRealDiv8model/learnlet_analysis/details_tiling_4/Conv2D:output:04model/normalisation_3/truediv/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
model/normalisation_3/truediv?
,model/normalisation_2/truediv/ReadVariableOpReadVariableOp5model_normalisation_2_truediv_readvariableop_resource*
_output_shapes
:@*
dtype02.
,model/normalisation_2/truediv/ReadVariableOp?
model/normalisation_2/truedivRealDiv8model/learnlet_analysis/details_tiling_3/Conv2D:output:04model/normalisation_2/truediv/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
model/normalisation_2/truediv?
,model/normalisation_1/truediv/ReadVariableOpReadVariableOp5model_normalisation_1_truediv_readvariableop_resource*
_output_shapes
:@*
dtype02.
,model/normalisation_1/truediv/ReadVariableOp?
model/normalisation_1/truedivRealDiv8model/learnlet_analysis/details_tiling_2/Conv2D:output:04model/normalisation_1/truediv/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @2
model/normalisation_1/truediv?
*model/normalisation/truediv/ReadVariableOpReadVariableOp3model_normalisation_truediv_readvariableop_resource*
_output_shapes
:@*
dtype02,
*model/normalisation/truediv/ReadVariableOp?
model/normalisation/truedivRealDiv8model/learnlet_analysis/details_tiling_1/Conv2D:output:02model/normalisation/truediv/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@2
model/normalisation/truediv?
model/thresholding/ReluRelu!model/normalisation_4/truediv:z:0*
T0*/
_output_shapes
:?????????@2
model/thresholding/Relu?
model/thresholding/Relu_1Relu!model/normalisation_3/truediv:z:0*
T0*/
_output_shapes
:?????????@2
model/thresholding/Relu_1?
model/thresholding/Relu_2Relu!model/normalisation_2/truediv:z:0*
T0*/
_output_shapes
:?????????@2
model/thresholding/Relu_2?
model/thresholding/Relu_3Relu!model/normalisation_1/truediv:z:0*
T0*/
_output_shapes
:?????????  @2
model/thresholding/Relu_3?
model/thresholding/Relu_4Relumodel/normalisation/truediv:z:0*
T0*/
_output_shapes
:?????????@@@2
model/thresholding/Relu_4?
&model/normalisation/mul/ReadVariableOpReadVariableOp3model_normalisation_truediv_readvariableop_resource*
_output_shapes
:@*
dtype02(
&model/normalisation/mul/ReadVariableOp?
model/normalisation/mulMul'model/thresholding/Relu_4:activations:0.model/normalisation/mul/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@2
model/normalisation/mul?
(model/normalisation_1/mul/ReadVariableOpReadVariableOp5model_normalisation_1_truediv_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model/normalisation_1/mul/ReadVariableOp?
model/normalisation_1/mulMul'model/thresholding/Relu_3:activations:00model/normalisation_1/mul/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @2
model/normalisation_1/mul?
(model/normalisation_2/mul/ReadVariableOpReadVariableOp5model_normalisation_2_truediv_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model/normalisation_2/mul/ReadVariableOp?
model/normalisation_2/mulMul'model/thresholding/Relu_2:activations:00model/normalisation_2/mul/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
model/normalisation_2/mul?
(model/normalisation_3/mul/ReadVariableOpReadVariableOp5model_normalisation_3_truediv_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model/normalisation_3/mul/ReadVariableOp?
model/normalisation_3/mulMul'model/thresholding/Relu_1:activations:00model/normalisation_3/mul/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
model/normalisation_3/mul?
(model/normalisation_4/mul/ReadVariableOpReadVariableOp5model_normalisation_4_truediv_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model/normalisation_4/mul/ReadVariableOp?
model/normalisation_4/mulMul%model/thresholding/Relu:activations:00model/normalisation_4/mul/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
model/normalisation_4/mul?
8model/learnlet_synthesis/fixed_point_up_sampling_1/ShapeShapeSmodel/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_4:output:0*
T0*
_output_shapes
:2:
8model/learnlet_synthesis/fixed_point_up_sampling_1/Shape?
Fmodel/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2H
Fmodel/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice/stack?
Hmodel/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2J
Hmodel/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice/stack_1?
Hmodel/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2J
Hmodel/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice/stack_2?
@model/learnlet_synthesis/fixed_point_up_sampling_1/strided_sliceStridedSliceAmodel/learnlet_synthesis/fixed_point_up_sampling_1/Shape:output:0Omodel/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice/stack:output:0Qmodel/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice/stack_1:output:0Qmodel/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2B
@model/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice?
8model/learnlet_synthesis/fixed_point_up_sampling_1/mul/xConst*
_output_shapes
: *
dtype0*
value	B :2:
8model/learnlet_synthesis/fixed_point_up_sampling_1/mul/x?
6model/learnlet_synthesis/fixed_point_up_sampling_1/mulMulAmodel/learnlet_synthesis/fixed_point_up_sampling_1/mul/x:output:0Imodel/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice:output:0*
T0*
_output_shapes
:28
6model/learnlet_synthesis/fixed_point_up_sampling_1/mul?
@model/learnlet_synthesis/fixed_point_up_sampling_1/ResizeBicubicResizeBicubicSmodel/learnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_4:output:0:model/learnlet_synthesis/fixed_point_up_sampling_1/mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2B
@model/learnlet_synthesis/fixed_point_up_sampling_1/ResizeBicubic?
model/learnlet_synthesis/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *?8?<2 
model/learnlet_synthesis/mul/y?
model/learnlet_synthesis/mulMulmodel/normalisation_4/mul:z:0'model/learnlet_synthesis/mul/y:output:0*
T0*/
_output_shapes
:?????????@2
model/learnlet_synthesis/mul?
$model/learnlet_synthesis/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2&
$model/learnlet_synthesis/concat/axis?
model/learnlet_synthesis/concatConcatV2Qmodel/learnlet_synthesis/fixed_point_up_sampling_1/ResizeBicubic:resized_images:0 model/learnlet_synthesis/mul:z:0-model/learnlet_synthesis/concat/axis:output:0*
N*
T0*/
_output_shapes
:?????????A2!
model/learnlet_synthesis/concat?
?model/learnlet_synthesis/groupping_conv_1/Conv2D/ReadVariableOpReadVariableOpHmodel_learnlet_synthesis_groupping_conv_1_conv2d_readvariableop_resource*&
_output_shapes
:A*
dtype02A
?model/learnlet_synthesis/groupping_conv_1/Conv2D/ReadVariableOp?
0model/learnlet_synthesis/groupping_conv_1/Conv2DConv2D(model/learnlet_synthesis/concat:output:0Gmodel/learnlet_synthesis/groupping_conv_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
22
0model/learnlet_synthesis/groupping_conv_1/Conv2D?
:model/learnlet_synthesis/fixed_point_up_sampling_1/Shape_1Shape9model/learnlet_synthesis/groupping_conv_1/Conv2D:output:0*
T0*
_output_shapes
:2<
:model/learnlet_synthesis/fixed_point_up_sampling_1/Shape_1?
Hmodel/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2J
Hmodel/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_1/stack?
Jmodel/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2L
Jmodel/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_1/stack_1?
Jmodel/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2L
Jmodel/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_1/stack_2?
Bmodel/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_1StridedSliceCmodel/learnlet_synthesis/fixed_point_up_sampling_1/Shape_1:output:0Qmodel/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_1/stack:output:0Smodel/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_1/stack_1:output:0Smodel/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:2D
Bmodel/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_1?
:model/learnlet_synthesis/fixed_point_up_sampling_1/mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :2<
:model/learnlet_synthesis/fixed_point_up_sampling_1/mul_1/x?
8model/learnlet_synthesis/fixed_point_up_sampling_1/mul_1MulCmodel/learnlet_synthesis/fixed_point_up_sampling_1/mul_1/x:output:0Kmodel/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_1:output:0*
T0*
_output_shapes
:2:
8model/learnlet_synthesis/fixed_point_up_sampling_1/mul_1?
Bmodel/learnlet_synthesis/fixed_point_up_sampling_1/ResizeBicubic_1ResizeBicubic9model/learnlet_synthesis/groupping_conv_1/Conv2D:output:0<model/learnlet_synthesis/fixed_point_up_sampling_1/mul_1:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2D
Bmodel/learnlet_synthesis/fixed_point_up_sampling_1/ResizeBicubic_1?
 model/learnlet_synthesis/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?9=2"
 model/learnlet_synthesis/mul_1/y?
model/learnlet_synthesis/mul_1Mulmodel/normalisation_3/mul:z:0)model/learnlet_synthesis/mul_1/y:output:0*
T0*/
_output_shapes
:?????????@2 
model/learnlet_synthesis/mul_1?
&model/learnlet_synthesis/concat_1/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2(
&model/learnlet_synthesis/concat_1/axis?
!model/learnlet_synthesis/concat_1ConcatV2Smodel/learnlet_synthesis/fixed_point_up_sampling_1/ResizeBicubic_1:resized_images:0"model/learnlet_synthesis/mul_1:z:0/model/learnlet_synthesis/concat_1/axis:output:0*
N*
T0*/
_output_shapes
:?????????A2#
!model/learnlet_synthesis/concat_1?
?model/learnlet_synthesis/groupping_conv_2/Conv2D/ReadVariableOpReadVariableOpHmodel_learnlet_synthesis_groupping_conv_2_conv2d_readvariableop_resource*&
_output_shapes
:A*
dtype02A
?model/learnlet_synthesis/groupping_conv_2/Conv2D/ReadVariableOp?
0model/learnlet_synthesis/groupping_conv_2/Conv2DConv2D*model/learnlet_synthesis/concat_1:output:0Gmodel/learnlet_synthesis/groupping_conv_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
22
0model/learnlet_synthesis/groupping_conv_2/Conv2D?
:model/learnlet_synthesis/fixed_point_up_sampling_1/Shape_2Shape9model/learnlet_synthesis/groupping_conv_2/Conv2D:output:0*
T0*
_output_shapes
:2<
:model/learnlet_synthesis/fixed_point_up_sampling_1/Shape_2?
Hmodel/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2J
Hmodel/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_2/stack?
Jmodel/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2L
Jmodel/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_2/stack_1?
Jmodel/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2L
Jmodel/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_2/stack_2?
Bmodel/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_2StridedSliceCmodel/learnlet_synthesis/fixed_point_up_sampling_1/Shape_2:output:0Qmodel/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_2/stack:output:0Smodel/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_2/stack_1:output:0Smodel/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:2D
Bmodel/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_2?
:model/learnlet_synthesis/fixed_point_up_sampling_1/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :2<
:model/learnlet_synthesis/fixed_point_up_sampling_1/mul_2/x?
8model/learnlet_synthesis/fixed_point_up_sampling_1/mul_2MulCmodel/learnlet_synthesis/fixed_point_up_sampling_1/mul_2/x:output:0Kmodel/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_2:output:0*
T0*
_output_shapes
:2:
8model/learnlet_synthesis/fixed_point_up_sampling_1/mul_2?
Bmodel/learnlet_synthesis/fixed_point_up_sampling_1/ResizeBicubic_2ResizeBicubic9model/learnlet_synthesis/groupping_conv_2/Conv2D:output:0<model/learnlet_synthesis/fixed_point_up_sampling_1/mul_2:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2D
Bmodel/learnlet_synthesis/fixed_point_up_sampling_1/ResizeBicubic_2?
 model/learnlet_synthesis/mul_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *J??=2"
 model/learnlet_synthesis/mul_2/y?
model/learnlet_synthesis/mul_2Mulmodel/normalisation_2/mul:z:0)model/learnlet_synthesis/mul_2/y:output:0*
T0*/
_output_shapes
:?????????@2 
model/learnlet_synthesis/mul_2?
&model/learnlet_synthesis/concat_2/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2(
&model/learnlet_synthesis/concat_2/axis?
!model/learnlet_synthesis/concat_2ConcatV2Smodel/learnlet_synthesis/fixed_point_up_sampling_1/ResizeBicubic_2:resized_images:0"model/learnlet_synthesis/mul_2:z:0/model/learnlet_synthesis/concat_2/axis:output:0*
N*
T0*/
_output_shapes
:?????????A2#
!model/learnlet_synthesis/concat_2?
?model/learnlet_synthesis/groupping_conv_3/Conv2D/ReadVariableOpReadVariableOpHmodel_learnlet_synthesis_groupping_conv_3_conv2d_readvariableop_resource*&
_output_shapes
:A*
dtype02A
?model/learnlet_synthesis/groupping_conv_3/Conv2D/ReadVariableOp?
0model/learnlet_synthesis/groupping_conv_3/Conv2DConv2D*model/learnlet_synthesis/concat_2:output:0Gmodel/learnlet_synthesis/groupping_conv_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
22
0model/learnlet_synthesis/groupping_conv_3/Conv2D?
:model/learnlet_synthesis/fixed_point_up_sampling_1/Shape_3Shape9model/learnlet_synthesis/groupping_conv_3/Conv2D:output:0*
T0*
_output_shapes
:2<
:model/learnlet_synthesis/fixed_point_up_sampling_1/Shape_3?
Hmodel/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2J
Hmodel/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_3/stack?
Jmodel/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2L
Jmodel/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_3/stack_1?
Jmodel/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2L
Jmodel/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_3/stack_2?
Bmodel/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_3StridedSliceCmodel/learnlet_synthesis/fixed_point_up_sampling_1/Shape_3:output:0Qmodel/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_3/stack:output:0Smodel/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_3/stack_1:output:0Smodel/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:2D
Bmodel/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_3?
:model/learnlet_synthesis/fixed_point_up_sampling_1/mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :2<
:model/learnlet_synthesis/fixed_point_up_sampling_1/mul_3/x?
8model/learnlet_synthesis/fixed_point_up_sampling_1/mul_3MulCmodel/learnlet_synthesis/fixed_point_up_sampling_1/mul_3/x:output:0Kmodel/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_3:output:0*
T0*
_output_shapes
:2:
8model/learnlet_synthesis/fixed_point_up_sampling_1/mul_3?
Bmodel/learnlet_synthesis/fixed_point_up_sampling_1/ResizeBicubic_3ResizeBicubic9model/learnlet_synthesis/groupping_conv_3/Conv2D:output:0<model/learnlet_synthesis/fixed_point_up_sampling_1/mul_3:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2D
Bmodel/learnlet_synthesis/fixed_point_up_sampling_1/ResizeBicubic_3?
 model/learnlet_synthesis/mul_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *??Z>2"
 model/learnlet_synthesis/mul_3/y?
model/learnlet_synthesis/mul_3Mulmodel/normalisation_1/mul:z:0)model/learnlet_synthesis/mul_3/y:output:0*
T0*/
_output_shapes
:?????????  @2 
model/learnlet_synthesis/mul_3?
&model/learnlet_synthesis/concat_3/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2(
&model/learnlet_synthesis/concat_3/axis?
!model/learnlet_synthesis/concat_3ConcatV2Smodel/learnlet_synthesis/fixed_point_up_sampling_1/ResizeBicubic_3:resized_images:0"model/learnlet_synthesis/mul_3:z:0/model/learnlet_synthesis/concat_3/axis:output:0*
N*
T0*/
_output_shapes
:?????????  A2#
!model/learnlet_synthesis/concat_3?
?model/learnlet_synthesis/groupping_conv_4/Conv2D/ReadVariableOpReadVariableOpHmodel_learnlet_synthesis_groupping_conv_4_conv2d_readvariableop_resource*&
_output_shapes
:A*
dtype02A
?model/learnlet_synthesis/groupping_conv_4/Conv2D/ReadVariableOp?
0model/learnlet_synthesis/groupping_conv_4/Conv2DConv2D*model/learnlet_synthesis/concat_3:output:0Gmodel/learnlet_synthesis/groupping_conv_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  *
paddingSAME*
strides
22
0model/learnlet_synthesis/groupping_conv_4/Conv2D?
:model/learnlet_synthesis/fixed_point_up_sampling_1/Shape_4Shape9model/learnlet_synthesis/groupping_conv_4/Conv2D:output:0*
T0*
_output_shapes
:2<
:model/learnlet_synthesis/fixed_point_up_sampling_1/Shape_4?
Hmodel/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:2J
Hmodel/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_4/stack?
Jmodel/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2L
Jmodel/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_4/stack_1?
Jmodel/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2L
Jmodel/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_4/stack_2?
Bmodel/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_4StridedSliceCmodel/learnlet_synthesis/fixed_point_up_sampling_1/Shape_4:output:0Qmodel/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_4/stack:output:0Smodel/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_4/stack_1:output:0Smodel/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
:2D
Bmodel/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_4?
:model/learnlet_synthesis/fixed_point_up_sampling_1/mul_4/xConst*
_output_shapes
: *
dtype0*
value	B :2<
:model/learnlet_synthesis/fixed_point_up_sampling_1/mul_4/x?
8model/learnlet_synthesis/fixed_point_up_sampling_1/mul_4MulCmodel/learnlet_synthesis/fixed_point_up_sampling_1/mul_4/x:output:0Kmodel/learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_4:output:0*
T0*
_output_shapes
:2:
8model/learnlet_synthesis/fixed_point_up_sampling_1/mul_4?
Bmodel/learnlet_synthesis/fixed_point_up_sampling_1/ResizeBicubic_4ResizeBicubic9model/learnlet_synthesis/groupping_conv_4/Conv2D:output:0<model/learnlet_synthesis/fixed_point_up_sampling_1/mul_4:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2D
Bmodel/learnlet_synthesis/fixed_point_up_sampling_1/ResizeBicubic_4?
 model/learnlet_synthesis/mul_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *??j?2"
 model/learnlet_synthesis/mul_4/y?
model/learnlet_synthesis/mul_4Mulmodel/normalisation/mul:z:0)model/learnlet_synthesis/mul_4/y:output:0*
T0*/
_output_shapes
:?????????@@@2 
model/learnlet_synthesis/mul_4?
&model/learnlet_synthesis/concat_4/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2(
&model/learnlet_synthesis/concat_4/axis?
!model/learnlet_synthesis/concat_4ConcatV2Smodel/learnlet_synthesis/fixed_point_up_sampling_1/ResizeBicubic_4:resized_images:0"model/learnlet_synthesis/mul_4:z:0/model/learnlet_synthesis/concat_4/axis:output:0*
N*
T0*/
_output_shapes
:?????????@@A2#
!model/learnlet_synthesis/concat_4?
?model/learnlet_synthesis/groupping_conv_5/Conv2D/ReadVariableOpReadVariableOpHmodel_learnlet_synthesis_groupping_conv_5_conv2d_readvariableop_resource*&
_output_shapes
:A*
dtype02A
?model/learnlet_synthesis/groupping_conv_5/Conv2D/ReadVariableOp?
0model/learnlet_synthesis/groupping_conv_5/Conv2DConv2D*model/learnlet_synthesis/concat_4:output:0Gmodel/learnlet_synthesis/groupping_conv_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@*
paddingSAME*
strides
22
0model/learnlet_synthesis/groupping_conv_5/Conv2D?
IdentityIdentity9model/learnlet_synthesis/groupping_conv_5/Conv2D:output:0?^model/learnlet_analysis/details_tiling_1/Conv2D/ReadVariableOp?^model/learnlet_analysis/details_tiling_2/Conv2D/ReadVariableOp?^model/learnlet_analysis/details_tiling_3/Conv2D/ReadVariableOp?^model/learnlet_analysis/details_tiling_4/Conv2D/ReadVariableOp?^model/learnlet_analysis/details_tiling_5/Conv2D/ReadVariableOp\^model/learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D/ReadVariableOp^^model/learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1/ReadVariableOp^^model/learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2/ReadVariableOp^^model/learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3/ReadVariableOp^^model/learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4/ReadVariableOp@^model/learnlet_synthesis/groupping_conv_1/Conv2D/ReadVariableOp@^model/learnlet_synthesis/groupping_conv_2/Conv2D/ReadVariableOp@^model/learnlet_synthesis/groupping_conv_3/Conv2D/ReadVariableOp@^model/learnlet_synthesis/groupping_conv_4/Conv2D/ReadVariableOp@^model/learnlet_synthesis/groupping_conv_5/Conv2D/ReadVariableOp'^model/normalisation/mul/ReadVariableOp+^model/normalisation/truediv/ReadVariableOp)^model/normalisation_1/mul/ReadVariableOp-^model/normalisation_1/truediv/ReadVariableOp)^model/normalisation_2/mul/ReadVariableOp-^model/normalisation_2/truediv/ReadVariableOp)^model/normalisation_3/mul/ReadVariableOp-^model/normalisation_3/truediv/ReadVariableOp)^model/normalisation_4/mul/ReadVariableOp-^model/normalisation_4/truediv/ReadVariableOp*
T0*/
_output_shapes
:?????????@@2

Identity"
identityIdentity:output:0*x
_input_shapesg
e:?????????@@:::::::::::::::::2?
>model/learnlet_analysis/details_tiling_1/Conv2D/ReadVariableOp>model/learnlet_analysis/details_tiling_1/Conv2D/ReadVariableOp2?
>model/learnlet_analysis/details_tiling_2/Conv2D/ReadVariableOp>model/learnlet_analysis/details_tiling_2/Conv2D/ReadVariableOp2?
>model/learnlet_analysis/details_tiling_3/Conv2D/ReadVariableOp>model/learnlet_analysis/details_tiling_3/Conv2D/ReadVariableOp2?
>model/learnlet_analysis/details_tiling_4/Conv2D/ReadVariableOp>model/learnlet_analysis/details_tiling_4/Conv2D/ReadVariableOp2?
>model/learnlet_analysis/details_tiling_5/Conv2D/ReadVariableOp>model/learnlet_analysis/details_tiling_5/Conv2D/ReadVariableOp2?
[model/learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D/ReadVariableOp[model/learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D/ReadVariableOp2?
]model/learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1/ReadVariableOp]model/learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1/ReadVariableOp2?
]model/learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2/ReadVariableOp]model/learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2/ReadVariableOp2?
]model/learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3/ReadVariableOp]model/learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3/ReadVariableOp2?
]model/learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4/ReadVariableOp]model/learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4/ReadVariableOp2?
?model/learnlet_synthesis/groupping_conv_1/Conv2D/ReadVariableOp?model/learnlet_synthesis/groupping_conv_1/Conv2D/ReadVariableOp2?
?model/learnlet_synthesis/groupping_conv_2/Conv2D/ReadVariableOp?model/learnlet_synthesis/groupping_conv_2/Conv2D/ReadVariableOp2?
?model/learnlet_synthesis/groupping_conv_3/Conv2D/ReadVariableOp?model/learnlet_synthesis/groupping_conv_3/Conv2D/ReadVariableOp2?
?model/learnlet_synthesis/groupping_conv_4/Conv2D/ReadVariableOp?model/learnlet_synthesis/groupping_conv_4/Conv2D/ReadVariableOp2?
?model/learnlet_synthesis/groupping_conv_5/Conv2D/ReadVariableOp?model/learnlet_synthesis/groupping_conv_5/Conv2D/ReadVariableOp2P
&model/normalisation/mul/ReadVariableOp&model/normalisation/mul/ReadVariableOp2X
*model/normalisation/truediv/ReadVariableOp*model/normalisation/truediv/ReadVariableOp2T
(model/normalisation_1/mul/ReadVariableOp(model/normalisation_1/mul/ReadVariableOp2\
,model/normalisation_1/truediv/ReadVariableOp,model/normalisation_1/truediv/ReadVariableOp2T
(model/normalisation_2/mul/ReadVariableOp(model/normalisation_2/mul/ReadVariableOp2\
,model/normalisation_2/truediv/ReadVariableOp,model/normalisation_2/truediv/ReadVariableOp2T
(model/normalisation_3/mul/ReadVariableOp(model/normalisation_3/mul/ReadVariableOp2\
,model/normalisation_3/truediv/ReadVariableOp,model/normalisation_3/truediv/ReadVariableOp2T
(model/normalisation_4/mul/ReadVariableOp(model/normalisation_4/mul/ReadVariableOp2\
,model/normalisation_4/truediv/ReadVariableOp,model/normalisation_4/truediv/ReadVariableOp:X T
/
_output_shapes
:?????????@@
!
_user_specified_name	input_1:$ 

_output_shapes

:
?v
?
O__inference_learnlet_synthesis_layer_call_and_return_conditional_losses_1915684
analysis_coeffs
analysis_coeffs_1
analysis_coeffs_2
analysis_coeffs_3
analysis_coeffs_4
analysis_coeffs_53
/groupping_conv_1_conv2d_readvariableop_resource3
/groupping_conv_2_conv2d_readvariableop_resource3
/groupping_conv_3_conv2d_readvariableop_resource3
/groupping_conv_4_conv2d_readvariableop_resource3
/groupping_conv_5_conv2d_readvariableop_resource
identity??&groupping_conv_1/Conv2D/ReadVariableOp?&groupping_conv_2/Conv2D/ReadVariableOp?&groupping_conv_3/Conv2D/ReadVariableOp?&groupping_conv_4/Conv2D/ReadVariableOp?&groupping_conv_5/Conv2D/ReadVariableOp?
fixed_point_up_sampling_1/ShapeShapeanalysis_coeffs_5*
T0*
_output_shapes
:2!
fixed_point_up_sampling_1/Shape?
-fixed_point_up_sampling_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2/
-fixed_point_up_sampling_1/strided_slice/stack?
/fixed_point_up_sampling_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/fixed_point_up_sampling_1/strided_slice/stack_1?
/fixed_point_up_sampling_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/fixed_point_up_sampling_1/strided_slice/stack_2?
'fixed_point_up_sampling_1/strided_sliceStridedSlice(fixed_point_up_sampling_1/Shape:output:06fixed_point_up_sampling_1/strided_slice/stack:output:08fixed_point_up_sampling_1/strided_slice/stack_1:output:08fixed_point_up_sampling_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2)
'fixed_point_up_sampling_1/strided_slice?
fixed_point_up_sampling_1/mul/xConst*
_output_shapes
: *
dtype0*
value	B :2!
fixed_point_up_sampling_1/mul/x?
fixed_point_up_sampling_1/mulMul(fixed_point_up_sampling_1/mul/x:output:00fixed_point_up_sampling_1/strided_slice:output:0*
T0*
_output_shapes
:2
fixed_point_up_sampling_1/mul?
'fixed_point_up_sampling_1/ResizeBicubicResizeBicubicanalysis_coeffs_5!fixed_point_up_sampling_1/mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2)
'fixed_point_up_sampling_1/ResizeBicubicS
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *?8?<2
mul/yn
mulMulanalysis_coeffs_4mul/y:output:0*
T0*/
_output_shapes
:?????????@2
mule
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
concat/axis?
concatConcatV28fixed_point_up_sampling_1/ResizeBicubic:resized_images:0mul:z:0concat/axis:output:0*
N*
T0*/
_output_shapes
:?????????A2
concat?
&groupping_conv_1/Conv2D/ReadVariableOpReadVariableOp/groupping_conv_1_conv2d_readvariableop_resource*&
_output_shapes
:A*
dtype02(
&groupping_conv_1/Conv2D/ReadVariableOp?
groupping_conv_1/Conv2DConv2Dconcat:output:0.groupping_conv_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
groupping_conv_1/Conv2D?
!fixed_point_up_sampling_1/Shape_1Shape groupping_conv_1/Conv2D:output:0*
T0*
_output_shapes
:2#
!fixed_point_up_sampling_1/Shape_1?
/fixed_point_up_sampling_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/fixed_point_up_sampling_1/strided_slice_1/stack?
1fixed_point_up_sampling_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1fixed_point_up_sampling_1/strided_slice_1/stack_1?
1fixed_point_up_sampling_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1fixed_point_up_sampling_1/strided_slice_1/stack_2?
)fixed_point_up_sampling_1/strided_slice_1StridedSlice*fixed_point_up_sampling_1/Shape_1:output:08fixed_point_up_sampling_1/strided_slice_1/stack:output:0:fixed_point_up_sampling_1/strided_slice_1/stack_1:output:0:fixed_point_up_sampling_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:2+
)fixed_point_up_sampling_1/strided_slice_1?
!fixed_point_up_sampling_1/mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :2#
!fixed_point_up_sampling_1/mul_1/x?
fixed_point_up_sampling_1/mul_1Mul*fixed_point_up_sampling_1/mul_1/x:output:02fixed_point_up_sampling_1/strided_slice_1:output:0*
T0*
_output_shapes
:2!
fixed_point_up_sampling_1/mul_1?
)fixed_point_up_sampling_1/ResizeBicubic_1ResizeBicubic groupping_conv_1/Conv2D:output:0#fixed_point_up_sampling_1/mul_1:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2+
)fixed_point_up_sampling_1/ResizeBicubic_1W
mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?9=2	
mul_1/yt
mul_1Mulanalysis_coeffs_3mul_1/y:output:0*
T0*/
_output_shapes
:?????????@2
mul_1i
concat_1/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
concat_1/axis?
concat_1ConcatV2:fixed_point_up_sampling_1/ResizeBicubic_1:resized_images:0	mul_1:z:0concat_1/axis:output:0*
N*
T0*/
_output_shapes
:?????????A2

concat_1?
&groupping_conv_2/Conv2D/ReadVariableOpReadVariableOp/groupping_conv_2_conv2d_readvariableop_resource*&
_output_shapes
:A*
dtype02(
&groupping_conv_2/Conv2D/ReadVariableOp?
groupping_conv_2/Conv2DConv2Dconcat_1:output:0.groupping_conv_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
groupping_conv_2/Conv2D?
!fixed_point_up_sampling_1/Shape_2Shape groupping_conv_2/Conv2D:output:0*
T0*
_output_shapes
:2#
!fixed_point_up_sampling_1/Shape_2?
/fixed_point_up_sampling_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/fixed_point_up_sampling_1/strided_slice_2/stack?
1fixed_point_up_sampling_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1fixed_point_up_sampling_1/strided_slice_2/stack_1?
1fixed_point_up_sampling_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1fixed_point_up_sampling_1/strided_slice_2/stack_2?
)fixed_point_up_sampling_1/strided_slice_2StridedSlice*fixed_point_up_sampling_1/Shape_2:output:08fixed_point_up_sampling_1/strided_slice_2/stack:output:0:fixed_point_up_sampling_1/strided_slice_2/stack_1:output:0:fixed_point_up_sampling_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:2+
)fixed_point_up_sampling_1/strided_slice_2?
!fixed_point_up_sampling_1/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :2#
!fixed_point_up_sampling_1/mul_2/x?
fixed_point_up_sampling_1/mul_2Mul*fixed_point_up_sampling_1/mul_2/x:output:02fixed_point_up_sampling_1/strided_slice_2:output:0*
T0*
_output_shapes
:2!
fixed_point_up_sampling_1/mul_2?
)fixed_point_up_sampling_1/ResizeBicubic_2ResizeBicubic groupping_conv_2/Conv2D:output:0#fixed_point_up_sampling_1/mul_2:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2+
)fixed_point_up_sampling_1/ResizeBicubic_2W
mul_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *J??=2	
mul_2/yt
mul_2Mulanalysis_coeffs_2mul_2/y:output:0*
T0*/
_output_shapes
:?????????@2
mul_2i
concat_2/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
concat_2/axis?
concat_2ConcatV2:fixed_point_up_sampling_1/ResizeBicubic_2:resized_images:0	mul_2:z:0concat_2/axis:output:0*
N*
T0*/
_output_shapes
:?????????A2

concat_2?
&groupping_conv_3/Conv2D/ReadVariableOpReadVariableOp/groupping_conv_3_conv2d_readvariableop_resource*&
_output_shapes
:A*
dtype02(
&groupping_conv_3/Conv2D/ReadVariableOp?
groupping_conv_3/Conv2DConv2Dconcat_2:output:0.groupping_conv_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
groupping_conv_3/Conv2D?
!fixed_point_up_sampling_1/Shape_3Shape groupping_conv_3/Conv2D:output:0*
T0*
_output_shapes
:2#
!fixed_point_up_sampling_1/Shape_3?
/fixed_point_up_sampling_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/fixed_point_up_sampling_1/strided_slice_3/stack?
1fixed_point_up_sampling_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1fixed_point_up_sampling_1/strided_slice_3/stack_1?
1fixed_point_up_sampling_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1fixed_point_up_sampling_1/strided_slice_3/stack_2?
)fixed_point_up_sampling_1/strided_slice_3StridedSlice*fixed_point_up_sampling_1/Shape_3:output:08fixed_point_up_sampling_1/strided_slice_3/stack:output:0:fixed_point_up_sampling_1/strided_slice_3/stack_1:output:0:fixed_point_up_sampling_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:2+
)fixed_point_up_sampling_1/strided_slice_3?
!fixed_point_up_sampling_1/mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :2#
!fixed_point_up_sampling_1/mul_3/x?
fixed_point_up_sampling_1/mul_3Mul*fixed_point_up_sampling_1/mul_3/x:output:02fixed_point_up_sampling_1/strided_slice_3:output:0*
T0*
_output_shapes
:2!
fixed_point_up_sampling_1/mul_3?
)fixed_point_up_sampling_1/ResizeBicubic_3ResizeBicubic groupping_conv_3/Conv2D:output:0#fixed_point_up_sampling_1/mul_3:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2+
)fixed_point_up_sampling_1/ResizeBicubic_3W
mul_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *??Z>2	
mul_3/yt
mul_3Mulanalysis_coeffs_1mul_3/y:output:0*
T0*/
_output_shapes
:?????????  @2
mul_3i
concat_3/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
concat_3/axis?
concat_3ConcatV2:fixed_point_up_sampling_1/ResizeBicubic_3:resized_images:0	mul_3:z:0concat_3/axis:output:0*
N*
T0*/
_output_shapes
:?????????  A2

concat_3?
&groupping_conv_4/Conv2D/ReadVariableOpReadVariableOp/groupping_conv_4_conv2d_readvariableop_resource*&
_output_shapes
:A*
dtype02(
&groupping_conv_4/Conv2D/ReadVariableOp?
groupping_conv_4/Conv2DConv2Dconcat_3:output:0.groupping_conv_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  *
paddingSAME*
strides
2
groupping_conv_4/Conv2D?
!fixed_point_up_sampling_1/Shape_4Shape groupping_conv_4/Conv2D:output:0*
T0*
_output_shapes
:2#
!fixed_point_up_sampling_1/Shape_4?
/fixed_point_up_sampling_1/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/fixed_point_up_sampling_1/strided_slice_4/stack?
1fixed_point_up_sampling_1/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1fixed_point_up_sampling_1/strided_slice_4/stack_1?
1fixed_point_up_sampling_1/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1fixed_point_up_sampling_1/strided_slice_4/stack_2?
)fixed_point_up_sampling_1/strided_slice_4StridedSlice*fixed_point_up_sampling_1/Shape_4:output:08fixed_point_up_sampling_1/strided_slice_4/stack:output:0:fixed_point_up_sampling_1/strided_slice_4/stack_1:output:0:fixed_point_up_sampling_1/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
:2+
)fixed_point_up_sampling_1/strided_slice_4?
!fixed_point_up_sampling_1/mul_4/xConst*
_output_shapes
: *
dtype0*
value	B :2#
!fixed_point_up_sampling_1/mul_4/x?
fixed_point_up_sampling_1/mul_4Mul*fixed_point_up_sampling_1/mul_4/x:output:02fixed_point_up_sampling_1/strided_slice_4:output:0*
T0*
_output_shapes
:2!
fixed_point_up_sampling_1/mul_4?
)fixed_point_up_sampling_1/ResizeBicubic_4ResizeBicubic groupping_conv_4/Conv2D:output:0#fixed_point_up_sampling_1/mul_4:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2+
)fixed_point_up_sampling_1/ResizeBicubic_4W
mul_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *??j?2	
mul_4/yr
mul_4Mulanalysis_coeffsmul_4/y:output:0*
T0*/
_output_shapes
:?????????@@@2
mul_4i
concat_4/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
concat_4/axis?
concat_4ConcatV2:fixed_point_up_sampling_1/ResizeBicubic_4:resized_images:0	mul_4:z:0concat_4/axis:output:0*
N*
T0*/
_output_shapes
:?????????@@A2

concat_4?
&groupping_conv_5/Conv2D/ReadVariableOpReadVariableOp/groupping_conv_5_conv2d_readvariableop_resource*&
_output_shapes
:A*
dtype02(
&groupping_conv_5/Conv2D/ReadVariableOp?
groupping_conv_5/Conv2DConv2Dconcat_4:output:0.groupping_conv_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@*
paddingSAME*
strides
2
groupping_conv_5/Conv2D?
IdentityIdentity groupping_conv_5/Conv2D:output:0'^groupping_conv_1/Conv2D/ReadVariableOp'^groupping_conv_2/Conv2D/ReadVariableOp'^groupping_conv_3/Conv2D/ReadVariableOp'^groupping_conv_4/Conv2D/ReadVariableOp'^groupping_conv_5/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@@2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????@@@:?????????  @:?????????@:?????????@:?????????@:?????????:::::2P
&groupping_conv_1/Conv2D/ReadVariableOp&groupping_conv_1/Conv2D/ReadVariableOp2P
&groupping_conv_2/Conv2D/ReadVariableOp&groupping_conv_2/Conv2D/ReadVariableOp2P
&groupping_conv_3/Conv2D/ReadVariableOp&groupping_conv_3/Conv2D/ReadVariableOp2P
&groupping_conv_4/Conv2D/ReadVariableOp&groupping_conv_4/Conv2D/ReadVariableOp2P
&groupping_conv_5/Conv2D/ReadVariableOp&groupping_conv_5/Conv2D/ReadVariableOp:` \
/
_output_shapes
:?????????@@@
)
_user_specified_nameanalysis_coeffs:`\
/
_output_shapes
:?????????  @
)
_user_specified_nameanalysis_coeffs:`\
/
_output_shapes
:?????????@
)
_user_specified_nameanalysis_coeffs:`\
/
_output_shapes
:?????????@
)
_user_specified_nameanalysis_coeffs:`\
/
_output_shapes
:?????????@
)
_user_specified_nameanalysis_coeffs:`\
/
_output_shapes
:?????????
)
_user_specified_nameanalysis_coeffs
?
?
L__inference_normalisation_4_layer_call_and_return_conditional_losses_1915375
x#
truediv_readvariableop_resource
identity??truediv/ReadVariableOp?
truediv/ReadVariableOpReadVariableOptruediv_readvariableop_resource*
_output_shapes
:@*
dtype02
truediv/ReadVariableOpz
truedivRealDivxtruediv/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2	
truediv?
IdentityIdentitytruediv:z:0^truediv/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????@:20
truediv/ReadVariableOptruediv/ReadVariableOp:R N
/
_output_shapes
:?????????@

_user_specified_namex
?
e
I__inference_thresholding_layer_call_and_return_conditional_losses_1916761

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:?????????@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?o
?
 __inference__traced_save_1917081
file_prefix1
-savev2_normalisation_norm_read_readvariableop3
/savev2_normalisation_1_norm_read_readvariableop3
/savev2_normalisation_2_norm_read_readvariableop3
/savev2_normalisation_3_norm_read_readvariableop3
/savev2_normalisation_4_norm_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableopH
Dsavev2_learnlet_analysis_details_tiling_1_kernel_read_readvariableopH
Dsavev2_learnlet_analysis_details_tiling_2_kernel_read_readvariableopH
Dsavev2_learnlet_analysis_details_tiling_3_kernel_read_readvariableopH
Dsavev2_learnlet_analysis_details_tiling_4_kernel_read_readvariableopH
Dsavev2_learnlet_analysis_details_tiling_5_kernel_read_readvariableope
asavev2_learnlet_analysis_wav_analysis_wav_pooling_low_pass_filtering_1_kernel_read_readvariableopI
Esavev2_learnlet_synthesis_groupping_conv_1_kernel_read_readvariableopI
Esavev2_learnlet_synthesis_groupping_conv_2_kernel_read_readvariableopI
Esavev2_learnlet_synthesis_groupping_conv_3_kernel_read_readvariableopI
Esavev2_learnlet_synthesis_groupping_conv_4_kernel_read_readvariableopI
Esavev2_learnlet_synthesis_groupping_conv_5_kernel_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop&
"savev2_total_3_read_readvariableop&
"savev2_count_3_read_readvariableopO
Ksavev2_adam_learnlet_analysis_details_tiling_1_kernel_m_read_readvariableopO
Ksavev2_adam_learnlet_analysis_details_tiling_2_kernel_m_read_readvariableopO
Ksavev2_adam_learnlet_analysis_details_tiling_3_kernel_m_read_readvariableopO
Ksavev2_adam_learnlet_analysis_details_tiling_4_kernel_m_read_readvariableopO
Ksavev2_adam_learnlet_analysis_details_tiling_5_kernel_m_read_readvariableopP
Lsavev2_adam_learnlet_synthesis_groupping_conv_1_kernel_m_read_readvariableopP
Lsavev2_adam_learnlet_synthesis_groupping_conv_2_kernel_m_read_readvariableopP
Lsavev2_adam_learnlet_synthesis_groupping_conv_3_kernel_m_read_readvariableopP
Lsavev2_adam_learnlet_synthesis_groupping_conv_4_kernel_m_read_readvariableopP
Lsavev2_adam_learnlet_synthesis_groupping_conv_5_kernel_m_read_readvariableopO
Ksavev2_adam_learnlet_analysis_details_tiling_1_kernel_v_read_readvariableopO
Ksavev2_adam_learnlet_analysis_details_tiling_2_kernel_v_read_readvariableopO
Ksavev2_adam_learnlet_analysis_details_tiling_3_kernel_v_read_readvariableopO
Ksavev2_adam_learnlet_analysis_details_tiling_4_kernel_v_read_readvariableopO
Ksavev2_adam_learnlet_analysis_details_tiling_5_kernel_v_read_readvariableopP
Lsavev2_adam_learnlet_synthesis_groupping_conv_1_kernel_v_read_readvariableopP
Lsavev2_adam_learnlet_synthesis_groupping_conv_2_kernel_v_read_readvariableopP
Lsavev2_adam_learnlet_synthesis_groupping_conv_3_kernel_v_read_readvariableopP
Lsavev2_adam_learnlet_synthesis_groupping_conv_4_kernel_v_read_readvariableopP
Lsavev2_adam_learnlet_synthesis_groupping_conv_5_kernel_v_read_readvariableop
savev2_const_1

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:2*
dtype0*?
value?B?2B4layer_with_weights-1/norm/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/norm/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/norm/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/norm/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/norm/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:2*
dtype0*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0-savev2_normalisation_norm_read_readvariableop/savev2_normalisation_1_norm_read_readvariableop/savev2_normalisation_2_norm_read_readvariableop/savev2_normalisation_3_norm_read_readvariableop/savev2_normalisation_4_norm_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableopDsavev2_learnlet_analysis_details_tiling_1_kernel_read_readvariableopDsavev2_learnlet_analysis_details_tiling_2_kernel_read_readvariableopDsavev2_learnlet_analysis_details_tiling_3_kernel_read_readvariableopDsavev2_learnlet_analysis_details_tiling_4_kernel_read_readvariableopDsavev2_learnlet_analysis_details_tiling_5_kernel_read_readvariableopasavev2_learnlet_analysis_wav_analysis_wav_pooling_low_pass_filtering_1_kernel_read_readvariableopEsavev2_learnlet_synthesis_groupping_conv_1_kernel_read_readvariableopEsavev2_learnlet_synthesis_groupping_conv_2_kernel_read_readvariableopEsavev2_learnlet_synthesis_groupping_conv_3_kernel_read_readvariableopEsavev2_learnlet_synthesis_groupping_conv_4_kernel_read_readvariableopEsavev2_learnlet_synthesis_groupping_conv_5_kernel_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop"savev2_total_3_read_readvariableop"savev2_count_3_read_readvariableopKsavev2_adam_learnlet_analysis_details_tiling_1_kernel_m_read_readvariableopKsavev2_adam_learnlet_analysis_details_tiling_2_kernel_m_read_readvariableopKsavev2_adam_learnlet_analysis_details_tiling_3_kernel_m_read_readvariableopKsavev2_adam_learnlet_analysis_details_tiling_4_kernel_m_read_readvariableopKsavev2_adam_learnlet_analysis_details_tiling_5_kernel_m_read_readvariableopLsavev2_adam_learnlet_synthesis_groupping_conv_1_kernel_m_read_readvariableopLsavev2_adam_learnlet_synthesis_groupping_conv_2_kernel_m_read_readvariableopLsavev2_adam_learnlet_synthesis_groupping_conv_3_kernel_m_read_readvariableopLsavev2_adam_learnlet_synthesis_groupping_conv_4_kernel_m_read_readvariableopLsavev2_adam_learnlet_synthesis_groupping_conv_5_kernel_m_read_readvariableopKsavev2_adam_learnlet_analysis_details_tiling_1_kernel_v_read_readvariableopKsavev2_adam_learnlet_analysis_details_tiling_2_kernel_v_read_readvariableopKsavev2_adam_learnlet_analysis_details_tiling_3_kernel_v_read_readvariableopKsavev2_adam_learnlet_analysis_details_tiling_4_kernel_v_read_readvariableopKsavev2_adam_learnlet_analysis_details_tiling_5_kernel_v_read_readvariableopLsavev2_adam_learnlet_synthesis_groupping_conv_1_kernel_v_read_readvariableopLsavev2_adam_learnlet_synthesis_groupping_conv_2_kernel_v_read_readvariableopLsavev2_adam_learnlet_synthesis_groupping_conv_3_kernel_v_read_readvariableopLsavev2_adam_learnlet_synthesis_groupping_conv_4_kernel_v_read_readvariableopLsavev2_adam_learnlet_synthesis_groupping_conv_5_kernel_v_read_readvariableopsavev2_const_1"/device:CPU:0*
_output_shapes
 *@
dtypes6
422	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :@:@:@:@:@: : : : : :@:@:@:@:@::A:A:A:A:A: : : : : : : : :@:@:@:@:@:A:A:A:A:A:@:@:@:@:@:A:A:A:A:A: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :,(
&
_output_shapes
:@:,(
&
_output_shapes
:@:,(
&
_output_shapes
:@:,(
&
_output_shapes
:@:,(
&
_output_shapes
:@:,(
&
_output_shapes
::,(
&
_output_shapes
:A:,(
&
_output_shapes
:A:,(
&
_output_shapes
:A:,(
&
_output_shapes
:A:,(
&
_output_shapes
:A:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:@:,(
&
_output_shapes
:@:, (
&
_output_shapes
:@:,!(
&
_output_shapes
:@:,"(
&
_output_shapes
:@:,#(
&
_output_shapes
:A:,$(
&
_output_shapes
:A:,%(
&
_output_shapes
:A:,&(
&
_output_shapes
:A:,'(
&
_output_shapes
:A:,((
&
_output_shapes
:@:,)(
&
_output_shapes
:@:,*(
&
_output_shapes
:@:,+(
&
_output_shapes
:@:,,(
&
_output_shapes
:@:,-(
&
_output_shapes
:A:,.(
&
_output_shapes
:A:,/(
&
_output_shapes
:A:,0(
&
_output_shapes
:A:,1(
&
_output_shapes
:A:2

_output_shapes
: 
?Y
?
B__inference_model_layer_call_and_return_conditional_losses_1915955

inputs
learnlet_analysis_1915893
learnlet_analysis_1915895
learnlet_analysis_1915897
learnlet_analysis_1915899
learnlet_analysis_1915901
learnlet_analysis_1915903
learnlet_analysis_1915905
normalisation_4_1915913
normalisation_3_1915916
normalisation_2_1915919
normalisation_1_1915922
normalisation_1915925
learnlet_synthesis_1915943
learnlet_synthesis_1915945
learnlet_synthesis_1915947
learnlet_synthesis_1915949
learnlet_synthesis_1915951
identity??)learnlet_analysis/StatefulPartitionedCall?*learnlet_synthesis/StatefulPartitionedCall?%normalisation/StatefulPartitionedCall?'normalisation/StatefulPartitionedCall_1?'normalisation_1/StatefulPartitionedCall?)normalisation_1/StatefulPartitionedCall_1?'normalisation_2/StatefulPartitionedCall?)normalisation_2/StatefulPartitionedCall_1?'normalisation_3/StatefulPartitionedCall?)normalisation_3/StatefulPartitionedCall_1?'normalisation_4/StatefulPartitionedCall?)normalisation_4/StatefulPartitionedCall_1?
)learnlet_analysis/StatefulPartitionedCallStatefulPartitionedCallinputslearnlet_analysis_1915893learnlet_analysis_1915895learnlet_analysis_1915897learnlet_analysis_1915899learnlet_analysis_1915901learnlet_analysis_1915903learnlet_analysis_1915905*
Tin

2*
Tout

2*
_collective_manager_ids
 *?
_output_shapes?
?:?????????@@@:?????????  @:?????????@:?????????@:?????????@:?????????*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_learnlet_analysis_layer_call_and_return_conditional_losses_19153172+
)learnlet_analysis/StatefulPartitionedCall?
'normalisation_4/StatefulPartitionedCallStatefulPartitionedCall2learnlet_analysis/StatefulPartitionedCall:output:4normalisation_4_1915913*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_normalisation_4_layer_call_and_return_conditional_losses_19153752)
'normalisation_4/StatefulPartitionedCall?
'normalisation_3/StatefulPartitionedCallStatefulPartitionedCall2learnlet_analysis/StatefulPartitionedCall:output:3normalisation_3_1915916*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_normalisation_3_layer_call_and_return_conditional_losses_19153942)
'normalisation_3/StatefulPartitionedCall?
'normalisation_2/StatefulPartitionedCallStatefulPartitionedCall2learnlet_analysis/StatefulPartitionedCall:output:2normalisation_2_1915919*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_normalisation_2_layer_call_and_return_conditional_losses_19154132)
'normalisation_2/StatefulPartitionedCall?
'normalisation_1/StatefulPartitionedCallStatefulPartitionedCall2learnlet_analysis/StatefulPartitionedCall:output:1normalisation_1_1915922*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_normalisation_1_layer_call_and_return_conditional_losses_19154322)
'normalisation_1/StatefulPartitionedCall?
%normalisation/StatefulPartitionedCallStatefulPartitionedCall2learnlet_analysis/StatefulPartitionedCall:output:0normalisation_1915925*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_normalisation_layer_call_and_return_conditional_losses_19154512'
%normalisation/StatefulPartitionedCall?
thresholding/PartitionedCallPartitionedCall0normalisation_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_thresholding_layer_call_and_return_conditional_losses_19154682
thresholding/PartitionedCall?
thresholding/PartitionedCall_1PartitionedCall0normalisation_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_thresholding_layer_call_and_return_conditional_losses_19154802 
thresholding/PartitionedCall_1?
thresholding/PartitionedCall_2PartitionedCall0normalisation_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_thresholding_layer_call_and_return_conditional_losses_19154912 
thresholding/PartitionedCall_2?
thresholding/PartitionedCall_3PartitionedCall0normalisation_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_thresholding_layer_call_and_return_conditional_losses_19155022 
thresholding/PartitionedCall_3?
thresholding/PartitionedCall_4PartitionedCall.normalisation/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_thresholding_layer_call_and_return_conditional_losses_19155132 
thresholding/PartitionedCall_4?
'normalisation/StatefulPartitionedCall_1StatefulPartitionedCall'thresholding/PartitionedCall_4:output:0normalisation_1915925*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_normalisation_layer_call_and_return_conditional_losses_19155262)
'normalisation/StatefulPartitionedCall_1?
)normalisation_1/StatefulPartitionedCall_1StatefulPartitionedCall'thresholding/PartitionedCall_3:output:0normalisation_1_1915922*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_normalisation_1_layer_call_and_return_conditional_losses_19155422+
)normalisation_1/StatefulPartitionedCall_1?
)normalisation_2/StatefulPartitionedCall_1StatefulPartitionedCall'thresholding/PartitionedCall_2:output:0normalisation_2_1915919*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_normalisation_2_layer_call_and_return_conditional_losses_19155582+
)normalisation_2/StatefulPartitionedCall_1?
)normalisation_3/StatefulPartitionedCall_1StatefulPartitionedCall'thresholding/PartitionedCall_1:output:0normalisation_3_1915916*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_normalisation_3_layer_call_and_return_conditional_losses_19155742+
)normalisation_3/StatefulPartitionedCall_1?
)normalisation_4/StatefulPartitionedCall_1StatefulPartitionedCall%thresholding/PartitionedCall:output:0normalisation_4_1915913*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_normalisation_4_layer_call_and_return_conditional_losses_19155902+
)normalisation_4/StatefulPartitionedCall_1?
*learnlet_synthesis/StatefulPartitionedCallStatefulPartitionedCall0normalisation/StatefulPartitionedCall_1:output:02normalisation_1/StatefulPartitionedCall_1:output:02normalisation_2/StatefulPartitionedCall_1:output:02normalisation_3/StatefulPartitionedCall_1:output:02normalisation_4/StatefulPartitionedCall_1:output:02learnlet_analysis/StatefulPartitionedCall:output:5learnlet_synthesis_1915943learnlet_synthesis_1915945learnlet_synthesis_1915947learnlet_synthesis_1915949learnlet_synthesis_1915951*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*'
_read_only_resource_inputs	
	
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_learnlet_synthesis_layer_call_and_return_conditional_losses_19156842,
*learnlet_synthesis/StatefulPartitionedCall?
IdentityIdentity3learnlet_synthesis/StatefulPartitionedCall:output:0*^learnlet_analysis/StatefulPartitionedCall+^learnlet_synthesis/StatefulPartitionedCall&^normalisation/StatefulPartitionedCall(^normalisation/StatefulPartitionedCall_1(^normalisation_1/StatefulPartitionedCall*^normalisation_1/StatefulPartitionedCall_1(^normalisation_2/StatefulPartitionedCall*^normalisation_2/StatefulPartitionedCall_1(^normalisation_3/StatefulPartitionedCall*^normalisation_3/StatefulPartitionedCall_1(^normalisation_4/StatefulPartitionedCall*^normalisation_4/StatefulPartitionedCall_1*
T0*/
_output_shapes
:?????????@@2

Identity"
identityIdentity:output:0*x
_input_shapesg
e:?????????@@:::::::::::::::::2V
)learnlet_analysis/StatefulPartitionedCall)learnlet_analysis/StatefulPartitionedCall2X
*learnlet_synthesis/StatefulPartitionedCall*learnlet_synthesis/StatefulPartitionedCall2N
%normalisation/StatefulPartitionedCall%normalisation/StatefulPartitionedCall2R
'normalisation/StatefulPartitionedCall_1'normalisation/StatefulPartitionedCall_12R
'normalisation_1/StatefulPartitionedCall'normalisation_1/StatefulPartitionedCall2V
)normalisation_1/StatefulPartitionedCall_1)normalisation_1/StatefulPartitionedCall_12R
'normalisation_2/StatefulPartitionedCall'normalisation_2/StatefulPartitionedCall2V
)normalisation_2/StatefulPartitionedCall_1)normalisation_2/StatefulPartitionedCall_12R
'normalisation_3/StatefulPartitionedCall'normalisation_3/StatefulPartitionedCall2V
)normalisation_3/StatefulPartitionedCall_1)normalisation_3/StatefulPartitionedCall_12R
'normalisation_4/StatefulPartitionedCall'normalisation_4/StatefulPartitionedCall2V
)normalisation_4/StatefulPartitionedCall_1)normalisation_4/StatefulPartitionedCall_1:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs:$ 

_output_shapes

:
?
?
L__inference_normalisation_2_layer_call_and_return_conditional_losses_1915558
x
mul_readvariableop_resource
identity??mul/ReadVariableOp?
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:@*
dtype02
mul/ReadVariableOpj
mulMulxmul/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
mulx
IdentityIdentitymul:z:0^mul/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????@:2(
mul/ReadVariableOpmul/ReadVariableOp:R N
/
_output_shapes
:?????????@

_user_specified_namex
?
e
I__inference_thresholding_layer_call_and_return_conditional_losses_1916781

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:?????????@@@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????@@@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@@@:W S
/
_output_shapes
:?????????@@@
 
_user_specified_nameinputs
?
?
'__inference_model_layer_call_fn_1916552

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_19158512
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@@2

Identity"
identityIdentity:output:0*x
_input_shapesg
e:?????????@@:::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs:$ 

_output_shapes

:
?
e
I__inference_thresholding_layer_call_and_return_conditional_losses_1916771

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:?????????@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
J
.__inference_thresholding_layer_call_fn_1916786

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_thresholding_layer_call_and_return_conditional_losses_19155132
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@@@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@@@:W S
/
_output_shapes
:?????????@@@
 
_user_specified_nameinputs
?
e
I__inference_thresholding_layer_call_and_return_conditional_losses_1915468

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:?????????@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
e
I__inference_thresholding_layer_call_and_return_conditional_losses_1915480

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:?????????@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
e
I__inference_thresholding_layer_call_and_return_conditional_losses_1915502

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:?????????  @2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????  @2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????  @:W S
/
_output_shapes
:?????????  @
 
_user_specified_nameinputs
?
?
4__inference_learnlet_synthesis_layer_call_fn_1916910
analysis_coeffs_0
analysis_coeffs_1
analysis_coeffs_2
analysis_coeffs_3
analysis_coeffs_4
analysis_coeffs_5
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallanalysis_coeffs_0analysis_coeffs_1analysis_coeffs_2analysis_coeffs_3analysis_coeffs_4analysis_coeffs_5unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*'
_read_only_resource_inputs	
	
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_learnlet_synthesis_layer_call_and_return_conditional_losses_19156842
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@@2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????@@@:?????????  @:?????????@:?????????@:?????????@:?????????:::::22
StatefulPartitionedCallStatefulPartitionedCall:b ^
/
_output_shapes
:?????????@@@
+
_user_specified_nameanalysis_coeffs/0:b^
/
_output_shapes
:?????????  @
+
_user_specified_nameanalysis_coeffs/1:b^
/
_output_shapes
:?????????@
+
_user_specified_nameanalysis_coeffs/2:b^
/
_output_shapes
:?????????@
+
_user_specified_nameanalysis_coeffs/3:b^
/
_output_shapes
:?????????@
+
_user_specified_nameanalysis_coeffs/4:b^
/
_output_shapes
:?????????
+
_user_specified_nameanalysis_coeffs/5
?Y
?
B__inference_model_layer_call_and_return_conditional_losses_1915783
input_1
learnlet_analysis_1915721
learnlet_analysis_1915723
learnlet_analysis_1915725
learnlet_analysis_1915727
learnlet_analysis_1915729
learnlet_analysis_1915731
learnlet_analysis_1915733
normalisation_4_1915741
normalisation_3_1915744
normalisation_2_1915747
normalisation_1_1915750
normalisation_1915753
learnlet_synthesis_1915771
learnlet_synthesis_1915773
learnlet_synthesis_1915775
learnlet_synthesis_1915777
learnlet_synthesis_1915779
identity??)learnlet_analysis/StatefulPartitionedCall?*learnlet_synthesis/StatefulPartitionedCall?%normalisation/StatefulPartitionedCall?'normalisation/StatefulPartitionedCall_1?'normalisation_1/StatefulPartitionedCall?)normalisation_1/StatefulPartitionedCall_1?'normalisation_2/StatefulPartitionedCall?)normalisation_2/StatefulPartitionedCall_1?'normalisation_3/StatefulPartitionedCall?)normalisation_3/StatefulPartitionedCall_1?'normalisation_4/StatefulPartitionedCall?)normalisation_4/StatefulPartitionedCall_1?
)learnlet_analysis/StatefulPartitionedCallStatefulPartitionedCallinput_1learnlet_analysis_1915721learnlet_analysis_1915723learnlet_analysis_1915725learnlet_analysis_1915727learnlet_analysis_1915729learnlet_analysis_1915731learnlet_analysis_1915733*
Tin

2*
Tout

2*
_collective_manager_ids
 *?
_output_shapes?
?:?????????@@@:?????????  @:?????????@:?????????@:?????????@:?????????*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_learnlet_analysis_layer_call_and_return_conditional_losses_19153172+
)learnlet_analysis/StatefulPartitionedCall?
'normalisation_4/StatefulPartitionedCallStatefulPartitionedCall2learnlet_analysis/StatefulPartitionedCall:output:4normalisation_4_1915741*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_normalisation_4_layer_call_and_return_conditional_losses_19153752)
'normalisation_4/StatefulPartitionedCall?
'normalisation_3/StatefulPartitionedCallStatefulPartitionedCall2learnlet_analysis/StatefulPartitionedCall:output:3normalisation_3_1915744*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_normalisation_3_layer_call_and_return_conditional_losses_19153942)
'normalisation_3/StatefulPartitionedCall?
'normalisation_2/StatefulPartitionedCallStatefulPartitionedCall2learnlet_analysis/StatefulPartitionedCall:output:2normalisation_2_1915747*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_normalisation_2_layer_call_and_return_conditional_losses_19154132)
'normalisation_2/StatefulPartitionedCall?
'normalisation_1/StatefulPartitionedCallStatefulPartitionedCall2learnlet_analysis/StatefulPartitionedCall:output:1normalisation_1_1915750*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_normalisation_1_layer_call_and_return_conditional_losses_19154322)
'normalisation_1/StatefulPartitionedCall?
%normalisation/StatefulPartitionedCallStatefulPartitionedCall2learnlet_analysis/StatefulPartitionedCall:output:0normalisation_1915753*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_normalisation_layer_call_and_return_conditional_losses_19154512'
%normalisation/StatefulPartitionedCall?
thresholding/PartitionedCallPartitionedCall0normalisation_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_thresholding_layer_call_and_return_conditional_losses_19154682
thresholding/PartitionedCall?
thresholding/PartitionedCall_1PartitionedCall0normalisation_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_thresholding_layer_call_and_return_conditional_losses_19154802 
thresholding/PartitionedCall_1?
thresholding/PartitionedCall_2PartitionedCall0normalisation_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_thresholding_layer_call_and_return_conditional_losses_19154912 
thresholding/PartitionedCall_2?
thresholding/PartitionedCall_3PartitionedCall0normalisation_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_thresholding_layer_call_and_return_conditional_losses_19155022 
thresholding/PartitionedCall_3?
thresholding/PartitionedCall_4PartitionedCall.normalisation/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_thresholding_layer_call_and_return_conditional_losses_19155132 
thresholding/PartitionedCall_4?
'normalisation/StatefulPartitionedCall_1StatefulPartitionedCall'thresholding/PartitionedCall_4:output:0normalisation_1915753*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_normalisation_layer_call_and_return_conditional_losses_19155262)
'normalisation/StatefulPartitionedCall_1?
)normalisation_1/StatefulPartitionedCall_1StatefulPartitionedCall'thresholding/PartitionedCall_3:output:0normalisation_1_1915750*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_normalisation_1_layer_call_and_return_conditional_losses_19155422+
)normalisation_1/StatefulPartitionedCall_1?
)normalisation_2/StatefulPartitionedCall_1StatefulPartitionedCall'thresholding/PartitionedCall_2:output:0normalisation_2_1915747*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_normalisation_2_layer_call_and_return_conditional_losses_19155582+
)normalisation_2/StatefulPartitionedCall_1?
)normalisation_3/StatefulPartitionedCall_1StatefulPartitionedCall'thresholding/PartitionedCall_1:output:0normalisation_3_1915744*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_normalisation_3_layer_call_and_return_conditional_losses_19155742+
)normalisation_3/StatefulPartitionedCall_1?
)normalisation_4/StatefulPartitionedCall_1StatefulPartitionedCall%thresholding/PartitionedCall:output:0normalisation_4_1915741*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_normalisation_4_layer_call_and_return_conditional_losses_19155902+
)normalisation_4/StatefulPartitionedCall_1?
*learnlet_synthesis/StatefulPartitionedCallStatefulPartitionedCall0normalisation/StatefulPartitionedCall_1:output:02normalisation_1/StatefulPartitionedCall_1:output:02normalisation_2/StatefulPartitionedCall_1:output:02normalisation_3/StatefulPartitionedCall_1:output:02normalisation_4/StatefulPartitionedCall_1:output:02learnlet_analysis/StatefulPartitionedCall:output:5learnlet_synthesis_1915771learnlet_synthesis_1915773learnlet_synthesis_1915775learnlet_synthesis_1915777learnlet_synthesis_1915779*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*'
_read_only_resource_inputs	
	
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_learnlet_synthesis_layer_call_and_return_conditional_losses_19156842,
*learnlet_synthesis/StatefulPartitionedCall?
IdentityIdentity3learnlet_synthesis/StatefulPartitionedCall:output:0*^learnlet_analysis/StatefulPartitionedCall+^learnlet_synthesis/StatefulPartitionedCall&^normalisation/StatefulPartitionedCall(^normalisation/StatefulPartitionedCall_1(^normalisation_1/StatefulPartitionedCall*^normalisation_1/StatefulPartitionedCall_1(^normalisation_2/StatefulPartitionedCall*^normalisation_2/StatefulPartitionedCall_1(^normalisation_3/StatefulPartitionedCall*^normalisation_3/StatefulPartitionedCall_1(^normalisation_4/StatefulPartitionedCall*^normalisation_4/StatefulPartitionedCall_1*
T0*/
_output_shapes
:?????????@@2

Identity"
identityIdentity:output:0*x
_input_shapesg
e:?????????@@:::::::::::::::::2V
)learnlet_analysis/StatefulPartitionedCall)learnlet_analysis/StatefulPartitionedCall2X
*learnlet_synthesis/StatefulPartitionedCall*learnlet_synthesis/StatefulPartitionedCall2N
%normalisation/StatefulPartitionedCall%normalisation/StatefulPartitionedCall2R
'normalisation/StatefulPartitionedCall_1'normalisation/StatefulPartitionedCall_12R
'normalisation_1/StatefulPartitionedCall'normalisation_1/StatefulPartitionedCall2V
)normalisation_1/StatefulPartitionedCall_1)normalisation_1/StatefulPartitionedCall_12R
'normalisation_2/StatefulPartitionedCall'normalisation_2/StatefulPartitionedCall2V
)normalisation_2/StatefulPartitionedCall_1)normalisation_2/StatefulPartitionedCall_12R
'normalisation_3/StatefulPartitionedCall'normalisation_3/StatefulPartitionedCall2V
)normalisation_3/StatefulPartitionedCall_1)normalisation_3/StatefulPartitionedCall_12R
'normalisation_4/StatefulPartitionedCall'normalisation_4/StatefulPartitionedCall2V
)normalisation_4/StatefulPartitionedCall_1)normalisation_4/StatefulPartitionedCall_1:X T
/
_output_shapes
:?????????@@
!
_user_specified_name	input_1:$ 

_output_shapes

:
?
e
I__inference_thresholding_layer_call_and_return_conditional_losses_1916801

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:?????????@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
e
I__inference_thresholding_layer_call_and_return_conditional_losses_1915491

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:?????????@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
3__inference_learnlet_analysis_layer_call_fn_1916756	
image
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
identity

identity_1

identity_2

identity_3

identity_4

identity_5??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallimageunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout

2*
_collective_manager_ids
 *?
_output_shapes?
?:?????????@@@:?????????  @:?????????@:?????????@:?????????@:?????????*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_learnlet_analysis_layer_call_and_return_conditional_losses_19153172
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@@@2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????  @2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity_2?

Identity_3Identity StatefulPartitionedCall:output:3^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity_3?

Identity_4Identity StatefulPartitionedCall:output:4^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity_4?

Identity_5Identity StatefulPartitionedCall:output:5^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*P
_input_shapes?
=:?????????@@:::::::22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:?????????@@

_user_specified_nameimage:$ 

_output_shapes

:
?
?
L__inference_normalisation_1_layer_call_and_return_conditional_losses_1915542
x
mul_readvariableop_resource
identity??mul/ReadVariableOp?
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:@*
dtype02
mul/ReadVariableOpj
mulMulxmul/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @2
mulx
IdentityIdentitymul:z:0^mul/ReadVariableOp*
T0*/
_output_shapes
:?????????  @2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????  @:2(
mul/ReadVariableOpmul/ReadVariableOp:R N
/
_output_shapes
:?????????  @

_user_specified_namex
?

?
%__inference_signature_wrapper_1916041
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__wrapped_model_19151772
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@@2

Identity"
identityIdentity:output:0*x
_input_shapesg
e:?????????@@:::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:?????????@@
!
_user_specified_name	input_1:$ 

_output_shapes

:
?
J
.__inference_thresholding_layer_call_fn_1916796

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_thresholding_layer_call_and_return_conditional_losses_19155022
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????  @2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????  @:W S
/
_output_shapes
:?????????  @
 
_user_specified_nameinputs
ș
?
B__inference_model_layer_call_and_return_conditional_losses_1916513

inputsA
=learnlet_analysis_wav_analysis_wav_pooling_mirrorpad_paddingsb
^learnlet_analysis_wav_analysis_wav_pooling_low_pass_filtering_1_conv2d_readvariableop_resourceE
Alearnlet_analysis_details_tiling_1_conv2d_readvariableop_resourceE
Alearnlet_analysis_details_tiling_2_conv2d_readvariableop_resourceE
Alearnlet_analysis_details_tiling_3_conv2d_readvariableop_resourceE
Alearnlet_analysis_details_tiling_4_conv2d_readvariableop_resourceE
Alearnlet_analysis_details_tiling_5_conv2d_readvariableop_resource3
/normalisation_4_truediv_readvariableop_resource3
/normalisation_3_truediv_readvariableop_resource3
/normalisation_2_truediv_readvariableop_resource3
/normalisation_1_truediv_readvariableop_resource1
-normalisation_truediv_readvariableop_resourceF
Blearnlet_synthesis_groupping_conv_1_conv2d_readvariableop_resourceF
Blearnlet_synthesis_groupping_conv_2_conv2d_readvariableop_resourceF
Blearnlet_synthesis_groupping_conv_3_conv2d_readvariableop_resourceF
Blearnlet_synthesis_groupping_conv_4_conv2d_readvariableop_resourceF
Blearnlet_synthesis_groupping_conv_5_conv2d_readvariableop_resource
identity??8learnlet_analysis/details_tiling_1/Conv2D/ReadVariableOp?8learnlet_analysis/details_tiling_2/Conv2D/ReadVariableOp?8learnlet_analysis/details_tiling_3/Conv2D/ReadVariableOp?8learnlet_analysis/details_tiling_4/Conv2D/ReadVariableOp?8learnlet_analysis/details_tiling_5/Conv2D/ReadVariableOp?Ulearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D/ReadVariableOp?Wlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1/ReadVariableOp?Wlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2/ReadVariableOp?Wlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3/ReadVariableOp?Wlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4/ReadVariableOp?9learnlet_synthesis/groupping_conv_1/Conv2D/ReadVariableOp?9learnlet_synthesis/groupping_conv_2/Conv2D/ReadVariableOp?9learnlet_synthesis/groupping_conv_3/Conv2D/ReadVariableOp?9learnlet_synthesis/groupping_conv_4/Conv2D/ReadVariableOp?9learnlet_synthesis/groupping_conv_5/Conv2D/ReadVariableOp? normalisation/mul/ReadVariableOp?$normalisation/truediv/ReadVariableOp?"normalisation_1/mul/ReadVariableOp?&normalisation_1/truediv/ReadVariableOp?"normalisation_2/mul/ReadVariableOp?&normalisation_2/truediv/ReadVariableOp?"normalisation_3/mul/ReadVariableOp?&normalisation_3/truediv/ReadVariableOp?"normalisation_4/mul/ReadVariableOp?&normalisation_4/truediv/ReadVariableOp?
4learnlet_analysis/wav_analysis/wav_pooling/MirrorPad	MirrorPadinputs=learnlet_analysis_wav_analysis_wav_pooling_mirrorpad_paddings*
T0*/
_output_shapes
:?????????DD*
mode	SYMMETRIC26
4learnlet_analysis/wav_analysis/wav_pooling/MirrorPad?
Ulearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D/ReadVariableOpReadVariableOp^learnlet_analysis_wav_analysis_wav_pooling_low_pass_filtering_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02W
Ulearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D/ReadVariableOp?
Flearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2DConv2D=learnlet_analysis/wav_analysis/wav_pooling/MirrorPad:output:0]learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@*
paddingVALID*
strides
2H
Flearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D?
Rlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice/stackConst*
_output_shapes
:*
dtype0*%
valueB"                2T
Rlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice/stack?
Tlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                2V
Tlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice/stack_1?
Tlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            2V
Tlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice/stack_2?
Llearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_sliceStridedSliceOlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D:output:0[learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice/stack:output:0]learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice/stack_1:output:0]learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????  *

begin_mask*
end_mask2N
Llearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice?
Hlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/ShapeShapeUlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice:output:0*
T0*
_output_shapes
:2J
Hlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/Shape?
Vlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2X
Vlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice/stack?
Xlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2Z
Xlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice/stack_1?
Xlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2Z
Xlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice/stack_2?
Plearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_sliceStridedSliceQlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/Shape:output:0_learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice/stack:output:0alearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice/stack_1:output:0alearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2R
Plearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice?
Hlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul/xConst*
_output_shapes
: *
dtype0*
value	B :2J
Hlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul/x?
Flearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mulMulQlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul/x:output:0Ylearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice:output:0*
T0*
_output_shapes
:2H
Flearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul?
Plearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubicResizeBicubicUlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice:output:0Jlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2R
Plearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic?
.learnlet_analysis/wav_analysis/wav_pooling/subSubinputsalearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic:resized_images:0*
T0*/
_output_shapes
:?????????@@20
.learnlet_analysis/wav_analysis/wav_pooling/sub?
(learnlet_analysis/wav_analysis/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *??j?2*
(learnlet_analysis/wav_analysis/truediv/y?
&learnlet_analysis/wav_analysis/truedivRealDiv2learnlet_analysis/wav_analysis/wav_pooling/sub:z:01learnlet_analysis/wav_analysis/truediv/y:output:0*
T0*/
_output_shapes
:?????????@@2(
&learnlet_analysis/wav_analysis/truediv?
Hlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*%
valueB"                2J
Hlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice/stack?
Jlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                2L
Jlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice/stack_1?
Jlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            2L
Jlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice/stack_2?
Blearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_sliceStridedSliceOlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D:output:0Qlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice/stack:output:0Slearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice/stack_1:output:0Slearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????  *

begin_mask*
end_mask2D
Blearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice?
6learnlet_analysis/wav_analysis/wav_pooling/MirrorPad_1	MirrorPadKlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice:output:0=learnlet_analysis_wav_analysis_wav_pooling_mirrorpad_paddings*
T0*/
_output_shapes
:?????????$$*
mode	SYMMETRIC28
6learnlet_analysis/wav_analysis/wav_pooling/MirrorPad_1?
Wlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1/ReadVariableOpReadVariableOp^learnlet_analysis_wav_analysis_wav_pooling_low_pass_filtering_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02Y
Wlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1/ReadVariableOp?
Hlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1Conv2D?learnlet_analysis/wav_analysis/wav_pooling/MirrorPad_1:output:0_learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  *
paddingVALID*
strides
2J
Hlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1?
Tlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*%
valueB"                2V
Tlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1/stack?
Vlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                2X
Vlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1/stack_1?
Vlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            2X
Vlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1/stack_2?
Nlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1StridedSliceQlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1:output:0]learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1/stack:output:0_learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1/stack_1:output:0_learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????*

begin_mask*
end_mask2P
Nlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1?
Jlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/Shape_1ShapeWlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1:output:0*
T0*
_output_shapes
:2L
Jlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/Shape_1?
Xlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2Z
Xlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1/stack?
Zlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2\
Zlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1/stack_1?
Zlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2\
Zlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1/stack_2?
Rlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1StridedSliceSlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/Shape_1:output:0alearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1/stack:output:0clearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1/stack_1:output:0clearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:2T
Rlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1?
Jlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :2L
Jlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_1/x?
Hlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_1MulSlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_1/x:output:0[learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1:output:0*
T0*
_output_shapes
:2J
Hlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_1?
Rlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_1ResizeBicubicWlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1:output:0Llearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_1:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2T
Rlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_1?
0learnlet_analysis/wav_analysis/wav_pooling/sub_1SubKlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice:output:0clearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_1:resized_images:0*
T0*/
_output_shapes
:?????????  22
0learnlet_analysis/wav_analysis/wav_pooling/sub_1?
*learnlet_analysis/wav_analysis/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *??Z>2,
*learnlet_analysis/wav_analysis/truediv_1/y?
(learnlet_analysis/wav_analysis/truediv_1RealDiv4learnlet_analysis/wav_analysis/wav_pooling/sub_1:z:03learnlet_analysis/wav_analysis/truediv_1/y:output:0*
T0*/
_output_shapes
:?????????  2*
(learnlet_analysis/wav_analysis/truediv_1?
Jlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*%
valueB"                2L
Jlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_1/stack?
Llearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                2N
Llearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_1/stack_1?
Llearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            2N
Llearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_1/stack_2?
Dlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_1StridedSliceQlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1:output:0Slearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_1/stack:output:0Ulearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_1/stack_1:output:0Ulearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????*

begin_mask*
end_mask2F
Dlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_1?
6learnlet_analysis/wav_analysis/wav_pooling/MirrorPad_2	MirrorPadMlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_1:output:0=learnlet_analysis_wav_analysis_wav_pooling_mirrorpad_paddings*
T0*/
_output_shapes
:?????????*
mode	SYMMETRIC28
6learnlet_analysis/wav_analysis/wav_pooling/MirrorPad_2?
Wlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2/ReadVariableOpReadVariableOp^learnlet_analysis_wav_analysis_wav_pooling_low_pass_filtering_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02Y
Wlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2/ReadVariableOp?
Hlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2Conv2D?learnlet_analysis/wav_analysis/wav_pooling/MirrorPad_2:output:0_learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2J
Hlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2?
Tlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*%
valueB"                2V
Tlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2/stack?
Vlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                2X
Vlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2/stack_1?
Vlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            2X
Vlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2/stack_2?
Nlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2StridedSliceQlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2:output:0]learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2/stack:output:0_learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2/stack_1:output:0_learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????*

begin_mask*
end_mask2P
Nlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2?
Jlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/Shape_2ShapeWlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2:output:0*
T0*
_output_shapes
:2L
Jlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/Shape_2?
Xlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2Z
Xlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2/stack?
Zlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2\
Zlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2/stack_1?
Zlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2\
Zlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2/stack_2?
Rlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2StridedSliceSlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/Shape_2:output:0alearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2/stack:output:0clearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2/stack_1:output:0clearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:2T
Rlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2?
Jlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :2L
Jlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_2/x?
Hlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_2MulSlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_2/x:output:0[learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2:output:0*
T0*
_output_shapes
:2J
Hlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_2?
Rlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_2ResizeBicubicWlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2:output:0Llearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_2:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2T
Rlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_2?
0learnlet_analysis/wav_analysis/wav_pooling/sub_2SubMlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_1:output:0clearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_2:resized_images:0*
T0*/
_output_shapes
:?????????22
0learnlet_analysis/wav_analysis/wav_pooling/sub_2?
*learnlet_analysis/wav_analysis/truediv_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *J??=2,
*learnlet_analysis/wav_analysis/truediv_2/y?
(learnlet_analysis/wav_analysis/truediv_2RealDiv4learnlet_analysis/wav_analysis/wav_pooling/sub_2:z:03learnlet_analysis/wav_analysis/truediv_2/y:output:0*
T0*/
_output_shapes
:?????????2*
(learnlet_analysis/wav_analysis/truediv_2?
Jlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*%
valueB"                2L
Jlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_2/stack?
Llearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                2N
Llearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_2/stack_1?
Llearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            2N
Llearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_2/stack_2?
Dlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_2StridedSliceQlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2:output:0Slearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_2/stack:output:0Ulearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_2/stack_1:output:0Ulearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????*

begin_mask*
end_mask2F
Dlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_2?
6learnlet_analysis/wav_analysis/wav_pooling/MirrorPad_3	MirrorPadMlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_2:output:0=learnlet_analysis_wav_analysis_wav_pooling_mirrorpad_paddings*
T0*/
_output_shapes
:?????????*
mode	SYMMETRIC28
6learnlet_analysis/wav_analysis/wav_pooling/MirrorPad_3?
Wlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3/ReadVariableOpReadVariableOp^learnlet_analysis_wav_analysis_wav_pooling_low_pass_filtering_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02Y
Wlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3/ReadVariableOp?
Hlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3Conv2D?learnlet_analysis/wav_analysis/wav_pooling/MirrorPad_3:output:0_learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2J
Hlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3?
Tlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*%
valueB"                2V
Tlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3/stack?
Vlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                2X
Vlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3/stack_1?
Vlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            2X
Vlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3/stack_2?
Nlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3StridedSliceQlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3:output:0]learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3/stack:output:0_learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3/stack_1:output:0_learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????*

begin_mask*
end_mask2P
Nlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3?
Jlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/Shape_3ShapeWlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3:output:0*
T0*
_output_shapes
:2L
Jlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/Shape_3?
Xlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2Z
Xlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3/stack?
Zlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2\
Zlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3/stack_1?
Zlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2\
Zlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3/stack_2?
Rlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3StridedSliceSlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/Shape_3:output:0alearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3/stack:output:0clearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3/stack_1:output:0clearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:2T
Rlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3?
Jlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :2L
Jlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_3/x?
Hlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_3MulSlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_3/x:output:0[learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3:output:0*
T0*
_output_shapes
:2J
Hlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_3?
Rlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_3ResizeBicubicWlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3:output:0Llearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_3:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2T
Rlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_3?
0learnlet_analysis/wav_analysis/wav_pooling/sub_3SubMlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_2:output:0clearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_3:resized_images:0*
T0*/
_output_shapes
:?????????22
0learnlet_analysis/wav_analysis/wav_pooling/sub_3?
*learnlet_analysis/wav_analysis/truediv_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?9=2,
*learnlet_analysis/wav_analysis/truediv_3/y?
(learnlet_analysis/wav_analysis/truediv_3RealDiv4learnlet_analysis/wav_analysis/wav_pooling/sub_3:z:03learnlet_analysis/wav_analysis/truediv_3/y:output:0*
T0*/
_output_shapes
:?????????2*
(learnlet_analysis/wav_analysis/truediv_3?
Jlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*%
valueB"                2L
Jlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_3/stack?
Llearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                2N
Llearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_3/stack_1?
Llearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            2N
Llearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_3/stack_2?
Dlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_3StridedSliceQlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3:output:0Slearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_3/stack:output:0Ulearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_3/stack_1:output:0Ulearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_3/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????*

begin_mask*
end_mask2F
Dlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_3?
6learnlet_analysis/wav_analysis/wav_pooling/MirrorPad_4	MirrorPadMlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_3:output:0=learnlet_analysis_wav_analysis_wav_pooling_mirrorpad_paddings*
T0*/
_output_shapes
:?????????*
mode	SYMMETRIC28
6learnlet_analysis/wav_analysis/wav_pooling/MirrorPad_4?
Wlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4/ReadVariableOpReadVariableOp^learnlet_analysis_wav_analysis_wav_pooling_low_pass_filtering_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02Y
Wlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4/ReadVariableOp?
Hlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4Conv2D?learnlet_analysis/wav_analysis/wav_pooling/MirrorPad_4:output:0_learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2J
Hlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4?
Tlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*%
valueB"                2V
Tlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4/stack?
Vlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                2X
Vlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4/stack_1?
Vlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            2X
Vlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4/stack_2?
Nlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4StridedSliceQlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4:output:0]learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4/stack:output:0_learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4/stack_1:output:0_learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????*

begin_mask*
end_mask2P
Nlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4?
Jlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/Shape_4ShapeWlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4:output:0*
T0*
_output_shapes
:2L
Jlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/Shape_4?
Xlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:2Z
Xlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4/stack?
Zlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2\
Zlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4/stack_1?
Zlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2\
Zlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4/stack_2?
Rlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4StridedSliceSlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/Shape_4:output:0alearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4/stack:output:0clearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4/stack_1:output:0clearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
:2T
Rlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4?
Jlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_4/xConst*
_output_shapes
: *
dtype0*
value	B :2L
Jlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_4/x?
Hlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_4MulSlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_4/x:output:0[learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4:output:0*
T0*
_output_shapes
:2J
Hlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_4?
Rlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_4ResizeBicubicWlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4:output:0Llearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_4:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2T
Rlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_4?
0learnlet_analysis/wav_analysis/wav_pooling/sub_4SubMlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_3:output:0clearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_4:resized_images:0*
T0*/
_output_shapes
:?????????22
0learnlet_analysis/wav_analysis/wav_pooling/sub_4?
*learnlet_analysis/wav_analysis/truediv_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *?8?<2,
*learnlet_analysis/wav_analysis/truediv_4/y?
(learnlet_analysis/wav_analysis/truediv_4RealDiv4learnlet_analysis/wav_analysis/wav_pooling/sub_4:z:03learnlet_analysis/wav_analysis/truediv_4/y:output:0*
T0*/
_output_shapes
:?????????2*
(learnlet_analysis/wav_analysis/truediv_4?
Jlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*%
valueB"                2L
Jlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_4/stack?
Llearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                2N
Llearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_4/stack_1?
Llearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            2N
Llearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_4/stack_2?
Dlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_4StridedSliceQlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4:output:0Slearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_4/stack:output:0Ulearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_4/stack_1:output:0Ulearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_4/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????*

begin_mask*
end_mask2F
Dlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_4?
8learnlet_analysis/details_tiling_1/Conv2D/ReadVariableOpReadVariableOpAlearnlet_analysis_details_tiling_1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02:
8learnlet_analysis/details_tiling_1/Conv2D/ReadVariableOp?
)learnlet_analysis/details_tiling_1/Conv2DConv2D*learnlet_analysis/wav_analysis/truediv:z:0@learnlet_analysis/details_tiling_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@*
paddingSAME*
strides
2+
)learnlet_analysis/details_tiling_1/Conv2D?
8learnlet_analysis/details_tiling_2/Conv2D/ReadVariableOpReadVariableOpAlearnlet_analysis_details_tiling_2_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02:
8learnlet_analysis/details_tiling_2/Conv2D/ReadVariableOp?
)learnlet_analysis/details_tiling_2/Conv2DConv2D,learnlet_analysis/wav_analysis/truediv_1:z:0@learnlet_analysis/details_tiling_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @*
paddingSAME*
strides
2+
)learnlet_analysis/details_tiling_2/Conv2D?
8learnlet_analysis/details_tiling_3/Conv2D/ReadVariableOpReadVariableOpAlearnlet_analysis_details_tiling_3_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02:
8learnlet_analysis/details_tiling_3/Conv2D/ReadVariableOp?
)learnlet_analysis/details_tiling_3/Conv2DConv2D,learnlet_analysis/wav_analysis/truediv_2:z:0@learnlet_analysis/details_tiling_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2+
)learnlet_analysis/details_tiling_3/Conv2D?
8learnlet_analysis/details_tiling_4/Conv2D/ReadVariableOpReadVariableOpAlearnlet_analysis_details_tiling_4_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02:
8learnlet_analysis/details_tiling_4/Conv2D/ReadVariableOp?
)learnlet_analysis/details_tiling_4/Conv2DConv2D,learnlet_analysis/wav_analysis/truediv_3:z:0@learnlet_analysis/details_tiling_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2+
)learnlet_analysis/details_tiling_4/Conv2D?
8learnlet_analysis/details_tiling_5/Conv2D/ReadVariableOpReadVariableOpAlearnlet_analysis_details_tiling_5_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02:
8learnlet_analysis/details_tiling_5/Conv2D/ReadVariableOp?
)learnlet_analysis/details_tiling_5/Conv2DConv2D,learnlet_analysis/wav_analysis/truediv_4:z:0@learnlet_analysis/details_tiling_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2+
)learnlet_analysis/details_tiling_5/Conv2D?
&normalisation_4/truediv/ReadVariableOpReadVariableOp/normalisation_4_truediv_readvariableop_resource*
_output_shapes
:@*
dtype02(
&normalisation_4/truediv/ReadVariableOp?
normalisation_4/truedivRealDiv2learnlet_analysis/details_tiling_5/Conv2D:output:0.normalisation_4/truediv/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
normalisation_4/truediv?
&normalisation_3/truediv/ReadVariableOpReadVariableOp/normalisation_3_truediv_readvariableop_resource*
_output_shapes
:@*
dtype02(
&normalisation_3/truediv/ReadVariableOp?
normalisation_3/truedivRealDiv2learnlet_analysis/details_tiling_4/Conv2D:output:0.normalisation_3/truediv/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
normalisation_3/truediv?
&normalisation_2/truediv/ReadVariableOpReadVariableOp/normalisation_2_truediv_readvariableop_resource*
_output_shapes
:@*
dtype02(
&normalisation_2/truediv/ReadVariableOp?
normalisation_2/truedivRealDiv2learnlet_analysis/details_tiling_3/Conv2D:output:0.normalisation_2/truediv/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
normalisation_2/truediv?
&normalisation_1/truediv/ReadVariableOpReadVariableOp/normalisation_1_truediv_readvariableop_resource*
_output_shapes
:@*
dtype02(
&normalisation_1/truediv/ReadVariableOp?
normalisation_1/truedivRealDiv2learnlet_analysis/details_tiling_2/Conv2D:output:0.normalisation_1/truediv/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @2
normalisation_1/truediv?
$normalisation/truediv/ReadVariableOpReadVariableOp-normalisation_truediv_readvariableop_resource*
_output_shapes
:@*
dtype02&
$normalisation/truediv/ReadVariableOp?
normalisation/truedivRealDiv2learnlet_analysis/details_tiling_1/Conv2D:output:0,normalisation/truediv/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@2
normalisation/truediv?
thresholding/ReluRelunormalisation_4/truediv:z:0*
T0*/
_output_shapes
:?????????@2
thresholding/Relu?
thresholding/Relu_1Relunormalisation_3/truediv:z:0*
T0*/
_output_shapes
:?????????@2
thresholding/Relu_1?
thresholding/Relu_2Relunormalisation_2/truediv:z:0*
T0*/
_output_shapes
:?????????@2
thresholding/Relu_2?
thresholding/Relu_3Relunormalisation_1/truediv:z:0*
T0*/
_output_shapes
:?????????  @2
thresholding/Relu_3?
thresholding/Relu_4Relunormalisation/truediv:z:0*
T0*/
_output_shapes
:?????????@@@2
thresholding/Relu_4?
 normalisation/mul/ReadVariableOpReadVariableOp-normalisation_truediv_readvariableop_resource*
_output_shapes
:@*
dtype02"
 normalisation/mul/ReadVariableOp?
normalisation/mulMul!thresholding/Relu_4:activations:0(normalisation/mul/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@2
normalisation/mul?
"normalisation_1/mul/ReadVariableOpReadVariableOp/normalisation_1_truediv_readvariableop_resource*
_output_shapes
:@*
dtype02$
"normalisation_1/mul/ReadVariableOp?
normalisation_1/mulMul!thresholding/Relu_3:activations:0*normalisation_1/mul/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @2
normalisation_1/mul?
"normalisation_2/mul/ReadVariableOpReadVariableOp/normalisation_2_truediv_readvariableop_resource*
_output_shapes
:@*
dtype02$
"normalisation_2/mul/ReadVariableOp?
normalisation_2/mulMul!thresholding/Relu_2:activations:0*normalisation_2/mul/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
normalisation_2/mul?
"normalisation_3/mul/ReadVariableOpReadVariableOp/normalisation_3_truediv_readvariableop_resource*
_output_shapes
:@*
dtype02$
"normalisation_3/mul/ReadVariableOp?
normalisation_3/mulMul!thresholding/Relu_1:activations:0*normalisation_3/mul/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
normalisation_3/mul?
"normalisation_4/mul/ReadVariableOpReadVariableOp/normalisation_4_truediv_readvariableop_resource*
_output_shapes
:@*
dtype02$
"normalisation_4/mul/ReadVariableOp?
normalisation_4/mulMulthresholding/Relu:activations:0*normalisation_4/mul/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
normalisation_4/mul?
2learnlet_synthesis/fixed_point_up_sampling_1/ShapeShapeMlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_4:output:0*
T0*
_output_shapes
:24
2learnlet_synthesis/fixed_point_up_sampling_1/Shape?
@learnlet_synthesis/fixed_point_up_sampling_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2B
@learnlet_synthesis/fixed_point_up_sampling_1/strided_slice/stack?
Blearnlet_synthesis/fixed_point_up_sampling_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2D
Blearnlet_synthesis/fixed_point_up_sampling_1/strided_slice/stack_1?
Blearnlet_synthesis/fixed_point_up_sampling_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2D
Blearnlet_synthesis/fixed_point_up_sampling_1/strided_slice/stack_2?
:learnlet_synthesis/fixed_point_up_sampling_1/strided_sliceStridedSlice;learnlet_synthesis/fixed_point_up_sampling_1/Shape:output:0Ilearnlet_synthesis/fixed_point_up_sampling_1/strided_slice/stack:output:0Klearnlet_synthesis/fixed_point_up_sampling_1/strided_slice/stack_1:output:0Klearnlet_synthesis/fixed_point_up_sampling_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2<
:learnlet_synthesis/fixed_point_up_sampling_1/strided_slice?
2learnlet_synthesis/fixed_point_up_sampling_1/mul/xConst*
_output_shapes
: *
dtype0*
value	B :24
2learnlet_synthesis/fixed_point_up_sampling_1/mul/x?
0learnlet_synthesis/fixed_point_up_sampling_1/mulMul;learnlet_synthesis/fixed_point_up_sampling_1/mul/x:output:0Clearnlet_synthesis/fixed_point_up_sampling_1/strided_slice:output:0*
T0*
_output_shapes
:22
0learnlet_synthesis/fixed_point_up_sampling_1/mul?
:learnlet_synthesis/fixed_point_up_sampling_1/ResizeBicubicResizeBicubicMlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_4:output:04learnlet_synthesis/fixed_point_up_sampling_1/mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2<
:learnlet_synthesis/fixed_point_up_sampling_1/ResizeBicubicy
learnlet_synthesis/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *?8?<2
learnlet_synthesis/mul/y?
learnlet_synthesis/mulMulnormalisation_4/mul:z:0!learnlet_synthesis/mul/y:output:0*
T0*/
_output_shapes
:?????????@2
learnlet_synthesis/mul?
learnlet_synthesis/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2 
learnlet_synthesis/concat/axis?
learnlet_synthesis/concatConcatV2Klearnlet_synthesis/fixed_point_up_sampling_1/ResizeBicubic:resized_images:0learnlet_synthesis/mul:z:0'learnlet_synthesis/concat/axis:output:0*
N*
T0*/
_output_shapes
:?????????A2
learnlet_synthesis/concat?
9learnlet_synthesis/groupping_conv_1/Conv2D/ReadVariableOpReadVariableOpBlearnlet_synthesis_groupping_conv_1_conv2d_readvariableop_resource*&
_output_shapes
:A*
dtype02;
9learnlet_synthesis/groupping_conv_1/Conv2D/ReadVariableOp?
*learnlet_synthesis/groupping_conv_1/Conv2DConv2D"learnlet_synthesis/concat:output:0Alearnlet_synthesis/groupping_conv_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2,
*learnlet_synthesis/groupping_conv_1/Conv2D?
4learnlet_synthesis/fixed_point_up_sampling_1/Shape_1Shape3learnlet_synthesis/groupping_conv_1/Conv2D:output:0*
T0*
_output_shapes
:26
4learnlet_synthesis/fixed_point_up_sampling_1/Shape_1?
Blearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2D
Blearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_1/stack?
Dlearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2F
Dlearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_1/stack_1?
Dlearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2F
Dlearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_1/stack_2?
<learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_1StridedSlice=learnlet_synthesis/fixed_point_up_sampling_1/Shape_1:output:0Klearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_1/stack:output:0Mlearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_1/stack_1:output:0Mlearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:2>
<learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_1?
4learnlet_synthesis/fixed_point_up_sampling_1/mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :26
4learnlet_synthesis/fixed_point_up_sampling_1/mul_1/x?
2learnlet_synthesis/fixed_point_up_sampling_1/mul_1Mul=learnlet_synthesis/fixed_point_up_sampling_1/mul_1/x:output:0Elearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_1:output:0*
T0*
_output_shapes
:24
2learnlet_synthesis/fixed_point_up_sampling_1/mul_1?
<learnlet_synthesis/fixed_point_up_sampling_1/ResizeBicubic_1ResizeBicubic3learnlet_synthesis/groupping_conv_1/Conv2D:output:06learnlet_synthesis/fixed_point_up_sampling_1/mul_1:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2>
<learnlet_synthesis/fixed_point_up_sampling_1/ResizeBicubic_1}
learnlet_synthesis/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?9=2
learnlet_synthesis/mul_1/y?
learnlet_synthesis/mul_1Mulnormalisation_3/mul:z:0#learnlet_synthesis/mul_1/y:output:0*
T0*/
_output_shapes
:?????????@2
learnlet_synthesis/mul_1?
 learnlet_synthesis/concat_1/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 learnlet_synthesis/concat_1/axis?
learnlet_synthesis/concat_1ConcatV2Mlearnlet_synthesis/fixed_point_up_sampling_1/ResizeBicubic_1:resized_images:0learnlet_synthesis/mul_1:z:0)learnlet_synthesis/concat_1/axis:output:0*
N*
T0*/
_output_shapes
:?????????A2
learnlet_synthesis/concat_1?
9learnlet_synthesis/groupping_conv_2/Conv2D/ReadVariableOpReadVariableOpBlearnlet_synthesis_groupping_conv_2_conv2d_readvariableop_resource*&
_output_shapes
:A*
dtype02;
9learnlet_synthesis/groupping_conv_2/Conv2D/ReadVariableOp?
*learnlet_synthesis/groupping_conv_2/Conv2DConv2D$learnlet_synthesis/concat_1:output:0Alearnlet_synthesis/groupping_conv_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2,
*learnlet_synthesis/groupping_conv_2/Conv2D?
4learnlet_synthesis/fixed_point_up_sampling_1/Shape_2Shape3learnlet_synthesis/groupping_conv_2/Conv2D:output:0*
T0*
_output_shapes
:26
4learnlet_synthesis/fixed_point_up_sampling_1/Shape_2?
Blearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2D
Blearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_2/stack?
Dlearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2F
Dlearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_2/stack_1?
Dlearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2F
Dlearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_2/stack_2?
<learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_2StridedSlice=learnlet_synthesis/fixed_point_up_sampling_1/Shape_2:output:0Klearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_2/stack:output:0Mlearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_2/stack_1:output:0Mlearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:2>
<learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_2?
4learnlet_synthesis/fixed_point_up_sampling_1/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :26
4learnlet_synthesis/fixed_point_up_sampling_1/mul_2/x?
2learnlet_synthesis/fixed_point_up_sampling_1/mul_2Mul=learnlet_synthesis/fixed_point_up_sampling_1/mul_2/x:output:0Elearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_2:output:0*
T0*
_output_shapes
:24
2learnlet_synthesis/fixed_point_up_sampling_1/mul_2?
<learnlet_synthesis/fixed_point_up_sampling_1/ResizeBicubic_2ResizeBicubic3learnlet_synthesis/groupping_conv_2/Conv2D:output:06learnlet_synthesis/fixed_point_up_sampling_1/mul_2:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2>
<learnlet_synthesis/fixed_point_up_sampling_1/ResizeBicubic_2}
learnlet_synthesis/mul_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *J??=2
learnlet_synthesis/mul_2/y?
learnlet_synthesis/mul_2Mulnormalisation_2/mul:z:0#learnlet_synthesis/mul_2/y:output:0*
T0*/
_output_shapes
:?????????@2
learnlet_synthesis/mul_2?
 learnlet_synthesis/concat_2/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 learnlet_synthesis/concat_2/axis?
learnlet_synthesis/concat_2ConcatV2Mlearnlet_synthesis/fixed_point_up_sampling_1/ResizeBicubic_2:resized_images:0learnlet_synthesis/mul_2:z:0)learnlet_synthesis/concat_2/axis:output:0*
N*
T0*/
_output_shapes
:?????????A2
learnlet_synthesis/concat_2?
9learnlet_synthesis/groupping_conv_3/Conv2D/ReadVariableOpReadVariableOpBlearnlet_synthesis_groupping_conv_3_conv2d_readvariableop_resource*&
_output_shapes
:A*
dtype02;
9learnlet_synthesis/groupping_conv_3/Conv2D/ReadVariableOp?
*learnlet_synthesis/groupping_conv_3/Conv2DConv2D$learnlet_synthesis/concat_2:output:0Alearnlet_synthesis/groupping_conv_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2,
*learnlet_synthesis/groupping_conv_3/Conv2D?
4learnlet_synthesis/fixed_point_up_sampling_1/Shape_3Shape3learnlet_synthesis/groupping_conv_3/Conv2D:output:0*
T0*
_output_shapes
:26
4learnlet_synthesis/fixed_point_up_sampling_1/Shape_3?
Blearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2D
Blearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_3/stack?
Dlearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2F
Dlearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_3/stack_1?
Dlearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2F
Dlearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_3/stack_2?
<learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_3StridedSlice=learnlet_synthesis/fixed_point_up_sampling_1/Shape_3:output:0Klearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_3/stack:output:0Mlearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_3/stack_1:output:0Mlearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:2>
<learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_3?
4learnlet_synthesis/fixed_point_up_sampling_1/mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :26
4learnlet_synthesis/fixed_point_up_sampling_1/mul_3/x?
2learnlet_synthesis/fixed_point_up_sampling_1/mul_3Mul=learnlet_synthesis/fixed_point_up_sampling_1/mul_3/x:output:0Elearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_3:output:0*
T0*
_output_shapes
:24
2learnlet_synthesis/fixed_point_up_sampling_1/mul_3?
<learnlet_synthesis/fixed_point_up_sampling_1/ResizeBicubic_3ResizeBicubic3learnlet_synthesis/groupping_conv_3/Conv2D:output:06learnlet_synthesis/fixed_point_up_sampling_1/mul_3:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2>
<learnlet_synthesis/fixed_point_up_sampling_1/ResizeBicubic_3}
learnlet_synthesis/mul_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *??Z>2
learnlet_synthesis/mul_3/y?
learnlet_synthesis/mul_3Mulnormalisation_1/mul:z:0#learnlet_synthesis/mul_3/y:output:0*
T0*/
_output_shapes
:?????????  @2
learnlet_synthesis/mul_3?
 learnlet_synthesis/concat_3/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 learnlet_synthesis/concat_3/axis?
learnlet_synthesis/concat_3ConcatV2Mlearnlet_synthesis/fixed_point_up_sampling_1/ResizeBicubic_3:resized_images:0learnlet_synthesis/mul_3:z:0)learnlet_synthesis/concat_3/axis:output:0*
N*
T0*/
_output_shapes
:?????????  A2
learnlet_synthesis/concat_3?
9learnlet_synthesis/groupping_conv_4/Conv2D/ReadVariableOpReadVariableOpBlearnlet_synthesis_groupping_conv_4_conv2d_readvariableop_resource*&
_output_shapes
:A*
dtype02;
9learnlet_synthesis/groupping_conv_4/Conv2D/ReadVariableOp?
*learnlet_synthesis/groupping_conv_4/Conv2DConv2D$learnlet_synthesis/concat_3:output:0Alearnlet_synthesis/groupping_conv_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  *
paddingSAME*
strides
2,
*learnlet_synthesis/groupping_conv_4/Conv2D?
4learnlet_synthesis/fixed_point_up_sampling_1/Shape_4Shape3learnlet_synthesis/groupping_conv_4/Conv2D:output:0*
T0*
_output_shapes
:26
4learnlet_synthesis/fixed_point_up_sampling_1/Shape_4?
Blearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:2D
Blearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_4/stack?
Dlearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2F
Dlearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_4/stack_1?
Dlearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2F
Dlearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_4/stack_2?
<learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_4StridedSlice=learnlet_synthesis/fixed_point_up_sampling_1/Shape_4:output:0Klearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_4/stack:output:0Mlearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_4/stack_1:output:0Mlearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
:2>
<learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_4?
4learnlet_synthesis/fixed_point_up_sampling_1/mul_4/xConst*
_output_shapes
: *
dtype0*
value	B :26
4learnlet_synthesis/fixed_point_up_sampling_1/mul_4/x?
2learnlet_synthesis/fixed_point_up_sampling_1/mul_4Mul=learnlet_synthesis/fixed_point_up_sampling_1/mul_4/x:output:0Elearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_4:output:0*
T0*
_output_shapes
:24
2learnlet_synthesis/fixed_point_up_sampling_1/mul_4?
<learnlet_synthesis/fixed_point_up_sampling_1/ResizeBicubic_4ResizeBicubic3learnlet_synthesis/groupping_conv_4/Conv2D:output:06learnlet_synthesis/fixed_point_up_sampling_1/mul_4:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2>
<learnlet_synthesis/fixed_point_up_sampling_1/ResizeBicubic_4}
learnlet_synthesis/mul_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *??j?2
learnlet_synthesis/mul_4/y?
learnlet_synthesis/mul_4Mulnormalisation/mul:z:0#learnlet_synthesis/mul_4/y:output:0*
T0*/
_output_shapes
:?????????@@@2
learnlet_synthesis/mul_4?
 learnlet_synthesis/concat_4/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 learnlet_synthesis/concat_4/axis?
learnlet_synthesis/concat_4ConcatV2Mlearnlet_synthesis/fixed_point_up_sampling_1/ResizeBicubic_4:resized_images:0learnlet_synthesis/mul_4:z:0)learnlet_synthesis/concat_4/axis:output:0*
N*
T0*/
_output_shapes
:?????????@@A2
learnlet_synthesis/concat_4?
9learnlet_synthesis/groupping_conv_5/Conv2D/ReadVariableOpReadVariableOpBlearnlet_synthesis_groupping_conv_5_conv2d_readvariableop_resource*&
_output_shapes
:A*
dtype02;
9learnlet_synthesis/groupping_conv_5/Conv2D/ReadVariableOp?
*learnlet_synthesis/groupping_conv_5/Conv2DConv2D$learnlet_synthesis/concat_4:output:0Alearnlet_synthesis/groupping_conv_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@*
paddingSAME*
strides
2,
*learnlet_synthesis/groupping_conv_5/Conv2D?
IdentityIdentity3learnlet_synthesis/groupping_conv_5/Conv2D:output:09^learnlet_analysis/details_tiling_1/Conv2D/ReadVariableOp9^learnlet_analysis/details_tiling_2/Conv2D/ReadVariableOp9^learnlet_analysis/details_tiling_3/Conv2D/ReadVariableOp9^learnlet_analysis/details_tiling_4/Conv2D/ReadVariableOp9^learnlet_analysis/details_tiling_5/Conv2D/ReadVariableOpV^learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D/ReadVariableOpX^learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1/ReadVariableOpX^learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2/ReadVariableOpX^learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3/ReadVariableOpX^learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4/ReadVariableOp:^learnlet_synthesis/groupping_conv_1/Conv2D/ReadVariableOp:^learnlet_synthesis/groupping_conv_2/Conv2D/ReadVariableOp:^learnlet_synthesis/groupping_conv_3/Conv2D/ReadVariableOp:^learnlet_synthesis/groupping_conv_4/Conv2D/ReadVariableOp:^learnlet_synthesis/groupping_conv_5/Conv2D/ReadVariableOp!^normalisation/mul/ReadVariableOp%^normalisation/truediv/ReadVariableOp#^normalisation_1/mul/ReadVariableOp'^normalisation_1/truediv/ReadVariableOp#^normalisation_2/mul/ReadVariableOp'^normalisation_2/truediv/ReadVariableOp#^normalisation_3/mul/ReadVariableOp'^normalisation_3/truediv/ReadVariableOp#^normalisation_4/mul/ReadVariableOp'^normalisation_4/truediv/ReadVariableOp*
T0*/
_output_shapes
:?????????@@2

Identity"
identityIdentity:output:0*x
_input_shapesg
e:?????????@@:::::::::::::::::2t
8learnlet_analysis/details_tiling_1/Conv2D/ReadVariableOp8learnlet_analysis/details_tiling_1/Conv2D/ReadVariableOp2t
8learnlet_analysis/details_tiling_2/Conv2D/ReadVariableOp8learnlet_analysis/details_tiling_2/Conv2D/ReadVariableOp2t
8learnlet_analysis/details_tiling_3/Conv2D/ReadVariableOp8learnlet_analysis/details_tiling_3/Conv2D/ReadVariableOp2t
8learnlet_analysis/details_tiling_4/Conv2D/ReadVariableOp8learnlet_analysis/details_tiling_4/Conv2D/ReadVariableOp2t
8learnlet_analysis/details_tiling_5/Conv2D/ReadVariableOp8learnlet_analysis/details_tiling_5/Conv2D/ReadVariableOp2?
Ulearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D/ReadVariableOpUlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D/ReadVariableOp2?
Wlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1/ReadVariableOpWlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1/ReadVariableOp2?
Wlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2/ReadVariableOpWlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2/ReadVariableOp2?
Wlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3/ReadVariableOpWlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3/ReadVariableOp2?
Wlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4/ReadVariableOpWlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4/ReadVariableOp2v
9learnlet_synthesis/groupping_conv_1/Conv2D/ReadVariableOp9learnlet_synthesis/groupping_conv_1/Conv2D/ReadVariableOp2v
9learnlet_synthesis/groupping_conv_2/Conv2D/ReadVariableOp9learnlet_synthesis/groupping_conv_2/Conv2D/ReadVariableOp2v
9learnlet_synthesis/groupping_conv_3/Conv2D/ReadVariableOp9learnlet_synthesis/groupping_conv_3/Conv2D/ReadVariableOp2v
9learnlet_synthesis/groupping_conv_4/Conv2D/ReadVariableOp9learnlet_synthesis/groupping_conv_4/Conv2D/ReadVariableOp2v
9learnlet_synthesis/groupping_conv_5/Conv2D/ReadVariableOp9learnlet_synthesis/groupping_conv_5/Conv2D/ReadVariableOp2D
 normalisation/mul/ReadVariableOp normalisation/mul/ReadVariableOp2L
$normalisation/truediv/ReadVariableOp$normalisation/truediv/ReadVariableOp2H
"normalisation_1/mul/ReadVariableOp"normalisation_1/mul/ReadVariableOp2P
&normalisation_1/truediv/ReadVariableOp&normalisation_1/truediv/ReadVariableOp2H
"normalisation_2/mul/ReadVariableOp"normalisation_2/mul/ReadVariableOp2P
&normalisation_2/truediv/ReadVariableOp&normalisation_2/truediv/ReadVariableOp2H
"normalisation_3/mul/ReadVariableOp"normalisation_3/mul/ReadVariableOp2P
&normalisation_3/truediv/ReadVariableOp&normalisation_3/truediv/ReadVariableOp2H
"normalisation_4/mul/ReadVariableOp"normalisation_4/mul/ReadVariableOp2P
&normalisation_4/truediv/ReadVariableOp&normalisation_4/truediv/ReadVariableOp:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs:$ 

_output_shapes

:
?
?
L__inference_normalisation_4_layer_call_and_return_conditional_losses_1915590
x
mul_readvariableop_resource
identity??mul/ReadVariableOp?
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:@*
dtype02
mul/ReadVariableOpj
mulMulxmul/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
mulx
IdentityIdentitymul:z:0^mul/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????@:2(
mul/ReadVariableOpmul/ReadVariableOp:R N
/
_output_shapes
:?????????@

_user_specified_namex
ș
?
B__inference_model_layer_call_and_return_conditional_losses_1916277

inputsA
=learnlet_analysis_wav_analysis_wav_pooling_mirrorpad_paddingsb
^learnlet_analysis_wav_analysis_wav_pooling_low_pass_filtering_1_conv2d_readvariableop_resourceE
Alearnlet_analysis_details_tiling_1_conv2d_readvariableop_resourceE
Alearnlet_analysis_details_tiling_2_conv2d_readvariableop_resourceE
Alearnlet_analysis_details_tiling_3_conv2d_readvariableop_resourceE
Alearnlet_analysis_details_tiling_4_conv2d_readvariableop_resourceE
Alearnlet_analysis_details_tiling_5_conv2d_readvariableop_resource3
/normalisation_4_truediv_readvariableop_resource3
/normalisation_3_truediv_readvariableop_resource3
/normalisation_2_truediv_readvariableop_resource3
/normalisation_1_truediv_readvariableop_resource1
-normalisation_truediv_readvariableop_resourceF
Blearnlet_synthesis_groupping_conv_1_conv2d_readvariableop_resourceF
Blearnlet_synthesis_groupping_conv_2_conv2d_readvariableop_resourceF
Blearnlet_synthesis_groupping_conv_3_conv2d_readvariableop_resourceF
Blearnlet_synthesis_groupping_conv_4_conv2d_readvariableop_resourceF
Blearnlet_synthesis_groupping_conv_5_conv2d_readvariableop_resource
identity??8learnlet_analysis/details_tiling_1/Conv2D/ReadVariableOp?8learnlet_analysis/details_tiling_2/Conv2D/ReadVariableOp?8learnlet_analysis/details_tiling_3/Conv2D/ReadVariableOp?8learnlet_analysis/details_tiling_4/Conv2D/ReadVariableOp?8learnlet_analysis/details_tiling_5/Conv2D/ReadVariableOp?Ulearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D/ReadVariableOp?Wlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1/ReadVariableOp?Wlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2/ReadVariableOp?Wlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3/ReadVariableOp?Wlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4/ReadVariableOp?9learnlet_synthesis/groupping_conv_1/Conv2D/ReadVariableOp?9learnlet_synthesis/groupping_conv_2/Conv2D/ReadVariableOp?9learnlet_synthesis/groupping_conv_3/Conv2D/ReadVariableOp?9learnlet_synthesis/groupping_conv_4/Conv2D/ReadVariableOp?9learnlet_synthesis/groupping_conv_5/Conv2D/ReadVariableOp? normalisation/mul/ReadVariableOp?$normalisation/truediv/ReadVariableOp?"normalisation_1/mul/ReadVariableOp?&normalisation_1/truediv/ReadVariableOp?"normalisation_2/mul/ReadVariableOp?&normalisation_2/truediv/ReadVariableOp?"normalisation_3/mul/ReadVariableOp?&normalisation_3/truediv/ReadVariableOp?"normalisation_4/mul/ReadVariableOp?&normalisation_4/truediv/ReadVariableOp?
4learnlet_analysis/wav_analysis/wav_pooling/MirrorPad	MirrorPadinputs=learnlet_analysis_wav_analysis_wav_pooling_mirrorpad_paddings*
T0*/
_output_shapes
:?????????DD*
mode	SYMMETRIC26
4learnlet_analysis/wav_analysis/wav_pooling/MirrorPad?
Ulearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D/ReadVariableOpReadVariableOp^learnlet_analysis_wav_analysis_wav_pooling_low_pass_filtering_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02W
Ulearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D/ReadVariableOp?
Flearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2DConv2D=learnlet_analysis/wav_analysis/wav_pooling/MirrorPad:output:0]learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@*
paddingVALID*
strides
2H
Flearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D?
Rlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice/stackConst*
_output_shapes
:*
dtype0*%
valueB"                2T
Rlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice/stack?
Tlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                2V
Tlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice/stack_1?
Tlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            2V
Tlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice/stack_2?
Llearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_sliceStridedSliceOlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D:output:0[learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice/stack:output:0]learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice/stack_1:output:0]learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????  *

begin_mask*
end_mask2N
Llearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice?
Hlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/ShapeShapeUlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice:output:0*
T0*
_output_shapes
:2J
Hlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/Shape?
Vlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2X
Vlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice/stack?
Xlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2Z
Xlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice/stack_1?
Xlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2Z
Xlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice/stack_2?
Plearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_sliceStridedSliceQlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/Shape:output:0_learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice/stack:output:0alearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice/stack_1:output:0alearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2R
Plearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice?
Hlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul/xConst*
_output_shapes
: *
dtype0*
value	B :2J
Hlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul/x?
Flearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mulMulQlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul/x:output:0Ylearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice:output:0*
T0*
_output_shapes
:2H
Flearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul?
Plearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubicResizeBicubicUlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice:output:0Jlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2R
Plearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic?
.learnlet_analysis/wav_analysis/wav_pooling/subSubinputsalearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic:resized_images:0*
T0*/
_output_shapes
:?????????@@20
.learnlet_analysis/wav_analysis/wav_pooling/sub?
(learnlet_analysis/wav_analysis/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *??j?2*
(learnlet_analysis/wav_analysis/truediv/y?
&learnlet_analysis/wav_analysis/truedivRealDiv2learnlet_analysis/wav_analysis/wav_pooling/sub:z:01learnlet_analysis/wav_analysis/truediv/y:output:0*
T0*/
_output_shapes
:?????????@@2(
&learnlet_analysis/wav_analysis/truediv?
Hlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*%
valueB"                2J
Hlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice/stack?
Jlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                2L
Jlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice/stack_1?
Jlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            2L
Jlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice/stack_2?
Blearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_sliceStridedSliceOlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D:output:0Qlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice/stack:output:0Slearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice/stack_1:output:0Slearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????  *

begin_mask*
end_mask2D
Blearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice?
6learnlet_analysis/wav_analysis/wav_pooling/MirrorPad_1	MirrorPadKlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice:output:0=learnlet_analysis_wav_analysis_wav_pooling_mirrorpad_paddings*
T0*/
_output_shapes
:?????????$$*
mode	SYMMETRIC28
6learnlet_analysis/wav_analysis/wav_pooling/MirrorPad_1?
Wlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1/ReadVariableOpReadVariableOp^learnlet_analysis_wav_analysis_wav_pooling_low_pass_filtering_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02Y
Wlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1/ReadVariableOp?
Hlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1Conv2D?learnlet_analysis/wav_analysis/wav_pooling/MirrorPad_1:output:0_learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  *
paddingVALID*
strides
2J
Hlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1?
Tlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*%
valueB"                2V
Tlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1/stack?
Vlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                2X
Vlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1/stack_1?
Vlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            2X
Vlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1/stack_2?
Nlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1StridedSliceQlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1:output:0]learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1/stack:output:0_learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1/stack_1:output:0_learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????*

begin_mask*
end_mask2P
Nlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1?
Jlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/Shape_1ShapeWlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1:output:0*
T0*
_output_shapes
:2L
Jlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/Shape_1?
Xlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2Z
Xlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1/stack?
Zlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2\
Zlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1/stack_1?
Zlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2\
Zlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1/stack_2?
Rlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1StridedSliceSlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/Shape_1:output:0alearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1/stack:output:0clearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1/stack_1:output:0clearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:2T
Rlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1?
Jlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :2L
Jlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_1/x?
Hlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_1MulSlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_1/x:output:0[learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1:output:0*
T0*
_output_shapes
:2J
Hlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_1?
Rlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_1ResizeBicubicWlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1:output:0Llearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_1:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2T
Rlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_1?
0learnlet_analysis/wav_analysis/wav_pooling/sub_1SubKlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice:output:0clearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_1:resized_images:0*
T0*/
_output_shapes
:?????????  22
0learnlet_analysis/wav_analysis/wav_pooling/sub_1?
*learnlet_analysis/wav_analysis/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *??Z>2,
*learnlet_analysis/wav_analysis/truediv_1/y?
(learnlet_analysis/wav_analysis/truediv_1RealDiv4learnlet_analysis/wav_analysis/wav_pooling/sub_1:z:03learnlet_analysis/wav_analysis/truediv_1/y:output:0*
T0*/
_output_shapes
:?????????  2*
(learnlet_analysis/wav_analysis/truediv_1?
Jlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*%
valueB"                2L
Jlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_1/stack?
Llearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                2N
Llearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_1/stack_1?
Llearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            2N
Llearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_1/stack_2?
Dlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_1StridedSliceQlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1:output:0Slearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_1/stack:output:0Ulearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_1/stack_1:output:0Ulearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????*

begin_mask*
end_mask2F
Dlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_1?
6learnlet_analysis/wav_analysis/wav_pooling/MirrorPad_2	MirrorPadMlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_1:output:0=learnlet_analysis_wav_analysis_wav_pooling_mirrorpad_paddings*
T0*/
_output_shapes
:?????????*
mode	SYMMETRIC28
6learnlet_analysis/wav_analysis/wav_pooling/MirrorPad_2?
Wlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2/ReadVariableOpReadVariableOp^learnlet_analysis_wav_analysis_wav_pooling_low_pass_filtering_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02Y
Wlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2/ReadVariableOp?
Hlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2Conv2D?learnlet_analysis/wav_analysis/wav_pooling/MirrorPad_2:output:0_learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2J
Hlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2?
Tlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*%
valueB"                2V
Tlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2/stack?
Vlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                2X
Vlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2/stack_1?
Vlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            2X
Vlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2/stack_2?
Nlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2StridedSliceQlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2:output:0]learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2/stack:output:0_learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2/stack_1:output:0_learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????*

begin_mask*
end_mask2P
Nlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2?
Jlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/Shape_2ShapeWlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2:output:0*
T0*
_output_shapes
:2L
Jlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/Shape_2?
Xlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2Z
Xlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2/stack?
Zlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2\
Zlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2/stack_1?
Zlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2\
Zlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2/stack_2?
Rlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2StridedSliceSlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/Shape_2:output:0alearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2/stack:output:0clearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2/stack_1:output:0clearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:2T
Rlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2?
Jlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :2L
Jlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_2/x?
Hlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_2MulSlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_2/x:output:0[learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2:output:0*
T0*
_output_shapes
:2J
Hlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_2?
Rlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_2ResizeBicubicWlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2:output:0Llearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_2:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2T
Rlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_2?
0learnlet_analysis/wav_analysis/wav_pooling/sub_2SubMlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_1:output:0clearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_2:resized_images:0*
T0*/
_output_shapes
:?????????22
0learnlet_analysis/wav_analysis/wav_pooling/sub_2?
*learnlet_analysis/wav_analysis/truediv_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *J??=2,
*learnlet_analysis/wav_analysis/truediv_2/y?
(learnlet_analysis/wav_analysis/truediv_2RealDiv4learnlet_analysis/wav_analysis/wav_pooling/sub_2:z:03learnlet_analysis/wav_analysis/truediv_2/y:output:0*
T0*/
_output_shapes
:?????????2*
(learnlet_analysis/wav_analysis/truediv_2?
Jlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*%
valueB"                2L
Jlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_2/stack?
Llearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                2N
Llearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_2/stack_1?
Llearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            2N
Llearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_2/stack_2?
Dlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_2StridedSliceQlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2:output:0Slearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_2/stack:output:0Ulearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_2/stack_1:output:0Ulearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????*

begin_mask*
end_mask2F
Dlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_2?
6learnlet_analysis/wav_analysis/wav_pooling/MirrorPad_3	MirrorPadMlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_2:output:0=learnlet_analysis_wav_analysis_wav_pooling_mirrorpad_paddings*
T0*/
_output_shapes
:?????????*
mode	SYMMETRIC28
6learnlet_analysis/wav_analysis/wav_pooling/MirrorPad_3?
Wlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3/ReadVariableOpReadVariableOp^learnlet_analysis_wav_analysis_wav_pooling_low_pass_filtering_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02Y
Wlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3/ReadVariableOp?
Hlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3Conv2D?learnlet_analysis/wav_analysis/wav_pooling/MirrorPad_3:output:0_learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2J
Hlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3?
Tlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*%
valueB"                2V
Tlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3/stack?
Vlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                2X
Vlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3/stack_1?
Vlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            2X
Vlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3/stack_2?
Nlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3StridedSliceQlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3:output:0]learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3/stack:output:0_learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3/stack_1:output:0_learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????*

begin_mask*
end_mask2P
Nlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3?
Jlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/Shape_3ShapeWlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3:output:0*
T0*
_output_shapes
:2L
Jlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/Shape_3?
Xlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2Z
Xlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3/stack?
Zlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2\
Zlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3/stack_1?
Zlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2\
Zlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3/stack_2?
Rlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3StridedSliceSlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/Shape_3:output:0alearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3/stack:output:0clearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3/stack_1:output:0clearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:2T
Rlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3?
Jlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :2L
Jlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_3/x?
Hlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_3MulSlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_3/x:output:0[learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3:output:0*
T0*
_output_shapes
:2J
Hlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_3?
Rlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_3ResizeBicubicWlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3:output:0Llearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_3:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2T
Rlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_3?
0learnlet_analysis/wav_analysis/wav_pooling/sub_3SubMlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_2:output:0clearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_3:resized_images:0*
T0*/
_output_shapes
:?????????22
0learnlet_analysis/wav_analysis/wav_pooling/sub_3?
*learnlet_analysis/wav_analysis/truediv_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?9=2,
*learnlet_analysis/wav_analysis/truediv_3/y?
(learnlet_analysis/wav_analysis/truediv_3RealDiv4learnlet_analysis/wav_analysis/wav_pooling/sub_3:z:03learnlet_analysis/wav_analysis/truediv_3/y:output:0*
T0*/
_output_shapes
:?????????2*
(learnlet_analysis/wav_analysis/truediv_3?
Jlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*%
valueB"                2L
Jlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_3/stack?
Llearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                2N
Llearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_3/stack_1?
Llearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            2N
Llearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_3/stack_2?
Dlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_3StridedSliceQlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3:output:0Slearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_3/stack:output:0Ulearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_3/stack_1:output:0Ulearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_3/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????*

begin_mask*
end_mask2F
Dlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_3?
6learnlet_analysis/wav_analysis/wav_pooling/MirrorPad_4	MirrorPadMlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_3:output:0=learnlet_analysis_wav_analysis_wav_pooling_mirrorpad_paddings*
T0*/
_output_shapes
:?????????*
mode	SYMMETRIC28
6learnlet_analysis/wav_analysis/wav_pooling/MirrorPad_4?
Wlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4/ReadVariableOpReadVariableOp^learnlet_analysis_wav_analysis_wav_pooling_low_pass_filtering_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02Y
Wlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4/ReadVariableOp?
Hlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4Conv2D?learnlet_analysis/wav_analysis/wav_pooling/MirrorPad_4:output:0_learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2J
Hlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4?
Tlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*%
valueB"                2V
Tlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4/stack?
Vlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                2X
Vlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4/stack_1?
Vlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            2X
Vlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4/stack_2?
Nlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4StridedSliceQlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4:output:0]learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4/stack:output:0_learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4/stack_1:output:0_learnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????*

begin_mask*
end_mask2P
Nlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4?
Jlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/Shape_4ShapeWlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4:output:0*
T0*
_output_shapes
:2L
Jlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/Shape_4?
Xlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:2Z
Xlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4/stack?
Zlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2\
Zlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4/stack_1?
Zlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2\
Zlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4/stack_2?
Rlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4StridedSliceSlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/Shape_4:output:0alearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4/stack:output:0clearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4/stack_1:output:0clearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
:2T
Rlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4?
Jlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_4/xConst*
_output_shapes
: *
dtype0*
value	B :2L
Jlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_4/x?
Hlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_4MulSlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_4/x:output:0[learnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4:output:0*
T0*
_output_shapes
:2J
Hlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_4?
Rlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_4ResizeBicubicWlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4:output:0Llearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/mul_4:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2T
Rlearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_4?
0learnlet_analysis/wav_analysis/wav_pooling/sub_4SubMlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_3:output:0clearnlet_analysis/wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_4:resized_images:0*
T0*/
_output_shapes
:?????????22
0learnlet_analysis/wav_analysis/wav_pooling/sub_4?
*learnlet_analysis/wav_analysis/truediv_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *?8?<2,
*learnlet_analysis/wav_analysis/truediv_4/y?
(learnlet_analysis/wav_analysis/truediv_4RealDiv4learnlet_analysis/wav_analysis/wav_pooling/sub_4:z:03learnlet_analysis/wav_analysis/truediv_4/y:output:0*
T0*/
_output_shapes
:?????????2*
(learnlet_analysis/wav_analysis/truediv_4?
Jlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*%
valueB"                2L
Jlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_4/stack?
Llearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                2N
Llearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_4/stack_1?
Llearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            2N
Llearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_4/stack_2?
Dlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_4StridedSliceQlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4:output:0Slearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_4/stack:output:0Ulearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_4/stack_1:output:0Ulearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_4/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????*

begin_mask*
end_mask2F
Dlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_4?
8learnlet_analysis/details_tiling_1/Conv2D/ReadVariableOpReadVariableOpAlearnlet_analysis_details_tiling_1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02:
8learnlet_analysis/details_tiling_1/Conv2D/ReadVariableOp?
)learnlet_analysis/details_tiling_1/Conv2DConv2D*learnlet_analysis/wav_analysis/truediv:z:0@learnlet_analysis/details_tiling_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@*
paddingSAME*
strides
2+
)learnlet_analysis/details_tiling_1/Conv2D?
8learnlet_analysis/details_tiling_2/Conv2D/ReadVariableOpReadVariableOpAlearnlet_analysis_details_tiling_2_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02:
8learnlet_analysis/details_tiling_2/Conv2D/ReadVariableOp?
)learnlet_analysis/details_tiling_2/Conv2DConv2D,learnlet_analysis/wav_analysis/truediv_1:z:0@learnlet_analysis/details_tiling_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @*
paddingSAME*
strides
2+
)learnlet_analysis/details_tiling_2/Conv2D?
8learnlet_analysis/details_tiling_3/Conv2D/ReadVariableOpReadVariableOpAlearnlet_analysis_details_tiling_3_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02:
8learnlet_analysis/details_tiling_3/Conv2D/ReadVariableOp?
)learnlet_analysis/details_tiling_3/Conv2DConv2D,learnlet_analysis/wav_analysis/truediv_2:z:0@learnlet_analysis/details_tiling_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2+
)learnlet_analysis/details_tiling_3/Conv2D?
8learnlet_analysis/details_tiling_4/Conv2D/ReadVariableOpReadVariableOpAlearnlet_analysis_details_tiling_4_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02:
8learnlet_analysis/details_tiling_4/Conv2D/ReadVariableOp?
)learnlet_analysis/details_tiling_4/Conv2DConv2D,learnlet_analysis/wav_analysis/truediv_3:z:0@learnlet_analysis/details_tiling_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2+
)learnlet_analysis/details_tiling_4/Conv2D?
8learnlet_analysis/details_tiling_5/Conv2D/ReadVariableOpReadVariableOpAlearnlet_analysis_details_tiling_5_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02:
8learnlet_analysis/details_tiling_5/Conv2D/ReadVariableOp?
)learnlet_analysis/details_tiling_5/Conv2DConv2D,learnlet_analysis/wav_analysis/truediv_4:z:0@learnlet_analysis/details_tiling_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2+
)learnlet_analysis/details_tiling_5/Conv2D?
&normalisation_4/truediv/ReadVariableOpReadVariableOp/normalisation_4_truediv_readvariableop_resource*
_output_shapes
:@*
dtype02(
&normalisation_4/truediv/ReadVariableOp?
normalisation_4/truedivRealDiv2learnlet_analysis/details_tiling_5/Conv2D:output:0.normalisation_4/truediv/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
normalisation_4/truediv?
&normalisation_3/truediv/ReadVariableOpReadVariableOp/normalisation_3_truediv_readvariableop_resource*
_output_shapes
:@*
dtype02(
&normalisation_3/truediv/ReadVariableOp?
normalisation_3/truedivRealDiv2learnlet_analysis/details_tiling_4/Conv2D:output:0.normalisation_3/truediv/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
normalisation_3/truediv?
&normalisation_2/truediv/ReadVariableOpReadVariableOp/normalisation_2_truediv_readvariableop_resource*
_output_shapes
:@*
dtype02(
&normalisation_2/truediv/ReadVariableOp?
normalisation_2/truedivRealDiv2learnlet_analysis/details_tiling_3/Conv2D:output:0.normalisation_2/truediv/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
normalisation_2/truediv?
&normalisation_1/truediv/ReadVariableOpReadVariableOp/normalisation_1_truediv_readvariableop_resource*
_output_shapes
:@*
dtype02(
&normalisation_1/truediv/ReadVariableOp?
normalisation_1/truedivRealDiv2learnlet_analysis/details_tiling_2/Conv2D:output:0.normalisation_1/truediv/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @2
normalisation_1/truediv?
$normalisation/truediv/ReadVariableOpReadVariableOp-normalisation_truediv_readvariableop_resource*
_output_shapes
:@*
dtype02&
$normalisation/truediv/ReadVariableOp?
normalisation/truedivRealDiv2learnlet_analysis/details_tiling_1/Conv2D:output:0,normalisation/truediv/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@2
normalisation/truediv?
thresholding/ReluRelunormalisation_4/truediv:z:0*
T0*/
_output_shapes
:?????????@2
thresholding/Relu?
thresholding/Relu_1Relunormalisation_3/truediv:z:0*
T0*/
_output_shapes
:?????????@2
thresholding/Relu_1?
thresholding/Relu_2Relunormalisation_2/truediv:z:0*
T0*/
_output_shapes
:?????????@2
thresholding/Relu_2?
thresholding/Relu_3Relunormalisation_1/truediv:z:0*
T0*/
_output_shapes
:?????????  @2
thresholding/Relu_3?
thresholding/Relu_4Relunormalisation/truediv:z:0*
T0*/
_output_shapes
:?????????@@@2
thresholding/Relu_4?
 normalisation/mul/ReadVariableOpReadVariableOp-normalisation_truediv_readvariableop_resource*
_output_shapes
:@*
dtype02"
 normalisation/mul/ReadVariableOp?
normalisation/mulMul!thresholding/Relu_4:activations:0(normalisation/mul/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@2
normalisation/mul?
"normalisation_1/mul/ReadVariableOpReadVariableOp/normalisation_1_truediv_readvariableop_resource*
_output_shapes
:@*
dtype02$
"normalisation_1/mul/ReadVariableOp?
normalisation_1/mulMul!thresholding/Relu_3:activations:0*normalisation_1/mul/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @2
normalisation_1/mul?
"normalisation_2/mul/ReadVariableOpReadVariableOp/normalisation_2_truediv_readvariableop_resource*
_output_shapes
:@*
dtype02$
"normalisation_2/mul/ReadVariableOp?
normalisation_2/mulMul!thresholding/Relu_2:activations:0*normalisation_2/mul/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
normalisation_2/mul?
"normalisation_3/mul/ReadVariableOpReadVariableOp/normalisation_3_truediv_readvariableop_resource*
_output_shapes
:@*
dtype02$
"normalisation_3/mul/ReadVariableOp?
normalisation_3/mulMul!thresholding/Relu_1:activations:0*normalisation_3/mul/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
normalisation_3/mul?
"normalisation_4/mul/ReadVariableOpReadVariableOp/normalisation_4_truediv_readvariableop_resource*
_output_shapes
:@*
dtype02$
"normalisation_4/mul/ReadVariableOp?
normalisation_4/mulMulthresholding/Relu:activations:0*normalisation_4/mul/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
normalisation_4/mul?
2learnlet_synthesis/fixed_point_up_sampling_1/ShapeShapeMlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_4:output:0*
T0*
_output_shapes
:24
2learnlet_synthesis/fixed_point_up_sampling_1/Shape?
@learnlet_synthesis/fixed_point_up_sampling_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2B
@learnlet_synthesis/fixed_point_up_sampling_1/strided_slice/stack?
Blearnlet_synthesis/fixed_point_up_sampling_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2D
Blearnlet_synthesis/fixed_point_up_sampling_1/strided_slice/stack_1?
Blearnlet_synthesis/fixed_point_up_sampling_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2D
Blearnlet_synthesis/fixed_point_up_sampling_1/strided_slice/stack_2?
:learnlet_synthesis/fixed_point_up_sampling_1/strided_sliceStridedSlice;learnlet_synthesis/fixed_point_up_sampling_1/Shape:output:0Ilearnlet_synthesis/fixed_point_up_sampling_1/strided_slice/stack:output:0Klearnlet_synthesis/fixed_point_up_sampling_1/strided_slice/stack_1:output:0Klearnlet_synthesis/fixed_point_up_sampling_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2<
:learnlet_synthesis/fixed_point_up_sampling_1/strided_slice?
2learnlet_synthesis/fixed_point_up_sampling_1/mul/xConst*
_output_shapes
: *
dtype0*
value	B :24
2learnlet_synthesis/fixed_point_up_sampling_1/mul/x?
0learnlet_synthesis/fixed_point_up_sampling_1/mulMul;learnlet_synthesis/fixed_point_up_sampling_1/mul/x:output:0Clearnlet_synthesis/fixed_point_up_sampling_1/strided_slice:output:0*
T0*
_output_shapes
:22
0learnlet_synthesis/fixed_point_up_sampling_1/mul?
:learnlet_synthesis/fixed_point_up_sampling_1/ResizeBicubicResizeBicubicMlearnlet_analysis/wav_analysis/fixed_point_pooling_1/strided_slice_4:output:04learnlet_synthesis/fixed_point_up_sampling_1/mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2<
:learnlet_synthesis/fixed_point_up_sampling_1/ResizeBicubicy
learnlet_synthesis/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *?8?<2
learnlet_synthesis/mul/y?
learnlet_synthesis/mulMulnormalisation_4/mul:z:0!learnlet_synthesis/mul/y:output:0*
T0*/
_output_shapes
:?????????@2
learnlet_synthesis/mul?
learnlet_synthesis/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2 
learnlet_synthesis/concat/axis?
learnlet_synthesis/concatConcatV2Klearnlet_synthesis/fixed_point_up_sampling_1/ResizeBicubic:resized_images:0learnlet_synthesis/mul:z:0'learnlet_synthesis/concat/axis:output:0*
N*
T0*/
_output_shapes
:?????????A2
learnlet_synthesis/concat?
9learnlet_synthesis/groupping_conv_1/Conv2D/ReadVariableOpReadVariableOpBlearnlet_synthesis_groupping_conv_1_conv2d_readvariableop_resource*&
_output_shapes
:A*
dtype02;
9learnlet_synthesis/groupping_conv_1/Conv2D/ReadVariableOp?
*learnlet_synthesis/groupping_conv_1/Conv2DConv2D"learnlet_synthesis/concat:output:0Alearnlet_synthesis/groupping_conv_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2,
*learnlet_synthesis/groupping_conv_1/Conv2D?
4learnlet_synthesis/fixed_point_up_sampling_1/Shape_1Shape3learnlet_synthesis/groupping_conv_1/Conv2D:output:0*
T0*
_output_shapes
:26
4learnlet_synthesis/fixed_point_up_sampling_1/Shape_1?
Blearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2D
Blearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_1/stack?
Dlearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2F
Dlearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_1/stack_1?
Dlearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2F
Dlearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_1/stack_2?
<learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_1StridedSlice=learnlet_synthesis/fixed_point_up_sampling_1/Shape_1:output:0Klearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_1/stack:output:0Mlearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_1/stack_1:output:0Mlearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:2>
<learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_1?
4learnlet_synthesis/fixed_point_up_sampling_1/mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :26
4learnlet_synthesis/fixed_point_up_sampling_1/mul_1/x?
2learnlet_synthesis/fixed_point_up_sampling_1/mul_1Mul=learnlet_synthesis/fixed_point_up_sampling_1/mul_1/x:output:0Elearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_1:output:0*
T0*
_output_shapes
:24
2learnlet_synthesis/fixed_point_up_sampling_1/mul_1?
<learnlet_synthesis/fixed_point_up_sampling_1/ResizeBicubic_1ResizeBicubic3learnlet_synthesis/groupping_conv_1/Conv2D:output:06learnlet_synthesis/fixed_point_up_sampling_1/mul_1:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2>
<learnlet_synthesis/fixed_point_up_sampling_1/ResizeBicubic_1}
learnlet_synthesis/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?9=2
learnlet_synthesis/mul_1/y?
learnlet_synthesis/mul_1Mulnormalisation_3/mul:z:0#learnlet_synthesis/mul_1/y:output:0*
T0*/
_output_shapes
:?????????@2
learnlet_synthesis/mul_1?
 learnlet_synthesis/concat_1/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 learnlet_synthesis/concat_1/axis?
learnlet_synthesis/concat_1ConcatV2Mlearnlet_synthesis/fixed_point_up_sampling_1/ResizeBicubic_1:resized_images:0learnlet_synthesis/mul_1:z:0)learnlet_synthesis/concat_1/axis:output:0*
N*
T0*/
_output_shapes
:?????????A2
learnlet_synthesis/concat_1?
9learnlet_synthesis/groupping_conv_2/Conv2D/ReadVariableOpReadVariableOpBlearnlet_synthesis_groupping_conv_2_conv2d_readvariableop_resource*&
_output_shapes
:A*
dtype02;
9learnlet_synthesis/groupping_conv_2/Conv2D/ReadVariableOp?
*learnlet_synthesis/groupping_conv_2/Conv2DConv2D$learnlet_synthesis/concat_1:output:0Alearnlet_synthesis/groupping_conv_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2,
*learnlet_synthesis/groupping_conv_2/Conv2D?
4learnlet_synthesis/fixed_point_up_sampling_1/Shape_2Shape3learnlet_synthesis/groupping_conv_2/Conv2D:output:0*
T0*
_output_shapes
:26
4learnlet_synthesis/fixed_point_up_sampling_1/Shape_2?
Blearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2D
Blearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_2/stack?
Dlearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2F
Dlearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_2/stack_1?
Dlearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2F
Dlearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_2/stack_2?
<learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_2StridedSlice=learnlet_synthesis/fixed_point_up_sampling_1/Shape_2:output:0Klearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_2/stack:output:0Mlearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_2/stack_1:output:0Mlearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:2>
<learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_2?
4learnlet_synthesis/fixed_point_up_sampling_1/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :26
4learnlet_synthesis/fixed_point_up_sampling_1/mul_2/x?
2learnlet_synthesis/fixed_point_up_sampling_1/mul_2Mul=learnlet_synthesis/fixed_point_up_sampling_1/mul_2/x:output:0Elearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_2:output:0*
T0*
_output_shapes
:24
2learnlet_synthesis/fixed_point_up_sampling_1/mul_2?
<learnlet_synthesis/fixed_point_up_sampling_1/ResizeBicubic_2ResizeBicubic3learnlet_synthesis/groupping_conv_2/Conv2D:output:06learnlet_synthesis/fixed_point_up_sampling_1/mul_2:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2>
<learnlet_synthesis/fixed_point_up_sampling_1/ResizeBicubic_2}
learnlet_synthesis/mul_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *J??=2
learnlet_synthesis/mul_2/y?
learnlet_synthesis/mul_2Mulnormalisation_2/mul:z:0#learnlet_synthesis/mul_2/y:output:0*
T0*/
_output_shapes
:?????????@2
learnlet_synthesis/mul_2?
 learnlet_synthesis/concat_2/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 learnlet_synthesis/concat_2/axis?
learnlet_synthesis/concat_2ConcatV2Mlearnlet_synthesis/fixed_point_up_sampling_1/ResizeBicubic_2:resized_images:0learnlet_synthesis/mul_2:z:0)learnlet_synthesis/concat_2/axis:output:0*
N*
T0*/
_output_shapes
:?????????A2
learnlet_synthesis/concat_2?
9learnlet_synthesis/groupping_conv_3/Conv2D/ReadVariableOpReadVariableOpBlearnlet_synthesis_groupping_conv_3_conv2d_readvariableop_resource*&
_output_shapes
:A*
dtype02;
9learnlet_synthesis/groupping_conv_3/Conv2D/ReadVariableOp?
*learnlet_synthesis/groupping_conv_3/Conv2DConv2D$learnlet_synthesis/concat_2:output:0Alearnlet_synthesis/groupping_conv_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2,
*learnlet_synthesis/groupping_conv_3/Conv2D?
4learnlet_synthesis/fixed_point_up_sampling_1/Shape_3Shape3learnlet_synthesis/groupping_conv_3/Conv2D:output:0*
T0*
_output_shapes
:26
4learnlet_synthesis/fixed_point_up_sampling_1/Shape_3?
Blearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2D
Blearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_3/stack?
Dlearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2F
Dlearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_3/stack_1?
Dlearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2F
Dlearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_3/stack_2?
<learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_3StridedSlice=learnlet_synthesis/fixed_point_up_sampling_1/Shape_3:output:0Klearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_3/stack:output:0Mlearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_3/stack_1:output:0Mlearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:2>
<learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_3?
4learnlet_synthesis/fixed_point_up_sampling_1/mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :26
4learnlet_synthesis/fixed_point_up_sampling_1/mul_3/x?
2learnlet_synthesis/fixed_point_up_sampling_1/mul_3Mul=learnlet_synthesis/fixed_point_up_sampling_1/mul_3/x:output:0Elearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_3:output:0*
T0*
_output_shapes
:24
2learnlet_synthesis/fixed_point_up_sampling_1/mul_3?
<learnlet_synthesis/fixed_point_up_sampling_1/ResizeBicubic_3ResizeBicubic3learnlet_synthesis/groupping_conv_3/Conv2D:output:06learnlet_synthesis/fixed_point_up_sampling_1/mul_3:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2>
<learnlet_synthesis/fixed_point_up_sampling_1/ResizeBicubic_3}
learnlet_synthesis/mul_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *??Z>2
learnlet_synthesis/mul_3/y?
learnlet_synthesis/mul_3Mulnormalisation_1/mul:z:0#learnlet_synthesis/mul_3/y:output:0*
T0*/
_output_shapes
:?????????  @2
learnlet_synthesis/mul_3?
 learnlet_synthesis/concat_3/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 learnlet_synthesis/concat_3/axis?
learnlet_synthesis/concat_3ConcatV2Mlearnlet_synthesis/fixed_point_up_sampling_1/ResizeBicubic_3:resized_images:0learnlet_synthesis/mul_3:z:0)learnlet_synthesis/concat_3/axis:output:0*
N*
T0*/
_output_shapes
:?????????  A2
learnlet_synthesis/concat_3?
9learnlet_synthesis/groupping_conv_4/Conv2D/ReadVariableOpReadVariableOpBlearnlet_synthesis_groupping_conv_4_conv2d_readvariableop_resource*&
_output_shapes
:A*
dtype02;
9learnlet_synthesis/groupping_conv_4/Conv2D/ReadVariableOp?
*learnlet_synthesis/groupping_conv_4/Conv2DConv2D$learnlet_synthesis/concat_3:output:0Alearnlet_synthesis/groupping_conv_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  *
paddingSAME*
strides
2,
*learnlet_synthesis/groupping_conv_4/Conv2D?
4learnlet_synthesis/fixed_point_up_sampling_1/Shape_4Shape3learnlet_synthesis/groupping_conv_4/Conv2D:output:0*
T0*
_output_shapes
:26
4learnlet_synthesis/fixed_point_up_sampling_1/Shape_4?
Blearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:2D
Blearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_4/stack?
Dlearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2F
Dlearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_4/stack_1?
Dlearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2F
Dlearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_4/stack_2?
<learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_4StridedSlice=learnlet_synthesis/fixed_point_up_sampling_1/Shape_4:output:0Klearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_4/stack:output:0Mlearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_4/stack_1:output:0Mlearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
:2>
<learnlet_synthesis/fixed_point_up_sampling_1/strided_slice_4?
4learnlet_synthesis/fixed_point_up_sampling_1/mul_4/xConst*
_output_shapes
: *
dtype0*
value	B :26
4learnlet_synthesis/fixed_point_up_sampling_1/mul_4/x?
2learnlet_synthesis/fixed_point_up_sampling_1/mul_4Mul=learnlet_synthesis/fixed_point_up_sampling_1/mul_4/x:output:0Elearnlet_synthesis/fixed_point_up_sampling_1/strided_slice_4:output:0*
T0*
_output_shapes
:24
2learnlet_synthesis/fixed_point_up_sampling_1/mul_4?
<learnlet_synthesis/fixed_point_up_sampling_1/ResizeBicubic_4ResizeBicubic3learnlet_synthesis/groupping_conv_4/Conv2D:output:06learnlet_synthesis/fixed_point_up_sampling_1/mul_4:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2>
<learnlet_synthesis/fixed_point_up_sampling_1/ResizeBicubic_4}
learnlet_synthesis/mul_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *??j?2
learnlet_synthesis/mul_4/y?
learnlet_synthesis/mul_4Mulnormalisation/mul:z:0#learnlet_synthesis/mul_4/y:output:0*
T0*/
_output_shapes
:?????????@@@2
learnlet_synthesis/mul_4?
 learnlet_synthesis/concat_4/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 learnlet_synthesis/concat_4/axis?
learnlet_synthesis/concat_4ConcatV2Mlearnlet_synthesis/fixed_point_up_sampling_1/ResizeBicubic_4:resized_images:0learnlet_synthesis/mul_4:z:0)learnlet_synthesis/concat_4/axis:output:0*
N*
T0*/
_output_shapes
:?????????@@A2
learnlet_synthesis/concat_4?
9learnlet_synthesis/groupping_conv_5/Conv2D/ReadVariableOpReadVariableOpBlearnlet_synthesis_groupping_conv_5_conv2d_readvariableop_resource*&
_output_shapes
:A*
dtype02;
9learnlet_synthesis/groupping_conv_5/Conv2D/ReadVariableOp?
*learnlet_synthesis/groupping_conv_5/Conv2DConv2D$learnlet_synthesis/concat_4:output:0Alearnlet_synthesis/groupping_conv_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@*
paddingSAME*
strides
2,
*learnlet_synthesis/groupping_conv_5/Conv2D?
IdentityIdentity3learnlet_synthesis/groupping_conv_5/Conv2D:output:09^learnlet_analysis/details_tiling_1/Conv2D/ReadVariableOp9^learnlet_analysis/details_tiling_2/Conv2D/ReadVariableOp9^learnlet_analysis/details_tiling_3/Conv2D/ReadVariableOp9^learnlet_analysis/details_tiling_4/Conv2D/ReadVariableOp9^learnlet_analysis/details_tiling_5/Conv2D/ReadVariableOpV^learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D/ReadVariableOpX^learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1/ReadVariableOpX^learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2/ReadVariableOpX^learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3/ReadVariableOpX^learnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4/ReadVariableOp:^learnlet_synthesis/groupping_conv_1/Conv2D/ReadVariableOp:^learnlet_synthesis/groupping_conv_2/Conv2D/ReadVariableOp:^learnlet_synthesis/groupping_conv_3/Conv2D/ReadVariableOp:^learnlet_synthesis/groupping_conv_4/Conv2D/ReadVariableOp:^learnlet_synthesis/groupping_conv_5/Conv2D/ReadVariableOp!^normalisation/mul/ReadVariableOp%^normalisation/truediv/ReadVariableOp#^normalisation_1/mul/ReadVariableOp'^normalisation_1/truediv/ReadVariableOp#^normalisation_2/mul/ReadVariableOp'^normalisation_2/truediv/ReadVariableOp#^normalisation_3/mul/ReadVariableOp'^normalisation_3/truediv/ReadVariableOp#^normalisation_4/mul/ReadVariableOp'^normalisation_4/truediv/ReadVariableOp*
T0*/
_output_shapes
:?????????@@2

Identity"
identityIdentity:output:0*x
_input_shapesg
e:?????????@@:::::::::::::::::2t
8learnlet_analysis/details_tiling_1/Conv2D/ReadVariableOp8learnlet_analysis/details_tiling_1/Conv2D/ReadVariableOp2t
8learnlet_analysis/details_tiling_2/Conv2D/ReadVariableOp8learnlet_analysis/details_tiling_2/Conv2D/ReadVariableOp2t
8learnlet_analysis/details_tiling_3/Conv2D/ReadVariableOp8learnlet_analysis/details_tiling_3/Conv2D/ReadVariableOp2t
8learnlet_analysis/details_tiling_4/Conv2D/ReadVariableOp8learnlet_analysis/details_tiling_4/Conv2D/ReadVariableOp2t
8learnlet_analysis/details_tiling_5/Conv2D/ReadVariableOp8learnlet_analysis/details_tiling_5/Conv2D/ReadVariableOp2?
Ulearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D/ReadVariableOpUlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D/ReadVariableOp2?
Wlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1/ReadVariableOpWlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1/ReadVariableOp2?
Wlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2/ReadVariableOpWlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2/ReadVariableOp2?
Wlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3/ReadVariableOpWlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3/ReadVariableOp2?
Wlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4/ReadVariableOpWlearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4/ReadVariableOp2v
9learnlet_synthesis/groupping_conv_1/Conv2D/ReadVariableOp9learnlet_synthesis/groupping_conv_1/Conv2D/ReadVariableOp2v
9learnlet_synthesis/groupping_conv_2/Conv2D/ReadVariableOp9learnlet_synthesis/groupping_conv_2/Conv2D/ReadVariableOp2v
9learnlet_synthesis/groupping_conv_3/Conv2D/ReadVariableOp9learnlet_synthesis/groupping_conv_3/Conv2D/ReadVariableOp2v
9learnlet_synthesis/groupping_conv_4/Conv2D/ReadVariableOp9learnlet_synthesis/groupping_conv_4/Conv2D/ReadVariableOp2v
9learnlet_synthesis/groupping_conv_5/Conv2D/ReadVariableOp9learnlet_synthesis/groupping_conv_5/Conv2D/ReadVariableOp2D
 normalisation/mul/ReadVariableOp normalisation/mul/ReadVariableOp2L
$normalisation/truediv/ReadVariableOp$normalisation/truediv/ReadVariableOp2H
"normalisation_1/mul/ReadVariableOp"normalisation_1/mul/ReadVariableOp2P
&normalisation_1/truediv/ReadVariableOp&normalisation_1/truediv/ReadVariableOp2H
"normalisation_2/mul/ReadVariableOp"normalisation_2/mul/ReadVariableOp2P
&normalisation_2/truediv/ReadVariableOp&normalisation_2/truediv/ReadVariableOp2H
"normalisation_3/mul/ReadVariableOp"normalisation_3/mul/ReadVariableOp2P
&normalisation_3/truediv/ReadVariableOp&normalisation_3/truediv/ReadVariableOp2H
"normalisation_4/mul/ReadVariableOp"normalisation_4/mul/ReadVariableOp2P
&normalisation_4/truediv/ReadVariableOp&normalisation_4/truediv/ReadVariableOp:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs:$ 

_output_shapes

:
?
?
'__inference_model_layer_call_fn_1915888
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_19158512
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@@2

Identity"
identityIdentity:output:0*x
_input_shapesg
e:?????????@@:::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:?????????@@
!
_user_specified_name	input_1:$ 

_output_shapes

:
?Y
?
B__inference_model_layer_call_and_return_conditional_losses_1915851

inputs
learnlet_analysis_1915789
learnlet_analysis_1915791
learnlet_analysis_1915793
learnlet_analysis_1915795
learnlet_analysis_1915797
learnlet_analysis_1915799
learnlet_analysis_1915801
normalisation_4_1915809
normalisation_3_1915812
normalisation_2_1915815
normalisation_1_1915818
normalisation_1915821
learnlet_synthesis_1915839
learnlet_synthesis_1915841
learnlet_synthesis_1915843
learnlet_synthesis_1915845
learnlet_synthesis_1915847
identity??)learnlet_analysis/StatefulPartitionedCall?*learnlet_synthesis/StatefulPartitionedCall?%normalisation/StatefulPartitionedCall?'normalisation/StatefulPartitionedCall_1?'normalisation_1/StatefulPartitionedCall?)normalisation_1/StatefulPartitionedCall_1?'normalisation_2/StatefulPartitionedCall?)normalisation_2/StatefulPartitionedCall_1?'normalisation_3/StatefulPartitionedCall?)normalisation_3/StatefulPartitionedCall_1?'normalisation_4/StatefulPartitionedCall?)normalisation_4/StatefulPartitionedCall_1?
)learnlet_analysis/StatefulPartitionedCallStatefulPartitionedCallinputslearnlet_analysis_1915789learnlet_analysis_1915791learnlet_analysis_1915793learnlet_analysis_1915795learnlet_analysis_1915797learnlet_analysis_1915799learnlet_analysis_1915801*
Tin

2*
Tout

2*
_collective_manager_ids
 *?
_output_shapes?
?:?????????@@@:?????????  @:?????????@:?????????@:?????????@:?????????*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_learnlet_analysis_layer_call_and_return_conditional_losses_19153172+
)learnlet_analysis/StatefulPartitionedCall?
'normalisation_4/StatefulPartitionedCallStatefulPartitionedCall2learnlet_analysis/StatefulPartitionedCall:output:4normalisation_4_1915809*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_normalisation_4_layer_call_and_return_conditional_losses_19153752)
'normalisation_4/StatefulPartitionedCall?
'normalisation_3/StatefulPartitionedCallStatefulPartitionedCall2learnlet_analysis/StatefulPartitionedCall:output:3normalisation_3_1915812*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_normalisation_3_layer_call_and_return_conditional_losses_19153942)
'normalisation_3/StatefulPartitionedCall?
'normalisation_2/StatefulPartitionedCallStatefulPartitionedCall2learnlet_analysis/StatefulPartitionedCall:output:2normalisation_2_1915815*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_normalisation_2_layer_call_and_return_conditional_losses_19154132)
'normalisation_2/StatefulPartitionedCall?
'normalisation_1/StatefulPartitionedCallStatefulPartitionedCall2learnlet_analysis/StatefulPartitionedCall:output:1normalisation_1_1915818*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_normalisation_1_layer_call_and_return_conditional_losses_19154322)
'normalisation_1/StatefulPartitionedCall?
%normalisation/StatefulPartitionedCallStatefulPartitionedCall2learnlet_analysis/StatefulPartitionedCall:output:0normalisation_1915821*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_normalisation_layer_call_and_return_conditional_losses_19154512'
%normalisation/StatefulPartitionedCall?
thresholding/PartitionedCallPartitionedCall0normalisation_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_thresholding_layer_call_and_return_conditional_losses_19154682
thresholding/PartitionedCall?
thresholding/PartitionedCall_1PartitionedCall0normalisation_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_thresholding_layer_call_and_return_conditional_losses_19154802 
thresholding/PartitionedCall_1?
thresholding/PartitionedCall_2PartitionedCall0normalisation_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_thresholding_layer_call_and_return_conditional_losses_19154912 
thresholding/PartitionedCall_2?
thresholding/PartitionedCall_3PartitionedCall0normalisation_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_thresholding_layer_call_and_return_conditional_losses_19155022 
thresholding/PartitionedCall_3?
thresholding/PartitionedCall_4PartitionedCall.normalisation/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_thresholding_layer_call_and_return_conditional_losses_19155132 
thresholding/PartitionedCall_4?
'normalisation/StatefulPartitionedCall_1StatefulPartitionedCall'thresholding/PartitionedCall_4:output:0normalisation_1915821*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_normalisation_layer_call_and_return_conditional_losses_19155262)
'normalisation/StatefulPartitionedCall_1?
)normalisation_1/StatefulPartitionedCall_1StatefulPartitionedCall'thresholding/PartitionedCall_3:output:0normalisation_1_1915818*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_normalisation_1_layer_call_and_return_conditional_losses_19155422+
)normalisation_1/StatefulPartitionedCall_1?
)normalisation_2/StatefulPartitionedCall_1StatefulPartitionedCall'thresholding/PartitionedCall_2:output:0normalisation_2_1915815*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_normalisation_2_layer_call_and_return_conditional_losses_19155582+
)normalisation_2/StatefulPartitionedCall_1?
)normalisation_3/StatefulPartitionedCall_1StatefulPartitionedCall'thresholding/PartitionedCall_1:output:0normalisation_3_1915812*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_normalisation_3_layer_call_and_return_conditional_losses_19155742+
)normalisation_3/StatefulPartitionedCall_1?
)normalisation_4/StatefulPartitionedCall_1StatefulPartitionedCall%thresholding/PartitionedCall:output:0normalisation_4_1915809*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_normalisation_4_layer_call_and_return_conditional_losses_19155902+
)normalisation_4/StatefulPartitionedCall_1?
*learnlet_synthesis/StatefulPartitionedCallStatefulPartitionedCall0normalisation/StatefulPartitionedCall_1:output:02normalisation_1/StatefulPartitionedCall_1:output:02normalisation_2/StatefulPartitionedCall_1:output:02normalisation_3/StatefulPartitionedCall_1:output:02normalisation_4/StatefulPartitionedCall_1:output:02learnlet_analysis/StatefulPartitionedCall:output:5learnlet_synthesis_1915839learnlet_synthesis_1915841learnlet_synthesis_1915843learnlet_synthesis_1915845learnlet_synthesis_1915847*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*'
_read_only_resource_inputs	
	
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_learnlet_synthesis_layer_call_and_return_conditional_losses_19156842,
*learnlet_synthesis/StatefulPartitionedCall?
IdentityIdentity3learnlet_synthesis/StatefulPartitionedCall:output:0*^learnlet_analysis/StatefulPartitionedCall+^learnlet_synthesis/StatefulPartitionedCall&^normalisation/StatefulPartitionedCall(^normalisation/StatefulPartitionedCall_1(^normalisation_1/StatefulPartitionedCall*^normalisation_1/StatefulPartitionedCall_1(^normalisation_2/StatefulPartitionedCall*^normalisation_2/StatefulPartitionedCall_1(^normalisation_3/StatefulPartitionedCall*^normalisation_3/StatefulPartitionedCall_1(^normalisation_4/StatefulPartitionedCall*^normalisation_4/StatefulPartitionedCall_1*
T0*/
_output_shapes
:?????????@@2

Identity"
identityIdentity:output:0*x
_input_shapesg
e:?????????@@:::::::::::::::::2V
)learnlet_analysis/StatefulPartitionedCall)learnlet_analysis/StatefulPartitionedCall2X
*learnlet_synthesis/StatefulPartitionedCall*learnlet_synthesis/StatefulPartitionedCall2N
%normalisation/StatefulPartitionedCall%normalisation/StatefulPartitionedCall2R
'normalisation/StatefulPartitionedCall_1'normalisation/StatefulPartitionedCall_12R
'normalisation_1/StatefulPartitionedCall'normalisation_1/StatefulPartitionedCall2V
)normalisation_1/StatefulPartitionedCall_1)normalisation_1/StatefulPartitionedCall_12R
'normalisation_2/StatefulPartitionedCall'normalisation_2/StatefulPartitionedCall2V
)normalisation_2/StatefulPartitionedCall_1)normalisation_2/StatefulPartitionedCall_12R
'normalisation_3/StatefulPartitionedCall'normalisation_3/StatefulPartitionedCall2V
)normalisation_3/StatefulPartitionedCall_1)normalisation_3/StatefulPartitionedCall_12R
'normalisation_4/StatefulPartitionedCall'normalisation_4/StatefulPartitionedCall2V
)normalisation_4/StatefulPartitionedCall_1)normalisation_4/StatefulPartitionedCall_1:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs:$ 

_output_shapes

:
?
?
J__inference_normalisation_layer_call_and_return_conditional_losses_1915451
x#
truediv_readvariableop_resource
identity??truediv/ReadVariableOp?
truediv/ReadVariableOpReadVariableOptruediv_readvariableop_resource*
_output_shapes
:@*
dtype02
truediv/ReadVariableOpz
truedivRealDivxtruediv/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@2	
truediv?
IdentityIdentitytruediv:z:0^truediv/ReadVariableOp*
T0*/
_output_shapes
:?????????@@@2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????@@@:20
truediv/ReadVariableOptruediv/ReadVariableOp:R N
/
_output_shapes
:?????????@@@

_user_specified_namex
?
e
I__inference_thresholding_layer_call_and_return_conditional_losses_1916791

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:?????????  @2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????  @2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????  @:W S
/
_output_shapes
:?????????  @
 
_user_specified_nameinputs
?v
?
O__inference_learnlet_synthesis_layer_call_and_return_conditional_losses_1916890
analysis_coeffs_0
analysis_coeffs_1
analysis_coeffs_2
analysis_coeffs_3
analysis_coeffs_4
analysis_coeffs_53
/groupping_conv_1_conv2d_readvariableop_resource3
/groupping_conv_2_conv2d_readvariableop_resource3
/groupping_conv_3_conv2d_readvariableop_resource3
/groupping_conv_4_conv2d_readvariableop_resource3
/groupping_conv_5_conv2d_readvariableop_resource
identity??&groupping_conv_1/Conv2D/ReadVariableOp?&groupping_conv_2/Conv2D/ReadVariableOp?&groupping_conv_3/Conv2D/ReadVariableOp?&groupping_conv_4/Conv2D/ReadVariableOp?&groupping_conv_5/Conv2D/ReadVariableOp?
fixed_point_up_sampling_1/ShapeShapeanalysis_coeffs_5*
T0*
_output_shapes
:2!
fixed_point_up_sampling_1/Shape?
-fixed_point_up_sampling_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2/
-fixed_point_up_sampling_1/strided_slice/stack?
/fixed_point_up_sampling_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/fixed_point_up_sampling_1/strided_slice/stack_1?
/fixed_point_up_sampling_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/fixed_point_up_sampling_1/strided_slice/stack_2?
'fixed_point_up_sampling_1/strided_sliceStridedSlice(fixed_point_up_sampling_1/Shape:output:06fixed_point_up_sampling_1/strided_slice/stack:output:08fixed_point_up_sampling_1/strided_slice/stack_1:output:08fixed_point_up_sampling_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2)
'fixed_point_up_sampling_1/strided_slice?
fixed_point_up_sampling_1/mul/xConst*
_output_shapes
: *
dtype0*
value	B :2!
fixed_point_up_sampling_1/mul/x?
fixed_point_up_sampling_1/mulMul(fixed_point_up_sampling_1/mul/x:output:00fixed_point_up_sampling_1/strided_slice:output:0*
T0*
_output_shapes
:2
fixed_point_up_sampling_1/mul?
'fixed_point_up_sampling_1/ResizeBicubicResizeBicubicanalysis_coeffs_5!fixed_point_up_sampling_1/mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2)
'fixed_point_up_sampling_1/ResizeBicubicS
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *?8?<2
mul/yn
mulMulanalysis_coeffs_4mul/y:output:0*
T0*/
_output_shapes
:?????????@2
mule
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
concat/axis?
concatConcatV28fixed_point_up_sampling_1/ResizeBicubic:resized_images:0mul:z:0concat/axis:output:0*
N*
T0*/
_output_shapes
:?????????A2
concat?
&groupping_conv_1/Conv2D/ReadVariableOpReadVariableOp/groupping_conv_1_conv2d_readvariableop_resource*&
_output_shapes
:A*
dtype02(
&groupping_conv_1/Conv2D/ReadVariableOp?
groupping_conv_1/Conv2DConv2Dconcat:output:0.groupping_conv_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
groupping_conv_1/Conv2D?
!fixed_point_up_sampling_1/Shape_1Shape groupping_conv_1/Conv2D:output:0*
T0*
_output_shapes
:2#
!fixed_point_up_sampling_1/Shape_1?
/fixed_point_up_sampling_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/fixed_point_up_sampling_1/strided_slice_1/stack?
1fixed_point_up_sampling_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1fixed_point_up_sampling_1/strided_slice_1/stack_1?
1fixed_point_up_sampling_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1fixed_point_up_sampling_1/strided_slice_1/stack_2?
)fixed_point_up_sampling_1/strided_slice_1StridedSlice*fixed_point_up_sampling_1/Shape_1:output:08fixed_point_up_sampling_1/strided_slice_1/stack:output:0:fixed_point_up_sampling_1/strided_slice_1/stack_1:output:0:fixed_point_up_sampling_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:2+
)fixed_point_up_sampling_1/strided_slice_1?
!fixed_point_up_sampling_1/mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :2#
!fixed_point_up_sampling_1/mul_1/x?
fixed_point_up_sampling_1/mul_1Mul*fixed_point_up_sampling_1/mul_1/x:output:02fixed_point_up_sampling_1/strided_slice_1:output:0*
T0*
_output_shapes
:2!
fixed_point_up_sampling_1/mul_1?
)fixed_point_up_sampling_1/ResizeBicubic_1ResizeBicubic groupping_conv_1/Conv2D:output:0#fixed_point_up_sampling_1/mul_1:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2+
)fixed_point_up_sampling_1/ResizeBicubic_1W
mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?9=2	
mul_1/yt
mul_1Mulanalysis_coeffs_3mul_1/y:output:0*
T0*/
_output_shapes
:?????????@2
mul_1i
concat_1/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
concat_1/axis?
concat_1ConcatV2:fixed_point_up_sampling_1/ResizeBicubic_1:resized_images:0	mul_1:z:0concat_1/axis:output:0*
N*
T0*/
_output_shapes
:?????????A2

concat_1?
&groupping_conv_2/Conv2D/ReadVariableOpReadVariableOp/groupping_conv_2_conv2d_readvariableop_resource*&
_output_shapes
:A*
dtype02(
&groupping_conv_2/Conv2D/ReadVariableOp?
groupping_conv_2/Conv2DConv2Dconcat_1:output:0.groupping_conv_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
groupping_conv_2/Conv2D?
!fixed_point_up_sampling_1/Shape_2Shape groupping_conv_2/Conv2D:output:0*
T0*
_output_shapes
:2#
!fixed_point_up_sampling_1/Shape_2?
/fixed_point_up_sampling_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/fixed_point_up_sampling_1/strided_slice_2/stack?
1fixed_point_up_sampling_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1fixed_point_up_sampling_1/strided_slice_2/stack_1?
1fixed_point_up_sampling_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1fixed_point_up_sampling_1/strided_slice_2/stack_2?
)fixed_point_up_sampling_1/strided_slice_2StridedSlice*fixed_point_up_sampling_1/Shape_2:output:08fixed_point_up_sampling_1/strided_slice_2/stack:output:0:fixed_point_up_sampling_1/strided_slice_2/stack_1:output:0:fixed_point_up_sampling_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:2+
)fixed_point_up_sampling_1/strided_slice_2?
!fixed_point_up_sampling_1/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :2#
!fixed_point_up_sampling_1/mul_2/x?
fixed_point_up_sampling_1/mul_2Mul*fixed_point_up_sampling_1/mul_2/x:output:02fixed_point_up_sampling_1/strided_slice_2:output:0*
T0*
_output_shapes
:2!
fixed_point_up_sampling_1/mul_2?
)fixed_point_up_sampling_1/ResizeBicubic_2ResizeBicubic groupping_conv_2/Conv2D:output:0#fixed_point_up_sampling_1/mul_2:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2+
)fixed_point_up_sampling_1/ResizeBicubic_2W
mul_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *J??=2	
mul_2/yt
mul_2Mulanalysis_coeffs_2mul_2/y:output:0*
T0*/
_output_shapes
:?????????@2
mul_2i
concat_2/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
concat_2/axis?
concat_2ConcatV2:fixed_point_up_sampling_1/ResizeBicubic_2:resized_images:0	mul_2:z:0concat_2/axis:output:0*
N*
T0*/
_output_shapes
:?????????A2

concat_2?
&groupping_conv_3/Conv2D/ReadVariableOpReadVariableOp/groupping_conv_3_conv2d_readvariableop_resource*&
_output_shapes
:A*
dtype02(
&groupping_conv_3/Conv2D/ReadVariableOp?
groupping_conv_3/Conv2DConv2Dconcat_2:output:0.groupping_conv_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
groupping_conv_3/Conv2D?
!fixed_point_up_sampling_1/Shape_3Shape groupping_conv_3/Conv2D:output:0*
T0*
_output_shapes
:2#
!fixed_point_up_sampling_1/Shape_3?
/fixed_point_up_sampling_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/fixed_point_up_sampling_1/strided_slice_3/stack?
1fixed_point_up_sampling_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1fixed_point_up_sampling_1/strided_slice_3/stack_1?
1fixed_point_up_sampling_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1fixed_point_up_sampling_1/strided_slice_3/stack_2?
)fixed_point_up_sampling_1/strided_slice_3StridedSlice*fixed_point_up_sampling_1/Shape_3:output:08fixed_point_up_sampling_1/strided_slice_3/stack:output:0:fixed_point_up_sampling_1/strided_slice_3/stack_1:output:0:fixed_point_up_sampling_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:2+
)fixed_point_up_sampling_1/strided_slice_3?
!fixed_point_up_sampling_1/mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :2#
!fixed_point_up_sampling_1/mul_3/x?
fixed_point_up_sampling_1/mul_3Mul*fixed_point_up_sampling_1/mul_3/x:output:02fixed_point_up_sampling_1/strided_slice_3:output:0*
T0*
_output_shapes
:2!
fixed_point_up_sampling_1/mul_3?
)fixed_point_up_sampling_1/ResizeBicubic_3ResizeBicubic groupping_conv_3/Conv2D:output:0#fixed_point_up_sampling_1/mul_3:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2+
)fixed_point_up_sampling_1/ResizeBicubic_3W
mul_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *??Z>2	
mul_3/yt
mul_3Mulanalysis_coeffs_1mul_3/y:output:0*
T0*/
_output_shapes
:?????????  @2
mul_3i
concat_3/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
concat_3/axis?
concat_3ConcatV2:fixed_point_up_sampling_1/ResizeBicubic_3:resized_images:0	mul_3:z:0concat_3/axis:output:0*
N*
T0*/
_output_shapes
:?????????  A2

concat_3?
&groupping_conv_4/Conv2D/ReadVariableOpReadVariableOp/groupping_conv_4_conv2d_readvariableop_resource*&
_output_shapes
:A*
dtype02(
&groupping_conv_4/Conv2D/ReadVariableOp?
groupping_conv_4/Conv2DConv2Dconcat_3:output:0.groupping_conv_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  *
paddingSAME*
strides
2
groupping_conv_4/Conv2D?
!fixed_point_up_sampling_1/Shape_4Shape groupping_conv_4/Conv2D:output:0*
T0*
_output_shapes
:2#
!fixed_point_up_sampling_1/Shape_4?
/fixed_point_up_sampling_1/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/fixed_point_up_sampling_1/strided_slice_4/stack?
1fixed_point_up_sampling_1/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1fixed_point_up_sampling_1/strided_slice_4/stack_1?
1fixed_point_up_sampling_1/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1fixed_point_up_sampling_1/strided_slice_4/stack_2?
)fixed_point_up_sampling_1/strided_slice_4StridedSlice*fixed_point_up_sampling_1/Shape_4:output:08fixed_point_up_sampling_1/strided_slice_4/stack:output:0:fixed_point_up_sampling_1/strided_slice_4/stack_1:output:0:fixed_point_up_sampling_1/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
:2+
)fixed_point_up_sampling_1/strided_slice_4?
!fixed_point_up_sampling_1/mul_4/xConst*
_output_shapes
: *
dtype0*
value	B :2#
!fixed_point_up_sampling_1/mul_4/x?
fixed_point_up_sampling_1/mul_4Mul*fixed_point_up_sampling_1/mul_4/x:output:02fixed_point_up_sampling_1/strided_slice_4:output:0*
T0*
_output_shapes
:2!
fixed_point_up_sampling_1/mul_4?
)fixed_point_up_sampling_1/ResizeBicubic_4ResizeBicubic groupping_conv_4/Conv2D:output:0#fixed_point_up_sampling_1/mul_4:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2+
)fixed_point_up_sampling_1/ResizeBicubic_4W
mul_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *??j?2	
mul_4/yt
mul_4Mulanalysis_coeffs_0mul_4/y:output:0*
T0*/
_output_shapes
:?????????@@@2
mul_4i
concat_4/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
concat_4/axis?
concat_4ConcatV2:fixed_point_up_sampling_1/ResizeBicubic_4:resized_images:0	mul_4:z:0concat_4/axis:output:0*
N*
T0*/
_output_shapes
:?????????@@A2

concat_4?
&groupping_conv_5/Conv2D/ReadVariableOpReadVariableOp/groupping_conv_5_conv2d_readvariableop_resource*&
_output_shapes
:A*
dtype02(
&groupping_conv_5/Conv2D/ReadVariableOp?
groupping_conv_5/Conv2DConv2Dconcat_4:output:0.groupping_conv_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@*
paddingSAME*
strides
2
groupping_conv_5/Conv2D?
IdentityIdentity groupping_conv_5/Conv2D:output:0'^groupping_conv_1/Conv2D/ReadVariableOp'^groupping_conv_2/Conv2D/ReadVariableOp'^groupping_conv_3/Conv2D/ReadVariableOp'^groupping_conv_4/Conv2D/ReadVariableOp'^groupping_conv_5/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@@2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????@@@:?????????  @:?????????@:?????????@:?????????@:?????????:::::2P
&groupping_conv_1/Conv2D/ReadVariableOp&groupping_conv_1/Conv2D/ReadVariableOp2P
&groupping_conv_2/Conv2D/ReadVariableOp&groupping_conv_2/Conv2D/ReadVariableOp2P
&groupping_conv_3/Conv2D/ReadVariableOp&groupping_conv_3/Conv2D/ReadVariableOp2P
&groupping_conv_4/Conv2D/ReadVariableOp&groupping_conv_4/Conv2D/ReadVariableOp2P
&groupping_conv_5/Conv2D/ReadVariableOp&groupping_conv_5/Conv2D/ReadVariableOp:b ^
/
_output_shapes
:?????????@@@
+
_user_specified_nameanalysis_coeffs/0:b^
/
_output_shapes
:?????????  @
+
_user_specified_nameanalysis_coeffs/1:b^
/
_output_shapes
:?????????@
+
_user_specified_nameanalysis_coeffs/2:b^
/
_output_shapes
:?????????@
+
_user_specified_nameanalysis_coeffs/3:b^
/
_output_shapes
:?????????@
+
_user_specified_nameanalysis_coeffs/4:b^
/
_output_shapes
:?????????
+
_user_specified_nameanalysis_coeffs/5
?
?
'__inference_model_layer_call_fn_1916591

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_19159552
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@@2

Identity"
identityIdentity:output:0*x
_input_shapesg
e:?????????@@:::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs:$ 

_output_shapes

:
?
?
L__inference_normalisation_3_layer_call_and_return_conditional_losses_1915574
x
mul_readvariableop_resource
identity??mul/ReadVariableOp?
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:@*
dtype02
mul/ReadVariableOpj
mulMulxmul/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
mulx
IdentityIdentitymul:z:0^mul/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????@:2(
mul/ReadVariableOpmul/ReadVariableOp:R N
/
_output_shapes
:?????????@

_user_specified_namex
??
?
N__inference_learnlet_analysis_layer_call_and_return_conditional_losses_1916727	
image/
+wav_analysis_wav_pooling_mirrorpad_paddingsP
Lwav_analysis_wav_pooling_low_pass_filtering_1_conv2d_readvariableop_resource3
/details_tiling_1_conv2d_readvariableop_resource3
/details_tiling_2_conv2d_readvariableop_resource3
/details_tiling_3_conv2d_readvariableop_resource3
/details_tiling_4_conv2d_readvariableop_resource3
/details_tiling_5_conv2d_readvariableop_resource
identity

identity_1

identity_2

identity_3

identity_4

identity_5??&details_tiling_1/Conv2D/ReadVariableOp?&details_tiling_2/Conv2D/ReadVariableOp?&details_tiling_3/Conv2D/ReadVariableOp?&details_tiling_4/Conv2D/ReadVariableOp?&details_tiling_5/Conv2D/ReadVariableOp?Cwav_analysis/wav_pooling/low_pass_filtering_1/Conv2D/ReadVariableOp?Ewav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1/ReadVariableOp?Ewav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2/ReadVariableOp?Ewav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3/ReadVariableOp?Ewav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4/ReadVariableOp?
"wav_analysis/wav_pooling/MirrorPad	MirrorPadimage+wav_analysis_wav_pooling_mirrorpad_paddings*
T0*/
_output_shapes
:?????????DD*
mode	SYMMETRIC2$
"wav_analysis/wav_pooling/MirrorPad?
Cwav_analysis/wav_pooling/low_pass_filtering_1/Conv2D/ReadVariableOpReadVariableOpLwav_analysis_wav_pooling_low_pass_filtering_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02E
Cwav_analysis/wav_pooling/low_pass_filtering_1/Conv2D/ReadVariableOp?
4wav_analysis/wav_pooling/low_pass_filtering_1/Conv2DConv2D+wav_analysis/wav_pooling/MirrorPad:output:0Kwav_analysis/wav_pooling/low_pass_filtering_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@*
paddingVALID*
strides
26
4wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D?
@wav_analysis/wav_pooling/fixed_point_pooling/strided_slice/stackConst*
_output_shapes
:*
dtype0*%
valueB"                2B
@wav_analysis/wav_pooling/fixed_point_pooling/strided_slice/stack?
Bwav_analysis/wav_pooling/fixed_point_pooling/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                2D
Bwav_analysis/wav_pooling/fixed_point_pooling/strided_slice/stack_1?
Bwav_analysis/wav_pooling/fixed_point_pooling/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            2D
Bwav_analysis/wav_pooling/fixed_point_pooling/strided_slice/stack_2?
:wav_analysis/wav_pooling/fixed_point_pooling/strided_sliceStridedSlice=wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D:output:0Iwav_analysis/wav_pooling/fixed_point_pooling/strided_slice/stack:output:0Kwav_analysis/wav_pooling/fixed_point_pooling/strided_slice/stack_1:output:0Kwav_analysis/wav_pooling/fixed_point_pooling/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????  *

begin_mask*
end_mask2<
:wav_analysis/wav_pooling/fixed_point_pooling/strided_slice?
6wav_analysis/wav_pooling/fixed_point_up_sampling/ShapeShapeCwav_analysis/wav_pooling/fixed_point_pooling/strided_slice:output:0*
T0*
_output_shapes
:28
6wav_analysis/wav_pooling/fixed_point_up_sampling/Shape?
Dwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2F
Dwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice/stack?
Fwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2H
Fwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice/stack_1?
Fwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2H
Fwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice/stack_2?
>wav_analysis/wav_pooling/fixed_point_up_sampling/strided_sliceStridedSlice?wav_analysis/wav_pooling/fixed_point_up_sampling/Shape:output:0Mwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice/stack:output:0Owav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice/stack_1:output:0Owav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2@
>wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice?
6wav_analysis/wav_pooling/fixed_point_up_sampling/mul/xConst*
_output_shapes
: *
dtype0*
value	B :28
6wav_analysis/wav_pooling/fixed_point_up_sampling/mul/x?
4wav_analysis/wav_pooling/fixed_point_up_sampling/mulMul?wav_analysis/wav_pooling/fixed_point_up_sampling/mul/x:output:0Gwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice:output:0*
T0*
_output_shapes
:26
4wav_analysis/wav_pooling/fixed_point_up_sampling/mul?
>wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubicResizeBicubicCwav_analysis/wav_pooling/fixed_point_pooling/strided_slice:output:08wav_analysis/wav_pooling/fixed_point_up_sampling/mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2@
>wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic?
wav_analysis/wav_pooling/subSubimageOwav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic:resized_images:0*
T0*/
_output_shapes
:?????????@@2
wav_analysis/wav_pooling/subu
wav_analysis/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *??j?2
wav_analysis/truediv/y?
wav_analysis/truedivRealDiv wav_analysis/wav_pooling/sub:z:0wav_analysis/truediv/y:output:0*
T0*/
_output_shapes
:?????????@@2
wav_analysis/truediv?
6wav_analysis/fixed_point_pooling_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*%
valueB"                28
6wav_analysis/fixed_point_pooling_1/strided_slice/stack?
8wav_analysis/fixed_point_pooling_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                2:
8wav_analysis/fixed_point_pooling_1/strided_slice/stack_1?
8wav_analysis/fixed_point_pooling_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            2:
8wav_analysis/fixed_point_pooling_1/strided_slice/stack_2?
0wav_analysis/fixed_point_pooling_1/strided_sliceStridedSlice=wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D:output:0?wav_analysis/fixed_point_pooling_1/strided_slice/stack:output:0Awav_analysis/fixed_point_pooling_1/strided_slice/stack_1:output:0Awav_analysis/fixed_point_pooling_1/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????  *

begin_mask*
end_mask22
0wav_analysis/fixed_point_pooling_1/strided_slice?
$wav_analysis/wav_pooling/MirrorPad_1	MirrorPad9wav_analysis/fixed_point_pooling_1/strided_slice:output:0+wav_analysis_wav_pooling_mirrorpad_paddings*
T0*/
_output_shapes
:?????????$$*
mode	SYMMETRIC2&
$wav_analysis/wav_pooling/MirrorPad_1?
Ewav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1/ReadVariableOpReadVariableOpLwav_analysis_wav_pooling_low_pass_filtering_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02G
Ewav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1/ReadVariableOp?
6wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1Conv2D-wav_analysis/wav_pooling/MirrorPad_1:output:0Mwav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  *
paddingVALID*
strides
28
6wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1?
Bwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*%
valueB"                2D
Bwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1/stack?
Dwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                2F
Dwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1/stack_1?
Dwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            2F
Dwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1/stack_2?
<wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1StridedSlice?wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1:output:0Kwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1/stack:output:0Mwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1/stack_1:output:0Mwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????*

begin_mask*
end_mask2>
<wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1?
8wav_analysis/wav_pooling/fixed_point_up_sampling/Shape_1ShapeEwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1:output:0*
T0*
_output_shapes
:2:
8wav_analysis/wav_pooling/fixed_point_up_sampling/Shape_1?
Fwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2H
Fwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1/stack?
Hwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2J
Hwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1/stack_1?
Hwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2J
Hwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1/stack_2?
@wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1StridedSliceAwav_analysis/wav_pooling/fixed_point_up_sampling/Shape_1:output:0Owav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1/stack:output:0Qwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1/stack_1:output:0Qwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:2B
@wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1?
8wav_analysis/wav_pooling/fixed_point_up_sampling/mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :2:
8wav_analysis/wav_pooling/fixed_point_up_sampling/mul_1/x?
6wav_analysis/wav_pooling/fixed_point_up_sampling/mul_1MulAwav_analysis/wav_pooling/fixed_point_up_sampling/mul_1/x:output:0Iwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_1:output:0*
T0*
_output_shapes
:28
6wav_analysis/wav_pooling/fixed_point_up_sampling/mul_1?
@wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_1ResizeBicubicEwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_1:output:0:wav_analysis/wav_pooling/fixed_point_up_sampling/mul_1:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2B
@wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_1?
wav_analysis/wav_pooling/sub_1Sub9wav_analysis/fixed_point_pooling_1/strided_slice:output:0Qwav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_1:resized_images:0*
T0*/
_output_shapes
:?????????  2 
wav_analysis/wav_pooling/sub_1y
wav_analysis/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *??Z>2
wav_analysis/truediv_1/y?
wav_analysis/truediv_1RealDiv"wav_analysis/wav_pooling/sub_1:z:0!wav_analysis/truediv_1/y:output:0*
T0*/
_output_shapes
:?????????  2
wav_analysis/truediv_1?
8wav_analysis/fixed_point_pooling_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*%
valueB"                2:
8wav_analysis/fixed_point_pooling_1/strided_slice_1/stack?
:wav_analysis/fixed_point_pooling_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                2<
:wav_analysis/fixed_point_pooling_1/strided_slice_1/stack_1?
:wav_analysis/fixed_point_pooling_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            2<
:wav_analysis/fixed_point_pooling_1/strided_slice_1/stack_2?
2wav_analysis/fixed_point_pooling_1/strided_slice_1StridedSlice?wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1:output:0Awav_analysis/fixed_point_pooling_1/strided_slice_1/stack:output:0Cwav_analysis/fixed_point_pooling_1/strided_slice_1/stack_1:output:0Cwav_analysis/fixed_point_pooling_1/strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????*

begin_mask*
end_mask24
2wav_analysis/fixed_point_pooling_1/strided_slice_1?
$wav_analysis/wav_pooling/MirrorPad_2	MirrorPad;wav_analysis/fixed_point_pooling_1/strided_slice_1:output:0+wav_analysis_wav_pooling_mirrorpad_paddings*
T0*/
_output_shapes
:?????????*
mode	SYMMETRIC2&
$wav_analysis/wav_pooling/MirrorPad_2?
Ewav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2/ReadVariableOpReadVariableOpLwav_analysis_wav_pooling_low_pass_filtering_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02G
Ewav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2/ReadVariableOp?
6wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2Conv2D-wav_analysis/wav_pooling/MirrorPad_2:output:0Mwav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
28
6wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2?
Bwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*%
valueB"                2D
Bwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2/stack?
Dwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                2F
Dwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2/stack_1?
Dwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            2F
Dwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2/stack_2?
<wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2StridedSlice?wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2:output:0Kwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2/stack:output:0Mwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2/stack_1:output:0Mwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????*

begin_mask*
end_mask2>
<wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2?
8wav_analysis/wav_pooling/fixed_point_up_sampling/Shape_2ShapeEwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2:output:0*
T0*
_output_shapes
:2:
8wav_analysis/wav_pooling/fixed_point_up_sampling/Shape_2?
Fwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2H
Fwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2/stack?
Hwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2J
Hwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2/stack_1?
Hwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2J
Hwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2/stack_2?
@wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2StridedSliceAwav_analysis/wav_pooling/fixed_point_up_sampling/Shape_2:output:0Owav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2/stack:output:0Qwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2/stack_1:output:0Qwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:2B
@wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2?
8wav_analysis/wav_pooling/fixed_point_up_sampling/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :2:
8wav_analysis/wav_pooling/fixed_point_up_sampling/mul_2/x?
6wav_analysis/wav_pooling/fixed_point_up_sampling/mul_2MulAwav_analysis/wav_pooling/fixed_point_up_sampling/mul_2/x:output:0Iwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_2:output:0*
T0*
_output_shapes
:28
6wav_analysis/wav_pooling/fixed_point_up_sampling/mul_2?
@wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_2ResizeBicubicEwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_2:output:0:wav_analysis/wav_pooling/fixed_point_up_sampling/mul_2:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2B
@wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_2?
wav_analysis/wav_pooling/sub_2Sub;wav_analysis/fixed_point_pooling_1/strided_slice_1:output:0Qwav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_2:resized_images:0*
T0*/
_output_shapes
:?????????2 
wav_analysis/wav_pooling/sub_2y
wav_analysis/truediv_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *J??=2
wav_analysis/truediv_2/y?
wav_analysis/truediv_2RealDiv"wav_analysis/wav_pooling/sub_2:z:0!wav_analysis/truediv_2/y:output:0*
T0*/
_output_shapes
:?????????2
wav_analysis/truediv_2?
8wav_analysis/fixed_point_pooling_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*%
valueB"                2:
8wav_analysis/fixed_point_pooling_1/strided_slice_2/stack?
:wav_analysis/fixed_point_pooling_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                2<
:wav_analysis/fixed_point_pooling_1/strided_slice_2/stack_1?
:wav_analysis/fixed_point_pooling_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            2<
:wav_analysis/fixed_point_pooling_1/strided_slice_2/stack_2?
2wav_analysis/fixed_point_pooling_1/strided_slice_2StridedSlice?wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2:output:0Awav_analysis/fixed_point_pooling_1/strided_slice_2/stack:output:0Cwav_analysis/fixed_point_pooling_1/strided_slice_2/stack_1:output:0Cwav_analysis/fixed_point_pooling_1/strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????*

begin_mask*
end_mask24
2wav_analysis/fixed_point_pooling_1/strided_slice_2?
$wav_analysis/wav_pooling/MirrorPad_3	MirrorPad;wav_analysis/fixed_point_pooling_1/strided_slice_2:output:0+wav_analysis_wav_pooling_mirrorpad_paddings*
T0*/
_output_shapes
:?????????*
mode	SYMMETRIC2&
$wav_analysis/wav_pooling/MirrorPad_3?
Ewav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3/ReadVariableOpReadVariableOpLwav_analysis_wav_pooling_low_pass_filtering_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02G
Ewav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3/ReadVariableOp?
6wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3Conv2D-wav_analysis/wav_pooling/MirrorPad_3:output:0Mwav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
28
6wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3?
Bwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*%
valueB"                2D
Bwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3/stack?
Dwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                2F
Dwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3/stack_1?
Dwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            2F
Dwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3/stack_2?
<wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3StridedSlice?wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3:output:0Kwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3/stack:output:0Mwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3/stack_1:output:0Mwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????*

begin_mask*
end_mask2>
<wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3?
8wav_analysis/wav_pooling/fixed_point_up_sampling/Shape_3ShapeEwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3:output:0*
T0*
_output_shapes
:2:
8wav_analysis/wav_pooling/fixed_point_up_sampling/Shape_3?
Fwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2H
Fwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3/stack?
Hwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2J
Hwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3/stack_1?
Hwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2J
Hwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3/stack_2?
@wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3StridedSliceAwav_analysis/wav_pooling/fixed_point_up_sampling/Shape_3:output:0Owav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3/stack:output:0Qwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3/stack_1:output:0Qwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:2B
@wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3?
8wav_analysis/wav_pooling/fixed_point_up_sampling/mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :2:
8wav_analysis/wav_pooling/fixed_point_up_sampling/mul_3/x?
6wav_analysis/wav_pooling/fixed_point_up_sampling/mul_3MulAwav_analysis/wav_pooling/fixed_point_up_sampling/mul_3/x:output:0Iwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_3:output:0*
T0*
_output_shapes
:28
6wav_analysis/wav_pooling/fixed_point_up_sampling/mul_3?
@wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_3ResizeBicubicEwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_3:output:0:wav_analysis/wav_pooling/fixed_point_up_sampling/mul_3:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2B
@wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_3?
wav_analysis/wav_pooling/sub_3Sub;wav_analysis/fixed_point_pooling_1/strided_slice_2:output:0Qwav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_3:resized_images:0*
T0*/
_output_shapes
:?????????2 
wav_analysis/wav_pooling/sub_3y
wav_analysis/truediv_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?9=2
wav_analysis/truediv_3/y?
wav_analysis/truediv_3RealDiv"wav_analysis/wav_pooling/sub_3:z:0!wav_analysis/truediv_3/y:output:0*
T0*/
_output_shapes
:?????????2
wav_analysis/truediv_3?
8wav_analysis/fixed_point_pooling_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*%
valueB"                2:
8wav_analysis/fixed_point_pooling_1/strided_slice_3/stack?
:wav_analysis/fixed_point_pooling_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                2<
:wav_analysis/fixed_point_pooling_1/strided_slice_3/stack_1?
:wav_analysis/fixed_point_pooling_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            2<
:wav_analysis/fixed_point_pooling_1/strided_slice_3/stack_2?
2wav_analysis/fixed_point_pooling_1/strided_slice_3StridedSlice?wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3:output:0Awav_analysis/fixed_point_pooling_1/strided_slice_3/stack:output:0Cwav_analysis/fixed_point_pooling_1/strided_slice_3/stack_1:output:0Cwav_analysis/fixed_point_pooling_1/strided_slice_3/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????*

begin_mask*
end_mask24
2wav_analysis/fixed_point_pooling_1/strided_slice_3?
$wav_analysis/wav_pooling/MirrorPad_4	MirrorPad;wav_analysis/fixed_point_pooling_1/strided_slice_3:output:0+wav_analysis_wav_pooling_mirrorpad_paddings*
T0*/
_output_shapes
:?????????*
mode	SYMMETRIC2&
$wav_analysis/wav_pooling/MirrorPad_4?
Ewav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4/ReadVariableOpReadVariableOpLwav_analysis_wav_pooling_low_pass_filtering_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02G
Ewav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4/ReadVariableOp?
6wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4Conv2D-wav_analysis/wav_pooling/MirrorPad_4:output:0Mwav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
28
6wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4?
Bwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*%
valueB"                2D
Bwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4/stack?
Dwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                2F
Dwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4/stack_1?
Dwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            2F
Dwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4/stack_2?
<wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4StridedSlice?wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4:output:0Kwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4/stack:output:0Mwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4/stack_1:output:0Mwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????*

begin_mask*
end_mask2>
<wav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4?
8wav_analysis/wav_pooling/fixed_point_up_sampling/Shape_4ShapeEwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4:output:0*
T0*
_output_shapes
:2:
8wav_analysis/wav_pooling/fixed_point_up_sampling/Shape_4?
Fwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:2H
Fwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4/stack?
Hwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2J
Hwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4/stack_1?
Hwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2J
Hwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4/stack_2?
@wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4StridedSliceAwav_analysis/wav_pooling/fixed_point_up_sampling/Shape_4:output:0Owav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4/stack:output:0Qwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4/stack_1:output:0Qwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
:2B
@wav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4?
8wav_analysis/wav_pooling/fixed_point_up_sampling/mul_4/xConst*
_output_shapes
: *
dtype0*
value	B :2:
8wav_analysis/wav_pooling/fixed_point_up_sampling/mul_4/x?
6wav_analysis/wav_pooling/fixed_point_up_sampling/mul_4MulAwav_analysis/wav_pooling/fixed_point_up_sampling/mul_4/x:output:0Iwav_analysis/wav_pooling/fixed_point_up_sampling/strided_slice_4:output:0*
T0*
_output_shapes
:28
6wav_analysis/wav_pooling/fixed_point_up_sampling/mul_4?
@wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_4ResizeBicubicEwav_analysis/wav_pooling/fixed_point_pooling/strided_slice_4:output:0:wav_analysis/wav_pooling/fixed_point_up_sampling/mul_4:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2B
@wav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_4?
wav_analysis/wav_pooling/sub_4Sub;wav_analysis/fixed_point_pooling_1/strided_slice_3:output:0Qwav_analysis/wav_pooling/fixed_point_up_sampling/ResizeBicubic_4:resized_images:0*
T0*/
_output_shapes
:?????????2 
wav_analysis/wav_pooling/sub_4y
wav_analysis/truediv_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *?8?<2
wav_analysis/truediv_4/y?
wav_analysis/truediv_4RealDiv"wav_analysis/wav_pooling/sub_4:z:0!wav_analysis/truediv_4/y:output:0*
T0*/
_output_shapes
:?????????2
wav_analysis/truediv_4?
8wav_analysis/fixed_point_pooling_1/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*%
valueB"                2:
8wav_analysis/fixed_point_pooling_1/strided_slice_4/stack?
:wav_analysis/fixed_point_pooling_1/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                2<
:wav_analysis/fixed_point_pooling_1/strided_slice_4/stack_1?
:wav_analysis/fixed_point_pooling_1/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            2<
:wav_analysis/fixed_point_pooling_1/strided_slice_4/stack_2?
2wav_analysis/fixed_point_pooling_1/strided_slice_4StridedSlice?wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4:output:0Awav_analysis/fixed_point_pooling_1/strided_slice_4/stack:output:0Cwav_analysis/fixed_point_pooling_1/strided_slice_4/stack_1:output:0Cwav_analysis/fixed_point_pooling_1/strided_slice_4/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????*

begin_mask*
end_mask24
2wav_analysis/fixed_point_pooling_1/strided_slice_4?
&details_tiling_1/Conv2D/ReadVariableOpReadVariableOp/details_tiling_1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02(
&details_tiling_1/Conv2D/ReadVariableOp?
details_tiling_1/Conv2DConv2Dwav_analysis/truediv:z:0.details_tiling_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@*
paddingSAME*
strides
2
details_tiling_1/Conv2D?
&details_tiling_2/Conv2D/ReadVariableOpReadVariableOp/details_tiling_2_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02(
&details_tiling_2/Conv2D/ReadVariableOp?
details_tiling_2/Conv2DConv2Dwav_analysis/truediv_1:z:0.details_tiling_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @*
paddingSAME*
strides
2
details_tiling_2/Conv2D?
&details_tiling_3/Conv2D/ReadVariableOpReadVariableOp/details_tiling_3_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02(
&details_tiling_3/Conv2D/ReadVariableOp?
details_tiling_3/Conv2DConv2Dwav_analysis/truediv_2:z:0.details_tiling_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
details_tiling_3/Conv2D?
&details_tiling_4/Conv2D/ReadVariableOpReadVariableOp/details_tiling_4_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02(
&details_tiling_4/Conv2D/ReadVariableOp?
details_tiling_4/Conv2DConv2Dwav_analysis/truediv_3:z:0.details_tiling_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
details_tiling_4/Conv2D?
&details_tiling_5/Conv2D/ReadVariableOpReadVariableOp/details_tiling_5_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02(
&details_tiling_5/Conv2D/ReadVariableOp?
details_tiling_5/Conv2DConv2Dwav_analysis/truediv_4:z:0.details_tiling_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
details_tiling_5/Conv2D?
IdentityIdentity details_tiling_1/Conv2D:output:0'^details_tiling_1/Conv2D/ReadVariableOp'^details_tiling_2/Conv2D/ReadVariableOp'^details_tiling_3/Conv2D/ReadVariableOp'^details_tiling_4/Conv2D/ReadVariableOp'^details_tiling_5/Conv2D/ReadVariableOpD^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D/ReadVariableOpF^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1/ReadVariableOpF^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2/ReadVariableOpF^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3/ReadVariableOpF^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4/ReadVariableOp*
T0*/
_output_shapes
:?????????@@@2

Identity?

Identity_1Identity details_tiling_2/Conv2D:output:0'^details_tiling_1/Conv2D/ReadVariableOp'^details_tiling_2/Conv2D/ReadVariableOp'^details_tiling_3/Conv2D/ReadVariableOp'^details_tiling_4/Conv2D/ReadVariableOp'^details_tiling_5/Conv2D/ReadVariableOpD^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D/ReadVariableOpF^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1/ReadVariableOpF^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2/ReadVariableOpF^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3/ReadVariableOpF^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4/ReadVariableOp*
T0*/
_output_shapes
:?????????  @2

Identity_1?

Identity_2Identity details_tiling_3/Conv2D:output:0'^details_tiling_1/Conv2D/ReadVariableOp'^details_tiling_2/Conv2D/ReadVariableOp'^details_tiling_3/Conv2D/ReadVariableOp'^details_tiling_4/Conv2D/ReadVariableOp'^details_tiling_5/Conv2D/ReadVariableOpD^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D/ReadVariableOpF^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1/ReadVariableOpF^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2/ReadVariableOpF^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3/ReadVariableOpF^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity_2?

Identity_3Identity details_tiling_4/Conv2D:output:0'^details_tiling_1/Conv2D/ReadVariableOp'^details_tiling_2/Conv2D/ReadVariableOp'^details_tiling_3/Conv2D/ReadVariableOp'^details_tiling_4/Conv2D/ReadVariableOp'^details_tiling_5/Conv2D/ReadVariableOpD^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D/ReadVariableOpF^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1/ReadVariableOpF^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2/ReadVariableOpF^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3/ReadVariableOpF^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity_3?

Identity_4Identity details_tiling_5/Conv2D:output:0'^details_tiling_1/Conv2D/ReadVariableOp'^details_tiling_2/Conv2D/ReadVariableOp'^details_tiling_3/Conv2D/ReadVariableOp'^details_tiling_4/Conv2D/ReadVariableOp'^details_tiling_5/Conv2D/ReadVariableOpD^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D/ReadVariableOpF^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1/ReadVariableOpF^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2/ReadVariableOpF^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3/ReadVariableOpF^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity_4?

Identity_5Identity;wav_analysis/fixed_point_pooling_1/strided_slice_4:output:0'^details_tiling_1/Conv2D/ReadVariableOp'^details_tiling_2/Conv2D/ReadVariableOp'^details_tiling_3/Conv2D/ReadVariableOp'^details_tiling_4/Conv2D/ReadVariableOp'^details_tiling_5/Conv2D/ReadVariableOpD^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D/ReadVariableOpF^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1/ReadVariableOpF^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2/ReadVariableOpF^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3/ReadVariableOpF^wav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*P
_input_shapes?
=:?????????@@:::::::2P
&details_tiling_1/Conv2D/ReadVariableOp&details_tiling_1/Conv2D/ReadVariableOp2P
&details_tiling_2/Conv2D/ReadVariableOp&details_tiling_2/Conv2D/ReadVariableOp2P
&details_tiling_3/Conv2D/ReadVariableOp&details_tiling_3/Conv2D/ReadVariableOp2P
&details_tiling_4/Conv2D/ReadVariableOp&details_tiling_4/Conv2D/ReadVariableOp2P
&details_tiling_5/Conv2D/ReadVariableOp&details_tiling_5/Conv2D/ReadVariableOp2?
Cwav_analysis/wav_pooling/low_pass_filtering_1/Conv2D/ReadVariableOpCwav_analysis/wav_pooling/low_pass_filtering_1/Conv2D/ReadVariableOp2?
Ewav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1/ReadVariableOpEwav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_1/ReadVariableOp2?
Ewav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2/ReadVariableOpEwav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_2/ReadVariableOp2?
Ewav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3/ReadVariableOpEwav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_3/ReadVariableOp2?
Ewav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4/ReadVariableOpEwav_analysis/wav_pooling/low_pass_filtering_1/Conv2D_4/ReadVariableOp:V R
/
_output_shapes
:?????????@@

_user_specified_nameimage:$ 

_output_shapes

:
?
e
I__inference_thresholding_layer_call_and_return_conditional_losses_1915513

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:?????????@@@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????@@@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@@@:W S
/
_output_shapes
:?????????@@@
 
_user_specified_nameinputs
?
?
L__inference_normalisation_2_layer_call_and_return_conditional_losses_1915413
x#
truediv_readvariableop_resource
identity??truediv/ReadVariableOp?
truediv/ReadVariableOpReadVariableOptruediv_readvariableop_resource*
_output_shapes
:@*
dtype02
truediv/ReadVariableOpz
truedivRealDivxtruediv/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2	
truediv?
IdentityIdentitytruediv:z:0^truediv/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????@:20
truediv/ReadVariableOptruediv/ReadVariableOp:R N
/
_output_shapes
:?????????@

_user_specified_namex
?
J
.__inference_thresholding_layer_call_fn_1916776

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_thresholding_layer_call_and_return_conditional_losses_19154802
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
C
input_18
serving_default_input_1:0?????????@@N
learnlet_synthesis8
StatefulPartitionedCall:0?????????@@tensorflow/serving/predict:??
?5
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
layer-7
	layer_with_weights-6
	layer-8

	optimizer
regularization_losses
	variables
trainable_variables
	keras_api

signatures
?__call__
+?&call_and_return_all_conditional_losses
?_default_save_signature"?1
_tf_keras_network?1{"class_name": "Functional", "name": "model", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 64, 64, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "LearnletAnalysis", "config": {"name": "learnlet_analysis", "trainable": true, "dtype": "float32", "n_tiling": 64, "tiling_use_bias": false, "tiling_unit_norm": true, "mixing_details": false, "n_scales": 5, "kernel_size": 5, "skip_connection": false}, "name": "learnlet_analysis", "inbound_nodes": [[["input_1", 0, 0, {}]]]}, {"class_name": "Normalisation", "config": {"norm_init": 1.0}, "name": "normalisation", "inbound_nodes": [[["learnlet_analysis", 0, 0, {"mode": "normal"}]], [["thresholding", 0, 0, {"mode": "inv"}]]]}, {"class_name": "Normalisation", "config": {"norm_init": 1.0}, "name": "normalisation_1", "inbound_nodes": [[["learnlet_analysis", 0, 1, {"mode": "normal"}]], [["thresholding", 1, 0, {"mode": "inv"}]]]}, {"class_name": "Normalisation", "config": {"norm_init": 1.0}, "name": "normalisation_2", "inbound_nodes": [[["learnlet_analysis", 0, 2, {"mode": "normal"}]], [["thresholding", 2, 0, {"mode": "inv"}]]]}, {"class_name": "Normalisation", "config": {"norm_init": 1.0}, "name": "normalisation_3", "inbound_nodes": [[["learnlet_analysis", 0, 3, {"mode": "normal"}]], [["thresholding", 3, 0, {"mode": "inv"}]]]}, {"class_name": "Normalisation", "config": {"norm_init": 1.0}, "name": "normalisation_4", "inbound_nodes": [[["learnlet_analysis", 0, 4, {"mode": "normal"}]], [["thresholding", 4, 0, {"mode": "inv"}]]]}, {"class_name": "Activation", "config": {"name": "thresholding", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "thresholding", "inbound_nodes": [[["normalisation", 0, 0, {}]], [["normalisation_1", 0, 0, {}]], [["normalisation_2", 0, 0, {}]], [["normalisation_3", 0, 0, {}]], [["normalisation_4", 0, 0, {}]]]}, {"class_name": "LearnletSynthesis", "config": {"name": "learnlet_synthesis", "trainable": true, "dtype": "float32", "normalize": true, "n_scales": 5, "n_channels": 1, "synthesis_use_bias": false, "synthesis_norm": false, "res": false, "kernel_size": 5, "wav_type": "starlet"}, "name": "learnlet_synthesis", "inbound_nodes": [[["normalisation", 1, 0, {}], ["normalisation_1", 1, 0, {}], ["normalisation_2", 1, 0, {}], ["normalisation_3", 1, 0, {}], ["normalisation_4", 1, 0, {}], ["learnlet_analysis", 0, 5, {}]]]}], "input_layers": [["input_1", 0, 0]], "output_layers": [["learnlet_synthesis", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 64, 64, 1]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 1]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 64, 64, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "LearnletAnalysis", "config": {"name": "learnlet_analysis", "trainable": true, "dtype": "float32", "n_tiling": 64, "tiling_use_bias": false, "tiling_unit_norm": true, "mixing_details": false, "n_scales": 5, "kernel_size": 5, "skip_connection": false}, "name": "learnlet_analysis", "inbound_nodes": [[["input_1", 0, 0, {}]]]}, {"class_name": "Normalisation", "config": {"norm_init": 1.0}, "name": "normalisation", "inbound_nodes": [[["learnlet_analysis", 0, 0, {"mode": "normal"}]], [["thresholding", 0, 0, {"mode": "inv"}]]]}, {"class_name": "Normalisation", "config": {"norm_init": 1.0}, "name": "normalisation_1", "inbound_nodes": [[["learnlet_analysis", 0, 1, {"mode": "normal"}]], [["thresholding", 1, 0, {"mode": "inv"}]]]}, {"class_name": "Normalisation", "config": {"norm_init": 1.0}, "name": "normalisation_2", "inbound_nodes": [[["learnlet_analysis", 0, 2, {"mode": "normal"}]], [["thresholding", 2, 0, {"mode": "inv"}]]]}, {"class_name": "Normalisation", "config": {"norm_init": 1.0}, "name": "normalisation_3", "inbound_nodes": [[["learnlet_analysis", 0, 3, {"mode": "normal"}]], [["thresholding", 3, 0, {"mode": "inv"}]]]}, {"class_name": "Normalisation", "config": {"norm_init": 1.0}, "name": "normalisation_4", "inbound_nodes": [[["learnlet_analysis", 0, 4, {"mode": "normal"}]], [["thresholding", 4, 0, {"mode": "inv"}]]]}, {"class_name": "Activation", "config": {"name": "thresholding", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "thresholding", "inbound_nodes": [[["normalisation", 0, 0, {}]], [["normalisation_1", 0, 0, {}]], [["normalisation_2", 0, 0, {}]], [["normalisation_3", 0, 0, {}]], [["normalisation_4", 0, 0, {}]]]}, {"class_name": "LearnletSynthesis", "config": {"name": "learnlet_synthesis", "trainable": true, "dtype": "float32", "normalize": true, "n_scales": 5, "n_channels": 1, "synthesis_use_bias": false, "synthesis_norm": false, "res": false, "kernel_size": 5, "wav_type": "starlet"}, "name": "learnlet_synthesis", "inbound_nodes": [[["normalisation", 1, 0, {}], ["normalisation_1", 1, 0, {}], ["normalisation_2", 1, 0, {}], ["normalisation_3", 1, 0, {}], ["normalisation_4", 1, 0, {}], ["learnlet_analysis", 0, 5, {}]]]}], "input_layers": [["input_1", 0, 0]], "output_layers": [["learnlet_synthesis", 0, 0]]}}, "training_config": {"loss": "mse", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "keras_psnr", "dtype": "float32", "fn": "keras_psnr"}}, {"class_name": "MeanMetricWrapper", "config": {"name": "keras_ssim", "dtype": "float32", "fn": "keras_ssim"}}, {"class_name": "MeanMetricWrapper", "config": {"name": "center_keras_psnr", "dtype": "float32", "fn": "center_keras_psnr"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_1", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 64, 64, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 64, 64, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}}
?
wav_analysis
convs_detail_tiling
regularization_losses
	variables
trainable_variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "LearnletAnalysis", "name": "learnlet_analysis", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "learnlet_analysis", "trainable": true, "dtype": "float32", "n_tiling": 64, "tiling_use_bias": false, "tiling_unit_norm": true, "mixing_details": false, "n_scales": 5, "kernel_size": 5, "skip_connection": false}}
?
norm
regularization_losses
	variables
trainable_variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Normalisation", "name": "normalisation", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"norm_init": 1.0}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 64]}}
?
norm
regularization_losses
	variables
trainable_variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Normalisation", "name": "normalisation_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"norm_init": 1.0}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 64]}}
?
 norm
!regularization_losses
"	variables
#trainable_variables
$	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Normalisation", "name": "normalisation_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"norm_init": 1.0}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 64]}}
?
%norm
&regularization_losses
'	variables
(trainable_variables
)	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Normalisation", "name": "normalisation_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"norm_init": 1.0}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 64]}}
?
*norm
+regularization_losses
,	variables
-trainable_variables
.	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Normalisation", "name": "normalisation_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"norm_init": 1.0}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4, 4, 64]}}
?
/regularization_losses
0	variables
1trainable_variables
2	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "thresholding", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "thresholding", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
3wav_filters_norm
4
upsampling
5convs_groupping
6regularization_losses
7	variables
8trainable_variables
9	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "LearnletSynthesis", "name": "learnlet_synthesis", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "learnlet_synthesis", "trainable": true, "dtype": "float32", "normalize": true, "n_scales": 5, "n_channels": 1, "synthesis_use_bias": false, "synthesis_norm": false, "res": false, "kernel_size": 5, "wav_type": "starlet"}}
?
:iter

;beta_1

<beta_2
	=decay
>learning_rate?m?@m?Am?Bm?Cm?Em?Fm?Gm?Hm?Im??v?@v?Av?Bv?Cv?Ev?Fv?Gv?Hv?Iv?"
	optimizer
 "
trackable_list_wrapper
?
?0
@1
A2
B3
C4
D5
6
7
 8
%9
*10
E11
F12
G13
H14
I15"
trackable_list_wrapper
f
?0
@1
A2
B3
C4
E5
F6
G7
H8
I9"
trackable_list_wrapper
?
Jmetrics
regularization_losses
Knon_trainable_variables
Llayer_metrics

Mlayers
Nlayer_regularization_losses
	variables
trainable_variables
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
?
Owav_pooling
Ppooling
Qwav_filters_norm
Rregularization_losses
S	variables
Ttrainable_variables
U	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "WavAnalysis", "name": "wav_analysis", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "wav_analysis", "trainable": true, "dtype": "float32", "wav_type": "starlet", "n_scales": 5, "coarse": true, "normalize": true}}
C
V0
W1
X2
Y3
Z4"
trackable_list_wrapper
 "
trackable_list_wrapper
J
?0
@1
A2
B3
C4
D5"
trackable_list_wrapper
C
?0
@1
A2
B3
C4"
trackable_list_wrapper
?
[metrics
regularization_losses
\non_trainable_variables
]layer_metrics

^layers
_layer_regularization_losses
	variables
trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:@2normalisation/norm
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
`metrics
regularization_losses
anon_trainable_variables
blayer_metrics

clayers
dlayer_regularization_losses
	variables
trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :@2normalisation_1/norm
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
emetrics
regularization_losses
fnon_trainable_variables
glayer_metrics

hlayers
ilayer_regularization_losses
	variables
trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :@2normalisation_2/norm
 "
trackable_list_wrapper
'
 0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
jmetrics
!regularization_losses
knon_trainable_variables
llayer_metrics

mlayers
nlayer_regularization_losses
"	variables
#trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :@2normalisation_3/norm
 "
trackable_list_wrapper
'
%0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
ometrics
&regularization_losses
pnon_trainable_variables
qlayer_metrics

rlayers
slayer_regularization_losses
'	variables
(trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :@2normalisation_4/norm
 "
trackable_list_wrapper
'
*0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
tmetrics
+regularization_losses
unon_trainable_variables
vlayer_metrics

wlayers
xlayer_regularization_losses
,	variables
-trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
ymetrics
/regularization_losses
znon_trainable_variables
{layer_metrics

|layers
}layer_regularization_losses
0	variables
1trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
?
~regularization_losses
	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "FixedPointUpSampling", "name": "fixed_point_up_sampling_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "fixed_point_up_sampling_1", "trainable": true, "dtype": "float32"}}
H
?0
?1
?2
?3
?4"
trackable_list_wrapper
 "
trackable_list_wrapper
C
E0
F1
G2
H3
I4"
trackable_list_wrapper
C
E0
F1
G2
H3
I4"
trackable_list_wrapper
?
?metrics
6regularization_losses
?non_trainable_variables
?layer_metrics
?layers
 ?layer_regularization_losses
7	variables
8trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
C:A@2)learnlet_analysis/details_tiling_1/kernel
C:A@2)learnlet_analysis/details_tiling_2/kernel
C:A@2)learnlet_analysis/details_tiling_3/kernel
C:A@2)learnlet_analysis/details_tiling_4/kernel
C:A@2)learnlet_analysis/details_tiling_5/kernel
`:^2Flearnlet_analysis/wav_analysis/wav_pooling/low_pass_filtering_1/kernel
D:BA2*learnlet_synthesis/groupping_conv_1/kernel
D:BA2*learnlet_synthesis/groupping_conv_2/kernel
D:BA2*learnlet_synthesis/groupping_conv_3/kernel
D:BA2*learnlet_synthesis/groupping_conv_4/kernel
D:BA2*learnlet_synthesis/groupping_conv_5/kernel
@
?0
?1
?2
?3"
trackable_list_wrapper
J
D0
1
2
 3
%4
*5"
trackable_list_wrapper
 "
trackable_dict_wrapper
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?conv_h
	?down
?up
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "WavPooling", "name": "wav_pooling", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "wav_pooling", "trainable": true, "dtype": "float32", "wav_type": "starlet"}}
?
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "FixedPointPooling", "name": "fixed_point_pooling_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "fixed_point_pooling_1", "trainable": true, "dtype": "float32"}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
D0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
Rregularization_losses
?non_trainable_variables
?layer_metrics
?layers
 ?layer_regularization_losses
S	variables
Ttrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?


?kernel
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?{"class_name": "Conv2D", "name": "details_tiling_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "details_tiling_1", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": {"class_name": "UnitNorm", "config": {"axis": [0, 1, 2]}}, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 1]}}
?


@kernel
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?{"class_name": "Conv2D", "name": "details_tiling_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "details_tiling_2", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": {"class_name": "UnitNorm", "config": {"axis": [0, 1, 2]}}, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 1]}}
?


Akernel
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?{"class_name": "Conv2D", "name": "details_tiling_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "details_tiling_3", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": {"class_name": "UnitNorm", "config": {"axis": [0, 1, 2]}}, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 1]}}
?


Bkernel
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?{"class_name": "Conv2D", "name": "details_tiling_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "details_tiling_4", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": {"class_name": "UnitNorm", "config": {"axis": [0, 1, 2]}}, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 1]}}
?


Ckernel
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?{"class_name": "Conv2D", "name": "details_tiling_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "details_tiling_5", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": {"class_name": "UnitNorm", "config": {"axis": [0, 1, 2]}}, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4, 4, 1]}}
 "
trackable_list_wrapper
'
D0"
trackable_list_wrapper
 "
trackable_dict_wrapper
J
0
V1
W2
X3
Y4
Z5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
 0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
%0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
*0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
~regularization_losses
?non_trainable_variables
?layer_metrics
?layers
 ?layer_regularization_losses
	variables
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?	

Ekernel
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "groupping_conv_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "groupping_conv_1", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 65}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4, 4, 65]}}
?	

Fkernel
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "groupping_conv_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "groupping_conv_2", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 65}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 65]}}
?


Gkernel
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "groupping_conv_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "groupping_conv_3", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 65}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 65]}}
?


Hkernel
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "groupping_conv_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "groupping_conv_4", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 65}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 65]}}
?


Ikernel
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "groupping_conv_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "groupping_conv_5", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 65}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 65]}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
O
40
?1
?2
?3
?4
?5"
trackable_list_wrapper
 "
trackable_list_wrapper
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "keras_psnr", "dtype": "float32", "config": {"name": "keras_psnr", "dtype": "float32", "fn": "keras_psnr"}}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "keras_ssim", "dtype": "float32", "config": {"name": "keras_ssim", "dtype": "float32", "fn": "keras_ssim"}}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "center_keras_psnr", "dtype": "float32", "config": {"name": "center_keras_psnr", "dtype": "float32", "fn": "center_keras_psnr"}}
?	

Dkernel
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "low_pass_filtering_1", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "low_pass_filtering_1", "trainable": false, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": "h_kernel_initializer", "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 68, 68, 1]}}
?
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "FixedPointPooling", "name": "fixed_point_pooling", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "fixed_point_pooling", "trainable": true, "dtype": "float32"}}
?
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "FixedPointUpSampling", "name": "fixed_point_up_sampling", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "fixed_point_up_sampling", "trainable": true, "dtype": "float32"}}
 "
trackable_list_wrapper
'
D0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
?regularization_losses
?non_trainable_variables
?layer_metrics
?layers
 ?layer_regularization_losses
?	variables
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
?regularization_losses
?non_trainable_variables
?layer_metrics
?layers
 ?layer_regularization_losses
?	variables
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
D0"
trackable_list_wrapper
 "
trackable_dict_wrapper
.
O0
P1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
?0"
trackable_list_wrapper
'
?0"
trackable_list_wrapper
?
?metrics
?regularization_losses
?non_trainable_variables
?layer_metrics
?layers
 ?layer_regularization_losses
?	variables
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
@0"
trackable_list_wrapper
'
@0"
trackable_list_wrapper
?
?metrics
?regularization_losses
?non_trainable_variables
?layer_metrics
?layers
 ?layer_regularization_losses
?	variables
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
A0"
trackable_list_wrapper
'
A0"
trackable_list_wrapper
?
?metrics
?regularization_losses
?non_trainable_variables
?layer_metrics
?layers
 ?layer_regularization_losses
?	variables
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
B0"
trackable_list_wrapper
'
B0"
trackable_list_wrapper
?
?metrics
?regularization_losses
?non_trainable_variables
?layer_metrics
?layers
 ?layer_regularization_losses
?	variables
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
C0"
trackable_list_wrapper
'
C0"
trackable_list_wrapper
?
?metrics
?regularization_losses
?non_trainable_variables
?layer_metrics
?layers
 ?layer_regularization_losses
?	variables
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
E0"
trackable_list_wrapper
'
E0"
trackable_list_wrapper
?
?metrics
?regularization_losses
?non_trainable_variables
?layer_metrics
?layers
 ?layer_regularization_losses
?	variables
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
F0"
trackable_list_wrapper
'
F0"
trackable_list_wrapper
?
?metrics
?regularization_losses
?non_trainable_variables
?layer_metrics
?layers
 ?layer_regularization_losses
?	variables
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
G0"
trackable_list_wrapper
'
G0"
trackable_list_wrapper
?
?metrics
?regularization_losses
?non_trainable_variables
?layer_metrics
?layers
 ?layer_regularization_losses
?	variables
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
H0"
trackable_list_wrapper
'
H0"
trackable_list_wrapper
?
?metrics
?regularization_losses
?non_trainable_variables
?layer_metrics
?layers
 ?layer_regularization_losses
?	variables
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
I0"
trackable_list_wrapper
'
I0"
trackable_list_wrapper
?
?metrics
?regularization_losses
?non_trainable_variables
?layer_metrics
?layers
 ?layer_regularization_losses
?	variables
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
 "
trackable_list_wrapper
'
D0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
?regularization_losses
?non_trainable_variables
?layer_metrics
?layers
 ?layer_regularization_losses
?	variables
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
?regularization_losses
?non_trainable_variables
?layer_metrics
?layers
 ?layer_regularization_losses
?	variables
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
?regularization_losses
?non_trainable_variables
?layer_metrics
?layers
 ?layer_regularization_losses
?	variables
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
D0"
trackable_list_wrapper
 "
trackable_dict_wrapper
8
?0
?1
?2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
D0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
H:F@20Adam/learnlet_analysis/details_tiling_1/kernel/m
H:F@20Adam/learnlet_analysis/details_tiling_2/kernel/m
H:F@20Adam/learnlet_analysis/details_tiling_3/kernel/m
H:F@20Adam/learnlet_analysis/details_tiling_4/kernel/m
H:F@20Adam/learnlet_analysis/details_tiling_5/kernel/m
I:GA21Adam/learnlet_synthesis/groupping_conv_1/kernel/m
I:GA21Adam/learnlet_synthesis/groupping_conv_2/kernel/m
I:GA21Adam/learnlet_synthesis/groupping_conv_3/kernel/m
I:GA21Adam/learnlet_synthesis/groupping_conv_4/kernel/m
I:GA21Adam/learnlet_synthesis/groupping_conv_5/kernel/m
H:F@20Adam/learnlet_analysis/details_tiling_1/kernel/v
H:F@20Adam/learnlet_analysis/details_tiling_2/kernel/v
H:F@20Adam/learnlet_analysis/details_tiling_3/kernel/v
H:F@20Adam/learnlet_analysis/details_tiling_4/kernel/v
H:F@20Adam/learnlet_analysis/details_tiling_5/kernel/v
I:GA21Adam/learnlet_synthesis/groupping_conv_1/kernel/v
I:GA21Adam/learnlet_synthesis/groupping_conv_2/kernel/v
I:GA21Adam/learnlet_synthesis/groupping_conv_3/kernel/v
I:GA21Adam/learnlet_synthesis/groupping_conv_4/kernel/v
I:GA21Adam/learnlet_synthesis/groupping_conv_5/kernel/v
?2?
'__inference_model_layer_call_fn_1916591
'__inference_model_layer_call_fn_1915888
'__inference_model_layer_call_fn_1915992
'__inference_model_layer_call_fn_1916552?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
B__inference_model_layer_call_and_return_conditional_losses_1916513
B__inference_model_layer_call_and_return_conditional_losses_1916277
B__inference_model_layer_call_and_return_conditional_losses_1915783
B__inference_model_layer_call_and_return_conditional_losses_1915718?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
"__inference__wrapped_model_1915177?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *.?+
)?&
input_1?????????@@
?2?
3__inference_learnlet_analysis_layer_call_fn_1916756?
???
FullArgSpec
args?
jself
jimage
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
N__inference_learnlet_analysis_layer_call_and_return_conditional_losses_1916727?
???
FullArgSpec
args?
jself
jimage
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec 
args?
jself
jx
jmode
varargs
 
varkw
 
defaults?

jnormal

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec 
args?
jself
jx
jmode
varargs
 
varkw
 
defaults?

jnormal

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec 
args?
jself
jx
jmode
varargs
 
varkw
 
defaults?

jnormal

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec 
args?
jself
jx
jmode
varargs
 
varkw
 
defaults?

jnormal

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec 
args?
jself
jx
jmode
varargs
 
varkw
 
defaults?

jnormal

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec 
args?
jself
jx
jmode
varargs
 
varkw
 
defaults?

jnormal

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec 
args?
jself
jx
jmode
varargs
 
varkw
 
defaults?

jnormal

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec 
args?
jself
jx
jmode
varargs
 
varkw
 
defaults?

jnormal

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec 
args?
jself
jx
jmode
varargs
 
varkw
 
defaults?

jnormal

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec 
args?
jself
jx
jmode
varargs
 
varkw
 
defaults?

jnormal

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
.__inference_thresholding_layer_call_fn_1916766
.__inference_thresholding_layer_call_fn_1916776
.__inference_thresholding_layer_call_fn_1916806
.__inference_thresholding_layer_call_fn_1916786
.__inference_thresholding_layer_call_fn_1916796?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
I__inference_thresholding_layer_call_and_return_conditional_losses_1916781
I__inference_thresholding_layer_call_and_return_conditional_losses_1916761
I__inference_thresholding_layer_call_and_return_conditional_losses_1916771
I__inference_thresholding_layer_call_and_return_conditional_losses_1916791
I__inference_thresholding_layer_call_and_return_conditional_losses_1916801?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
4__inference_learnlet_synthesis_layer_call_fn_1916910?
???
FullArgSpec&
args?
jself
janalysis_coeffs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
O__inference_learnlet_synthesis_layer_call_and_return_conditional_losses_1916890?
???
FullArgSpec&
args?
jself
janalysis_coeffs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
%__inference_signature_wrapper_1916041input_1"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jimage
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jimage
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec"
args?
jself
jimage_batch
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec"
args?
jself
jimage_batch
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jimages
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jimages
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec"
args?
jself
jimage_batch
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec"
args?
jself
jimage_batch
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec"
args?
jself
jimage_batch
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec"
args?
jself
jimage_batch
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec"
args?
jself
jimage_batch
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec"
args?
jself
jimage_batch
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
	J
Const?
"__inference__wrapped_model_1915177??D?@ABC*% EFGHI8?5
.?+
)?&
input_1?????????@@
? "O?L
J
learnlet_synthesis4?1
learnlet_synthesis?????????@@?
N__inference_learnlet_analysis_layer_call_and_return_conditional_losses_1916727??D?@ABC6?3
,?)
'?$
image?????????@@
? "???
???
%?"
0/0?????????@@@
%?"
0/1?????????  @
%?"
0/2?????????@
%?"
0/3?????????@
%?"
0/4?????????@
%?"
0/5?????????
? ?
3__inference_learnlet_analysis_layer_call_fn_1916756??D?@ABC6?3
,?)
'?$
image?????????@@
? "???
#? 
0?????????@@@
#? 
1?????????  @
#? 
2?????????@
#? 
3?????????@
#? 
4?????????@
#? 
5??????????
O__inference_learnlet_synthesis_layer_call_and_return_conditional_losses_1916890?EFGHI???
???
???
3?0
analysis_coeffs/0?????????@@@
3?0
analysis_coeffs/1?????????  @
3?0
analysis_coeffs/2?????????@
3?0
analysis_coeffs/3?????????@
3?0
analysis_coeffs/4?????????@
3?0
analysis_coeffs/5?????????
? "-?*
#? 
0?????????@@
? ?
4__inference_learnlet_synthesis_layer_call_fn_1916910?EFGHI???
???
???
3?0
analysis_coeffs/0?????????@@@
3?0
analysis_coeffs/1?????????  @
3?0
analysis_coeffs/2?????????@
3?0
analysis_coeffs/3?????????@
3?0
analysis_coeffs/4?????????@
3?0
analysis_coeffs/5?????????
? " ??????????@@?
B__inference_model_layer_call_and_return_conditional_losses_1915718??D?@ABC*% EFGHI@?=
6?3
)?&
input_1?????????@@
p

 
? "-?*
#? 
0?????????@@
? ?
B__inference_model_layer_call_and_return_conditional_losses_1915783??D?@ABC*% EFGHI@?=
6?3
)?&
input_1?????????@@
p 

 
? "-?*
#? 
0?????????@@
? ?
B__inference_model_layer_call_and_return_conditional_losses_1916277??D?@ABC*% EFGHI??<
5?2
(?%
inputs?????????@@
p

 
? "-?*
#? 
0?????????@@
? ?
B__inference_model_layer_call_and_return_conditional_losses_1916513??D?@ABC*% EFGHI??<
5?2
(?%
inputs?????????@@
p 

 
? "-?*
#? 
0?????????@@
? ?
'__inference_model_layer_call_fn_1915888x?D?@ABC*% EFGHI@?=
6?3
)?&
input_1?????????@@
p

 
? " ??????????@@?
'__inference_model_layer_call_fn_1915992x?D?@ABC*% EFGHI@?=
6?3
)?&
input_1?????????@@
p 

 
? " ??????????@@?
'__inference_model_layer_call_fn_1916552w?D?@ABC*% EFGHI??<
5?2
(?%
inputs?????????@@
p

 
? " ??????????@@?
'__inference_model_layer_call_fn_1916591w?D?@ABC*% EFGHI??<
5?2
(?%
inputs?????????@@
p 

 
? " ??????????@@?
%__inference_signature_wrapper_1916041??D?@ABC*% EFGHIC?@
? 
9?6
4
input_1)?&
input_1?????????@@"O?L
J
learnlet_synthesis4?1
learnlet_synthesis?????????@@?
I__inference_thresholding_layer_call_and_return_conditional_losses_1916761h7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
I__inference_thresholding_layer_call_and_return_conditional_losses_1916771h7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
I__inference_thresholding_layer_call_and_return_conditional_losses_1916781h7?4
-?*
(?%
inputs?????????@@@
? "-?*
#? 
0?????????@@@
? ?
I__inference_thresholding_layer_call_and_return_conditional_losses_1916791h7?4
-?*
(?%
inputs?????????  @
? "-?*
#? 
0?????????  @
? ?
I__inference_thresholding_layer_call_and_return_conditional_losses_1916801h7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
.__inference_thresholding_layer_call_fn_1916766[7?4
-?*
(?%
inputs?????????@
? " ??????????@?
.__inference_thresholding_layer_call_fn_1916776[7?4
-?*
(?%
inputs?????????@
? " ??????????@?
.__inference_thresholding_layer_call_fn_1916786[7?4
-?*
(?%
inputs?????????@@@
? " ??????????@@@?
.__inference_thresholding_layer_call_fn_1916796[7?4
-?*
(?%
inputs?????????  @
? " ??????????  @?
.__inference_thresholding_layer_call_fn_1916806[7?4
-?*
(?%
inputs?????????@
? " ??????????@