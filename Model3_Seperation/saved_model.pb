╣°
Ут
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
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
\
	LeakyRelu
features"T
activations"T"
alphafloat%═╠L>"
Ttype0:
2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
В
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р
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
dtypetypeИ
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
H
ShardedFilename
basename	
shard

num_shards
filename
┴
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
executor_typestring Ии
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.11.02v2.11.0-rc2-15-g6290819256d8█║
Д
random_flip_1/StateVarVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*'
shared_namerandom_flip_1/StateVar
}
*random_flip_1/StateVar/Read/ReadVariableOpReadVariableOprandom_flip_1/StateVar*
_output_shapes
:*
dtype0	
А
random_flip/StateVarVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*%
shared_namerandom_flip/StateVar
y
(random_flip/StateVar/Read/ReadVariableOpReadVariableOprandom_flip/StateVar*
_output_shapes
:*
dtype0	
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
~
Adam/v/outputs/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/v/outputs/bias
w
'Adam/v/outputs/bias/Read/ReadVariableOpReadVariableOpAdam/v/outputs/bias*
_output_shapes
:*
dtype0
~
Adam/m/outputs/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/m/outputs/bias
w
'Adam/m/outputs/bias/Read/ReadVariableOpReadVariableOpAdam/m/outputs/bias*
_output_shapes
:*
dtype0
З
Adam/v/outputs/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*&
shared_nameAdam/v/outputs/kernel
А
)Adam/v/outputs/kernel/Read/ReadVariableOpReadVariableOpAdam/v/outputs/kernel*
_output_shapes
:	А*
dtype0
З
Adam/m/outputs/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*&
shared_nameAdam/m/outputs/kernel
А
)Adam/m/outputs/kernel/Read/ReadVariableOpReadVariableOpAdam/m/outputs/kernel*
_output_shapes
:	А*
dtype0

Adam/v/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*$
shared_nameAdam/v/dense_3/bias
x
'Adam/v/dense_3/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_3/bias*
_output_shapes	
:А*
dtype0

Adam/m/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*$
shared_nameAdam/m/dense_3/bias
x
'Adam/m/dense_3/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_3/bias*
_output_shapes	
:А*
dtype0
И
Adam/v/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
А
А*&
shared_nameAdam/v/dense_3/kernel
Б
)Adam/v/dense_3/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_3/kernel* 
_output_shapes
:
А
А*
dtype0
И
Adam/m/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
А
А*&
shared_nameAdam/m/dense_3/kernel
Б
)Adam/m/dense_3/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_3/kernel* 
_output_shapes
:
А
А*
dtype0
Г
Adam/v/conv2d_23/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:└*&
shared_nameAdam/v/conv2d_23/bias
|
)Adam/v/conv2d_23/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_23/bias*
_output_shapes	
:└*
dtype0
Г
Adam/m/conv2d_23/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:└*&
shared_nameAdam/m/conv2d_23/bias
|
)Adam/m/conv2d_23/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_23/bias*
_output_shapes	
:└*
dtype0
Ф
Adam/v/conv2d_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:А└*(
shared_nameAdam/v/conv2d_23/kernel
Н
+Adam/v/conv2d_23/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_23/kernel*(
_output_shapes
:А└*
dtype0
Ф
Adam/m/conv2d_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:А└*(
shared_nameAdam/m/conv2d_23/kernel
Н
+Adam/m/conv2d_23/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_23/kernel*(
_output_shapes
:А└*
dtype0
Г
Adam/v/conv2d_22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameAdam/v/conv2d_22/bias
|
)Adam/v/conv2d_22/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_22/bias*
_output_shapes	
:А*
dtype0
Г
Adam/m/conv2d_22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameAdam/m/conv2d_22/bias
|
)Adam/m/conv2d_22/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_22/bias*
_output_shapes	
:А*
dtype0
Ф
Adam/v/conv2d_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*(
shared_nameAdam/v/conv2d_22/kernel
Н
+Adam/v/conv2d_22/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_22/kernel*(
_output_shapes
:АА*
dtype0
Ф
Adam/m/conv2d_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*(
shared_nameAdam/m/conv2d_22/kernel
Н
+Adam/m/conv2d_22/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_22/kernel*(
_output_shapes
:АА*
dtype0
Г
Adam/v/conv2d_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameAdam/v/conv2d_21/bias
|
)Adam/v/conv2d_21/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_21/bias*
_output_shapes	
:А*
dtype0
Г
Adam/m/conv2d_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameAdam/m/conv2d_21/bias
|
)Adam/m/conv2d_21/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_21/bias*
_output_shapes	
:А*
dtype0
У
Adam/v/conv2d_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*(
shared_nameAdam/v/conv2d_21/kernel
М
+Adam/v/conv2d_21/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_21/kernel*'
_output_shapes
:@А*
dtype0
У
Adam/m/conv2d_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*(
shared_nameAdam/m/conv2d_21/kernel
М
+Adam/m/conv2d_21/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_21/kernel*'
_output_shapes
:@А*
dtype0
В
Adam/v/conv2d_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/v/conv2d_20/bias
{
)Adam/v/conv2d_20/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_20/bias*
_output_shapes
:@*
dtype0
В
Adam/m/conv2d_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/m/conv2d_20/bias
{
)Adam/m/conv2d_20/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_20/bias*
_output_shapes
:@*
dtype0
Т
Adam/v/conv2d_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/v/conv2d_20/kernel
Л
+Adam/v/conv2d_20/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_20/kernel*&
_output_shapes
: @*
dtype0
Т
Adam/m/conv2d_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/m/conv2d_20/kernel
Л
+Adam/m/conv2d_20/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_20/kernel*&
_output_shapes
: @*
dtype0
В
Adam/v/conv2d_19/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/v/conv2d_19/bias
{
)Adam/v/conv2d_19/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_19/bias*
_output_shapes
: *
dtype0
В
Adam/m/conv2d_19/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/m/conv2d_19/bias
{
)Adam/m/conv2d_19/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_19/bias*
_output_shapes
: *
dtype0
Т
Adam/v/conv2d_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/v/conv2d_19/kernel
Л
+Adam/v/conv2d_19/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_19/kernel*&
_output_shapes
: *
dtype0
Т
Adam/m/conv2d_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/m/conv2d_19/kernel
Л
+Adam/m/conv2d_19/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_19/kernel*&
_output_shapes
: *
dtype0
В
Adam/v/conv2d_18/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/v/conv2d_18/bias
{
)Adam/v/conv2d_18/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_18/bias*
_output_shapes
:*
dtype0
В
Adam/m/conv2d_18/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/m/conv2d_18/bias
{
)Adam/m/conv2d_18/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_18/bias*
_output_shapes
:*
dtype0
Т
Adam/v/conv2d_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/v/conv2d_18/kernel
Л
+Adam/v/conv2d_18/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_18/kernel*&
_output_shapes
:*
dtype0
Т
Adam/m/conv2d_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/m/conv2d_18/kernel
Л
+Adam/m/conv2d_18/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_18/kernel*&
_output_shapes
:*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
p
outputs/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameoutputs/bias
i
 outputs/bias/Read/ReadVariableOpReadVariableOpoutputs/bias*
_output_shapes
:*
dtype0
y
outputs/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*
shared_nameoutputs/kernel
r
"outputs/kernel/Read/ReadVariableOpReadVariableOpoutputs/kernel*
_output_shapes
:	А*
dtype0
q
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namedense_3/bias
j
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes	
:А*
dtype0
z
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
А
А*
shared_namedense_3/kernel
s
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel* 
_output_shapes
:
А
А*
dtype0
u
conv2d_23/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:└*
shared_nameconv2d_23/bias
n
"conv2d_23/bias/Read/ReadVariableOpReadVariableOpconv2d_23/bias*
_output_shapes	
:└*
dtype0
Ж
conv2d_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:А└*!
shared_nameconv2d_23/kernel

$conv2d_23/kernel/Read/ReadVariableOpReadVariableOpconv2d_23/kernel*(
_output_shapes
:А└*
dtype0
u
conv2d_22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_22/bias
n
"conv2d_22/bias/Read/ReadVariableOpReadVariableOpconv2d_22/bias*
_output_shapes	
:А*
dtype0
Ж
conv2d_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*!
shared_nameconv2d_22/kernel

$conv2d_22/kernel/Read/ReadVariableOpReadVariableOpconv2d_22/kernel*(
_output_shapes
:АА*
dtype0
u
conv2d_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_21/bias
n
"conv2d_21/bias/Read/ReadVariableOpReadVariableOpconv2d_21/bias*
_output_shapes	
:А*
dtype0
Е
conv2d_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*!
shared_nameconv2d_21/kernel
~
$conv2d_21/kernel/Read/ReadVariableOpReadVariableOpconv2d_21/kernel*'
_output_shapes
:@А*
dtype0
t
conv2d_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_20/bias
m
"conv2d_20/bias/Read/ReadVariableOpReadVariableOpconv2d_20/bias*
_output_shapes
:@*
dtype0
Д
conv2d_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameconv2d_20/kernel
}
$conv2d_20/kernel/Read/ReadVariableOpReadVariableOpconv2d_20/kernel*&
_output_shapes
: @*
dtype0
t
conv2d_19/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_19/bias
m
"conv2d_19/bias/Read/ReadVariableOpReadVariableOpconv2d_19/bias*
_output_shapes
: *
dtype0
Д
conv2d_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_19/kernel
}
$conv2d_19/kernel/Read/ReadVariableOpReadVariableOpconv2d_19/kernel*&
_output_shapes
: *
dtype0
t
conv2d_18/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_18/bias
m
"conv2d_18/bias/Read/ReadVariableOpReadVariableOpconv2d_18/bias*
_output_shapes
:*
dtype0
Д
conv2d_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_18/kernel
}
$conv2d_18/kernel/Read/ReadVariableOpReadVariableOpconv2d_18/kernel*&
_output_shapes
:*
dtype0
Щ
"serving_default_sequential_2_inputPlaceholder*1
_output_shapes
:         АА*
dtype0*&
shape:         АА
х
StatefulPartitionedCallStatefulPartitionedCall"serving_default_sequential_2_inputconv2d_18/kernelconv2d_18/biasconv2d_19/kernelconv2d_19/biasconv2d_20/kernelconv2d_20/biasconv2d_21/kernelconv2d_21/biasconv2d_22/kernelconv2d_22/biasconv2d_23/kernelconv2d_23/biasdense_3/kerneldense_3/biasoutputs/kerneloutputs/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *-
f(R&
$__inference_signature_wrapper_987376

NoOpNoOp
Б│
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*╗▓
value░▓Bм▓ Bд▓
О
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer-9
layer_with_weights-4
layer-10
layer-11
layer_with_weights-5
layer-12
layer-13
layer-14
layer-15
layer_with_weights-6
layer-16
layer_with_weights-7
layer-17
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
к
layer-0
layer-1
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses*
О
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses* 
╪
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses
0
activation

1kernel
2bias
 3_jit_compiled_convolution_op*
О
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses* 
╪
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses
@
activation

Akernel
Bbias
 C_jit_compiled_convolution_op*
О
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses* 
╪
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses
P
activation

Qkernel
Rbias
 S_jit_compiled_convolution_op*
О
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses* 
╪
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses
`
activation

akernel
bbias
 c_jit_compiled_convolution_op*
О
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h__call__
*i&call_and_return_all_conditional_losses* 
╪
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
n__call__
*o&call_and_return_all_conditional_losses
p
activation

qkernel
rbias
 s_jit_compiled_convolution_op*
О
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses* 
▄
z	variables
{trainable_variables
|regularization_losses
}	keras_api
~__call__
*&call_and_return_all_conditional_losses
А
activation
Бkernel
	Вbias
!Г_jit_compiled_convolution_op*
Ф
Д	variables
Еtrainable_variables
Жregularization_losses
З	keras_api
И__call__
+Й&call_and_return_all_conditional_losses* 
м
К	variables
Лtrainable_variables
Мregularization_losses
Н	keras_api
О__call__
+П&call_and_return_all_conditional_losses
Р_random_generator* 
Ф
С	variables
Тtrainable_variables
Уregularization_losses
Ф	keras_api
Х__call__
+Ц&call_and_return_all_conditional_losses* 
┐
Ч	variables
Шtrainable_variables
Щregularization_losses
Ъ	keras_api
Ы__call__
+Ь&call_and_return_all_conditional_losses
Э
activation
Юkernel
	Яbias*
о
а	variables
бtrainable_variables
вregularization_losses
г	keras_api
д__call__
+е&call_and_return_all_conditional_losses
жkernel
	зbias*
А
10
21
A2
B3
Q4
R5
a6
b7
q8
r9
Б10
В11
Ю12
Я13
ж14
з15*
А
10
21
A2
B3
Q4
R5
a6
b7
q8
r9
Б10
В11
Ю12
Я13
ж14
з15*
* 
╡
иnon_trainable_variables
йlayers
кmetrics
 лlayer_regularization_losses
мlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
нtrace_0
оtrace_1
пtrace_2
░trace_3* 
:
▒trace_0
▓trace_1
│trace_2
┤trace_3* 
* 
И
╡
_variables
╢_iterations
╖_learning_rate
╕_index_dict
╣
_momentums
║_velocities
╗_update_step_xla*

╝serving_default* 
о
╜	variables
╛trainable_variables
┐regularization_losses
└	keras_api
┴__call__
+┬&call_and_return_all_conditional_losses
├_random_generator*
о
─	variables
┼trainable_variables
╞regularization_losses
╟	keras_api
╚__call__
+╔&call_and_return_all_conditional_losses
╩_random_generator*
* 
* 
* 
Ш
╦non_trainable_variables
╠layers
═metrics
 ╬layer_regularization_losses
╧layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses*
:
╨trace_0
╤trace_1
╥trace_2
╙trace_3* 
:
╘trace_0
╒trace_1
╓trace_2
╫trace_3* 
* 
* 
* 
Ц
╪non_trainable_variables
┘layers
┌metrics
 █layer_regularization_losses
▄layer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses* 

▌trace_0* 

▐trace_0* 

10
21*

10
21*
* 
Ш
▀non_trainable_variables
рlayers
сmetrics
 тlayer_regularization_losses
уlayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses*

фtrace_0* 

хtrace_0* 
Ф
ц	variables
чtrainable_variables
шregularization_losses
щ	keras_api
ъ__call__
+ы&call_and_return_all_conditional_losses* 
`Z
VARIABLE_VALUEconv2d_18/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_18/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
ьnon_trainable_variables
эlayers
юmetrics
 яlayer_regularization_losses
Ёlayer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses* 

ёtrace_0* 

Єtrace_0* 

A0
B1*

A0
B1*
* 
Ш
єnon_trainable_variables
Їlayers
їmetrics
 Ўlayer_regularization_losses
ўlayer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses*

°trace_0* 

∙trace_0* 
Ф
·	variables
√trainable_variables
№regularization_losses
¤	keras_api
■__call__
+ &call_and_return_all_conditional_losses* 
`Z
VARIABLE_VALUEconv2d_19/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_19/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses* 

Еtrace_0* 

Жtrace_0* 

Q0
R1*

Q0
R1*
* 
Ш
Зnon_trainable_variables
Иlayers
Йmetrics
 Кlayer_regularization_losses
Лlayer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses*

Мtrace_0* 

Нtrace_0* 
Ф
О	variables
Пtrainable_variables
Рregularization_losses
С	keras_api
Т__call__
+У&call_and_return_all_conditional_losses* 
`Z
VARIABLE_VALUEconv2d_20/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_20/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
Фnon_trainable_variables
Хlayers
Цmetrics
 Чlayer_regularization_losses
Шlayer_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses* 

Щtrace_0* 

Ъtrace_0* 

a0
b1*

a0
b1*
* 
Ш
Ыnon_trainable_variables
Ьlayers
Эmetrics
 Юlayer_regularization_losses
Яlayer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses*

аtrace_0* 

бtrace_0* 
Ф
в	variables
гtrainable_variables
дregularization_losses
е	keras_api
ж__call__
+з&call_and_return_all_conditional_losses* 
`Z
VARIABLE_VALUEconv2d_21/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_21/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
иnon_trainable_variables
йlayers
кmetrics
 лlayer_regularization_losses
мlayer_metrics
d	variables
etrainable_variables
fregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses* 

нtrace_0* 

оtrace_0* 

q0
r1*

q0
r1*
* 
Ш
пnon_trainable_variables
░layers
▒metrics
 ▓layer_regularization_losses
│layer_metrics
j	variables
ktrainable_variables
lregularization_losses
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses*

┤trace_0* 

╡trace_0* 
Ф
╢	variables
╖trainable_variables
╕regularization_losses
╣	keras_api
║__call__
+╗&call_and_return_all_conditional_losses* 
`Z
VARIABLE_VALUEconv2d_22/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_22/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
╝non_trainable_variables
╜layers
╛metrics
 ┐layer_regularization_losses
└layer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses* 

┴trace_0* 

┬trace_0* 

Б0
В1*

Б0
В1*
* 
Ш
├non_trainable_variables
─layers
┼metrics
 ╞layer_regularization_losses
╟layer_metrics
z	variables
{trainable_variables
|regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

╚trace_0* 

╔trace_0* 
Ф
╩	variables
╦trainable_variables
╠regularization_losses
═	keras_api
╬__call__
+╧&call_and_return_all_conditional_losses* 
`Z
VARIABLE_VALUEconv2d_23/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_23/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ь
╨non_trainable_variables
╤layers
╥metrics
 ╙layer_regularization_losses
╘layer_metrics
Д	variables
Еtrainable_variables
Жregularization_losses
И__call__
+Й&call_and_return_all_conditional_losses
'Й"call_and_return_conditional_losses* 

╒trace_0* 

╓trace_0* 
* 
* 
* 
Ь
╫non_trainable_variables
╪layers
┘metrics
 ┌layer_regularization_losses
█layer_metrics
К	variables
Лtrainable_variables
Мregularization_losses
О__call__
+П&call_and_return_all_conditional_losses
'П"call_and_return_conditional_losses* 

▄trace_0
▌trace_1* 

▐trace_0
▀trace_1* 
* 
* 
* 
* 
Ь
рnon_trainable_variables
сlayers
тmetrics
 уlayer_regularization_losses
фlayer_metrics
С	variables
Тtrainable_variables
Уregularization_losses
Х__call__
+Ц&call_and_return_all_conditional_losses
'Ц"call_and_return_conditional_losses* 

хtrace_0* 

цtrace_0* 

Ю0
Я1*

Ю0
Я1*
* 
Ю
чnon_trainable_variables
шlayers
щmetrics
 ъlayer_regularization_losses
ыlayer_metrics
Ч	variables
Шtrainable_variables
Щregularization_losses
Ы__call__
+Ь&call_and_return_all_conditional_losses
'Ь"call_and_return_conditional_losses*

ьtrace_0* 

эtrace_0* 
Ф
ю	variables
яtrainable_variables
Ёregularization_losses
ё	keras_api
Є__call__
+є&call_and_return_all_conditional_losses* 
^X
VARIABLE_VALUEdense_3/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_3/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*

ж0
з1*

ж0
з1*
* 
Ю
Їnon_trainable_variables
їlayers
Ўmetrics
 ўlayer_regularization_losses
°layer_metrics
а	variables
бtrainable_variables
вregularization_losses
д__call__
+е&call_and_return_all_conditional_losses
'е"call_and_return_conditional_losses*

∙trace_0* 

·trace_0* 
^X
VARIABLE_VALUEoutputs/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEoutputs/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
К
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17*

√0
№1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
г
╢0
¤1
■2
 3
А4
Б5
В6
Г7
Д8
Е9
Ж10
З11
И12
Й13
К14
Л15
М16
Н17
О18
П19
Р20
С21
Т22
У23
Ф24
Х25
Ц26
Ч27
Ш28
Щ29
Ъ30
Ы31
Ь32*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
К
¤0
 1
Б2
Г3
Е4
З5
Й6
Л7
Н8
П9
С10
У11
Х12
Ч13
Щ14
Ы15*
К
■0
А1
В2
Д3
Ж4
И5
К6
М7
О8
Р9
Т10
Ф11
Ц12
Ш13
Ъ14
Ь15*
* 
* 
* 
* 
* 
Ь
Эnon_trainable_variables
Юlayers
Яmetrics
 аlayer_regularization_losses
бlayer_metrics
╜	variables
╛trainable_variables
┐regularization_losses
┴__call__
+┬&call_and_return_all_conditional_losses
'┬"call_and_return_conditional_losses* 

вtrace_0
гtrace_1* 

дtrace_0
еtrace_1* 

ж
_generator*
* 
* 
* 
Ь
зnon_trainable_variables
иlayers
йmetrics
 кlayer_regularization_losses
лlayer_metrics
─	variables
┼trainable_variables
╞regularization_losses
╚__call__
+╔&call_and_return_all_conditional_losses
'╔"call_and_return_conditional_losses* 

мtrace_0
нtrace_1* 

оtrace_0
пtrace_1* 

░
_generator*
* 

0
1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
	
00* 
* 
* 
* 
* 
* 
* 
* 
* 
Ь
▒non_trainable_variables
▓layers
│metrics
 ┤layer_regularization_losses
╡layer_metrics
ц	variables
чtrainable_variables
шregularization_losses
ъ__call__
+ы&call_and_return_all_conditional_losses
'ы"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
	
@0* 
* 
* 
* 
* 
* 
* 
* 
* 
Ь
╢non_trainable_variables
╖layers
╕metrics
 ╣layer_regularization_losses
║layer_metrics
·	variables
√trainable_variables
№regularization_losses
■__call__
+ &call_and_return_all_conditional_losses
' "call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
	
P0* 
* 
* 
* 
* 
* 
* 
* 
* 
Ь
╗non_trainable_variables
╝layers
╜metrics
 ╛layer_regularization_losses
┐layer_metrics
О	variables
Пtrainable_variables
Рregularization_losses
Т__call__
+У&call_and_return_all_conditional_losses
'У"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
	
`0* 
* 
* 
* 
* 
* 
* 
* 
* 
Ь
└non_trainable_variables
┴layers
┬metrics
 ├layer_regularization_losses
─layer_metrics
в	variables
гtrainable_variables
дregularization_losses
ж__call__
+з&call_and_return_all_conditional_losses
'з"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
	
p0* 
* 
* 
* 
* 
* 
* 
* 
* 
Ь
┼non_trainable_variables
╞layers
╟metrics
 ╚layer_regularization_losses
╔layer_metrics
╢	variables
╖trainable_variables
╕regularization_losses
║__call__
+╗&call_and_return_all_conditional_losses
'╗"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 


А0* 
* 
* 
* 
* 
* 
* 
* 
* 
Ь
╩non_trainable_variables
╦layers
╠metrics
 ═layer_regularization_losses
╬layer_metrics
╩	variables
╦trainable_variables
╠regularization_losses
╬__call__
+╧&call_and_return_all_conditional_losses
'╧"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 


Э0* 
* 
* 
* 
* 
* 
* 
* 
* 
Ь
╧non_trainable_variables
╨layers
╤metrics
 ╥layer_regularization_losses
╙layer_metrics
ю	variables
яtrainable_variables
Ёregularization_losses
Є__call__
+є&call_and_return_all_conditional_losses
'є"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
╘	variables
╒	keras_api

╓total

╫count*
M
╪	variables
┘	keras_api

┌total

█count
▄
_fn_kwargs*
b\
VARIABLE_VALUEAdam/m/conv2d_18/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_18/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_18/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_18/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_19/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_19/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_19/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_19/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_20/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_20/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_20/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_20/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv2d_21/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_21/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_21/bias2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_21/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv2d_22/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_22/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_22/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_22/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv2d_23/kernel2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_23/kernel2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_23/bias2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_23/bias2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_3/kernel2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_3/kernel2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_3/bias2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_3/bias2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/outputs/kernel2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/outputs/kernel2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/outputs/bias2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/outputs/bias2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 

▌
_state_var*
* 
* 
* 
* 
* 
* 
* 
* 
* 

▐
_state_var*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

╓0
╫1*

╘	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

┌0
█1*

╪	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
Аz
VARIABLE_VALUErandom_flip/StateVarRlayer-0/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUErandom_flip_1/StateVarRlayer-0/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
У
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_18/kernel/Read/ReadVariableOp"conv2d_18/bias/Read/ReadVariableOp$conv2d_19/kernel/Read/ReadVariableOp"conv2d_19/bias/Read/ReadVariableOp$conv2d_20/kernel/Read/ReadVariableOp"conv2d_20/bias/Read/ReadVariableOp$conv2d_21/kernel/Read/ReadVariableOp"conv2d_21/bias/Read/ReadVariableOp$conv2d_22/kernel/Read/ReadVariableOp"conv2d_22/bias/Read/ReadVariableOp$conv2d_23/kernel/Read/ReadVariableOp"conv2d_23/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOp"outputs/kernel/Read/ReadVariableOp outputs/bias/Read/ReadVariableOpiteration/Read/ReadVariableOp!learning_rate/Read/ReadVariableOp+Adam/m/conv2d_18/kernel/Read/ReadVariableOp+Adam/v/conv2d_18/kernel/Read/ReadVariableOp)Adam/m/conv2d_18/bias/Read/ReadVariableOp)Adam/v/conv2d_18/bias/Read/ReadVariableOp+Adam/m/conv2d_19/kernel/Read/ReadVariableOp+Adam/v/conv2d_19/kernel/Read/ReadVariableOp)Adam/m/conv2d_19/bias/Read/ReadVariableOp)Adam/v/conv2d_19/bias/Read/ReadVariableOp+Adam/m/conv2d_20/kernel/Read/ReadVariableOp+Adam/v/conv2d_20/kernel/Read/ReadVariableOp)Adam/m/conv2d_20/bias/Read/ReadVariableOp)Adam/v/conv2d_20/bias/Read/ReadVariableOp+Adam/m/conv2d_21/kernel/Read/ReadVariableOp+Adam/v/conv2d_21/kernel/Read/ReadVariableOp)Adam/m/conv2d_21/bias/Read/ReadVariableOp)Adam/v/conv2d_21/bias/Read/ReadVariableOp+Adam/m/conv2d_22/kernel/Read/ReadVariableOp+Adam/v/conv2d_22/kernel/Read/ReadVariableOp)Adam/m/conv2d_22/bias/Read/ReadVariableOp)Adam/v/conv2d_22/bias/Read/ReadVariableOp+Adam/m/conv2d_23/kernel/Read/ReadVariableOp+Adam/v/conv2d_23/kernel/Read/ReadVariableOp)Adam/m/conv2d_23/bias/Read/ReadVariableOp)Adam/v/conv2d_23/bias/Read/ReadVariableOp)Adam/m/dense_3/kernel/Read/ReadVariableOp)Adam/v/dense_3/kernel/Read/ReadVariableOp'Adam/m/dense_3/bias/Read/ReadVariableOp'Adam/v/dense_3/bias/Read/ReadVariableOp)Adam/m/outputs/kernel/Read/ReadVariableOp)Adam/v/outputs/kernel/Read/ReadVariableOp'Adam/m/outputs/bias/Read/ReadVariableOp'Adam/v/outputs/bias/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp(random_flip/StateVar/Read/ReadVariableOp*random_flip_1/StateVar/Read/ReadVariableOpConst*E
Tin>
<2:			*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *(
f#R!
__inference__traced_save_988450
о
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_18/kernelconv2d_18/biasconv2d_19/kernelconv2d_19/biasconv2d_20/kernelconv2d_20/biasconv2d_21/kernelconv2d_21/biasconv2d_22/kernelconv2d_22/biasconv2d_23/kernelconv2d_23/biasdense_3/kerneldense_3/biasoutputs/kerneloutputs/bias	iterationlearning_rateAdam/m/conv2d_18/kernelAdam/v/conv2d_18/kernelAdam/m/conv2d_18/biasAdam/v/conv2d_18/biasAdam/m/conv2d_19/kernelAdam/v/conv2d_19/kernelAdam/m/conv2d_19/biasAdam/v/conv2d_19/biasAdam/m/conv2d_20/kernelAdam/v/conv2d_20/kernelAdam/m/conv2d_20/biasAdam/v/conv2d_20/biasAdam/m/conv2d_21/kernelAdam/v/conv2d_21/kernelAdam/m/conv2d_21/biasAdam/v/conv2d_21/biasAdam/m/conv2d_22/kernelAdam/v/conv2d_22/kernelAdam/m/conv2d_22/biasAdam/v/conv2d_22/biasAdam/m/conv2d_23/kernelAdam/v/conv2d_23/kernelAdam/m/conv2d_23/biasAdam/v/conv2d_23/biasAdam/m/dense_3/kernelAdam/v/dense_3/kernelAdam/m/dense_3/biasAdam/v/dense_3/biasAdam/m/outputs/kernelAdam/v/outputs/kernelAdam/m/outputs/biasAdam/v/outputs/biastotal_1count_1totalcountrandom_flip/StateVarrandom_flip_1/StateVar*D
Tin=
;29*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *+
f&R$
"__inference__traced_restore_988628▌ё
Ф
h
L__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_986734

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
─
Б
E__inference_conv2d_23_layer_call_and_return_conditional_losses_988016

inputs:
conv2d_readvariableop_resource:А└.
biasadd_readvariableop_resource:	└
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:А└*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         └*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:└*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         └y
leaky_re_lu_26/LeakyRelu	LeakyReluBiasAdd:output:0*0
_output_shapes
:         └*
alpha%оGс=~
IdentityIdentity&leaky_re_lu_26/LeakyRelu:activations:0^NoOp*
T0*0
_output_shapes
:         └w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╦
H
,__inference_random_flip_layer_call_fn_988113

inputs
identity╝
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_random_flip_layer_call_and_return_conditional_losses_986629j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
─
■
E__inference_conv2d_18_layer_call_and_return_conditional_losses_986766

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ААz
leaky_re_lu_21/LeakyRelu	LeakyReluBiasAdd:output:0*1
_output_shapes
:         АА*
alpha%оGс=
IdentityIdentity&leaky_re_lu_21/LeakyRelu:activations:0^NoOp*
T0*1
_output_shapes
:         ААw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         АА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
ё
c
G__inference_random_flip_layer_call_and_return_conditional_losses_986629

inputs
identity?
	map/ShapeShapeinputs*
T0*
_output_shapes
:a
map/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
map/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
map/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
map/strided_sliceStridedSlicemap/Shape:output:0 map/strided_slice/stack:output:0"map/strided_slice/stack_1:output:0"map/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
map/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ╛
map/TensorArrayV2TensorListReserve(map/TensorArrayV2/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥О
9map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"А   А      с
+map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorinputsBmap/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥K
	map/ConstConst*
_output_shapes
: *
dtype0*
value	B : l
!map/TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┬
map/TensorArrayV2_1TensorListReserve*map/TensorArrayV2_1/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥X
map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ·
	map/whileStatelessWhilemap/while/loop_counter:output:0map/strided_slice:output:0map/Const:output:0map/TensorArrayV2_1:handle:0map/strided_slice:output:0;map/TensorArrayUnstack/TensorListFromTensor:output_handle:0*
T

2*
_lower_using_switch_merge(*
_num_original_outputs* 
_output_shapes
: : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( *!
bodyR
map_while_body_986586*!
condR
map_while_cond_986585*
output_shapes
: : : : : : Й
4map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"А   А      ╘
&map/TensorArrayV2Stack/TensorListStackTensorListStackmap/while:output:3=map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*1
_output_shapes
:         АА*
element_dtype0Б
IdentityIdentity/map/TensorArrayV2Stack/TensorListStack:tensor:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
─
Б
E__inference_conv2d_23_layer_call_and_return_conditional_losses_986856

inputs:
conv2d_readvariableop_resource:А└.
biasadd_readvariableop_resource:	└
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:А└*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         └*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:└*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         └y
leaky_re_lu_26/LeakyRelu	LeakyReluBiasAdd:output:0*0
_output_shapes
:         └*
alpha%оGс=~
IdentityIdentity&leaky_re_lu_26/LeakyRelu:activations:0^NoOp*
T0*0
_output_shapes
:         └w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╕
■
E__inference_conv2d_20_layer_call_and_return_conditional_losses_987926

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:           @*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:           @x
leaky_re_lu_23/LeakyRelu	LeakyReluBiasAdd:output:0*/
_output_shapes
:           @*
alpha%оGс=}
IdentityIdentity&leaky_re_lu_23/LeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:           @w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:            : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:            
 
_user_specified_nameinputs
∙
c
G__inference_rescaling_4_layer_call_and_return_conditional_losses_986753

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    _
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:         ААd
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:         ААY
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
ё
c
G__inference_random_flip_layer_call_and_return_conditional_losses_988176

inputs
identity?
	map/ShapeShapeinputs*
T0*
_output_shapes
:a
map/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
map/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
map/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
map/strided_sliceStridedSlicemap/Shape:output:0 map/strided_slice/stack:output:0"map/strided_slice/stack_1:output:0"map/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
map/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ╛
map/TensorArrayV2TensorListReserve(map/TensorArrayV2/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥О
9map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"А   А      с
+map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorinputsBmap/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥K
	map/ConstConst*
_output_shapes
: *
dtype0*
value	B : l
!map/TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┬
map/TensorArrayV2_1TensorListReserve*map/TensorArrayV2_1/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥X
map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ·
	map/whileStatelessWhilemap/while/loop_counter:output:0map/strided_slice:output:0map/Const:output:0map/TensorArrayV2_1:handle:0map/strided_slice:output:0;map/TensorArrayUnstack/TensorListFromTensor:output_handle:0*
T

2*
_lower_using_switch_merge(*
_num_original_outputs* 
_output_shapes
: : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( *!
bodyR
map_while_body_988133*!
condR
map_while_cond_988132*
output_shapes
: : : : : : Й
4map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"А   А      ╘
&map/TensorArrayV2Stack/TensorListStackTensorListStackmap/while:output:3=map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*1
_output_shapes
:         АА*
element_dtype0Б
IdentityIdentity/map/TensorArrayV2Stack/TensorListStack:tensor:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
╕
■
E__inference_conv2d_19_layer_call_and_return_conditional_losses_987896

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@ x
leaky_re_lu_22/LeakyRelu	LeakyReluBiasAdd:output:0*/
_output_shapes
:         @@ *
alpha%оGс=}
IdentityIdentity&leaky_re_lu_22/LeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:         @@ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
─
■
E__inference_conv2d_18_layer_call_and_return_conditional_losses_987866

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ААz
leaky_re_lu_21/LeakyRelu	LeakyReluBiasAdd:output:0*1
_output_shapes
:         АА*
alpha%оGс=
IdentityIdentity&leaky_re_lu_21/LeakyRelu:activations:0^NoOp*
T0*1
_output_shapes
:         ААw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         АА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
╟
Ш
(__inference_dense_3_layer_call_fn_988073

inputs
unknown:
А
А
	unknown_0:	А
identityИвStatefulPartitionedCall┘
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_986889p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А
: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А

 
_user_specified_nameinputs
╕
╛
.sequential_2_random_flip_map_while_cond_987537V
Rsequential_2_random_flip_map_while_sequential_2_random_flip_map_while_loop_counterQ
Msequential_2_random_flip_map_while_sequential_2_random_flip_map_strided_slice2
.sequential_2_random_flip_map_while_placeholder4
0sequential_2_random_flip_map_while_placeholder_1V
Rsequential_2_random_flip_map_while_less_sequential_2_random_flip_map_strided_slicen
jsequential_2_random_flip_map_while_sequential_2_random_flip_map_while_cond_987537___redundant_placeholder0/
+sequential_2_random_flip_map_while_identity
╘
'sequential_2/random_flip/map/while/LessLess.sequential_2_random_flip_map_while_placeholderRsequential_2_random_flip_map_while_less_sequential_2_random_flip_map_strided_slice*
T0*
_output_shapes
: ї
)sequential_2/random_flip/map/while/Less_1LessRsequential_2_random_flip_map_while_sequential_2_random_flip_map_while_loop_counterMsequential_2_random_flip_map_while_sequential_2_random_flip_map_strided_slice*
T0*
_output_shapes
: п
-sequential_2/random_flip/map/while/LogicalAnd
LogicalAnd-sequential_2/random_flip/map/while/Less_1:z:0+sequential_2/random_flip/map/while/Less:z:0*
_output_shapes
: Л
+sequential_2/random_flip/map/while/IdentityIdentity1sequential_2/random_flip/map/while/LogicalAnd:z:0*
T0
*
_output_shapes
: "c
+sequential_2_random_flip_map_while_identity4sequential_2/random_flip/map/while/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : :: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:
ю
T
-__inference_sequential_2_layer_call_fn_986653
random_flip_input
identity╚
PartitionedCallPartitionedCallrandom_flip_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_986645j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:d `
1
_output_shapes
:         АА
+
_user_specified_namerandom_flip_input
Ф
h
L__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_986686

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╔
Д
map_while_body_986586$
 map_while_map_while_loop_counter
map_while_map_strided_slice
map_while_placeholder
map_while_placeholder_1#
map_while_map_strided_slice_1_0_
[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0
map_while_identity
map_while_identity_1
map_while_identity_2
map_while_identity_3!
map_while_map_strided_slice_1]
Ymap_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensorР
;map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"А   А      ╖
-map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0map_while_placeholderDmap/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*$
_output_shapes
:АА*
element_dtype0▀
,map/while/flip_left_right/control_dependencyIdentity4map/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*@
_class6
42loc:@map/while/TensorArrayV2Read/TensorListGetItem*$
_output_shapes
:ААr
(map/while/flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:╔
#map/while/flip_left_right/ReverseV2	ReverseV25map/while/flip_left_right/control_dependency:output:01map/while/flip_left_right/ReverseV2/axis:output:0*
T0*$
_output_shapes
:ААс
.map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemmap_while_placeholder_1map_while_placeholder,map/while/flip_left_right/ReverseV2:output:0*
_output_shapes
: *
element_dtype0:щш╥Q
map/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :h
map/while/addAddV2map_while_placeholdermap/while/add/y:output:0*
T0*
_output_shapes
: S
map/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :w
map/while/add_1AddV2 map_while_map_while_loop_countermap/while/add_1/y:output:0*
T0*
_output_shapes
: T
map/while/IdentityIdentitymap/while/add_1:z:0*
T0*
_output_shapes
: ^
map/while/Identity_1Identitymap_while_map_strided_slice*
T0*
_output_shapes
: T
map/while/Identity_2Identitymap/while/add:z:0*
T0*
_output_shapes
: Б
map/while/Identity_3Identity>map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: "1
map_while_identitymap/while/Identity:output:0"5
map_while_identity_1map/while/Identity_1:output:0"5
map_while_identity_2map/while/Identity_2:output:0"5
map_while_identity_3map/while/Identity_3:output:0"@
map_while_map_strided_slice_1map_while_map_strided_slice_1_0"╕
Ymap_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : : : : : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ЄЫ
у
H__inference_sequential_4_layer_call_and_return_conditional_losses_987708

inputsB
(conv2d_18_conv2d_readvariableop_resource:7
)conv2d_18_biasadd_readvariableop_resource:B
(conv2d_19_conv2d_readvariableop_resource: 7
)conv2d_19_biasadd_readvariableop_resource: B
(conv2d_20_conv2d_readvariableop_resource: @7
)conv2d_20_biasadd_readvariableop_resource:@C
(conv2d_21_conv2d_readvariableop_resource:@А8
)conv2d_21_biasadd_readvariableop_resource:	АD
(conv2d_22_conv2d_readvariableop_resource:АА8
)conv2d_22_biasadd_readvariableop_resource:	АD
(conv2d_23_conv2d_readvariableop_resource:А└8
)conv2d_23_biasadd_readvariableop_resource:	└:
&dense_3_matmul_readvariableop_resource:
А
А6
'dense_3_biasadd_readvariableop_resource:	А9
&outputs_matmul_readvariableop_resource:	А5
'outputs_biasadd_readvariableop_resource:
identityИв conv2d_18/BiasAdd/ReadVariableOpвconv2d_18/Conv2D/ReadVariableOpв conv2d_19/BiasAdd/ReadVariableOpвconv2d_19/Conv2D/ReadVariableOpв conv2d_20/BiasAdd/ReadVariableOpвconv2d_20/Conv2D/ReadVariableOpв conv2d_21/BiasAdd/ReadVariableOpвconv2d_21/Conv2D/ReadVariableOpв conv2d_22/BiasAdd/ReadVariableOpвconv2d_22/Conv2D/ReadVariableOpв conv2d_23/BiasAdd/ReadVariableOpвconv2d_23/Conv2D/ReadVariableOpвdense_3/BiasAdd/ReadVariableOpвdense_3/MatMul/ReadVariableOpвoutputs/BiasAdd/ReadVariableOpвoutputs/MatMul/ReadVariableOpX
"sequential_2/random_flip/map/ShapeShapeinputs*
T0*
_output_shapes
:z
0sequential_2/random_flip/map/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2sequential_2/random_flip/map/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2sequential_2/random_flip/map/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
*sequential_2/random_flip/map/strided_sliceStridedSlice+sequential_2/random_flip/map/Shape:output:09sequential_2/random_flip/map/strided_slice/stack:output:0;sequential_2/random_flip/map/strided_slice/stack_1:output:0;sequential_2/random_flip/map/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskГ
8sequential_2/random_flip/map/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         Й
*sequential_2/random_flip/map/TensorArrayV2TensorListReserveAsequential_2/random_flip/map/TensorArrayV2/element_shape:output:03sequential_2/random_flip/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥з
Rsequential_2/random_flip/map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"А   А      У
Dsequential_2/random_flip/map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorinputs[sequential_2/random_flip/map/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥d
"sequential_2/random_flip/map/ConstConst*
_output_shapes
: *
dtype0*
value	B : Е
:sequential_2/random_flip/map/TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         Н
,sequential_2/random_flip/map/TensorArrayV2_1TensorListReserveCsequential_2/random_flip/map/TensorArrayV2_1/element_shape:output:03sequential_2/random_flip/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥q
/sequential_2/random_flip/map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : █
"sequential_2/random_flip/map/whileStatelessWhile8sequential_2/random_flip/map/while/loop_counter:output:03sequential_2/random_flip/map/strided_slice:output:0+sequential_2/random_flip/map/Const:output:05sequential_2/random_flip/map/TensorArrayV2_1:handle:03sequential_2/random_flip/map/strided_slice:output:0Tsequential_2/random_flip/map/TensorArrayUnstack/TensorListFromTensor:output_handle:0*
T

2*
_lower_using_switch_merge(*
_num_original_outputs* 
_output_shapes
: : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( *:
body2R0
.sequential_2_random_flip_map_while_body_987538*:
cond2R0
.sequential_2_random_flip_map_while_cond_987537*
output_shapes
: : : : : : в
Msequential_2/random_flip/map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"А   А      Я
?sequential_2/random_flip/map/TensorArrayV2Stack/TensorListStackTensorListStack+sequential_2/random_flip/map/while:output:3Vsequential_2/random_flip/map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*1
_output_shapes
:         АА*
element_dtype0Ь
$sequential_2/random_flip_1/map/ShapeShapeHsequential_2/random_flip/map/TensorArrayV2Stack/TensorListStack:tensor:0*
T0*
_output_shapes
:|
2sequential_2/random_flip_1/map/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4sequential_2/random_flip_1/map/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4sequential_2/random_flip_1/map/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ь
,sequential_2/random_flip_1/map/strided_sliceStridedSlice-sequential_2/random_flip_1/map/Shape:output:0;sequential_2/random_flip_1/map/strided_slice/stack:output:0=sequential_2/random_flip_1/map/strided_slice/stack_1:output:0=sequential_2/random_flip_1/map/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЕ
:sequential_2/random_flip_1/map/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         П
,sequential_2/random_flip_1/map/TensorArrayV2TensorListReserveCsequential_2/random_flip_1/map/TensorArrayV2/element_shape:output:05sequential_2/random_flip_1/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥й
Tsequential_2/random_flip_1/map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"А   А      ┘
Fsequential_2/random_flip_1/map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorHsequential_2/random_flip/map/TensorArrayV2Stack/TensorListStack:tensor:0]sequential_2/random_flip_1/map/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥f
$sequential_2/random_flip_1/map/ConstConst*
_output_shapes
: *
dtype0*
value	B : З
<sequential_2/random_flip_1/map/TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         У
.sequential_2/random_flip_1/map/TensorArrayV2_1TensorListReserveEsequential_2/random_flip_1/map/TensorArrayV2_1/element_shape:output:05sequential_2/random_flip_1/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥s
1sequential_2/random_flip_1/map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : э
$sequential_2/random_flip_1/map/whileStatelessWhile:sequential_2/random_flip_1/map/while/loop_counter:output:05sequential_2/random_flip_1/map/strided_slice:output:0-sequential_2/random_flip_1/map/Const:output:07sequential_2/random_flip_1/map/TensorArrayV2_1:handle:05sequential_2/random_flip_1/map/strided_slice:output:0Vsequential_2/random_flip_1/map/TensorArrayUnstack/TensorListFromTensor:output_handle:0*
T

2*
_lower_using_switch_merge(*
_num_original_outputs* 
_output_shapes
: : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( *<
body4R2
0sequential_2_random_flip_1_map_while_body_987590*<
cond4R2
0sequential_2_random_flip_1_map_while_cond_987589*
output_shapes
: : : : : : д
Osequential_2/random_flip_1/map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"А   А      е
Asequential_2/random_flip_1/map/TensorArrayV2Stack/TensorListStackTensorListStack-sequential_2/random_flip_1/map/while:output:3Xsequential_2/random_flip_1/map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*1
_output_shapes
:         АА*
element_dtype0W
rescaling_4/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;Y
rescaling_4/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ╗
rescaling_4/mulMulJsequential_2/random_flip_1/map/TensorArrayV2Stack/TensorListStack:tensor:0rescaling_4/Cast/x:output:0*
T0*1
_output_shapes
:         ААИ
rescaling_4/addAddV2rescaling_4/mul:z:0rescaling_4/Cast_1/x:output:0*
T0*1
_output_shapes
:         ААР
conv2d_18/Conv2D/ReadVariableOpReadVariableOp(conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0╝
conv2d_18/Conv2DConv2Drescaling_4/add:z:0'conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
Ж
 conv2d_18/BiasAdd/ReadVariableOpReadVariableOp)conv2d_18_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Э
conv2d_18/BiasAddBiasAddconv2d_18/Conv2D:output:0(conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ААО
"conv2d_18/leaky_re_lu_21/LeakyRelu	LeakyReluconv2d_18/BiasAdd:output:0*1
_output_shapes
:         АА*
alpha%оGс=┬
max_pooling2d_18/MaxPoolMaxPool0conv2d_18/leaky_re_lu_21/LeakyRelu:activations:0*/
_output_shapes
:         @@*
ksize
*
paddingVALID*
strides
Р
conv2d_19/Conv2D/ReadVariableOpReadVariableOp(conv2d_19_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0╚
conv2d_19/Conv2DConv2D!max_pooling2d_18/MaxPool:output:0'conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@ *
paddingSAME*
strides
Ж
 conv2d_19/BiasAdd/ReadVariableOpReadVariableOp)conv2d_19_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ы
conv2d_19/BiasAddBiasAddconv2d_19/Conv2D:output:0(conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@ М
"conv2d_19/leaky_re_lu_22/LeakyRelu	LeakyReluconv2d_19/BiasAdd:output:0*/
_output_shapes
:         @@ *
alpha%оGс=┬
max_pooling2d_19/MaxPoolMaxPool0conv2d_19/leaky_re_lu_22/LeakyRelu:activations:0*/
_output_shapes
:            *
ksize
*
paddingVALID*
strides
Р
conv2d_20/Conv2D/ReadVariableOpReadVariableOp(conv2d_20_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0╚
conv2d_20/Conv2DConv2D!max_pooling2d_19/MaxPool:output:0'conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:           @*
paddingSAME*
strides
Ж
 conv2d_20/BiasAdd/ReadVariableOpReadVariableOp)conv2d_20_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ы
conv2d_20/BiasAddBiasAddconv2d_20/Conv2D:output:0(conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:           @М
"conv2d_20/leaky_re_lu_23/LeakyRelu	LeakyReluconv2d_20/BiasAdd:output:0*/
_output_shapes
:           @*
alpha%оGс=┬
max_pooling2d_20/MaxPoolMaxPool0conv2d_20/leaky_re_lu_23/LeakyRelu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
С
conv2d_21/Conv2D/ReadVariableOpReadVariableOp(conv2d_21_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0╔
conv2d_21/Conv2DConv2D!max_pooling2d_20/MaxPool:output:0'conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
З
 conv2d_21/BiasAdd/ReadVariableOpReadVariableOp)conv2d_21_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ь
conv2d_21/BiasAddBiasAddconv2d_21/Conv2D:output:0(conv2d_21/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АН
"conv2d_21/leaky_re_lu_24/LeakyRelu	LeakyReluconv2d_21/BiasAdd:output:0*0
_output_shapes
:         А*
alpha%оGс=├
max_pooling2d_21/MaxPoolMaxPool0conv2d_21/leaky_re_lu_24/LeakyRelu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
Т
conv2d_22/Conv2D/ReadVariableOpReadVariableOp(conv2d_22_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╔
conv2d_22/Conv2DConv2D!max_pooling2d_21/MaxPool:output:0'conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
З
 conv2d_22/BiasAdd/ReadVariableOpReadVariableOp)conv2d_22_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ь
conv2d_22/BiasAddBiasAddconv2d_22/Conv2D:output:0(conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АН
"conv2d_22/leaky_re_lu_25/LeakyRelu	LeakyReluconv2d_22/BiasAdd:output:0*0
_output_shapes
:         А*
alpha%оGс=├
max_pooling2d_22/MaxPoolMaxPool0conv2d_22/leaky_re_lu_25/LeakyRelu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
Т
conv2d_23/Conv2D/ReadVariableOpReadVariableOp(conv2d_23_conv2d_readvariableop_resource*(
_output_shapes
:А└*
dtype0╔
conv2d_23/Conv2DConv2D!max_pooling2d_22/MaxPool:output:0'conv2d_23/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         └*
paddingSAME*
strides
З
 conv2d_23/BiasAdd/ReadVariableOpReadVariableOp)conv2d_23_biasadd_readvariableop_resource*
_output_shapes	
:└*
dtype0Ь
conv2d_23/BiasAddBiasAddconv2d_23/Conv2D:output:0(conv2d_23/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         └Н
"conv2d_23/leaky_re_lu_26/LeakyRelu	LeakyReluconv2d_23/BiasAdd:output:0*0
_output_shapes
:         └*
alpha%оGс=├
max_pooling2d_23/MaxPoolMaxPool0conv2d_23/leaky_re_lu_26/LeakyRelu:activations:0*0
_output_shapes
:         └*
ksize
*
paddingVALID*
strides
\
dropout_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?Ь
dropout_5/dropout/MulMul!max_pooling2d_23/MaxPool:output:0 dropout_5/dropout/Const:output:0*
T0*0
_output_shapes
:         └h
dropout_5/dropout/ShapeShape!max_pooling2d_23/MaxPool:output:0*
T0*
_output_shapes
:й
.dropout_5/dropout/random_uniform/RandomUniformRandomUniform dropout_5/dropout/Shape:output:0*
T0*0
_output_shapes
:         └*
dtype0e
 dropout_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>═
dropout_5/dropout/GreaterEqualGreaterEqual7dropout_5/dropout/random_uniform/RandomUniform:output:0)dropout_5/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         └^
dropout_5/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ─
dropout_5/dropout/SelectV2SelectV2"dropout_5/dropout/GreaterEqual:z:0dropout_5/dropout/Mul:z:0"dropout_5/dropout/Const_1:output:0*
T0*0
_output_shapes
:         └`
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"       О
flatten_3/ReshapeReshape#dropout_5/dropout/SelectV2:output:0flatten_3/Const:output:0*
T0*(
_output_shapes
:         А
Ж
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource* 
_output_shapes
:
А
А*
dtype0О
dense_3/MatMulMatMulflatten_3/Reshape:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АГ
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0П
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АБ
 dense_3/leaky_re_lu_27/LeakyRelu	LeakyReludense_3/BiasAdd:output:0*(
_output_shapes
:         А*
alpha%оGс=Е
outputs/MatMul/ReadVariableOpReadVariableOp&outputs_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0б
outputs/MatMulMatMul.dense_3/leaky_re_lu_27/LeakyRelu:activations:0%outputs/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         В
outputs/BiasAdd/ReadVariableOpReadVariableOp'outputs_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
outputs/BiasAddBiasAddoutputs/MatMul:product:0&outputs/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         g
IdentityIdentityoutputs/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         ц
NoOpNoOp!^conv2d_18/BiasAdd/ReadVariableOp ^conv2d_18/Conv2D/ReadVariableOp!^conv2d_19/BiasAdd/ReadVariableOp ^conv2d_19/Conv2D/ReadVariableOp!^conv2d_20/BiasAdd/ReadVariableOp ^conv2d_20/Conv2D/ReadVariableOp!^conv2d_21/BiasAdd/ReadVariableOp ^conv2d_21/Conv2D/ReadVariableOp!^conv2d_22/BiasAdd/ReadVariableOp ^conv2d_22/Conv2D/ReadVariableOp!^conv2d_23/BiasAdd/ReadVariableOp ^conv2d_23/Conv2D/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^outputs/BiasAdd/ReadVariableOp^outputs/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:         АА: : : : : : : : : : : : : : : : 2D
 conv2d_18/BiasAdd/ReadVariableOp conv2d_18/BiasAdd/ReadVariableOp2B
conv2d_18/Conv2D/ReadVariableOpconv2d_18/Conv2D/ReadVariableOp2D
 conv2d_19/BiasAdd/ReadVariableOp conv2d_19/BiasAdd/ReadVariableOp2B
conv2d_19/Conv2D/ReadVariableOpconv2d_19/Conv2D/ReadVariableOp2D
 conv2d_20/BiasAdd/ReadVariableOp conv2d_20/BiasAdd/ReadVariableOp2B
conv2d_20/Conv2D/ReadVariableOpconv2d_20/Conv2D/ReadVariableOp2D
 conv2d_21/BiasAdd/ReadVariableOp conv2d_21/BiasAdd/ReadVariableOp2B
conv2d_21/Conv2D/ReadVariableOpconv2d_21/Conv2D/ReadVariableOp2D
 conv2d_22/BiasAdd/ReadVariableOp conv2d_22/BiasAdd/ReadVariableOp2B
conv2d_22/Conv2D/ReadVariableOpconv2d_22/Conv2D/ReadVariableOp2D
 conv2d_23/BiasAdd/ReadVariableOp conv2d_23/BiasAdd/ReadVariableOp2B
conv2d_23/Conv2D/ReadVariableOpconv2d_23/Conv2D/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2@
outputs/BiasAdd/ReadVariableOpoutputs/BiasAdd/ReadVariableOp2>
outputs/MatMul/ReadVariableOpoutputs/MatMul/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Ф
h
L__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_987996

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
є
e
I__inference_random_flip_1_layer_call_and_return_conditional_losses_988249

inputs
identity?
	map/ShapeShapeinputs*
T0*
_output_shapes
:a
map/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
map/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
map/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
map/strided_sliceStridedSlicemap/Shape:output:0 map/strided_slice/stack:output:0"map/strided_slice/stack_1:output:0"map/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
map/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ╛
map/TensorArrayV2TensorListReserve(map/TensorArrayV2/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥О
9map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"А   А      с
+map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorinputsBmap/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥K
	map/ConstConst*
_output_shapes
: *
dtype0*
value	B : l
!map/TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┬
map/TensorArrayV2_1TensorListReserve*map/TensorArrayV2_1/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥X
map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ·
	map/whileStatelessWhilemap/while/loop_counter:output:0map/strided_slice:output:0map/Const:output:0map/TensorArrayV2_1:handle:0map/strided_slice:output:0;map/TensorArrayUnstack/TensorListFromTensor:output_handle:0*
T

2*
_lower_using_switch_merge(*
_num_original_outputs* 
_output_shapes
: : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( *!
bodyR
map_while_body_988206*!
condR
map_while_cond_988205*
output_shapes
: : : : : : Й
4map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"А   А      ╘
&map/TensorArrayV2Stack/TensorListStackTensorListStackmap/while:output:3=map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*1
_output_shapes
:         АА*
element_dtype0Б
IdentityIdentity/map/TensorArrayV2Stack/TensorListStack:tensor:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
ю
d
H__inference_sequential_2_layer_call_and_return_conditional_losses_986492

inputs
identity╚
random_flip/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_random_flip_layer_call_and_return_conditional_losses_986483ъ
random_flip_1/PartitionedCallPartitionedCall$random_flip/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_random_flip_1_layer_call_and_return_conditional_losses_986489x
IdentityIdentity&random_flip_1/PartitionedCall:output:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
╖
Д
map_while_body_988206$
 map_while_map_while_loop_counter
map_while_map_strided_slice
map_while_placeholder
map_while_placeholder_1#
map_while_map_strided_slice_1_0_
[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0
map_while_identity
map_while_identity_1
map_while_identity_2
map_while_identity_3!
map_while_map_strided_slice_1]
Ymap_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensorР
;map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"А   А      ╖
-map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0map_while_placeholderDmap/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*$
_output_shapes
:АА*
element_dtype0▄
)map/while/flip_up_down/control_dependencyIdentity4map/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*@
_class6
42loc:@map/while/TensorArrayV2Read/TensorListGetItem*$
_output_shapes
:ААo
%map/while/flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: └
 map/while/flip_up_down/ReverseV2	ReverseV22map/while/flip_up_down/control_dependency:output:0.map/while/flip_up_down/ReverseV2/axis:output:0*
T0*$
_output_shapes
:АА▐
.map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemmap_while_placeholder_1map_while_placeholder)map/while/flip_up_down/ReverseV2:output:0*
_output_shapes
: *
element_dtype0:щш╥Q
map/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :h
map/while/addAddV2map_while_placeholdermap/while/add/y:output:0*
T0*
_output_shapes
: S
map/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :w
map/while/add_1AddV2 map_while_map_while_loop_countermap/while/add_1/y:output:0*
T0*
_output_shapes
: T
map/while/IdentityIdentitymap/while/add_1:z:0*
T0*
_output_shapes
: ^
map/while/Identity_1Identitymap_while_map_strided_slice*
T0*
_output_shapes
: T
map/while/Identity_2Identitymap/while/add:z:0*
T0*
_output_shapes
: Б
map/while/Identity_3Identity>map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: "1
map_while_identitymap/while/Identity:output:0"5
map_while_identity_1map/while/Identity_1:output:0"5
map_while_identity_2map/while/Identity_2:output:0"5
map_while_identity_3map/while/Identity_3:output:0"@
map_while_map_strided_slice_1map_while_map_strided_slice_1_0"╕
Ymap_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : : : : : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Х
c
*__inference_dropout_5_layer_call_fn_988036

inputs
identityИвStatefulPartitionedCall╔
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         └* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_5_layer_call_and_return_conditional_losses_986993x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         └`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         └22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         └
 
_user_specified_nameinputs
О!
О
#random_flip_1_map_while_body_987790@
<random_flip_1_map_while_random_flip_1_map_while_loop_counter;
7random_flip_1_map_while_random_flip_1_map_strided_slice'
#random_flip_1_map_while_placeholder)
%random_flip_1_map_while_placeholder_1?
;random_flip_1_map_while_random_flip_1_map_strided_slice_1_0{
wrandom_flip_1_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_1_map_tensorarrayunstack_tensorlistfromtensor_0$
 random_flip_1_map_while_identity&
"random_flip_1_map_while_identity_1&
"random_flip_1_map_while_identity_2&
"random_flip_1_map_while_identity_3=
9random_flip_1_map_while_random_flip_1_map_strided_slice_1y
urandom_flip_1_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_1_map_tensorarrayunstack_tensorlistfromtensorЮ
Irandom_flip_1/map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"А   А      ¤
;random_flip_1/map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemwrandom_flip_1_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_1_map_tensorarrayunstack_tensorlistfromtensor_0#random_flip_1_map_while_placeholderRrandom_flip_1/map/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*$
_output_shapes
:АА*
element_dtype0Ж
7random_flip_1/map/while/flip_up_down/control_dependencyIdentityBrandom_flip_1/map/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*N
_classD
B@loc:@random_flip_1/map/while/TensorArrayV2Read/TensorListGetItem*$
_output_shapes
:АА}
3random_flip_1/map/while/flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: ъ
.random_flip_1/map/while/flip_up_down/ReverseV2	ReverseV2@random_flip_1/map/while/flip_up_down/control_dependency:output:0<random_flip_1/map/while/flip_up_down/ReverseV2/axis:output:0*
T0*$
_output_shapes
:ААЦ
<random_flip_1/map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem%random_flip_1_map_while_placeholder_1#random_flip_1_map_while_placeholder7random_flip_1/map/while/flip_up_down/ReverseV2:output:0*
_output_shapes
: *
element_dtype0:щш╥_
random_flip_1/map/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Т
random_flip_1/map/while/addAddV2#random_flip_1_map_while_placeholder&random_flip_1/map/while/add/y:output:0*
T0*
_output_shapes
: a
random_flip_1/map/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :п
random_flip_1/map/while/add_1AddV2<random_flip_1_map_while_random_flip_1_map_while_loop_counter(random_flip_1/map/while/add_1/y:output:0*
T0*
_output_shapes
: p
 random_flip_1/map/while/IdentityIdentity!random_flip_1/map/while/add_1:z:0*
T0*
_output_shapes
: И
"random_flip_1/map/while/Identity_1Identity7random_flip_1_map_while_random_flip_1_map_strided_slice*
T0*
_output_shapes
: p
"random_flip_1/map/while/Identity_2Identityrandom_flip_1/map/while/add:z:0*
T0*
_output_shapes
: Э
"random_flip_1/map/while/Identity_3IdentityLrandom_flip_1/map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: "M
 random_flip_1_map_while_identity)random_flip_1/map/while/Identity:output:0"Q
"random_flip_1_map_while_identity_1+random_flip_1/map/while/Identity_1:output:0"Q
"random_flip_1_map_while_identity_2+random_flip_1/map/while/Identity_2:output:0"Q
"random_flip_1_map_while_identity_3+random_flip_1/map/while/Identity_3:output:0"x
9random_flip_1_map_while_random_flip_1_map_strided_slice_1;random_flip_1_map_while_random_flip_1_map_strided_slice_1_0"Ё
urandom_flip_1_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_1_map_tensorarrayunstack_tensorlistfromtensorwrandom_flip_1_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_1_map_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : : : : : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ь
Я
*__inference_conv2d_20_layer_call_fn_987915

inputs!
unknown: @
	unknown_0:@
identityИвStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_20_layer_call_and_return_conditional_losses_986802w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:           @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:            : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:            
 
_user_specified_nameinputs
Еk
Ф
__inference__traced_save_988450
file_prefix/
+savev2_conv2d_18_kernel_read_readvariableop-
)savev2_conv2d_18_bias_read_readvariableop/
+savev2_conv2d_19_kernel_read_readvariableop-
)savev2_conv2d_19_bias_read_readvariableop/
+savev2_conv2d_20_kernel_read_readvariableop-
)savev2_conv2d_20_bias_read_readvariableop/
+savev2_conv2d_21_kernel_read_readvariableop-
)savev2_conv2d_21_bias_read_readvariableop/
+savev2_conv2d_22_kernel_read_readvariableop-
)savev2_conv2d_22_bias_read_readvariableop/
+savev2_conv2d_23_kernel_read_readvariableop-
)savev2_conv2d_23_bias_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop-
)savev2_outputs_kernel_read_readvariableop+
'savev2_outputs_bias_read_readvariableop(
$savev2_iteration_read_readvariableop	,
(savev2_learning_rate_read_readvariableop6
2savev2_adam_m_conv2d_18_kernel_read_readvariableop6
2savev2_adam_v_conv2d_18_kernel_read_readvariableop4
0savev2_adam_m_conv2d_18_bias_read_readvariableop4
0savev2_adam_v_conv2d_18_bias_read_readvariableop6
2savev2_adam_m_conv2d_19_kernel_read_readvariableop6
2savev2_adam_v_conv2d_19_kernel_read_readvariableop4
0savev2_adam_m_conv2d_19_bias_read_readvariableop4
0savev2_adam_v_conv2d_19_bias_read_readvariableop6
2savev2_adam_m_conv2d_20_kernel_read_readvariableop6
2savev2_adam_v_conv2d_20_kernel_read_readvariableop4
0savev2_adam_m_conv2d_20_bias_read_readvariableop4
0savev2_adam_v_conv2d_20_bias_read_readvariableop6
2savev2_adam_m_conv2d_21_kernel_read_readvariableop6
2savev2_adam_v_conv2d_21_kernel_read_readvariableop4
0savev2_adam_m_conv2d_21_bias_read_readvariableop4
0savev2_adam_v_conv2d_21_bias_read_readvariableop6
2savev2_adam_m_conv2d_22_kernel_read_readvariableop6
2savev2_adam_v_conv2d_22_kernel_read_readvariableop4
0savev2_adam_m_conv2d_22_bias_read_readvariableop4
0savev2_adam_v_conv2d_22_bias_read_readvariableop6
2savev2_adam_m_conv2d_23_kernel_read_readvariableop6
2savev2_adam_v_conv2d_23_kernel_read_readvariableop4
0savev2_adam_m_conv2d_23_bias_read_readvariableop4
0savev2_adam_v_conv2d_23_bias_read_readvariableop4
0savev2_adam_m_dense_3_kernel_read_readvariableop4
0savev2_adam_v_dense_3_kernel_read_readvariableop2
.savev2_adam_m_dense_3_bias_read_readvariableop2
.savev2_adam_v_dense_3_bias_read_readvariableop4
0savev2_adam_m_outputs_kernel_read_readvariableop4
0savev2_adam_v_outputs_kernel_read_readvariableop2
.savev2_adam_m_outputs_bias_read_readvariableop2
.savev2_adam_v_outputs_bias_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop3
/savev2_random_flip_statevar_read_readvariableop	5
1savev2_random_flip_1_statevar_read_readvariableop	
savev2_const

identity_1ИвMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partБ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ╪
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:9*
dtype0*Б
valueўBЇ9B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer-0/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer-0/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHр
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:9*
dtype0*Е
value|Bz9B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ╪
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_18_kernel_read_readvariableop)savev2_conv2d_18_bias_read_readvariableop+savev2_conv2d_19_kernel_read_readvariableop)savev2_conv2d_19_bias_read_readvariableop+savev2_conv2d_20_kernel_read_readvariableop)savev2_conv2d_20_bias_read_readvariableop+savev2_conv2d_21_kernel_read_readvariableop)savev2_conv2d_21_bias_read_readvariableop+savev2_conv2d_22_kernel_read_readvariableop)savev2_conv2d_22_bias_read_readvariableop+savev2_conv2d_23_kernel_read_readvariableop)savev2_conv2d_23_bias_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop)savev2_outputs_kernel_read_readvariableop'savev2_outputs_bias_read_readvariableop$savev2_iteration_read_readvariableop(savev2_learning_rate_read_readvariableop2savev2_adam_m_conv2d_18_kernel_read_readvariableop2savev2_adam_v_conv2d_18_kernel_read_readvariableop0savev2_adam_m_conv2d_18_bias_read_readvariableop0savev2_adam_v_conv2d_18_bias_read_readvariableop2savev2_adam_m_conv2d_19_kernel_read_readvariableop2savev2_adam_v_conv2d_19_kernel_read_readvariableop0savev2_adam_m_conv2d_19_bias_read_readvariableop0savev2_adam_v_conv2d_19_bias_read_readvariableop2savev2_adam_m_conv2d_20_kernel_read_readvariableop2savev2_adam_v_conv2d_20_kernel_read_readvariableop0savev2_adam_m_conv2d_20_bias_read_readvariableop0savev2_adam_v_conv2d_20_bias_read_readvariableop2savev2_adam_m_conv2d_21_kernel_read_readvariableop2savev2_adam_v_conv2d_21_kernel_read_readvariableop0savev2_adam_m_conv2d_21_bias_read_readvariableop0savev2_adam_v_conv2d_21_bias_read_readvariableop2savev2_adam_m_conv2d_22_kernel_read_readvariableop2savev2_adam_v_conv2d_22_kernel_read_readvariableop0savev2_adam_m_conv2d_22_bias_read_readvariableop0savev2_adam_v_conv2d_22_bias_read_readvariableop2savev2_adam_m_conv2d_23_kernel_read_readvariableop2savev2_adam_v_conv2d_23_kernel_read_readvariableop0savev2_adam_m_conv2d_23_bias_read_readvariableop0savev2_adam_v_conv2d_23_bias_read_readvariableop0savev2_adam_m_dense_3_kernel_read_readvariableop0savev2_adam_v_dense_3_kernel_read_readvariableop.savev2_adam_m_dense_3_bias_read_readvariableop.savev2_adam_v_dense_3_bias_read_readvariableop0savev2_adam_m_outputs_kernel_read_readvariableop0savev2_adam_v_outputs_kernel_read_readvariableop.savev2_adam_m_outputs_bias_read_readvariableop.savev2_adam_v_outputs_bias_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop/savev2_random_flip_statevar_read_readvariableop1savev2_random_flip_1_statevar_read_readvariableopsavev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *G
dtypes=
;29			Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:│
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*х
_input_shapes╙
╨: ::: : : @:@:@А:А:АА:А:А└:└:
А
А:А:	А:: : ::::: : : : : @: @:@:@:@А:@А:А:А:АА:АА:А:А:А└:А└:└:└:
А
А:
А
А:А:А:	А:	А::: : : : ::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:-)
'
_output_shapes
:@А:!

_output_shapes	
:А:.	*
(
_output_shapes
:АА:!


_output_shapes	
:А:.*
(
_output_shapes
:А└:!

_output_shapes	
:└:&"
 
_output_shapes
:
А
А:!

_output_shapes	
:А:%!

_output_shapes
:	А: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @:,(
&
_output_shapes
: @: 

_output_shapes
:@: 

_output_shapes
:@:-)
'
_output_shapes
:@А:- )
'
_output_shapes
:@А:!!

_output_shapes	
:А:!"

_output_shapes	
:А:.#*
(
_output_shapes
:АА:.$*
(
_output_shapes
:АА:!%

_output_shapes	
:А:!&

_output_shapes	
:А:.'*
(
_output_shapes
:А└:.(*
(
_output_shapes
:А└:!)

_output_shapes	
:└:!*

_output_shapes	
:└:&+"
 
_output_shapes
:
А
А:&,"
 
_output_shapes
:
А
А:!-

_output_shapes	
:А:!.

_output_shapes	
:А:%/!

_output_shapes
:	А:%0!

_output_shapes
:	А: 1

_output_shapes
:: 2

_output_shapes
::3

_output_shapes
: :4

_output_shapes
: :5

_output_shapes
: :6

_output_shapes
: : 7

_output_shapes
:: 8

_output_shapes
::9

_output_shapes
: 
°
Т
map_while_cond_986585$
 map_while_map_while_loop_counter
map_while_map_strided_slice
map_while_placeholder
map_while_placeholder_1$
 map_while_less_map_strided_slice<
8map_while_map_while_cond_986585___redundant_placeholder0
map_while_identity
p
map/while/LessLessmap_while_placeholder map_while_less_map_strided_slice*
T0*
_output_shapes
: x
map/while/Less_1Less map_while_map_while_loop_countermap_while_map_strided_slice*
T0*
_output_shapes
: d
map/while/LogicalAnd
LogicalAndmap/while/Less_1:z:0map/while/Less:z:0*
_output_shapes
: Y
map/while/IdentityIdentitymap/while/LogicalAnd:z:0*
T0
*
_output_shapes
: "1
map_while_identitymap/while/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : :: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:
Ф
h
L__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_986698

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╔
a
E__inference_flatten_3_layer_call_and_return_conditional_losses_986876

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"       ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         А
Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         А
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         └:X T
0
_output_shapes
:         └
 
_user_specified_nameinputs
∙
c
G__inference_rescaling_4_layer_call_and_return_conditional_losses_987846

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    _
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:         ААd
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:         ААY
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
ь
Я
*__inference_conv2d_19_layer_call_fn_987885

inputs!
unknown: 
	unknown_0: 
identityИвStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_19_layer_call_and_return_conditional_losses_986784w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @@ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
ЦH
╫
H__inference_sequential_4_layer_call_and_return_conditional_losses_986912

inputs*
conv2d_18_986767:
conv2d_18_986769:*
conv2d_19_986785: 
conv2d_19_986787: *
conv2d_20_986803: @
conv2d_20_986805:@+
conv2d_21_986821:@А
conv2d_21_986823:	А,
conv2d_22_986839:АА
conv2d_22_986841:	А,
conv2d_23_986857:А└
conv2d_23_986859:	└"
dense_3_986890:
А
А
dense_3_986892:	А!
outputs_986906:	А
outputs_986908:
identityИв!conv2d_18/StatefulPartitionedCallв!conv2d_19/StatefulPartitionedCallв!conv2d_20/StatefulPartitionedCallв!conv2d_21/StatefulPartitionedCallв!conv2d_22/StatefulPartitionedCallв!conv2d_23/StatefulPartitionedCallвdense_3/StatefulPartitionedCallвoutputs/StatefulPartitionedCall╩
sequential_2/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_986492ч
rescaling_4/PartitionedCallPartitionedCall%sequential_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_rescaling_4_layer_call_and_return_conditional_losses_986753Ь
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall$rescaling_4/PartitionedCall:output:0conv2d_18_986767conv2d_18_986769*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_18_layer_call_and_return_conditional_losses_986766Ї
 max_pooling2d_18/PartitionedCallPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_986674Я
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_18/PartitionedCall:output:0conv2d_19_986785conv2d_19_986787*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_19_layer_call_and_return_conditional_losses_986784Ї
 max_pooling2d_19/PartitionedCallPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_986686Я
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_19/PartitionedCall:output:0conv2d_20_986803conv2d_20_986805*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_20_layer_call_and_return_conditional_losses_986802Ї
 max_pooling2d_20/PartitionedCallPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_986698а
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_20/PartitionedCall:output:0conv2d_21_986821conv2d_21_986823*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_21_layer_call_and_return_conditional_losses_986820ї
 max_pooling2d_21/PartitionedCallPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_986710а
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_21/PartitionedCall:output:0conv2d_22_986839conv2d_22_986841*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_22_layer_call_and_return_conditional_losses_986838ї
 max_pooling2d_22/PartitionedCallPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_986722а
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_22/PartitionedCall:output:0conv2d_23_986857conv2d_23_986859*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         └*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_23_layer_call_and_return_conditional_losses_986856ї
 max_pooling2d_23/PartitionedCallPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         └* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_986734ц
dropout_5/PartitionedCallPartitionedCall)max_pooling2d_23/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         └* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_5_layer_call_and_return_conditional_losses_986868╫
flatten_3/PartitionedCallPartitionedCall"dropout_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_flatten_3_layer_call_and_return_conditional_losses_986876Й
dense_3/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_3_986890dense_3_986892*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_986889О
outputs/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0outputs_986906outputs_986908*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_outputs_layer_call_and_return_conditional_losses_986905w
IdentityIdentity(outputs/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         т
NoOpNoOp"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^outputs/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:         АА: : : : : : : : : : : : : : : : 2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
outputs/StatefulPartitionedCalloutputs/StatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
╛I
√
H__inference_sequential_4_layer_call_and_return_conditional_losses_987155

inputs*
conv2d_18_987106:
conv2d_18_987108:*
conv2d_19_987112: 
conv2d_19_987114: *
conv2d_20_987118: @
conv2d_20_987120:@+
conv2d_21_987124:@А
conv2d_21_987126:	А,
conv2d_22_987130:АА
conv2d_22_987132:	А,
conv2d_23_987136:А└
conv2d_23_987138:	└"
dense_3_987144:
А
А
dense_3_987146:	А!
outputs_987149:	А
outputs_987151:
identityИв!conv2d_18/StatefulPartitionedCallв!conv2d_19/StatefulPartitionedCallв!conv2d_20/StatefulPartitionedCallв!conv2d_21/StatefulPartitionedCallв!conv2d_22/StatefulPartitionedCallв!conv2d_23/StatefulPartitionedCallвdense_3/StatefulPartitionedCallв!dropout_5/StatefulPartitionedCallвoutputs/StatefulPartitionedCall╩
sequential_2/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_986645ч
rescaling_4/PartitionedCallPartitionedCall%sequential_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_rescaling_4_layer_call_and_return_conditional_losses_986753Ь
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall$rescaling_4/PartitionedCall:output:0conv2d_18_987106conv2d_18_987108*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_18_layer_call_and_return_conditional_losses_986766Ї
 max_pooling2d_18/PartitionedCallPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_986674Я
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_18/PartitionedCall:output:0conv2d_19_987112conv2d_19_987114*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_19_layer_call_and_return_conditional_losses_986784Ї
 max_pooling2d_19/PartitionedCallPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_986686Я
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_19/PartitionedCall:output:0conv2d_20_987118conv2d_20_987120*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_20_layer_call_and_return_conditional_losses_986802Ї
 max_pooling2d_20/PartitionedCallPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_986698а
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_20/PartitionedCall:output:0conv2d_21_987124conv2d_21_987126*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_21_layer_call_and_return_conditional_losses_986820ї
 max_pooling2d_21/PartitionedCallPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_986710а
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_21/PartitionedCall:output:0conv2d_22_987130conv2d_22_987132*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_22_layer_call_and_return_conditional_losses_986838ї
 max_pooling2d_22/PartitionedCallPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_986722а
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_22/PartitionedCall:output:0conv2d_23_987136conv2d_23_987138*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         └*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_23_layer_call_and_return_conditional_losses_986856ї
 max_pooling2d_23/PartitionedCallPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         └* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_986734Ў
!dropout_5/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_23/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         └* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_5_layer_call_and_return_conditional_losses_986993▀
flatten_3/PartitionedCallPartitionedCall*dropout_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_flatten_3_layer_call_and_return_conditional_losses_986876Й
dense_3/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_3_987144dense_3_987146*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_986889О
outputs/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0outputs_987149outputs_987151*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_outputs_layer_call_and_return_conditional_losses_986905w
IdentityIdentity(outputs/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Ж
NoOpNoOp"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall"^dropout_5/StatefulPartitionedCall ^outputs/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:         АА: : : : : : : : : : : : : : : : 2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2F
!dropout_5/StatefulPartitionedCall!dropout_5/StatefulPartitionedCall2B
outputs/StatefulPartitionedCalloutputs/StatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
│
F
*__inference_flatten_3_layer_call_fn_988058

inputs
identity▒
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_flatten_3_layer_call_and_return_conditional_losses_986876a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         └:X T
0
_output_shapes
:         └
 
_user_specified_nameinputs
Ф
с
-__inference_sequential_4_layer_call_fn_986947
sequential_2_input!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@$
	unknown_5:@А
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:А└

unknown_10:	└

unknown_11:
А
А

unknown_12:	А

unknown_13:	А

unknown_14:
identityИвStatefulPartitionedCallд
StatefulPartitionedCallStatefulPartitionedCallsequential_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_986912o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:         АА: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
1
_output_shapes
:         АА
,
_user_specified_namesequential_2_input
Ф
h
L__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_986722

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
вы
═#
"__inference__traced_restore_988628
file_prefix;
!assignvariableop_conv2d_18_kernel:/
!assignvariableop_1_conv2d_18_bias:=
#assignvariableop_2_conv2d_19_kernel: /
!assignvariableop_3_conv2d_19_bias: =
#assignvariableop_4_conv2d_20_kernel: @/
!assignvariableop_5_conv2d_20_bias:@>
#assignvariableop_6_conv2d_21_kernel:@А0
!assignvariableop_7_conv2d_21_bias:	А?
#assignvariableop_8_conv2d_22_kernel:АА0
!assignvariableop_9_conv2d_22_bias:	А@
$assignvariableop_10_conv2d_23_kernel:А└1
"assignvariableop_11_conv2d_23_bias:	└6
"assignvariableop_12_dense_3_kernel:
А
А/
 assignvariableop_13_dense_3_bias:	А5
"assignvariableop_14_outputs_kernel:	А.
 assignvariableop_15_outputs_bias:'
assignvariableop_16_iteration:	 +
!assignvariableop_17_learning_rate: E
+assignvariableop_18_adam_m_conv2d_18_kernel:E
+assignvariableop_19_adam_v_conv2d_18_kernel:7
)assignvariableop_20_adam_m_conv2d_18_bias:7
)assignvariableop_21_adam_v_conv2d_18_bias:E
+assignvariableop_22_adam_m_conv2d_19_kernel: E
+assignvariableop_23_adam_v_conv2d_19_kernel: 7
)assignvariableop_24_adam_m_conv2d_19_bias: 7
)assignvariableop_25_adam_v_conv2d_19_bias: E
+assignvariableop_26_adam_m_conv2d_20_kernel: @E
+assignvariableop_27_adam_v_conv2d_20_kernel: @7
)assignvariableop_28_adam_m_conv2d_20_bias:@7
)assignvariableop_29_adam_v_conv2d_20_bias:@F
+assignvariableop_30_adam_m_conv2d_21_kernel:@АF
+assignvariableop_31_adam_v_conv2d_21_kernel:@А8
)assignvariableop_32_adam_m_conv2d_21_bias:	А8
)assignvariableop_33_adam_v_conv2d_21_bias:	АG
+assignvariableop_34_adam_m_conv2d_22_kernel:ААG
+assignvariableop_35_adam_v_conv2d_22_kernel:АА8
)assignvariableop_36_adam_m_conv2d_22_bias:	А8
)assignvariableop_37_adam_v_conv2d_22_bias:	АG
+assignvariableop_38_adam_m_conv2d_23_kernel:А└G
+assignvariableop_39_adam_v_conv2d_23_kernel:А└8
)assignvariableop_40_adam_m_conv2d_23_bias:	└8
)assignvariableop_41_adam_v_conv2d_23_bias:	└=
)assignvariableop_42_adam_m_dense_3_kernel:
А
А=
)assignvariableop_43_adam_v_dense_3_kernel:
А
А6
'assignvariableop_44_adam_m_dense_3_bias:	А6
'assignvariableop_45_adam_v_dense_3_bias:	А<
)assignvariableop_46_adam_m_outputs_kernel:	А<
)assignvariableop_47_adam_v_outputs_kernel:	А5
'assignvariableop_48_adam_m_outputs_bias:5
'assignvariableop_49_adam_v_outputs_bias:%
assignvariableop_50_total_1: %
assignvariableop_51_count_1: #
assignvariableop_52_total: #
assignvariableop_53_count: 6
(assignvariableop_54_random_flip_statevar:	8
*assignvariableop_55_random_flip_1_statevar:	
identity_57ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_33вAssignVariableOp_34вAssignVariableOp_35вAssignVariableOp_36вAssignVariableOp_37вAssignVariableOp_38вAssignVariableOp_39вAssignVariableOp_4вAssignVariableOp_40вAssignVariableOp_41вAssignVariableOp_42вAssignVariableOp_43вAssignVariableOp_44вAssignVariableOp_45вAssignVariableOp_46вAssignVariableOp_47вAssignVariableOp_48вAssignVariableOp_49вAssignVariableOp_5вAssignVariableOp_50вAssignVariableOp_51вAssignVariableOp_52вAssignVariableOp_53вAssignVariableOp_54вAssignVariableOp_55вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9█
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:9*
dtype0*Б
valueўBЇ9B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer-0/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer-0/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHу
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:9*
dtype0*Е
value|Bz9B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ╛
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*·
_output_shapesч
ф:::::::::::::::::::::::::::::::::::::::::::::::::::::::::*G
dtypes=
;29			[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_18_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:╕
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_18_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_19_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:╕
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_19_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_20_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:╕
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_20_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_21_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:╕
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_21_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_8AssignVariableOp#assignvariableop_8_conv2d_22_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:╕
AssignVariableOp_9AssignVariableOp!assignvariableop_9_conv2d_22_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:╜
AssignVariableOp_10AssignVariableOp$assignvariableop_10_conv2d_23_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:╗
AssignVariableOp_11AssignVariableOp"assignvariableop_11_conv2d_23_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:╗
AssignVariableOp_12AssignVariableOp"assignvariableop_12_dense_3_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_13AssignVariableOp assignvariableop_13_dense_3_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:╗
AssignVariableOp_14AssignVariableOp"assignvariableop_14_outputs_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_15AssignVariableOp assignvariableop_15_outputs_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0	*
_output_shapes
:╢
AssignVariableOp_16AssignVariableOpassignvariableop_16_iterationIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_17AssignVariableOp!assignvariableop_17_learning_rateIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_m_conv2d_18_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_19AssignVariableOp+assignvariableop_19_adam_v_conv2d_18_kernelIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_20AssignVariableOp)assignvariableop_20_adam_m_conv2d_18_biasIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_21AssignVariableOp)assignvariableop_21_adam_v_conv2d_18_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_22AssignVariableOp+assignvariableop_22_adam_m_conv2d_19_kernelIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_23AssignVariableOp+assignvariableop_23_adam_v_conv2d_19_kernelIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_24AssignVariableOp)assignvariableop_24_adam_m_conv2d_19_biasIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_25AssignVariableOp)assignvariableop_25_adam_v_conv2d_19_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_26AssignVariableOp+assignvariableop_26_adam_m_conv2d_20_kernelIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_v_conv2d_20_kernelIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_m_conv2d_20_biasIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_29AssignVariableOp)assignvariableop_29_adam_v_conv2d_20_biasIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_30AssignVariableOp+assignvariableop_30_adam_m_conv2d_21_kernelIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_31AssignVariableOp+assignvariableop_31_adam_v_conv2d_21_kernelIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_m_conv2d_21_biasIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_33AssignVariableOp)assignvariableop_33_adam_v_conv2d_21_biasIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_34AssignVariableOp+assignvariableop_34_adam_m_conv2d_22_kernelIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_35AssignVariableOp+assignvariableop_35_adam_v_conv2d_22_kernelIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_36AssignVariableOp)assignvariableop_36_adam_m_conv2d_22_biasIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_v_conv2d_22_biasIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_38AssignVariableOp+assignvariableop_38_adam_m_conv2d_23_kernelIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_39AssignVariableOp+assignvariableop_39_adam_v_conv2d_23_kernelIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_40AssignVariableOp)assignvariableop_40_adam_m_conv2d_23_biasIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_41AssignVariableOp)assignvariableop_41_adam_v_conv2d_23_biasIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_42AssignVariableOp)assignvariableop_42_adam_m_dense_3_kernelIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_43AssignVariableOp)assignvariableop_43_adam_v_dense_3_kernelIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_44AssignVariableOp'assignvariableop_44_adam_m_dense_3_biasIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_45AssignVariableOp'assignvariableop_45_adam_v_dense_3_biasIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_46AssignVariableOp)assignvariableop_46_adam_m_outputs_kernelIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_47AssignVariableOp)assignvariableop_47_adam_v_outputs_kernelIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_48AssignVariableOp'assignvariableop_48_adam_m_outputs_biasIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_49AssignVariableOp'assignvariableop_49_adam_v_outputs_biasIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_50AssignVariableOpassignvariableop_50_total_1Identity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_51AssignVariableOpassignvariableop_51_count_1Identity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_52AssignVariableOpassignvariableop_52_totalIdentity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_53AssignVariableOpassignvariableop_53_countIdentity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0	*
_output_shapes
:┴
AssignVariableOp_54AssignVariableOp(assignvariableop_54_random_flip_statevarIdentity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0	*
_output_shapes
:├
AssignVariableOp_55AssignVariableOp*assignvariableop_55_random_flip_1_statevarIdentity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 Я

Identity_56Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_57IdentityIdentity_56:output:0^NoOp_1*
T0*
_output_shapes
: М

NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_57Identity_57:output:0*Е
_input_shapest
r: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
╕
■
E__inference_conv2d_19_layer_call_and_return_conditional_losses_986784

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@ x
leaky_re_lu_22/LeakyRelu	LeakyReluBiasAdd:output:0*/
_output_shapes
:         @@ *
alpha%оGс=}
IdentityIdentity&leaky_re_lu_22/LeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:         @@ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
╩

d
E__inference_dropout_5_layer_call_and_return_conditional_losses_986993

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         └C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Х
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         └*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>п
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         └T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ь
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*0
_output_shapes
:         └j
IdentityIdentitydropout/SelectV2:output:0*
T0*0
_output_shapes
:         └"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         └:X T
0
_output_shapes
:         └
 
_user_specified_nameinputs
Ч
e
I__inference_random_flip_1_layer_call_and_return_conditional_losses_988190

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
┌

ў
C__inference_dense_3_layer_call_and_return_conditional_losses_988084

inputs2
matmul_readvariableop_resource:
А
А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
А
А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аq
leaky_re_lu_27/LeakyRelu	LeakyReluBiasAdd:output:0*(
_output_shapes
:         А*
alpha%оGс=v
IdentityIdentity&leaky_re_lu_27/LeakyRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А

 
_user_specified_nameinputs
═
I
-__inference_sequential_2_layer_call_fn_987713

inputs
identity╜
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_986492j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
є
в
*__inference_conv2d_22_layer_call_fn_987975

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_22_layer_call_and_return_conditional_losses_986838x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
°
Т
map_while_cond_988132$
 map_while_map_while_loop_counter
map_while_map_strided_slice
map_while_placeholder
map_while_placeholder_1$
 map_while_less_map_strided_slice<
8map_while_map_while_cond_988132___redundant_placeholder0
map_while_identity
p
map/while/LessLessmap_while_placeholder map_while_less_map_strided_slice*
T0*
_output_shapes
: x
map/while/Less_1Less map_while_map_while_loop_countermap_while_map_strided_slice*
T0*
_output_shapes
: d
map/while/LogicalAnd
LogicalAndmap/while/Less_1:z:0map/while/Less:z:0*
_output_shapes
: Y
map/while/IdentityIdentitymap/while/LogicalAnd:z:0*
T0
*
_output_shapes
: "1
map_while_identitymap/while/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : :: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:
║
M
1__inference_max_pooling2d_22_layer_call_fn_987991

inputs
identity┌
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_986722Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
п
Д
map_while_body_986519$
 map_while_map_while_loop_counter
map_while_map_strided_slice
map_while_placeholder
map_while_placeholder_1#
map_while_map_strided_slice_1_0_
[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0
map_while_identity
map_while_identity_1
map_while_identity_2
map_while_identity_3!
map_while_map_strided_slice_1]
Ymap_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensorР
;map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"А   А      ╖
-map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0map_while_placeholderDmap/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*$
_output_shapes
:АА*
element_dtype0щ
.map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemmap_while_placeholder_1map_while_placeholder4map/while/TensorArrayV2Read/TensorListGetItem:item:0*
_output_shapes
: *
element_dtype0:щш╥Q
map/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :h
map/while/addAddV2map_while_placeholdermap/while/add/y:output:0*
T0*
_output_shapes
: S
map/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :w
map/while/add_1AddV2 map_while_map_while_loop_countermap/while/add_1/y:output:0*
T0*
_output_shapes
: T
map/while/IdentityIdentitymap/while/add_1:z:0*
T0*
_output_shapes
: ^
map/while/Identity_1Identitymap_while_map_strided_slice*
T0*
_output_shapes
: T
map/while/Identity_2Identitymap/while/add:z:0*
T0*
_output_shapes
: Б
map/while/Identity_3Identity>map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: "1
map_while_identitymap/while/Identity:output:0"5
map_while_identity_1map/while/Identity_1:output:0"5
map_while_identity_2map/while/Identity_2:output:0"5
map_while_identity_3map/while/Identity_3:output:0"@
map_while_map_strided_slice_1map_while_map_strided_slice_1_0"╕
Ymap_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : : : : : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
П	
o
H__inference_sequential_2_layer_call_and_return_conditional_losses_986665
random_flip_input
identity╙
random_flip/PartitionedCallPartitionedCallrandom_flip_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_random_flip_layer_call_and_return_conditional_losses_986629ъ
random_flip_1/PartitionedCallPartitionedCall$random_flip/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_random_flip_1_layer_call_and_return_conditional_losses_986559x
IdentityIdentity&random_flip_1/PartitionedCall:output:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:d `
1
_output_shapes
:         АА
+
_user_specified_namerandom_flip_input
╔
a
E__inference_flatten_3_layer_call_and_return_conditional_losses_988064

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"       ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         А
Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         А
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         └:X T
0
_output_shapes
:         └
 
_user_specified_nameinputs
°
Т
map_while_cond_988205$
 map_while_map_while_loop_counter
map_while_map_strided_slice
map_while_placeholder
map_while_placeholder_1$
 map_while_less_map_strided_slice<
8map_while_map_while_cond_988205___redundant_placeholder0
map_while_identity
p
map/while/LessLessmap_while_placeholder map_while_less_map_strided_slice*
T0*
_output_shapes
: x
map/while/Less_1Less map_while_map_while_loop_countermap_while_map_strided_slice*
T0*
_output_shapes
: d
map/while/LogicalAnd
LogicalAndmap/while/Less_1:z:0map/while/Less:z:0*
_output_shapes
: Y
map/while/IdentityIdentitymap/while/LogicalAnd:z:0*
T0
*
_output_shapes
: "1
map_while_identitymap/while/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : :: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:
Ё
╒
-__inference_sequential_4_layer_call_fn_987413

inputs!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@$
	unknown_5:@А
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:А└

unknown_10:	└

unknown_11:
А
А

unknown_12:	А

unknown_13:	А

unknown_14:
identityИвStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_986912o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:         АА: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
й[
у
H__inference_sequential_4_layer_call_and_return_conditional_losses_987522

inputsB
(conv2d_18_conv2d_readvariableop_resource:7
)conv2d_18_biasadd_readvariableop_resource:B
(conv2d_19_conv2d_readvariableop_resource: 7
)conv2d_19_biasadd_readvariableop_resource: B
(conv2d_20_conv2d_readvariableop_resource: @7
)conv2d_20_biasadd_readvariableop_resource:@C
(conv2d_21_conv2d_readvariableop_resource:@А8
)conv2d_21_biasadd_readvariableop_resource:	АD
(conv2d_22_conv2d_readvariableop_resource:АА8
)conv2d_22_biasadd_readvariableop_resource:	АD
(conv2d_23_conv2d_readvariableop_resource:А└8
)conv2d_23_biasadd_readvariableop_resource:	└:
&dense_3_matmul_readvariableop_resource:
А
А6
'dense_3_biasadd_readvariableop_resource:	А9
&outputs_matmul_readvariableop_resource:	А5
'outputs_biasadd_readvariableop_resource:
identityИв conv2d_18/BiasAdd/ReadVariableOpвconv2d_18/Conv2D/ReadVariableOpв conv2d_19/BiasAdd/ReadVariableOpвconv2d_19/Conv2D/ReadVariableOpв conv2d_20/BiasAdd/ReadVariableOpвconv2d_20/Conv2D/ReadVariableOpв conv2d_21/BiasAdd/ReadVariableOpвconv2d_21/Conv2D/ReadVariableOpв conv2d_22/BiasAdd/ReadVariableOpвconv2d_22/Conv2D/ReadVariableOpв conv2d_23/BiasAdd/ReadVariableOpвconv2d_23/Conv2D/ReadVariableOpвdense_3/BiasAdd/ReadVariableOpвdense_3/MatMul/ReadVariableOpвoutputs/BiasAdd/ReadVariableOpвoutputs/MatMul/ReadVariableOpW
rescaling_4/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;Y
rescaling_4/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    w
rescaling_4/mulMulinputsrescaling_4/Cast/x:output:0*
T0*1
_output_shapes
:         ААИ
rescaling_4/addAddV2rescaling_4/mul:z:0rescaling_4/Cast_1/x:output:0*
T0*1
_output_shapes
:         ААР
conv2d_18/Conv2D/ReadVariableOpReadVariableOp(conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0╝
conv2d_18/Conv2DConv2Drescaling_4/add:z:0'conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
Ж
 conv2d_18/BiasAdd/ReadVariableOpReadVariableOp)conv2d_18_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Э
conv2d_18/BiasAddBiasAddconv2d_18/Conv2D:output:0(conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ААО
"conv2d_18/leaky_re_lu_21/LeakyRelu	LeakyReluconv2d_18/BiasAdd:output:0*1
_output_shapes
:         АА*
alpha%оGс=┬
max_pooling2d_18/MaxPoolMaxPool0conv2d_18/leaky_re_lu_21/LeakyRelu:activations:0*/
_output_shapes
:         @@*
ksize
*
paddingVALID*
strides
Р
conv2d_19/Conv2D/ReadVariableOpReadVariableOp(conv2d_19_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0╚
conv2d_19/Conv2DConv2D!max_pooling2d_18/MaxPool:output:0'conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@ *
paddingSAME*
strides
Ж
 conv2d_19/BiasAdd/ReadVariableOpReadVariableOp)conv2d_19_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ы
conv2d_19/BiasAddBiasAddconv2d_19/Conv2D:output:0(conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@ М
"conv2d_19/leaky_re_lu_22/LeakyRelu	LeakyReluconv2d_19/BiasAdd:output:0*/
_output_shapes
:         @@ *
alpha%оGс=┬
max_pooling2d_19/MaxPoolMaxPool0conv2d_19/leaky_re_lu_22/LeakyRelu:activations:0*/
_output_shapes
:            *
ksize
*
paddingVALID*
strides
Р
conv2d_20/Conv2D/ReadVariableOpReadVariableOp(conv2d_20_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0╚
conv2d_20/Conv2DConv2D!max_pooling2d_19/MaxPool:output:0'conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:           @*
paddingSAME*
strides
Ж
 conv2d_20/BiasAdd/ReadVariableOpReadVariableOp)conv2d_20_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ы
conv2d_20/BiasAddBiasAddconv2d_20/Conv2D:output:0(conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:           @М
"conv2d_20/leaky_re_lu_23/LeakyRelu	LeakyReluconv2d_20/BiasAdd:output:0*/
_output_shapes
:           @*
alpha%оGс=┬
max_pooling2d_20/MaxPoolMaxPool0conv2d_20/leaky_re_lu_23/LeakyRelu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
С
conv2d_21/Conv2D/ReadVariableOpReadVariableOp(conv2d_21_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0╔
conv2d_21/Conv2DConv2D!max_pooling2d_20/MaxPool:output:0'conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
З
 conv2d_21/BiasAdd/ReadVariableOpReadVariableOp)conv2d_21_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ь
conv2d_21/BiasAddBiasAddconv2d_21/Conv2D:output:0(conv2d_21/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АН
"conv2d_21/leaky_re_lu_24/LeakyRelu	LeakyReluconv2d_21/BiasAdd:output:0*0
_output_shapes
:         А*
alpha%оGс=├
max_pooling2d_21/MaxPoolMaxPool0conv2d_21/leaky_re_lu_24/LeakyRelu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
Т
conv2d_22/Conv2D/ReadVariableOpReadVariableOp(conv2d_22_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╔
conv2d_22/Conv2DConv2D!max_pooling2d_21/MaxPool:output:0'conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
З
 conv2d_22/BiasAdd/ReadVariableOpReadVariableOp)conv2d_22_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ь
conv2d_22/BiasAddBiasAddconv2d_22/Conv2D:output:0(conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АН
"conv2d_22/leaky_re_lu_25/LeakyRelu	LeakyReluconv2d_22/BiasAdd:output:0*0
_output_shapes
:         А*
alpha%оGс=├
max_pooling2d_22/MaxPoolMaxPool0conv2d_22/leaky_re_lu_25/LeakyRelu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
Т
conv2d_23/Conv2D/ReadVariableOpReadVariableOp(conv2d_23_conv2d_readvariableop_resource*(
_output_shapes
:А└*
dtype0╔
conv2d_23/Conv2DConv2D!max_pooling2d_22/MaxPool:output:0'conv2d_23/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         └*
paddingSAME*
strides
З
 conv2d_23/BiasAdd/ReadVariableOpReadVariableOp)conv2d_23_biasadd_readvariableop_resource*
_output_shapes	
:└*
dtype0Ь
conv2d_23/BiasAddBiasAddconv2d_23/Conv2D:output:0(conv2d_23/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         └Н
"conv2d_23/leaky_re_lu_26/LeakyRelu	LeakyReluconv2d_23/BiasAdd:output:0*0
_output_shapes
:         └*
alpha%оGс=├
max_pooling2d_23/MaxPoolMaxPool0conv2d_23/leaky_re_lu_26/LeakyRelu:activations:0*0
_output_shapes
:         └*
ksize
*
paddingVALID*
strides
|
dropout_5/IdentityIdentity!max_pooling2d_23/MaxPool:output:0*
T0*0
_output_shapes
:         └`
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ж
flatten_3/ReshapeReshapedropout_5/Identity:output:0flatten_3/Const:output:0*
T0*(
_output_shapes
:         А
Ж
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource* 
_output_shapes
:
А
А*
dtype0О
dense_3/MatMulMatMulflatten_3/Reshape:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АГ
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0П
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АБ
 dense_3/leaky_re_lu_27/LeakyRelu	LeakyReludense_3/BiasAdd:output:0*(
_output_shapes
:         А*
alpha%оGс=Е
outputs/MatMul/ReadVariableOpReadVariableOp&outputs_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0б
outputs/MatMulMatMul.dense_3/leaky_re_lu_27/LeakyRelu:activations:0%outputs/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         В
outputs/BiasAdd/ReadVariableOpReadVariableOp'outputs_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
outputs/BiasAddBiasAddoutputs/MatMul:product:0&outputs/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         g
IdentityIdentityoutputs/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         ц
NoOpNoOp!^conv2d_18/BiasAdd/ReadVariableOp ^conv2d_18/Conv2D/ReadVariableOp!^conv2d_19/BiasAdd/ReadVariableOp ^conv2d_19/Conv2D/ReadVariableOp!^conv2d_20/BiasAdd/ReadVariableOp ^conv2d_20/Conv2D/ReadVariableOp!^conv2d_21/BiasAdd/ReadVariableOp ^conv2d_21/Conv2D/ReadVariableOp!^conv2d_22/BiasAdd/ReadVariableOp ^conv2d_22/Conv2D/ReadVariableOp!^conv2d_23/BiasAdd/ReadVariableOp ^conv2d_23/Conv2D/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^outputs/BiasAdd/ReadVariableOp^outputs/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:         АА: : : : : : : : : : : : : : : : 2D
 conv2d_18/BiasAdd/ReadVariableOp conv2d_18/BiasAdd/ReadVariableOp2B
conv2d_18/Conv2D/ReadVariableOpconv2d_18/Conv2D/ReadVariableOp2D
 conv2d_19/BiasAdd/ReadVariableOp conv2d_19/BiasAdd/ReadVariableOp2B
conv2d_19/Conv2D/ReadVariableOpconv2d_19/Conv2D/ReadVariableOp2D
 conv2d_20/BiasAdd/ReadVariableOp conv2d_20/BiasAdd/ReadVariableOp2B
conv2d_20/Conv2D/ReadVariableOpconv2d_20/Conv2D/ReadVariableOp2D
 conv2d_21/BiasAdd/ReadVariableOp conv2d_21/BiasAdd/ReadVariableOp2B
conv2d_21/Conv2D/ReadVariableOpconv2d_21/Conv2D/ReadVariableOp2D
 conv2d_22/BiasAdd/ReadVariableOp conv2d_22/BiasAdd/ReadVariableOp2B
conv2d_22/Conv2D/ReadVariableOpconv2d_22/Conv2D/ReadVariableOp2D
 conv2d_23/BiasAdd/ReadVariableOp conv2d_23/BiasAdd/ReadVariableOp2B
conv2d_23/Conv2D/ReadVariableOpconv2d_23/Conv2D/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2@
outputs/BiasAdd/ReadVariableOpoutputs/BiasAdd/ReadVariableOp2>
outputs/MatMul/ReadVariableOpoutputs/MatMul/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
└
А
E__inference_conv2d_21_layer_call_and_return_conditional_losses_987956

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аy
leaky_re_lu_24/LeakyRelu	LeakyReluBiasAdd:output:0*0
_output_shapes
:         А*
alpha%оGс=~
IdentityIdentity&leaky_re_lu_24/LeakyRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
№
c
E__inference_dropout_5_layer_call_and_return_conditional_losses_986868

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:         └d

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         └"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         └:X T
0
_output_shapes
:         └
 
_user_specified_nameinputs
╩

d
E__inference_dropout_5_layer_call_and_return_conditional_losses_988053

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         └C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Х
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         └*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>п
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         └T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ь
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*0
_output_shapes
:         └j
IdentityIdentitydropout/SelectV2:output:0*
T0*0
_output_shapes
:         └"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         └:X T
0
_output_shapes
:         └
 
_user_specified_nameinputs
╩	
ї
C__inference_outputs_layer_call_and_return_conditional_losses_986905

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Ф
с
-__inference_sequential_4_layer_call_fn_987227
sequential_2_input!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@$
	unknown_5:@А
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:А└

unknown_10:	└

unknown_11:
А
А

unknown_12:	А

unknown_13:	А

unknown_14:
identityИвStatefulPartitionedCallд
StatefulPartitionedCallStatefulPartitionedCallsequential_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_987155o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:         АА: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
1
_output_shapes
:         АА
,
_user_specified_namesequential_2_input
╔
Д
map_while_body_988133$
 map_while_map_while_loop_counter
map_while_map_strided_slice
map_while_placeholder
map_while_placeholder_1#
map_while_map_strided_slice_1_0_
[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0
map_while_identity
map_while_identity_1
map_while_identity_2
map_while_identity_3!
map_while_map_strided_slice_1]
Ymap_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensorР
;map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"А   А      ╖
-map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0map_while_placeholderDmap/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*$
_output_shapes
:АА*
element_dtype0▀
,map/while/flip_left_right/control_dependencyIdentity4map/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*@
_class6
42loc:@map/while/TensorArrayV2Read/TensorListGetItem*$
_output_shapes
:ААr
(map/while/flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:╔
#map/while/flip_left_right/ReverseV2	ReverseV25map/while/flip_left_right/control_dependency:output:01map/while/flip_left_right/ReverseV2/axis:output:0*
T0*$
_output_shapes
:ААс
.map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemmap_while_placeholder_1map_while_placeholder,map/while/flip_left_right/ReverseV2:output:0*
_output_shapes
: *
element_dtype0:щш╥Q
map/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :h
map/while/addAddV2map_while_placeholdermap/while/add/y:output:0*
T0*
_output_shapes
: S
map/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :w
map/while/add_1AddV2 map_while_map_while_loop_countermap/while/add_1/y:output:0*
T0*
_output_shapes
: T
map/while/IdentityIdentitymap/while/add_1:z:0*
T0*
_output_shapes
: ^
map/while/Identity_1Identitymap_while_map_strided_slice*
T0*
_output_shapes
: T
map/while/Identity_2Identitymap/while/add:z:0*
T0*
_output_shapes
: Б
map/while/Identity_3Identity>map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: "1
map_while_identitymap/while/Identity:output:0"5
map_while_identity_1map/while/Identity_1:output:0"5
map_while_identity_2map/while/Identity_2:output:0"5
map_while_identity_3map/while/Identity_3:output:0"@
map_while_map_strided_slice_1map_while_map_strided_slice_1_0"╕
Ymap_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : : : : : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
─
Б
E__inference_conv2d_22_layer_call_and_return_conditional_losses_987986

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аy
leaky_re_lu_25/LeakyRelu	LeakyReluBiasAdd:output:0*0
_output_shapes
:         А*
alpha%оGс=~
IdentityIdentity&leaky_re_lu_25/LeakyRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
║
M
1__inference_max_pooling2d_21_layer_call_fn_987961

inputs
identity┌
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_986710Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
┌

ў
C__inference_dense_3_layer_call_and_return_conditional_losses_986889

inputs2
matmul_readvariableop_resource:
А
А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
А
А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аq
leaky_re_lu_27/LeakyRelu	LeakyReluBiasAdd:output:0*(
_output_shapes
:         А*
alpha%оGс=v
IdentityIdentity&leaky_re_lu_27/LeakyRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А

 
_user_specified_nameinputs
╧
J
.__inference_random_flip_1_layer_call_fn_988186

inputs
identity╛
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_random_flip_1_layer_call_and_return_conditional_losses_986559j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
є
e
I__inference_random_flip_1_layer_call_and_return_conditional_losses_986559

inputs
identity?
	map/ShapeShapeinputs*
T0*
_output_shapes
:a
map/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
map/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
map/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
map/strided_sliceStridedSlicemap/Shape:output:0 map/strided_slice/stack:output:0"map/strided_slice/stack_1:output:0"map/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
map/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ╛
map/TensorArrayV2TensorListReserve(map/TensorArrayV2/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥О
9map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"А   А      с
+map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorinputsBmap/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥K
	map/ConstConst*
_output_shapes
: *
dtype0*
value	B : l
!map/TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┬
map/TensorArrayV2_1TensorListReserve*map/TensorArrayV2_1/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥X
map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ·
	map/whileStatelessWhilemap/while/loop_counter:output:0map/strided_slice:output:0map/Const:output:0map/TensorArrayV2_1:handle:0map/strided_slice:output:0;map/TensorArrayUnstack/TensorListFromTensor:output_handle:0*
T

2*
_lower_using_switch_merge(*
_num_original_outputs* 
_output_shapes
: : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( *!
bodyR
map_while_body_986519*!
condR
map_while_cond_986518*
output_shapes
: : : : : : Й
4map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"А   А      ╘
&map/TensorArrayV2Stack/TensorListStackTensorListStackmap/while:output:3=map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*1
_output_shapes
:         АА*
element_dtype0Б
IdentityIdentity/map/TensorArrayV2Stack/TensorListStack:tensor:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
╦

в
!random_flip_map_while_cond_987737<
8random_flip_map_while_random_flip_map_while_loop_counter7
3random_flip_map_while_random_flip_map_strided_slice%
!random_flip_map_while_placeholder'
#random_flip_map_while_placeholder_1<
8random_flip_map_while_less_random_flip_map_strided_sliceT
Prandom_flip_map_while_random_flip_map_while_cond_987737___redundant_placeholder0"
random_flip_map_while_identity
а
random_flip/map/while/LessLess!random_flip_map_while_placeholder8random_flip_map_while_less_random_flip_map_strided_slice*
T0*
_output_shapes
: ┤
random_flip/map/while/Less_1Less8random_flip_map_while_random_flip_map_while_loop_counter3random_flip_map_while_random_flip_map_strided_slice*
T0*
_output_shapes
: И
 random_flip/map/while/LogicalAnd
LogicalAnd random_flip/map/while/Less_1:z:0random_flip/map/while/Less:z:0*
_output_shapes
: q
random_flip/map/while/IdentityIdentity$random_flip/map/while/LogicalAnd:z:0*
T0
*
_output_shapes
: "I
random_flip_map_while_identity'random_flip/map/while/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : :: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:
║
M
1__inference_max_pooling2d_19_layer_call_fn_987901

inputs
identity┌
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_986686Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ё
╒
-__inference_sequential_4_layer_call_fn_987450

inputs!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@$
	unknown_5:@А
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:А└

unknown_10:	└

unknown_11:
А
А

unknown_12:	А

unknown_13:	А

unknown_14:
identityИвStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_987155o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:         АА: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Г
║
#random_flip_1_map_while_cond_987789@
<random_flip_1_map_while_random_flip_1_map_while_loop_counter;
7random_flip_1_map_while_random_flip_1_map_strided_slice'
#random_flip_1_map_while_placeholder)
%random_flip_1_map_while_placeholder_1@
<random_flip_1_map_while_less_random_flip_1_map_strided_sliceX
Trandom_flip_1_map_while_random_flip_1_map_while_cond_987789___redundant_placeholder0$
 random_flip_1_map_while_identity
и
random_flip_1/map/while/LessLess#random_flip_1_map_while_placeholder<random_flip_1_map_while_less_random_flip_1_map_strided_slice*
T0*
_output_shapes
: ╛
random_flip_1/map/while/Less_1Less<random_flip_1_map_while_random_flip_1_map_while_loop_counter7random_flip_1_map_while_random_flip_1_map_strided_slice*
T0*
_output_shapes
: О
"random_flip_1/map/while/LogicalAnd
LogicalAnd"random_flip_1/map/while/Less_1:z:0 random_flip_1/map/while/Less:z:0*
_output_shapes
: u
 random_flip_1/map/while/IdentityIdentity&random_flip_1/map/while/LogicalAnd:z:0*
T0
*
_output_shapes
: "M
 random_flip_1_map_while_identity)random_flip_1/map/while/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : :: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:
ю
d
H__inference_sequential_2_layer_call_and_return_conditional_losses_986645

inputs
identity╚
random_flip/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_random_flip_layer_call_and_return_conditional_losses_986629ъ
random_flip_1/PartitionedCallPartitionedCall$random_flip/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_random_flip_1_layer_call_and_return_conditional_losses_986559x
IdentityIdentity&random_flip_1/PartitionedCall:output:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
║
M
1__inference_max_pooling2d_18_layer_call_fn_987871

inputs
identity┌
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_986674Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
║
M
1__inference_max_pooling2d_23_layer_call_fn_988021

inputs
identity┌
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_986734Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╦
H
,__inference_rescaling_4_layer_call_fn_987838

inputs
identity╝
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_rescaling_4_layer_call_and_return_conditional_losses_986753j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Ч
e
I__inference_random_flip_1_layer_call_and_return_conditional_losses_986489

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Ф
h
L__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_987966

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ф
h
L__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_986674

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
°
Т
map_while_cond_986518$
 map_while_map_while_loop_counter
map_while_map_strided_slice
map_while_placeholder
map_while_placeholder_1$
 map_while_less_map_strided_slice<
8map_while_map_while_cond_986518___redundant_placeholder0
map_while_identity
p
map/while/LessLessmap_while_placeholder map_while_less_map_strided_slice*
T0*
_output_shapes
: x
map/while/Less_1Less map_while_map_while_loop_countermap_while_map_strided_slice*
T0*
_output_shapes
: d
map/while/LogicalAnd
LogicalAndmap/while/Less_1:z:0map/while/Less:z:0*
_output_shapes
: Y
map/while/IdentityIdentitymap/while/LogicalAnd:z:0*
T0
*
_output_shapes
: "1
map_while_identitymap/while/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : :: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:
тI
З
H__inference_sequential_4_layer_call_and_return_conditional_losses_987335
sequential_2_input*
conv2d_18_987286:
conv2d_18_987288:*
conv2d_19_987292: 
conv2d_19_987294: *
conv2d_20_987298: @
conv2d_20_987300:@+
conv2d_21_987304:@А
conv2d_21_987306:	А,
conv2d_22_987310:АА
conv2d_22_987312:	А,
conv2d_23_987316:А└
conv2d_23_987318:	└"
dense_3_987324:
А
А
dense_3_987326:	А!
outputs_987329:	А
outputs_987331:
identityИв!conv2d_18/StatefulPartitionedCallв!conv2d_19/StatefulPartitionedCallв!conv2d_20/StatefulPartitionedCallв!conv2d_21/StatefulPartitionedCallв!conv2d_22/StatefulPartitionedCallв!conv2d_23/StatefulPartitionedCallвdense_3/StatefulPartitionedCallв!dropout_5/StatefulPartitionedCallвoutputs/StatefulPartitionedCall╓
sequential_2/PartitionedCallPartitionedCallsequential_2_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_986645ч
rescaling_4/PartitionedCallPartitionedCall%sequential_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_rescaling_4_layer_call_and_return_conditional_losses_986753Ь
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall$rescaling_4/PartitionedCall:output:0conv2d_18_987286conv2d_18_987288*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_18_layer_call_and_return_conditional_losses_986766Ї
 max_pooling2d_18/PartitionedCallPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_986674Я
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_18/PartitionedCall:output:0conv2d_19_987292conv2d_19_987294*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_19_layer_call_and_return_conditional_losses_986784Ї
 max_pooling2d_19/PartitionedCallPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_986686Я
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_19/PartitionedCall:output:0conv2d_20_987298conv2d_20_987300*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_20_layer_call_and_return_conditional_losses_986802Ї
 max_pooling2d_20/PartitionedCallPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_986698а
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_20/PartitionedCall:output:0conv2d_21_987304conv2d_21_987306*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_21_layer_call_and_return_conditional_losses_986820ї
 max_pooling2d_21/PartitionedCallPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_986710а
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_21/PartitionedCall:output:0conv2d_22_987310conv2d_22_987312*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_22_layer_call_and_return_conditional_losses_986838ї
 max_pooling2d_22/PartitionedCallPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_986722а
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_22/PartitionedCall:output:0conv2d_23_987316conv2d_23_987318*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         └*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_23_layer_call_and_return_conditional_losses_986856ї
 max_pooling2d_23/PartitionedCallPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         └* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_986734Ў
!dropout_5/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_23/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         └* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_5_layer_call_and_return_conditional_losses_986993▀
flatten_3/PartitionedCallPartitionedCall*dropout_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_flatten_3_layer_call_and_return_conditional_losses_986876Й
dense_3/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_3_987324dense_3_987326*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_986889О
outputs/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0outputs_987329outputs_987331*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_outputs_layer_call_and_return_conditional_losses_986905w
IdentityIdentity(outputs/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Ж
NoOpNoOp"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall"^dropout_5/StatefulPartitionedCall ^outputs/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:         АА: : : : : : : : : : : : : : : : 2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2F
!dropout_5/StatefulPartitionedCall!dropout_5/StatefulPartitionedCall2B
outputs/StatefulPartitionedCalloutputs/StatefulPartitionedCall:e a
1
_output_shapes
:         АА
,
_user_specified_namesequential_2_input
╕
■
E__inference_conv2d_20_layer_call_and_return_conditional_losses_986802

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:           @*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:           @x
leaky_re_lu_23/LeakyRelu	LeakyReluBiasAdd:output:0*/
_output_shapes
:           @*
alpha%оGс=}
IdentityIdentity&leaky_re_lu_23/LeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:           @w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:            : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:            
 
_user_specified_nameinputs
Ф
h
L__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_986710

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
├
Ц
(__inference_outputs_layer_call_fn_988093

inputs
unknown:	А
	unknown_0:
identityИвStatefulPartitionedCall╪
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_outputs_layer_call_and_return_conditional_losses_986905o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
№
c
E__inference_dropout_5_layer_call_and_return_conditional_losses_988041

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:         └d

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         └"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         └:X T
0
_output_shapes
:         └
 
_user_specified_nameinputs
у!
у
.sequential_2_random_flip_map_while_body_987538V
Rsequential_2_random_flip_map_while_sequential_2_random_flip_map_while_loop_counterQ
Msequential_2_random_flip_map_while_sequential_2_random_flip_map_strided_slice2
.sequential_2_random_flip_map_while_placeholder4
0sequential_2_random_flip_map_while_placeholder_1U
Qsequential_2_random_flip_map_while_sequential_2_random_flip_map_strided_slice_1_0Т
Нsequential_2_random_flip_map_while_tensorarrayv2read_tensorlistgetitem_sequential_2_random_flip_map_tensorarrayunstack_tensorlistfromtensor_0/
+sequential_2_random_flip_map_while_identity1
-sequential_2_random_flip_map_while_identity_11
-sequential_2_random_flip_map_while_identity_21
-sequential_2_random_flip_map_while_identity_3S
Osequential_2_random_flip_map_while_sequential_2_random_flip_map_strided_slice_1Р
Лsequential_2_random_flip_map_while_tensorarrayv2read_tensorlistgetitem_sequential_2_random_flip_map_tensorarrayunstack_tensorlistfromtensorй
Tsequential_2/random_flip/map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"А   А      ╡
Fsequential_2/random_flip/map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemНsequential_2_random_flip_map_while_tensorarrayv2read_tensorlistgetitem_sequential_2_random_flip_map_tensorarrayunstack_tensorlistfromtensor_0.sequential_2_random_flip_map_while_placeholder]sequential_2/random_flip/map/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*$
_output_shapes
:АА*
element_dtype0═
Gsequential_2/random_flip/map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem0sequential_2_random_flip_map_while_placeholder_1.sequential_2_random_flip_map_while_placeholderMsequential_2/random_flip/map/while/TensorArrayV2Read/TensorListGetItem:item:0*
_output_shapes
: *
element_dtype0:щш╥j
(sequential_2/random_flip/map/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :│
&sequential_2/random_flip/map/while/addAddV2.sequential_2_random_flip_map_while_placeholder1sequential_2/random_flip/map/while/add/y:output:0*
T0*
_output_shapes
: l
*sequential_2/random_flip/map/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :█
(sequential_2/random_flip/map/while/add_1AddV2Rsequential_2_random_flip_map_while_sequential_2_random_flip_map_while_loop_counter3sequential_2/random_flip/map/while/add_1/y:output:0*
T0*
_output_shapes
: Ж
+sequential_2/random_flip/map/while/IdentityIdentity,sequential_2/random_flip/map/while/add_1:z:0*
T0*
_output_shapes
: й
-sequential_2/random_flip/map/while/Identity_1IdentityMsequential_2_random_flip_map_while_sequential_2_random_flip_map_strided_slice*
T0*
_output_shapes
: Ж
-sequential_2/random_flip/map/while/Identity_2Identity*sequential_2/random_flip/map/while/add:z:0*
T0*
_output_shapes
: │
-sequential_2/random_flip/map/while/Identity_3IdentityWsequential_2/random_flip/map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: "c
+sequential_2_random_flip_map_while_identity4sequential_2/random_flip/map/while/Identity:output:0"g
-sequential_2_random_flip_map_while_identity_16sequential_2/random_flip/map/while/Identity_1:output:0"g
-sequential_2_random_flip_map_while_identity_26sequential_2/random_flip/map/while/Identity_2:output:0"g
-sequential_2_random_flip_map_while_identity_36sequential_2/random_flip/map/while/Identity_3:output:0"д
Osequential_2_random_flip_map_while_sequential_2_random_flip_map_strided_slice_1Qsequential_2_random_flip_map_while_sequential_2_random_flip_map_strided_slice_1_0"Ю
Лsequential_2_random_flip_map_while_tensorarrayv2read_tensorlistgetitem_sequential_2_random_flip_map_tensorarrayunstack_tensorlistfromtensorНsequential_2_random_flip_map_while_tensorarrayv2read_tensorlistgetitem_sequential_2_random_flip_map_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : : : : : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
║
M
1__inference_max_pooling2d_20_layer_call_fn_987931

inputs
identity┌
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_986698Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
з(
Й
0sequential_2_random_flip_1_map_while_body_987590Z
Vsequential_2_random_flip_1_map_while_sequential_2_random_flip_1_map_while_loop_counterU
Qsequential_2_random_flip_1_map_while_sequential_2_random_flip_1_map_strided_slice4
0sequential_2_random_flip_1_map_while_placeholder6
2sequential_2_random_flip_1_map_while_placeholder_1Y
Usequential_2_random_flip_1_map_while_sequential_2_random_flip_1_map_strided_slice_1_0Ц
Сsequential_2_random_flip_1_map_while_tensorarrayv2read_tensorlistgetitem_sequential_2_random_flip_1_map_tensorarrayunstack_tensorlistfromtensor_01
-sequential_2_random_flip_1_map_while_identity3
/sequential_2_random_flip_1_map_while_identity_13
/sequential_2_random_flip_1_map_while_identity_23
/sequential_2_random_flip_1_map_while_identity_3W
Ssequential_2_random_flip_1_map_while_sequential_2_random_flip_1_map_strided_slice_1Ф
Пsequential_2_random_flip_1_map_while_tensorarrayv2read_tensorlistgetitem_sequential_2_random_flip_1_map_tensorarrayunstack_tensorlistfromtensorл
Vsequential_2/random_flip_1/map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"А   А      ┐
Hsequential_2/random_flip_1/map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemСsequential_2_random_flip_1_map_while_tensorarrayv2read_tensorlistgetitem_sequential_2_random_flip_1_map_tensorarrayunstack_tensorlistfromtensor_00sequential_2_random_flip_1_map_while_placeholder_sequential_2/random_flip_1/map/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*$
_output_shapes
:АА*
element_dtype0н
Dsequential_2/random_flip_1/map/while/flip_up_down/control_dependencyIdentityOsequential_2/random_flip_1/map/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*[
_classQ
OMloc:@sequential_2/random_flip_1/map/while/TensorArrayV2Read/TensorListGetItem*$
_output_shapes
:ААК
@sequential_2/random_flip_1/map/while/flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: С
;sequential_2/random_flip_1/map/while/flip_up_down/ReverseV2	ReverseV2Msequential_2/random_flip_1/map/while/flip_up_down/control_dependency:output:0Isequential_2/random_flip_1/map/while/flip_up_down/ReverseV2/axis:output:0*
T0*$
_output_shapes
:АА╩
Isequential_2/random_flip_1/map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem2sequential_2_random_flip_1_map_while_placeholder_10sequential_2_random_flip_1_map_while_placeholderDsequential_2/random_flip_1/map/while/flip_up_down/ReverseV2:output:0*
_output_shapes
: *
element_dtype0:щш╥l
*sequential_2/random_flip_1/map/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :╣
(sequential_2/random_flip_1/map/while/addAddV20sequential_2_random_flip_1_map_while_placeholder3sequential_2/random_flip_1/map/while/add/y:output:0*
T0*
_output_shapes
: n
,sequential_2/random_flip_1/map/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :у
*sequential_2/random_flip_1/map/while/add_1AddV2Vsequential_2_random_flip_1_map_while_sequential_2_random_flip_1_map_while_loop_counter5sequential_2/random_flip_1/map/while/add_1/y:output:0*
T0*
_output_shapes
: К
-sequential_2/random_flip_1/map/while/IdentityIdentity.sequential_2/random_flip_1/map/while/add_1:z:0*
T0*
_output_shapes
: п
/sequential_2/random_flip_1/map/while/Identity_1IdentityQsequential_2_random_flip_1_map_while_sequential_2_random_flip_1_map_strided_slice*
T0*
_output_shapes
: К
/sequential_2/random_flip_1/map/while/Identity_2Identity,sequential_2/random_flip_1/map/while/add:z:0*
T0*
_output_shapes
: ╖
/sequential_2/random_flip_1/map/while/Identity_3IdentityYsequential_2/random_flip_1/map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: "g
-sequential_2_random_flip_1_map_while_identity6sequential_2/random_flip_1/map/while/Identity:output:0"k
/sequential_2_random_flip_1_map_while_identity_18sequential_2/random_flip_1/map/while/Identity_1:output:0"k
/sequential_2_random_flip_1_map_while_identity_28sequential_2/random_flip_1/map/while/Identity_2:output:0"k
/sequential_2_random_flip_1_map_while_identity_38sequential_2/random_flip_1/map/while/Identity_3:output:0"м
Ssequential_2_random_flip_1_map_while_sequential_2_random_flip_1_map_strided_slice_1Usequential_2_random_flip_1_map_while_sequential_2_random_flip_1_map_strided_slice_1_0"ж
Пsequential_2_random_flip_1_map_while_tensorarrayv2read_tensorlistgetitem_sequential_2_random_flip_1_map_tensorarrayunstack_tensorlistfromtensorСsequential_2_random_flip_1_map_while_tensorarrayv2read_tensorlistgetitem_sequential_2_random_flip_1_map_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : : : : : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Ё
╓
0sequential_2_random_flip_1_map_while_cond_987589Z
Vsequential_2_random_flip_1_map_while_sequential_2_random_flip_1_map_while_loop_counterU
Qsequential_2_random_flip_1_map_while_sequential_2_random_flip_1_map_strided_slice4
0sequential_2_random_flip_1_map_while_placeholder6
2sequential_2_random_flip_1_map_while_placeholder_1Z
Vsequential_2_random_flip_1_map_while_less_sequential_2_random_flip_1_map_strided_slicer
nsequential_2_random_flip_1_map_while_sequential_2_random_flip_1_map_while_cond_987589___redundant_placeholder01
-sequential_2_random_flip_1_map_while_identity
▄
)sequential_2/random_flip_1/map/while/LessLess0sequential_2_random_flip_1_map_while_placeholderVsequential_2_random_flip_1_map_while_less_sequential_2_random_flip_1_map_strided_slice*
T0*
_output_shapes
:  
+sequential_2/random_flip_1/map/while/Less_1LessVsequential_2_random_flip_1_map_while_sequential_2_random_flip_1_map_while_loop_counterQsequential_2_random_flip_1_map_while_sequential_2_random_flip_1_map_strided_slice*
T0*
_output_shapes
: ╡
/sequential_2/random_flip_1/map/while/LogicalAnd
LogicalAnd/sequential_2/random_flip_1/map/while/Less_1:z:0-sequential_2/random_flip_1/map/while/Less:z:0*
_output_shapes
: П
-sequential_2/random_flip_1/map/while/IdentityIdentity3sequential_2/random_flip_1/map/while/LogicalAnd:z:0*
T0
*
_output_shapes
: "g
-sequential_2_random_flip_1_map_while_identity6sequential_2/random_flip_1/map/while/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : :: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:
╦
H
,__inference_random_flip_layer_call_fn_988108

inputs
identity╝
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_random_flip_layer_call_and_return_conditional_losses_986483j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Ф
h
L__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_988026

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
П	
o
H__inference_sequential_2_layer_call_and_return_conditional_losses_986659
random_flip_input
identity╙
random_flip/PartitionedCallPartitionedCallrandom_flip_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_random_flip_layer_call_and_return_conditional_losses_986483ъ
random_flip_1/PartitionedCallPartitionedCall$random_flip/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_random_flip_1_layer_call_and_return_conditional_losses_986489x
IdentityIdentity&random_flip_1/PartitionedCall:output:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:d `
1
_output_shapes
:         АА
+
_user_specified_namerandom_flip_input
Ё
б
*__inference_conv2d_21_layer_call_fn_987945

inputs"
unknown:@А
	unknown_0:	А
identityИвStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_21_layer_call_and_return_conditional_losses_986820x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
є
в
*__inference_conv2d_23_layer_call_fn_988005

inputs#
unknown:А└
	unknown_0:	└
identityИвStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         └*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_23_layer_call_and_return_conditional_losses_986856x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         └`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Ф
h
L__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_987876

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ж
ш
!random_flip_map_while_body_987738<
8random_flip_map_while_random_flip_map_while_loop_counter7
3random_flip_map_while_random_flip_map_strided_slice%
!random_flip_map_while_placeholder'
#random_flip_map_while_placeholder_1;
7random_flip_map_while_random_flip_map_strided_slice_1_0w
srandom_flip_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_map_tensorarrayunstack_tensorlistfromtensor_0"
random_flip_map_while_identity$
 random_flip_map_while_identity_1$
 random_flip_map_while_identity_2$
 random_flip_map_while_identity_39
5random_flip_map_while_random_flip_map_strided_slice_1u
qrandom_flip_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_map_tensorarrayunstack_tensorlistfromtensorЬ
Grandom_flip/map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"А   А      є
9random_flip/map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsrandom_flip_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_map_tensorarrayunstack_tensorlistfromtensor_0!random_flip_map_while_placeholderPrandom_flip/map/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*$
_output_shapes
:АА*
element_dtype0Щ
:random_flip/map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#random_flip_map_while_placeholder_1!random_flip_map_while_placeholder@random_flip/map/while/TensorArrayV2Read/TensorListGetItem:item:0*
_output_shapes
: *
element_dtype0:щш╥]
random_flip/map/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :М
random_flip/map/while/addAddV2!random_flip_map_while_placeholder$random_flip/map/while/add/y:output:0*
T0*
_output_shapes
: _
random_flip/map/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :з
random_flip/map/while/add_1AddV28random_flip_map_while_random_flip_map_while_loop_counter&random_flip/map/while/add_1/y:output:0*
T0*
_output_shapes
: l
random_flip/map/while/IdentityIdentityrandom_flip/map/while/add_1:z:0*
T0*
_output_shapes
: В
 random_flip/map/while/Identity_1Identity3random_flip_map_while_random_flip_map_strided_slice*
T0*
_output_shapes
: l
 random_flip/map/while/Identity_2Identityrandom_flip/map/while/add:z:0*
T0*
_output_shapes
: Щ
 random_flip/map/while/Identity_3IdentityJrandom_flip/map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: "I
random_flip_map_while_identity'random_flip/map/while/Identity:output:0"M
 random_flip_map_while_identity_1)random_flip/map/while/Identity_1:output:0"M
 random_flip_map_while_identity_2)random_flip/map/while/Identity_2:output:0"M
 random_flip_map_while_identity_3)random_flip/map/while/Identity_3:output:0"p
5random_flip_map_while_random_flip_map_strided_slice_17random_flip_map_while_random_flip_map_strided_slice_1_0"ш
qrandom_flip_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_map_tensorarrayunstack_tensorlistfromtensorsrandom_flip_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_map_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : : : : : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Х
c
G__inference_random_flip_layer_call_and_return_conditional_losses_988117

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Х
c
G__inference_random_flip_layer_call_and_return_conditional_losses_986483

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
└
А
E__inference_conv2d_21_layer_call_and_return_conditional_losses_986820

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аy
leaky_re_lu_24/LeakyRelu	LeakyReluBiasAdd:output:0*0
_output_shapes
:         А*
alpha%оGс=~
IdentityIdentity&leaky_re_lu_24/LeakyRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
ф
╪
$__inference_signature_wrapper_987376
sequential_2_input!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@$
	unknown_5:@А
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:А└

unknown_10:	└

unknown_11:
А
А

unknown_12:	А

unknown_13:	А

unknown_14:
identityИвStatefulPartitionedCall¤
StatefulPartitionedCallStatefulPartitionedCallsequential_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference__wrapped_model_986472o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:         АА: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
1
_output_shapes
:         АА
,
_user_specified_namesequential_2_input
╩	
ї
C__inference_outputs_layer_call_and_return_conditional_losses_988103

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
─
Б
E__inference_conv2d_22_layer_call_and_return_conditional_losses_986838

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аy
leaky_re_lu_25/LeakyRelu	LeakyReluBiasAdd:output:0*0
_output_shapes
:         А*
alpha%оGс=~
IdentityIdentity&leaky_re_lu_25/LeakyRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╧
J
.__inference_random_flip_1_layer_call_fn_988181

inputs
identity╛
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_random_flip_1_layer_call_and_return_conditional_losses_986489j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Ї
Я
*__inference_conv2d_18_layer_call_fn_987855

inputs!
unknown:
	unknown_0:
identityИвStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_18_layer_call_and_return_conditional_losses_986766y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         АА`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         АА: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Ц
d
H__inference_sequential_2_layer_call_and_return_conditional_losses_987722

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
ю
T
-__inference_sequential_2_layer_call_fn_986495
random_flip_input
identity╚
PartitionedCallPartitionedCallrandom_flip_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_986492j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:d `
1
_output_shapes
:         АА
+
_user_specified_namerandom_flip_input
Ф
h
L__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_987936

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ф
h
L__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_987906

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
║H
у
H__inference_sequential_4_layer_call_and_return_conditional_losses_987281
sequential_2_input*
conv2d_18_987232:
conv2d_18_987234:*
conv2d_19_987238: 
conv2d_19_987240: *
conv2d_20_987244: @
conv2d_20_987246:@+
conv2d_21_987250:@А
conv2d_21_987252:	А,
conv2d_22_987256:АА
conv2d_22_987258:	А,
conv2d_23_987262:А└
conv2d_23_987264:	└"
dense_3_987270:
А
А
dense_3_987272:	А!
outputs_987275:	А
outputs_987277:
identityИв!conv2d_18/StatefulPartitionedCallв!conv2d_19/StatefulPartitionedCallв!conv2d_20/StatefulPartitionedCallв!conv2d_21/StatefulPartitionedCallв!conv2d_22/StatefulPartitionedCallв!conv2d_23/StatefulPartitionedCallвdense_3/StatefulPartitionedCallвoutputs/StatefulPartitionedCall╓
sequential_2/PartitionedCallPartitionedCallsequential_2_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_986492ч
rescaling_4/PartitionedCallPartitionedCall%sequential_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_rescaling_4_layer_call_and_return_conditional_losses_986753Ь
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall$rescaling_4/PartitionedCall:output:0conv2d_18_987232conv2d_18_987234*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_18_layer_call_and_return_conditional_losses_986766Ї
 max_pooling2d_18/PartitionedCallPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_986674Я
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_18/PartitionedCall:output:0conv2d_19_987238conv2d_19_987240*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_19_layer_call_and_return_conditional_losses_986784Ї
 max_pooling2d_19/PartitionedCallPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_986686Я
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_19/PartitionedCall:output:0conv2d_20_987244conv2d_20_987246*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_20_layer_call_and_return_conditional_losses_986802Ї
 max_pooling2d_20/PartitionedCallPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_986698а
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_20/PartitionedCall:output:0conv2d_21_987250conv2d_21_987252*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_21_layer_call_and_return_conditional_losses_986820ї
 max_pooling2d_21/PartitionedCallPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_986710а
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_21/PartitionedCall:output:0conv2d_22_987256conv2d_22_987258*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_22_layer_call_and_return_conditional_losses_986838ї
 max_pooling2d_22/PartitionedCallPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_986722а
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_22/PartitionedCall:output:0conv2d_23_987262conv2d_23_987264*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         └*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_23_layer_call_and_return_conditional_losses_986856ї
 max_pooling2d_23/PartitionedCallPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         └* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_986734ц
dropout_5/PartitionedCallPartitionedCall)max_pooling2d_23/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         └* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_5_layer_call_and_return_conditional_losses_986868╫
flatten_3/PartitionedCallPartitionedCall"dropout_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_flatten_3_layer_call_and_return_conditional_losses_986876Й
dense_3/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_3_987270dense_3_987272*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_986889О
outputs/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0outputs_987275outputs_987277*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_outputs_layer_call_and_return_conditional_losses_986905w
IdentityIdentity(outputs/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         т
NoOpNoOp"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^outputs/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:         АА: : : : : : : : : : : : : : : : 2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
outputs/StatefulPartitionedCalloutputs/StatefulPartitionedCall:e a
1
_output_shapes
:         АА
,
_user_specified_namesequential_2_input
═
I
-__inference_sequential_2_layer_call_fn_987718

inputs
identity╜
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_986645j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
л4
d
H__inference_sequential_2_layer_call_and_return_conditional_losses_987833

inputs
identityK
random_flip/map/ShapeShapeinputs*
T0*
_output_shapes
:m
#random_flip/map/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%random_flip/map/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%random_flip/map/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
random_flip/map/strided_sliceStridedSlicerandom_flip/map/Shape:output:0,random_flip/map/strided_slice/stack:output:0.random_flip/map/strided_slice/stack_1:output:0.random_flip/map/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+random_flip/map/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         т
random_flip/map/TensorArrayV2TensorListReserve4random_flip/map/TensorArrayV2/element_shape:output:0&random_flip/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ъ
Erandom_flip/map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"А   А      ∙
7random_flip/map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorinputsNrandom_flip/map/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥W
random_flip/map/ConstConst*
_output_shapes
: *
dtype0*
value	B : x
-random_flip/map/TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ц
random_flip/map/TensorArrayV2_1TensorListReserve6random_flip/map/TensorArrayV2_1/element_shape:output:0&random_flip/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥d
"random_flip/map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ц
random_flip/map/whileStatelessWhile+random_flip/map/while/loop_counter:output:0&random_flip/map/strided_slice:output:0random_flip/map/Const:output:0(random_flip/map/TensorArrayV2_1:handle:0&random_flip/map/strided_slice:output:0Grandom_flip/map/TensorArrayUnstack/TensorListFromTensor:output_handle:0*
T

2*
_lower_using_switch_merge(*
_num_original_outputs* 
_output_shapes
: : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( *-
body%R#
!random_flip_map_while_body_987738*-
cond%R#
!random_flip_map_while_cond_987737*
output_shapes
: : : : : : Х
@random_flip/map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"А   А      °
2random_flip/map/TensorArrayV2Stack/TensorListStackTensorListStackrandom_flip/map/while:output:3Irandom_flip/map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*1
_output_shapes
:         АА*
element_dtype0В
random_flip_1/map/ShapeShape;random_flip/map/TensorArrayV2Stack/TensorListStack:tensor:0*
T0*
_output_shapes
:o
%random_flip_1/map/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'random_flip_1/map/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'random_flip_1/map/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
random_flip_1/map/strided_sliceStridedSlice random_flip_1/map/Shape:output:0.random_flip_1/map/strided_slice/stack:output:00random_flip_1/map/strided_slice/stack_1:output:00random_flip_1/map/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
-random_flip_1/map/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ш
random_flip_1/map/TensorArrayV2TensorListReserve6random_flip_1/map/TensorArrayV2/element_shape:output:0(random_flip_1/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ь
Grandom_flip_1/map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"А   А      ▓
9random_flip_1/map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor;random_flip/map/TensorArrayV2Stack/TensorListStack:tensor:0Prandom_flip_1/map/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Y
random_flip_1/map/ConstConst*
_output_shapes
: *
dtype0*
value	B : z
/random_flip_1/map/TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ь
!random_flip_1/map/TensorArrayV2_1TensorListReserve8random_flip_1/map/TensorArrayV2_1/element_shape:output:0(random_flip_1/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥f
$random_flip_1/map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : °
random_flip_1/map/whileStatelessWhile-random_flip_1/map/while/loop_counter:output:0(random_flip_1/map/strided_slice:output:0 random_flip_1/map/Const:output:0*random_flip_1/map/TensorArrayV2_1:handle:0(random_flip_1/map/strided_slice:output:0Irandom_flip_1/map/TensorArrayUnstack/TensorListFromTensor:output_handle:0*
T

2*
_lower_using_switch_merge(*
_num_original_outputs* 
_output_shapes
: : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( */
body'R%
#random_flip_1_map_while_body_987790*/
cond'R%
#random_flip_1_map_while_cond_987789*
output_shapes
: : : : : : Ч
Brandom_flip_1/map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"А   А      ■
4random_flip_1/map/TensorArrayV2Stack/TensorListStackTensorListStack random_flip_1/map/while:output:3Krandom_flip_1/map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*1
_output_shapes
:         АА*
element_dtype0П
IdentityIdentity=random_flip_1/map/TensorArrayV2Stack/TensorListStack:tensor:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
├
F
*__inference_dropout_5_layer_call_fn_988031

inputs
identity╣
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         └* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_5_layer_call_and_return_conditional_losses_986868i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         └"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         └:X T
0
_output_shapes
:         └
 
_user_specified_nameinputs
╨o
ш
!__inference__wrapped_model_986472
sequential_2_inputO
5sequential_4_conv2d_18_conv2d_readvariableop_resource:D
6sequential_4_conv2d_18_biasadd_readvariableop_resource:O
5sequential_4_conv2d_19_conv2d_readvariableop_resource: D
6sequential_4_conv2d_19_biasadd_readvariableop_resource: O
5sequential_4_conv2d_20_conv2d_readvariableop_resource: @D
6sequential_4_conv2d_20_biasadd_readvariableop_resource:@P
5sequential_4_conv2d_21_conv2d_readvariableop_resource:@АE
6sequential_4_conv2d_21_biasadd_readvariableop_resource:	АQ
5sequential_4_conv2d_22_conv2d_readvariableop_resource:ААE
6sequential_4_conv2d_22_biasadd_readvariableop_resource:	АQ
5sequential_4_conv2d_23_conv2d_readvariableop_resource:А└E
6sequential_4_conv2d_23_biasadd_readvariableop_resource:	└G
3sequential_4_dense_3_matmul_readvariableop_resource:
А
АC
4sequential_4_dense_3_biasadd_readvariableop_resource:	АF
3sequential_4_outputs_matmul_readvariableop_resource:	АB
4sequential_4_outputs_biasadd_readvariableop_resource:
identityИв-sequential_4/conv2d_18/BiasAdd/ReadVariableOpв,sequential_4/conv2d_18/Conv2D/ReadVariableOpв-sequential_4/conv2d_19/BiasAdd/ReadVariableOpв,sequential_4/conv2d_19/Conv2D/ReadVariableOpв-sequential_4/conv2d_20/BiasAdd/ReadVariableOpв,sequential_4/conv2d_20/Conv2D/ReadVariableOpв-sequential_4/conv2d_21/BiasAdd/ReadVariableOpв,sequential_4/conv2d_21/Conv2D/ReadVariableOpв-sequential_4/conv2d_22/BiasAdd/ReadVariableOpв,sequential_4/conv2d_22/Conv2D/ReadVariableOpв-sequential_4/conv2d_23/BiasAdd/ReadVariableOpв,sequential_4/conv2d_23/Conv2D/ReadVariableOpв+sequential_4/dense_3/BiasAdd/ReadVariableOpв*sequential_4/dense_3/MatMul/ReadVariableOpв+sequential_4/outputs/BiasAdd/ReadVariableOpв*sequential_4/outputs/MatMul/ReadVariableOpd
sequential_4/rescaling_4/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;f
!sequential_4/rescaling_4/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    Э
sequential_4/rescaling_4/mulMulsequential_2_input(sequential_4/rescaling_4/Cast/x:output:0*
T0*1
_output_shapes
:         ААп
sequential_4/rescaling_4/addAddV2 sequential_4/rescaling_4/mul:z:0*sequential_4/rescaling_4/Cast_1/x:output:0*
T0*1
_output_shapes
:         ААк
,sequential_4/conv2d_18/Conv2D/ReadVariableOpReadVariableOp5sequential_4_conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0у
sequential_4/conv2d_18/Conv2DConv2D sequential_4/rescaling_4/add:z:04sequential_4/conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
а
-sequential_4/conv2d_18/BiasAdd/ReadVariableOpReadVariableOp6sequential_4_conv2d_18_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0─
sequential_4/conv2d_18/BiasAddBiasAdd&sequential_4/conv2d_18/Conv2D:output:05sequential_4/conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ААи
/sequential_4/conv2d_18/leaky_re_lu_21/LeakyRelu	LeakyRelu'sequential_4/conv2d_18/BiasAdd:output:0*1
_output_shapes
:         АА*
alpha%оGс=▄
%sequential_4/max_pooling2d_18/MaxPoolMaxPool=sequential_4/conv2d_18/leaky_re_lu_21/LeakyRelu:activations:0*/
_output_shapes
:         @@*
ksize
*
paddingVALID*
strides
к
,sequential_4/conv2d_19/Conv2D/ReadVariableOpReadVariableOp5sequential_4_conv2d_19_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0я
sequential_4/conv2d_19/Conv2DConv2D.sequential_4/max_pooling2d_18/MaxPool:output:04sequential_4/conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@ *
paddingSAME*
strides
а
-sequential_4/conv2d_19/BiasAdd/ReadVariableOpReadVariableOp6sequential_4_conv2d_19_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0┬
sequential_4/conv2d_19/BiasAddBiasAdd&sequential_4/conv2d_19/Conv2D:output:05sequential_4/conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@ ж
/sequential_4/conv2d_19/leaky_re_lu_22/LeakyRelu	LeakyRelu'sequential_4/conv2d_19/BiasAdd:output:0*/
_output_shapes
:         @@ *
alpha%оGс=▄
%sequential_4/max_pooling2d_19/MaxPoolMaxPool=sequential_4/conv2d_19/leaky_re_lu_22/LeakyRelu:activations:0*/
_output_shapes
:            *
ksize
*
paddingVALID*
strides
к
,sequential_4/conv2d_20/Conv2D/ReadVariableOpReadVariableOp5sequential_4_conv2d_20_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0я
sequential_4/conv2d_20/Conv2DConv2D.sequential_4/max_pooling2d_19/MaxPool:output:04sequential_4/conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:           @*
paddingSAME*
strides
а
-sequential_4/conv2d_20/BiasAdd/ReadVariableOpReadVariableOp6sequential_4_conv2d_20_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0┬
sequential_4/conv2d_20/BiasAddBiasAdd&sequential_4/conv2d_20/Conv2D:output:05sequential_4/conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:           @ж
/sequential_4/conv2d_20/leaky_re_lu_23/LeakyRelu	LeakyRelu'sequential_4/conv2d_20/BiasAdd:output:0*/
_output_shapes
:           @*
alpha%оGс=▄
%sequential_4/max_pooling2d_20/MaxPoolMaxPool=sequential_4/conv2d_20/leaky_re_lu_23/LeakyRelu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
л
,sequential_4/conv2d_21/Conv2D/ReadVariableOpReadVariableOp5sequential_4_conv2d_21_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Ё
sequential_4/conv2d_21/Conv2DConv2D.sequential_4/max_pooling2d_20/MaxPool:output:04sequential_4/conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
б
-sequential_4/conv2d_21/BiasAdd/ReadVariableOpReadVariableOp6sequential_4_conv2d_21_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0├
sequential_4/conv2d_21/BiasAddBiasAdd&sequential_4/conv2d_21/Conv2D:output:05sequential_4/conv2d_21/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аз
/sequential_4/conv2d_21/leaky_re_lu_24/LeakyRelu	LeakyRelu'sequential_4/conv2d_21/BiasAdd:output:0*0
_output_shapes
:         А*
alpha%оGс=▌
%sequential_4/max_pooling2d_21/MaxPoolMaxPool=sequential_4/conv2d_21/leaky_re_lu_24/LeakyRelu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
м
,sequential_4/conv2d_22/Conv2D/ReadVariableOpReadVariableOp5sequential_4_conv2d_22_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ё
sequential_4/conv2d_22/Conv2DConv2D.sequential_4/max_pooling2d_21/MaxPool:output:04sequential_4/conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
б
-sequential_4/conv2d_22/BiasAdd/ReadVariableOpReadVariableOp6sequential_4_conv2d_22_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0├
sequential_4/conv2d_22/BiasAddBiasAdd&sequential_4/conv2d_22/Conv2D:output:05sequential_4/conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аз
/sequential_4/conv2d_22/leaky_re_lu_25/LeakyRelu	LeakyRelu'sequential_4/conv2d_22/BiasAdd:output:0*0
_output_shapes
:         А*
alpha%оGс=▌
%sequential_4/max_pooling2d_22/MaxPoolMaxPool=sequential_4/conv2d_22/leaky_re_lu_25/LeakyRelu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
м
,sequential_4/conv2d_23/Conv2D/ReadVariableOpReadVariableOp5sequential_4_conv2d_23_conv2d_readvariableop_resource*(
_output_shapes
:А└*
dtype0Ё
sequential_4/conv2d_23/Conv2DConv2D.sequential_4/max_pooling2d_22/MaxPool:output:04sequential_4/conv2d_23/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         └*
paddingSAME*
strides
б
-sequential_4/conv2d_23/BiasAdd/ReadVariableOpReadVariableOp6sequential_4_conv2d_23_biasadd_readvariableop_resource*
_output_shapes	
:└*
dtype0├
sequential_4/conv2d_23/BiasAddBiasAdd&sequential_4/conv2d_23/Conv2D:output:05sequential_4/conv2d_23/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         └з
/sequential_4/conv2d_23/leaky_re_lu_26/LeakyRelu	LeakyRelu'sequential_4/conv2d_23/BiasAdd:output:0*0
_output_shapes
:         └*
alpha%оGс=▌
%sequential_4/max_pooling2d_23/MaxPoolMaxPool=sequential_4/conv2d_23/leaky_re_lu_26/LeakyRelu:activations:0*0
_output_shapes
:         └*
ksize
*
paddingVALID*
strides
Ц
sequential_4/dropout_5/IdentityIdentity.sequential_4/max_pooling2d_23/MaxPool:output:0*
T0*0
_output_shapes
:         └m
sequential_4/flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"       н
sequential_4/flatten_3/ReshapeReshape(sequential_4/dropout_5/Identity:output:0%sequential_4/flatten_3/Const:output:0*
T0*(
_output_shapes
:         А
а
*sequential_4/dense_3/MatMul/ReadVariableOpReadVariableOp3sequential_4_dense_3_matmul_readvariableop_resource* 
_output_shapes
:
А
А*
dtype0╡
sequential_4/dense_3/MatMulMatMul'sequential_4/flatten_3/Reshape:output:02sequential_4/dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЭ
+sequential_4/dense_3/BiasAdd/ReadVariableOpReadVariableOp4sequential_4_dense_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╢
sequential_4/dense_3/BiasAddBiasAdd%sequential_4/dense_3/MatMul:product:03sequential_4/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЫ
-sequential_4/dense_3/leaky_re_lu_27/LeakyRelu	LeakyRelu%sequential_4/dense_3/BiasAdd:output:0*(
_output_shapes
:         А*
alpha%оGс=Я
*sequential_4/outputs/MatMul/ReadVariableOpReadVariableOp3sequential_4_outputs_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0╚
sequential_4/outputs/MatMulMatMul;sequential_4/dense_3/leaky_re_lu_27/LeakyRelu:activations:02sequential_4/outputs/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Ь
+sequential_4/outputs/BiasAdd/ReadVariableOpReadVariableOp4sequential_4_outputs_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╡
sequential_4/outputs/BiasAddBiasAdd%sequential_4/outputs/MatMul:product:03sequential_4/outputs/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         t
IdentityIdentity%sequential_4/outputs/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         ╢
NoOpNoOp.^sequential_4/conv2d_18/BiasAdd/ReadVariableOp-^sequential_4/conv2d_18/Conv2D/ReadVariableOp.^sequential_4/conv2d_19/BiasAdd/ReadVariableOp-^sequential_4/conv2d_19/Conv2D/ReadVariableOp.^sequential_4/conv2d_20/BiasAdd/ReadVariableOp-^sequential_4/conv2d_20/Conv2D/ReadVariableOp.^sequential_4/conv2d_21/BiasAdd/ReadVariableOp-^sequential_4/conv2d_21/Conv2D/ReadVariableOp.^sequential_4/conv2d_22/BiasAdd/ReadVariableOp-^sequential_4/conv2d_22/Conv2D/ReadVariableOp.^sequential_4/conv2d_23/BiasAdd/ReadVariableOp-^sequential_4/conv2d_23/Conv2D/ReadVariableOp,^sequential_4/dense_3/BiasAdd/ReadVariableOp+^sequential_4/dense_3/MatMul/ReadVariableOp,^sequential_4/outputs/BiasAdd/ReadVariableOp+^sequential_4/outputs/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:         АА: : : : : : : : : : : : : : : : 2^
-sequential_4/conv2d_18/BiasAdd/ReadVariableOp-sequential_4/conv2d_18/BiasAdd/ReadVariableOp2\
,sequential_4/conv2d_18/Conv2D/ReadVariableOp,sequential_4/conv2d_18/Conv2D/ReadVariableOp2^
-sequential_4/conv2d_19/BiasAdd/ReadVariableOp-sequential_4/conv2d_19/BiasAdd/ReadVariableOp2\
,sequential_4/conv2d_19/Conv2D/ReadVariableOp,sequential_4/conv2d_19/Conv2D/ReadVariableOp2^
-sequential_4/conv2d_20/BiasAdd/ReadVariableOp-sequential_4/conv2d_20/BiasAdd/ReadVariableOp2\
,sequential_4/conv2d_20/Conv2D/ReadVariableOp,sequential_4/conv2d_20/Conv2D/ReadVariableOp2^
-sequential_4/conv2d_21/BiasAdd/ReadVariableOp-sequential_4/conv2d_21/BiasAdd/ReadVariableOp2\
,sequential_4/conv2d_21/Conv2D/ReadVariableOp,sequential_4/conv2d_21/Conv2D/ReadVariableOp2^
-sequential_4/conv2d_22/BiasAdd/ReadVariableOp-sequential_4/conv2d_22/BiasAdd/ReadVariableOp2\
,sequential_4/conv2d_22/Conv2D/ReadVariableOp,sequential_4/conv2d_22/Conv2D/ReadVariableOp2^
-sequential_4/conv2d_23/BiasAdd/ReadVariableOp-sequential_4/conv2d_23/BiasAdd/ReadVariableOp2\
,sequential_4/conv2d_23/Conv2D/ReadVariableOp,sequential_4/conv2d_23/Conv2D/ReadVariableOp2Z
+sequential_4/dense_3/BiasAdd/ReadVariableOp+sequential_4/dense_3/BiasAdd/ReadVariableOp2X
*sequential_4/dense_3/MatMul/ReadVariableOp*sequential_4/dense_3/MatMul/ReadVariableOp2Z
+sequential_4/outputs/BiasAdd/ReadVariableOp+sequential_4/outputs/BiasAdd/ReadVariableOp2X
*sequential_4/outputs/MatMul/ReadVariableOp*sequential_4/outputs/MatMul/ReadVariableOp:e a
1
_output_shapes
:         АА
,
_user_specified_namesequential_2_input"Ж
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╩
serving_default╢
[
sequential_2_inputE
$serving_default_sequential_2_input:0         АА;
outputs0
StatefulPartitionedCall:0         tensorflow/serving/predict:─ж
и
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer-9
layer_with_weights-4
layer-10
layer-11
layer_with_weights-5
layer-12
layer-13
layer-14
layer-15
layer_with_weights-6
layer-16
layer_with_weights-7
layer-17
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
─
layer-0
layer-1
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses"
_tf_keras_sequential
е
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses"
_tf_keras_layer
э
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses
0
activation

1kernel
2bias
 3_jit_compiled_convolution_op"
_tf_keras_layer
е
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses"
_tf_keras_layer
э
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses
@
activation

Akernel
Bbias
 C_jit_compiled_convolution_op"
_tf_keras_layer
е
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses"
_tf_keras_layer
э
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses
P
activation

Qkernel
Rbias
 S_jit_compiled_convolution_op"
_tf_keras_layer
е
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses"
_tf_keras_layer
э
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses
`
activation

akernel
bbias
 c_jit_compiled_convolution_op"
_tf_keras_layer
е
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h__call__
*i&call_and_return_all_conditional_losses"
_tf_keras_layer
э
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
n__call__
*o&call_and_return_all_conditional_losses
p
activation

qkernel
rbias
 s_jit_compiled_convolution_op"
_tf_keras_layer
е
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses"
_tf_keras_layer
ё
z	variables
{trainable_variables
|regularization_losses
}	keras_api
~__call__
*&call_and_return_all_conditional_losses
А
activation
Бkernel
	Вbias
!Г_jit_compiled_convolution_op"
_tf_keras_layer
л
Д	variables
Еtrainable_variables
Жregularization_losses
З	keras_api
И__call__
+Й&call_and_return_all_conditional_losses"
_tf_keras_layer
├
К	variables
Лtrainable_variables
Мregularization_losses
Н	keras_api
О__call__
+П&call_and_return_all_conditional_losses
Р_random_generator"
_tf_keras_layer
л
С	variables
Тtrainable_variables
Уregularization_losses
Ф	keras_api
Х__call__
+Ц&call_and_return_all_conditional_losses"
_tf_keras_layer
╘
Ч	variables
Шtrainable_variables
Щregularization_losses
Ъ	keras_api
Ы__call__
+Ь&call_and_return_all_conditional_losses
Э
activation
Юkernel
	Яbias"
_tf_keras_layer
├
а	variables
бtrainable_variables
вregularization_losses
г	keras_api
д__call__
+е&call_and_return_all_conditional_losses
жkernel
	зbias"
_tf_keras_layer
Ь
10
21
A2
B3
Q4
R5
a6
b7
q8
r9
Б10
В11
Ю12
Я13
ж14
з15"
trackable_list_wrapper
Ь
10
21
A2
B3
Q4
R5
a6
b7
q8
r9
Б10
В11
Ю12
Я13
ж14
з15"
trackable_list_wrapper
 "
trackable_list_wrapper
╧
иnon_trainable_variables
йlayers
кmetrics
 лlayer_regularization_losses
мlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ё
нtrace_0
оtrace_1
пtrace_2
░trace_32■
-__inference_sequential_4_layer_call_fn_986947
-__inference_sequential_4_layer_call_fn_987413
-__inference_sequential_4_layer_call_fn_987450
-__inference_sequential_4_layer_call_fn_987227┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zнtrace_0zоtrace_1zпtrace_2z░trace_3
▌
▒trace_0
▓trace_1
│trace_2
┤trace_32ъ
H__inference_sequential_4_layer_call_and_return_conditional_losses_987522
H__inference_sequential_4_layer_call_and_return_conditional_losses_987708
H__inference_sequential_4_layer_call_and_return_conditional_losses_987281
H__inference_sequential_4_layer_call_and_return_conditional_losses_987335┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z▒trace_0z▓trace_1z│trace_2z┤trace_3
╫B╘
!__inference__wrapped_model_986472sequential_2_input"Ш
С▓Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
г
╡
_variables
╢_iterations
╖_learning_rate
╕_index_dict
╣
_momentums
║_velocities
╗_update_step_xla"
experimentalOptimizer
-
╝serving_default"
signature_map
├
╜	variables
╛trainable_variables
┐regularization_losses
└	keras_api
┴__call__
+┬&call_and_return_all_conditional_losses
├_random_generator"
_tf_keras_layer
├
─	variables
┼trainable_variables
╞regularization_losses
╟	keras_api
╚__call__
+╔&call_and_return_all_conditional_losses
╩_random_generator"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╦non_trainable_variables
╠layers
═metrics
 ╬layer_regularization_losses
╧layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
ё
╨trace_0
╤trace_1
╥trace_2
╙trace_32■
-__inference_sequential_2_layer_call_fn_986495
-__inference_sequential_2_layer_call_fn_987713
-__inference_sequential_2_layer_call_fn_987718
-__inference_sequential_2_layer_call_fn_986653┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╨trace_0z╤trace_1z╥trace_2z╙trace_3
▌
╘trace_0
╒trace_1
╓trace_2
╫trace_32ъ
H__inference_sequential_2_layer_call_and_return_conditional_losses_987722
H__inference_sequential_2_layer_call_and_return_conditional_losses_987833
H__inference_sequential_2_layer_call_and_return_conditional_losses_986659
H__inference_sequential_2_layer_call_and_return_conditional_losses_986665┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╘trace_0z╒trace_1z╓trace_2z╫trace_3
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╪non_trainable_variables
┘layers
┌metrics
 █layer_regularization_losses
▄layer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
Є
▌trace_02╙
,__inference_rescaling_4_layer_call_fn_987838в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z▌trace_0
Н
▐trace_02ю
G__inference_rescaling_4_layer_call_and_return_conditional_losses_987846в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z▐trace_0
.
10
21"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
▀non_trainable_variables
рlayers
сmetrics
 тlayer_regularization_losses
уlayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
Ё
фtrace_02╤
*__inference_conv2d_18_layer_call_fn_987855в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zфtrace_0
Л
хtrace_02ь
E__inference_conv2d_18_layer_call_and_return_conditional_losses_987866в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zхtrace_0
л
ц	variables
чtrainable_variables
шregularization_losses
щ	keras_api
ъ__call__
+ы&call_and_return_all_conditional_losses"
_tf_keras_layer
*:(2conv2d_18/kernel
:2conv2d_18/bias
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
ьnon_trainable_variables
эlayers
юmetrics
 яlayer_regularization_losses
Ёlayer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
ў
ёtrace_02╪
1__inference_max_pooling2d_18_layer_call_fn_987871в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zёtrace_0
Т
Єtrace_02є
L__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_987876в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЄtrace_0
.
A0
B1"
trackable_list_wrapper
.
A0
B1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
єnon_trainable_variables
Їlayers
їmetrics
 Ўlayer_regularization_losses
ўlayer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
Ё
°trace_02╤
*__inference_conv2d_19_layer_call_fn_987885в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z°trace_0
Л
∙trace_02ь
E__inference_conv2d_19_layer_call_and_return_conditional_losses_987896в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z∙trace_0
л
·	variables
√trainable_variables
№regularization_losses
¤	keras_api
■__call__
+ &call_and_return_all_conditional_losses"
_tf_keras_layer
*:( 2conv2d_19/kernel
: 2conv2d_19/bias
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses"
_generic_user_object
ў
Еtrace_02╪
1__inference_max_pooling2d_19_layer_call_fn_987901в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЕtrace_0
Т
Жtrace_02є
L__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_987906в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЖtrace_0
.
Q0
R1"
trackable_list_wrapper
.
Q0
R1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Зnon_trainable_variables
Иlayers
Йmetrics
 Кlayer_regularization_losses
Лlayer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses"
_generic_user_object
Ё
Мtrace_02╤
*__inference_conv2d_20_layer_call_fn_987915в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zМtrace_0
Л
Нtrace_02ь
E__inference_conv2d_20_layer_call_and_return_conditional_losses_987926в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zНtrace_0
л
О	variables
Пtrainable_variables
Рregularization_losses
С	keras_api
Т__call__
+У&call_and_return_all_conditional_losses"
_tf_keras_layer
*:( @2conv2d_20/kernel
:@2conv2d_20/bias
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Фnon_trainable_variables
Хlayers
Цmetrics
 Чlayer_regularization_losses
Шlayer_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses"
_generic_user_object
ў
Щtrace_02╪
1__inference_max_pooling2d_20_layer_call_fn_987931в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЩtrace_0
Т
Ъtrace_02є
L__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_987936в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЪtrace_0
.
a0
b1"
trackable_list_wrapper
.
a0
b1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Ыnon_trainable_variables
Ьlayers
Эmetrics
 Юlayer_regularization_losses
Яlayer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses"
_generic_user_object
Ё
аtrace_02╤
*__inference_conv2d_21_layer_call_fn_987945в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zаtrace_0
Л
бtrace_02ь
E__inference_conv2d_21_layer_call_and_return_conditional_losses_987956в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zбtrace_0
л
в	variables
гtrainable_variables
дregularization_losses
е	keras_api
ж__call__
+з&call_and_return_all_conditional_losses"
_tf_keras_layer
+:)@А2conv2d_21/kernel
:А2conv2d_21/bias
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
иnon_trainable_variables
йlayers
кmetrics
 лlayer_regularization_losses
мlayer_metrics
d	variables
etrainable_variables
fregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses"
_generic_user_object
ў
нtrace_02╪
1__inference_max_pooling2d_21_layer_call_fn_987961в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zнtrace_0
Т
оtrace_02є
L__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_987966в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zоtrace_0
.
q0
r1"
trackable_list_wrapper
.
q0
r1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
пnon_trainable_variables
░layers
▒metrics
 ▓layer_regularization_losses
│layer_metrics
j	variables
ktrainable_variables
lregularization_losses
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses"
_generic_user_object
Ё
┤trace_02╤
*__inference_conv2d_22_layer_call_fn_987975в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z┤trace_0
Л
╡trace_02ь
E__inference_conv2d_22_layer_call_and_return_conditional_losses_987986в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╡trace_0
л
╢	variables
╖trainable_variables
╕regularization_losses
╣	keras_api
║__call__
+╗&call_and_return_all_conditional_losses"
_tf_keras_layer
,:*АА2conv2d_22/kernel
:А2conv2d_22/bias
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╝non_trainable_variables
╜layers
╛metrics
 ┐layer_regularization_losses
└layer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object
ў
┴trace_02╪
1__inference_max_pooling2d_22_layer_call_fn_987991в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z┴trace_0
Т
┬trace_02є
L__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_987996в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z┬trace_0
0
Б0
В1"
trackable_list_wrapper
0
Б0
В1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
├non_trainable_variables
─layers
┼metrics
 ╞layer_regularization_losses
╟layer_metrics
z	variables
{trainable_variables
|regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ё
╚trace_02╤
*__inference_conv2d_23_layer_call_fn_988005в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╚trace_0
Л
╔trace_02ь
E__inference_conv2d_23_layer_call_and_return_conditional_losses_988016в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╔trace_0
л
╩	variables
╦trainable_variables
╠regularization_losses
═	keras_api
╬__call__
+╧&call_and_return_all_conditional_losses"
_tf_keras_layer
,:*А└2conv2d_23/kernel
:└2conv2d_23/bias
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╨non_trainable_variables
╤layers
╥metrics
 ╙layer_regularization_losses
╘layer_metrics
Д	variables
Еtrainable_variables
Жregularization_losses
И__call__
+Й&call_and_return_all_conditional_losses
'Й"call_and_return_conditional_losses"
_generic_user_object
ў
╒trace_02╪
1__inference_max_pooling2d_23_layer_call_fn_988021в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╒trace_0
Т
╓trace_02є
L__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_988026в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╓trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╫non_trainable_variables
╪layers
┘metrics
 ┌layer_regularization_losses
█layer_metrics
К	variables
Лtrainable_variables
Мregularization_losses
О__call__
+П&call_and_return_all_conditional_losses
'П"call_and_return_conditional_losses"
_generic_user_object
╔
▄trace_0
▌trace_12О
*__inference_dropout_5_layer_call_fn_988031
*__inference_dropout_5_layer_call_fn_988036│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z▄trace_0z▌trace_1
 
▐trace_0
▀trace_12─
E__inference_dropout_5_layer_call_and_return_conditional_losses_988041
E__inference_dropout_5_layer_call_and_return_conditional_losses_988053│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z▐trace_0z▀trace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
рnon_trainable_variables
сlayers
тmetrics
 уlayer_regularization_losses
фlayer_metrics
С	variables
Тtrainable_variables
Уregularization_losses
Х__call__
+Ц&call_and_return_all_conditional_losses
'Ц"call_and_return_conditional_losses"
_generic_user_object
Ё
хtrace_02╤
*__inference_flatten_3_layer_call_fn_988058в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zхtrace_0
Л
цtrace_02ь
E__inference_flatten_3_layer_call_and_return_conditional_losses_988064в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zцtrace_0
0
Ю0
Я1"
trackable_list_wrapper
0
Ю0
Я1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
чnon_trainable_variables
шlayers
щmetrics
 ъlayer_regularization_losses
ыlayer_metrics
Ч	variables
Шtrainable_variables
Щregularization_losses
Ы__call__
+Ь&call_and_return_all_conditional_losses
'Ь"call_and_return_conditional_losses"
_generic_user_object
ю
ьtrace_02╧
(__inference_dense_3_layer_call_fn_988073в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zьtrace_0
Й
эtrace_02ъ
C__inference_dense_3_layer_call_and_return_conditional_losses_988084в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zэtrace_0
л
ю	variables
яtrainable_variables
Ёregularization_losses
ё	keras_api
Є__call__
+є&call_and_return_all_conditional_losses"
_tf_keras_layer
": 
А
А2dense_3/kernel
:А2dense_3/bias
0
ж0
з1"
trackable_list_wrapper
0
ж0
з1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Їnon_trainable_variables
їlayers
Ўmetrics
 ўlayer_regularization_losses
°layer_metrics
а	variables
бtrainable_variables
вregularization_losses
д__call__
+е&call_and_return_all_conditional_losses
'е"call_and_return_conditional_losses"
_generic_user_object
ю
∙trace_02╧
(__inference_outputs_layer_call_fn_988093в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z∙trace_0
Й
·trace_02ъ
C__inference_outputs_layer_call_and_return_conditional_losses_988103в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z·trace_0
!:	А2outputs/kernel
:2outputs/bias
 "
trackable_list_wrapper
ж
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17"
trackable_list_wrapper
0
√0
№1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
КBЗ
-__inference_sequential_4_layer_call_fn_986947sequential_2_input"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
■B√
-__inference_sequential_4_layer_call_fn_987413inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
■B√
-__inference_sequential_4_layer_call_fn_987450inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
КBЗ
-__inference_sequential_4_layer_call_fn_987227sequential_2_input"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЩBЦ
H__inference_sequential_4_layer_call_and_return_conditional_losses_987522inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЩBЦ
H__inference_sequential_4_layer_call_and_return_conditional_losses_987708inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
еBв
H__inference_sequential_4_layer_call_and_return_conditional_losses_987281sequential_2_input"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
еBв
H__inference_sequential_4_layer_call_and_return_conditional_losses_987335sequential_2_input"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
┐
╢0
¤1
■2
 3
А4
Б5
В6
Г7
Д8
Е9
Ж10
З11
И12
Й13
К14
Л15
М16
Н17
О18
П19
Р20
С21
Т22
У23
Ф24
Х25
Ц26
Ч27
Ш28
Щ29
Ъ30
Ы31
Ь32"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
ж
¤0
 1
Б2
Г3
Е4
З5
Й6
Л7
Н8
П9
С10
У11
Х12
Ч13
Щ14
Ы15"
trackable_list_wrapper
ж
■0
А1
В2
Д3
Ж4
И5
К6
М7
О8
Р9
Т10
Ф11
Ц12
Ш13
Ъ14
Ь15"
trackable_list_wrapper
┐2╝╣
о▓к
FullArgSpec2
args*Ъ'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
╓B╙
$__inference_signature_wrapper_987376sequential_2_input"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Эnon_trainable_variables
Юlayers
Яmetrics
 аlayer_regularization_losses
бlayer_metrics
╜	variables
╛trainable_variables
┐regularization_losses
┴__call__
+┬&call_and_return_all_conditional_losses
'┬"call_and_return_conditional_losses"
_generic_user_object
═
вtrace_0
гtrace_12Т
,__inference_random_flip_layer_call_fn_988108
,__inference_random_flip_layer_call_fn_988113│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zвtrace_0zгtrace_1
Г
дtrace_0
еtrace_12╚
G__inference_random_flip_layer_call_and_return_conditional_losses_988117
G__inference_random_flip_layer_call_and_return_conditional_losses_988176│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zдtrace_0zеtrace_1
/
ж
_generator"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
зnon_trainable_variables
иlayers
йmetrics
 кlayer_regularization_losses
лlayer_metrics
─	variables
┼trainable_variables
╞regularization_losses
╚__call__
+╔&call_and_return_all_conditional_losses
'╔"call_and_return_conditional_losses"
_generic_user_object
╤
мtrace_0
нtrace_12Ц
.__inference_random_flip_1_layer_call_fn_988181
.__inference_random_flip_1_layer_call_fn_988186│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zмtrace_0zнtrace_1
З
оtrace_0
пtrace_12╠
I__inference_random_flip_1_layer_call_and_return_conditional_losses_988190
I__inference_random_flip_1_layer_call_and_return_conditional_losses_988249│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zоtrace_0zпtrace_1
/
░
_generator"
_generic_user_object
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЙBЖ
-__inference_sequential_2_layer_call_fn_986495random_flip_input"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
■B√
-__inference_sequential_2_layer_call_fn_987713inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
■B√
-__inference_sequential_2_layer_call_fn_987718inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЙBЖ
-__inference_sequential_2_layer_call_fn_986653random_flip_input"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЩBЦ
H__inference_sequential_2_layer_call_and_return_conditional_losses_987722inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЩBЦ
H__inference_sequential_2_layer_call_and_return_conditional_losses_987833inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
дBб
H__inference_sequential_2_layer_call_and_return_conditional_losses_986659random_flip_input"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
дBб
H__inference_sequential_2_layer_call_and_return_conditional_losses_986665random_flip_input"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
рB▌
,__inference_rescaling_4_layer_call_fn_987838inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
√B°
G__inference_rescaling_4_layer_call_and_return_conditional_losses_987846inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
'
00"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
▐B█
*__inference_conv2d_18_layer_call_fn_987855inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
∙BЎ
E__inference_conv2d_18_layer_call_and_return_conditional_losses_987866inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
▒non_trainable_variables
▓layers
│metrics
 ┤layer_regularization_losses
╡layer_metrics
ц	variables
чtrainable_variables
шregularization_losses
ъ__call__
+ы&call_and_return_all_conditional_losses
'ы"call_and_return_conditional_losses"
_generic_user_object
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
хBт
1__inference_max_pooling2d_18_layer_call_fn_987871inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
АB¤
L__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_987876inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
'
@0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
▐B█
*__inference_conv2d_19_layer_call_fn_987885inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
∙BЎ
E__inference_conv2d_19_layer_call_and_return_conditional_losses_987896inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╢non_trainable_variables
╖layers
╕metrics
 ╣layer_regularization_losses
║layer_metrics
·	variables
√trainable_variables
№regularization_losses
■__call__
+ &call_and_return_all_conditional_losses
' "call_and_return_conditional_losses"
_generic_user_object
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
хBт
1__inference_max_pooling2d_19_layer_call_fn_987901inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
АB¤
L__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_987906inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
'
P0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
▐B█
*__inference_conv2d_20_layer_call_fn_987915inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
∙BЎ
E__inference_conv2d_20_layer_call_and_return_conditional_losses_987926inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╗non_trainable_variables
╝layers
╜metrics
 ╛layer_regularization_losses
┐layer_metrics
О	variables
Пtrainable_variables
Рregularization_losses
Т__call__
+У&call_and_return_all_conditional_losses
'У"call_and_return_conditional_losses"
_generic_user_object
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
хBт
1__inference_max_pooling2d_20_layer_call_fn_987931inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
АB¤
L__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_987936inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
'
`0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
▐B█
*__inference_conv2d_21_layer_call_fn_987945inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
∙BЎ
E__inference_conv2d_21_layer_call_and_return_conditional_losses_987956inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
└non_trainable_variables
┴layers
┬metrics
 ├layer_regularization_losses
─layer_metrics
в	variables
гtrainable_variables
дregularization_losses
ж__call__
+з&call_and_return_all_conditional_losses
'з"call_and_return_conditional_losses"
_generic_user_object
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
хBт
1__inference_max_pooling2d_21_layer_call_fn_987961inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
АB¤
L__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_987966inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
'
p0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
▐B█
*__inference_conv2d_22_layer_call_fn_987975inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
∙BЎ
E__inference_conv2d_22_layer_call_and_return_conditional_losses_987986inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
┼non_trainable_variables
╞layers
╟metrics
 ╚layer_regularization_losses
╔layer_metrics
╢	variables
╖trainable_variables
╕regularization_losses
║__call__
+╗&call_and_return_all_conditional_losses
'╗"call_and_return_conditional_losses"
_generic_user_object
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
хBт
1__inference_max_pooling2d_22_layer_call_fn_987991inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
АB¤
L__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_987996inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
(
А0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
▐B█
*__inference_conv2d_23_layer_call_fn_988005inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
∙BЎ
E__inference_conv2d_23_layer_call_and_return_conditional_losses_988016inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╩non_trainable_variables
╦layers
╠metrics
 ═layer_regularization_losses
╬layer_metrics
╩	variables
╦trainable_variables
╠regularization_losses
╬__call__
+╧&call_and_return_all_conditional_losses
'╧"call_and_return_conditional_losses"
_generic_user_object
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
хBт
1__inference_max_pooling2d_23_layer_call_fn_988021inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
АB¤
L__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_988026inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
яBь
*__inference_dropout_5_layer_call_fn_988031inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
яBь
*__inference_dropout_5_layer_call_fn_988036inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
КBЗ
E__inference_dropout_5_layer_call_and_return_conditional_losses_988041inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
КBЗ
E__inference_dropout_5_layer_call_and_return_conditional_losses_988053inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
▐B█
*__inference_flatten_3_layer_call_fn_988058inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
∙BЎ
E__inference_flatten_3_layer_call_and_return_conditional_losses_988064inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
(
Э0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
▄B┘
(__inference_dense_3_layer_call_fn_988073inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ўBЇ
C__inference_dense_3_layer_call_and_return_conditional_losses_988084inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╧non_trainable_variables
╨layers
╤metrics
 ╥layer_regularization_losses
╙layer_metrics
ю	variables
яtrainable_variables
Ёregularization_losses
Є__call__
+є&call_and_return_all_conditional_losses
'є"call_and_return_conditional_losses"
_generic_user_object
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
▄B┘
(__inference_outputs_layer_call_fn_988093inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ўBЇ
C__inference_outputs_layer_call_and_return_conditional_losses_988103inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
R
╘	variables
╒	keras_api

╓total

╫count"
_tf_keras_metric
c
╪	variables
┘	keras_api

┌total

█count
▄
_fn_kwargs"
_tf_keras_metric
/:-2Adam/m/conv2d_18/kernel
/:-2Adam/v/conv2d_18/kernel
!:2Adam/m/conv2d_18/bias
!:2Adam/v/conv2d_18/bias
/:- 2Adam/m/conv2d_19/kernel
/:- 2Adam/v/conv2d_19/kernel
!: 2Adam/m/conv2d_19/bias
!: 2Adam/v/conv2d_19/bias
/:- @2Adam/m/conv2d_20/kernel
/:- @2Adam/v/conv2d_20/kernel
!:@2Adam/m/conv2d_20/bias
!:@2Adam/v/conv2d_20/bias
0:.@А2Adam/m/conv2d_21/kernel
0:.@А2Adam/v/conv2d_21/kernel
": А2Adam/m/conv2d_21/bias
": А2Adam/v/conv2d_21/bias
1:/АА2Adam/m/conv2d_22/kernel
1:/АА2Adam/v/conv2d_22/kernel
": А2Adam/m/conv2d_22/bias
": А2Adam/v/conv2d_22/bias
1:/А└2Adam/m/conv2d_23/kernel
1:/А└2Adam/v/conv2d_23/kernel
": └2Adam/m/conv2d_23/bias
": └2Adam/v/conv2d_23/bias
':%
А
А2Adam/m/dense_3/kernel
':%
А
А2Adam/v/dense_3/kernel
 :А2Adam/m/dense_3/bias
 :А2Adam/v/dense_3/bias
&:$	А2Adam/m/outputs/kernel
&:$	А2Adam/v/outputs/kernel
:2Adam/m/outputs/bias
:2Adam/v/outputs/bias
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
ёBю
,__inference_random_flip_layer_call_fn_988108inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ёBю
,__inference_random_flip_layer_call_fn_988113inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
МBЙ
G__inference_random_flip_layer_call_and_return_conditional_losses_988117inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
МBЙ
G__inference_random_flip_layer_call_and_return_conditional_losses_988176inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
/
▌
_state_var"
_generic_user_object
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
єBЁ
.__inference_random_flip_1_layer_call_fn_988181inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
єBЁ
.__inference_random_flip_1_layer_call_fn_988186inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ОBЛ
I__inference_random_flip_1_layer_call_and_return_conditional_losses_988190inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ОBЛ
I__inference_random_flip_1_layer_call_and_return_conditional_losses_988249inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
/
▐
_state_var"
_generic_user_object
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
0
╓0
╫1"
trackable_list_wrapper
.
╘	variables"
_generic_user_object
:  (2total
:  (2count
0
┌0
█1"
trackable_list_wrapper
.
╪	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
 :	2random_flip/StateVar
": 	2random_flip_1/StateVar╕
!__inference__wrapped_model_986472Т12ABQRabqrБВЮЯжзEвB
;в8
6К3
sequential_2_input         АА
к "1к.
,
outputs!К
outputs         └
E__inference_conv2d_18_layer_call_and_return_conditional_losses_987866w129в6
/в,
*К'
inputs         АА
к "6в3
,К)
tensor_0         АА
Ъ Ъ
*__inference_conv2d_18_layer_call_fn_987855l129в6
/в,
*К'
inputs         АА
к "+К(
unknown         АА╝
E__inference_conv2d_19_layer_call_and_return_conditional_losses_987896sAB7в4
-в*
(К%
inputs         @@
к "4в1
*К'
tensor_0         @@ 
Ъ Ц
*__inference_conv2d_19_layer_call_fn_987885hAB7в4
-в*
(К%
inputs         @@
к ")К&
unknown         @@ ╝
E__inference_conv2d_20_layer_call_and_return_conditional_losses_987926sQR7в4
-в*
(К%
inputs            
к "4в1
*К'
tensor_0           @
Ъ Ц
*__inference_conv2d_20_layer_call_fn_987915hQR7в4
-в*
(К%
inputs            
к ")К&
unknown           @╜
E__inference_conv2d_21_layer_call_and_return_conditional_losses_987956tab7в4
-в*
(К%
inputs         @
к "5в2
+К(
tensor_0         А
Ъ Ч
*__inference_conv2d_21_layer_call_fn_987945iab7в4
-в*
(К%
inputs         @
к "*К'
unknown         А╛
E__inference_conv2d_22_layer_call_and_return_conditional_losses_987986uqr8в5
.в+
)К&
inputs         А
к "5в2
+К(
tensor_0         А
Ъ Ш
*__inference_conv2d_22_layer_call_fn_987975jqr8в5
.в+
)К&
inputs         А
к "*К'
unknown         А└
E__inference_conv2d_23_layer_call_and_return_conditional_losses_988016wБВ8в5
.в+
)К&
inputs         А
к "5в2
+К(
tensor_0         └
Ъ Ъ
*__inference_conv2d_23_layer_call_fn_988005lБВ8в5
.в+
)К&
inputs         А
к "*К'
unknown         └о
C__inference_dense_3_layer_call_and_return_conditional_losses_988084gЮЯ0в-
&в#
!К
inputs         А

к "-в*
#К 
tensor_0         А
Ъ И
(__inference_dense_3_layer_call_fn_988073\ЮЯ0в-
&в#
!К
inputs         А

к ""К
unknown         А╛
E__inference_dropout_5_layer_call_and_return_conditional_losses_988041u<в9
2в/
)К&
inputs         └
p 
к "5в2
+К(
tensor_0         └
Ъ ╛
E__inference_dropout_5_layer_call_and_return_conditional_losses_988053u<в9
2в/
)К&
inputs         └
p
к "5в2
+К(
tensor_0         └
Ъ Ш
*__inference_dropout_5_layer_call_fn_988031j<в9
2в/
)К&
inputs         └
p 
к "*К'
unknown         └Ш
*__inference_dropout_5_layer_call_fn_988036j<в9
2в/
)К&
inputs         └
p
к "*К'
unknown         └▓
E__inference_flatten_3_layer_call_and_return_conditional_losses_988064i8в5
.в+
)К&
inputs         └
к "-в*
#К 
tensor_0         А

Ъ М
*__inference_flatten_3_layer_call_fn_988058^8в5
.в+
)К&
inputs         └
к ""К
unknown         А
Ў
L__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_987876еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ╨
1__inference_max_pooling2d_18_layer_call_fn_987871ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    Ў
L__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_987906еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ╨
1__inference_max_pooling2d_19_layer_call_fn_987901ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    Ў
L__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_987936еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ╨
1__inference_max_pooling2d_20_layer_call_fn_987931ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    Ў
L__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_987966еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ╨
1__inference_max_pooling2d_21_layer_call_fn_987961ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    Ў
L__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_987996еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ╨
1__inference_max_pooling2d_22_layer_call_fn_987991ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    Ў
L__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_988026еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ╨
1__inference_max_pooling2d_23_layer_call_fn_988021ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    н
C__inference_outputs_layer_call_and_return_conditional_losses_988103fжз0в-
&в#
!К
inputs         А
к ",в)
"К
tensor_0         
Ъ З
(__inference_outputs_layer_call_fn_988093[жз0в-
&в#
!К
inputs         А
к "!К
unknown         ─
I__inference_random_flip_1_layer_call_and_return_conditional_losses_988190w=в:
3в0
*К'
inputs         АА
p 
к "6в3
,К)
tensor_0         АА
Ъ ─
I__inference_random_flip_1_layer_call_and_return_conditional_losses_988249w=в:
3в0
*К'
inputs         АА
p
к "6в3
,К)
tensor_0         АА
Ъ Ю
.__inference_random_flip_1_layer_call_fn_988181l=в:
3в0
*К'
inputs         АА
p 
к "+К(
unknown         ААЮ
.__inference_random_flip_1_layer_call_fn_988186l=в:
3в0
*К'
inputs         АА
p
к "+К(
unknown         АА┬
G__inference_random_flip_layer_call_and_return_conditional_losses_988117w=в:
3в0
*К'
inputs         АА
p 
к "6в3
,К)
tensor_0         АА
Ъ ┬
G__inference_random_flip_layer_call_and_return_conditional_losses_988176w=в:
3в0
*К'
inputs         АА
p
к "6в3
,К)
tensor_0         АА
Ъ Ь
,__inference_random_flip_layer_call_fn_988108l=в:
3в0
*К'
inputs         АА
p 
к "+К(
unknown         ААЬ
,__inference_random_flip_layer_call_fn_988113l=в:
3в0
*К'
inputs         АА
p
к "+К(
unknown         АА╛
G__inference_rescaling_4_layer_call_and_return_conditional_losses_987846s9в6
/в,
*К'
inputs         АА
к "6в3
,К)
tensor_0         АА
Ъ Ш
,__inference_rescaling_4_layer_call_fn_987838h9в6
/в,
*К'
inputs         АА
к "+К(
unknown         АА╙
H__inference_sequential_2_layer_call_and_return_conditional_losses_986659ЖLвI
Bв?
5К2
random_flip_input         АА
p 

 
к "6в3
,К)
tensor_0         АА
Ъ ╙
H__inference_sequential_2_layer_call_and_return_conditional_losses_986665ЖLвI
Bв?
5К2
random_flip_input         АА
p

 
к "6в3
,К)
tensor_0         АА
Ъ ╟
H__inference_sequential_2_layer_call_and_return_conditional_losses_987722{Aв>
7в4
*К'
inputs         АА
p 

 
к "6в3
,К)
tensor_0         АА
Ъ ╟
H__inference_sequential_2_layer_call_and_return_conditional_losses_987833{Aв>
7в4
*К'
inputs         АА
p

 
к "6в3
,К)
tensor_0         АА
Ъ м
-__inference_sequential_2_layer_call_fn_986495{LвI
Bв?
5К2
random_flip_input         АА
p 

 
к "+К(
unknown         ААм
-__inference_sequential_2_layer_call_fn_986653{LвI
Bв?
5К2
random_flip_input         АА
p

 
к "+К(
unknown         ААб
-__inference_sequential_2_layer_call_fn_987713pAв>
7в4
*К'
inputs         АА
p 

 
к "+К(
unknown         ААб
-__inference_sequential_2_layer_call_fn_987718pAв>
7в4
*К'
inputs         АА
p

 
к "+К(
unknown         ААт
H__inference_sequential_4_layer_call_and_return_conditional_losses_987281Х12ABQRabqrБВЮЯжзMвJ
Cв@
6К3
sequential_2_input         АА
p 

 
к ",в)
"К
tensor_0         
Ъ т
H__inference_sequential_4_layer_call_and_return_conditional_losses_987335Х12ABQRabqrБВЮЯжзMвJ
Cв@
6К3
sequential_2_input         АА
p

 
к ",в)
"К
tensor_0         
Ъ ╓
H__inference_sequential_4_layer_call_and_return_conditional_losses_987522Й12ABQRabqrБВЮЯжзAв>
7в4
*К'
inputs         АА
p 

 
к ",в)
"К
tensor_0         
Ъ ╓
H__inference_sequential_4_layer_call_and_return_conditional_losses_987708Й12ABQRabqrБВЮЯжзAв>
7в4
*К'
inputs         АА
p

 
к ",в)
"К
tensor_0         
Ъ ╝
-__inference_sequential_4_layer_call_fn_986947К12ABQRabqrБВЮЯжзMвJ
Cв@
6К3
sequential_2_input         АА
p 

 
к "!К
unknown         ╝
-__inference_sequential_4_layer_call_fn_987227К12ABQRabqrБВЮЯжзMвJ
Cв@
6К3
sequential_2_input         АА
p

 
к "!К
unknown         п
-__inference_sequential_4_layer_call_fn_987413~12ABQRabqrБВЮЯжзAв>
7в4
*К'
inputs         АА
p 

 
к "!К
unknown         п
-__inference_sequential_4_layer_call_fn_987450~12ABQRabqrБВЮЯжзAв>
7в4
*К'
inputs         АА
p

 
к "!К
unknown         ╤
$__inference_signature_wrapper_987376и12ABQRabqrБВЮЯжз[вX
в 
QкN
L
sequential_2_input6К3
sequential_2_input         АА"1к.
,
outputs!К
outputs         