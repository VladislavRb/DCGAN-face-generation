??
??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
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
?
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
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
alphafloat%??L>"
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
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
0
Sigmoid
x"T
y"T"
Ttype:

2
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
executor_typestring ??
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
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68Ϗ
?
module_wrapper_9/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??@*0
shared_name!module_wrapper_9/dense_1/kernel
?
3module_wrapper_9/dense_1/kernel/Read/ReadVariableOpReadVariableOpmodule_wrapper_9/dense_1/kernel* 
_output_shapes
:
??@*
dtype0
?
module_wrapper_9/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?@*.
shared_namemodule_wrapper_9/dense_1/bias
?
1module_wrapper_9/dense_1/bias/Read/ReadVariableOpReadVariableOpmodule_wrapper_9/dense_1/bias*
_output_shapes	
:?@*
dtype0
?
)module_wrapper_11/conv2d_transpose/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*:
shared_name+)module_wrapper_11/conv2d_transpose/kernel
?
=module_wrapper_11/conv2d_transpose/kernel/Read/ReadVariableOpReadVariableOp)module_wrapper_11/conv2d_transpose/kernel*(
_output_shapes
:??*
dtype0
?
'module_wrapper_11/conv2d_transpose/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'module_wrapper_11/conv2d_transpose/bias
?
;module_wrapper_11/conv2d_transpose/bias/Read/ReadVariableOpReadVariableOp'module_wrapper_11/conv2d_transpose/bias*
_output_shapes	
:?*
dtype0
?
+module_wrapper_13/conv2d_transpose_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*<
shared_name-+module_wrapper_13/conv2d_transpose_1/kernel
?
?module_wrapper_13/conv2d_transpose_1/kernel/Read/ReadVariableOpReadVariableOp+module_wrapper_13/conv2d_transpose_1/kernel*(
_output_shapes
:??*
dtype0
?
)module_wrapper_13/conv2d_transpose_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*:
shared_name+)module_wrapper_13/conv2d_transpose_1/bias
?
=module_wrapper_13/conv2d_transpose_1/bias/Read/ReadVariableOpReadVariableOp)module_wrapper_13/conv2d_transpose_1/bias*
_output_shapes	
:?*
dtype0
?
+module_wrapper_15/conv2d_transpose_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*<
shared_name-+module_wrapper_15/conv2d_transpose_2/kernel
?
?module_wrapper_15/conv2d_transpose_2/kernel/Read/ReadVariableOpReadVariableOp+module_wrapper_15/conv2d_transpose_2/kernel*(
_output_shapes
:??*
dtype0
?
)module_wrapper_15/conv2d_transpose_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*:
shared_name+)module_wrapper_15/conv2d_transpose_2/bias
?
=module_wrapper_15/conv2d_transpose_2/bias/Read/ReadVariableOpReadVariableOp)module_wrapper_15/conv2d_transpose_2/bias*
_output_shapes	
:?*
dtype0
?
!module_wrapper_17/conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*2
shared_name#!module_wrapper_17/conv2d_3/kernel
?
5module_wrapper_17/conv2d_3/kernel/Read/ReadVariableOpReadVariableOp!module_wrapper_17/conv2d_3/kernel*'
_output_shapes
:?*
dtype0
?
module_wrapper_17/conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!module_wrapper_17/conv2d_3/bias
?
3module_wrapper_17/conv2d_3/bias/Read/ReadVariableOpReadVariableOpmodule_wrapper_17/conv2d_3/bias*
_output_shapes
:*
dtype0

NoOpNoOp
?W
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?V
value?VB?V B?V
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
?
_module
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
?
_module
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
?
 _module
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses*
?
'_module
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses* 
?
._module
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses*
?
5_module
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses* 
?
<_module
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses*
?
C_module
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses* 
?
J_module
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses*
J
Q0
R1
S2
T3
U4
V5
W6
X7
Y8
Z9*
J
Q0
R1
S2
T3
U4
V5
W6
X7
Y8
Z9*
* 
?
[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

`serving_default* 
?

Qkernel
Rbias
a	variables
bregularization_losses
ctrainable_variables
d	keras_api
e__call__
*f&call_and_return_all_conditional_losses*

Q0
R1*

Q0
R1*
* 
?
gnon_trainable_variables

hlayers
imetrics
jlayer_regularization_losses
klayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
?
l	variables
mregularization_losses
ntrainable_variables
o	keras_api
p__call__
*q&call_and_return_all_conditional_losses* 
* 
* 
* 
?
rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 
* 
* 
?

Skernel
Tbias
w	variables
xregularization_losses
ytrainable_variables
z	keras_api
{__call__
*|&call_and_return_all_conditional_losses*

S0
T1*

S0
T1*
* 
?
}non_trainable_variables

~layers
metrics
 ?layer_regularization_losses
?layer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses*
* 
* 
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses* 
* 
* 
?

Ukernel
Vbias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*

U0
V1*

U0
V1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses*
* 
* 
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses* 
* 
* 
?

Wkernel
Xbias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*

W0
X1*

W0
X1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses*
* 
* 
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses* 
* 
* 
?

Ykernel
Zbias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*

Y0
Z1*

Y0
Z1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEmodule_wrapper_9/dense_1/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEmodule_wrapper_9/dense_1/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUE)module_wrapper_11/conv2d_transpose/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE'module_wrapper_11/conv2d_transpose/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE+module_wrapper_13/conv2d_transpose_1/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUE)module_wrapper_13/conv2d_transpose_1/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE+module_wrapper_15/conv2d_transpose_2/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUE)module_wrapper_15/conv2d_transpose_2/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE!module_wrapper_17/conv2d_3/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEmodule_wrapper_17/conv2d_3/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
* 
C
0
1
2
3
4
5
6
7
	8*
* 
* 
* 
* 

Q0
R1*
* 

Q0
R1*
?
a	variables
?non_trainable_variables
?layers
bregularization_losses
 ?layer_regularization_losses
?metrics
ctrainable_variables
?layer_metrics
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses*
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
?
l	variables
?non_trainable_variables
?layers
mregularization_losses
 ?layer_regularization_losses
?metrics
ntrainable_variables
?layer_metrics
p__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
* 

S0
T1*
* 

S0
T1*
?
w	variables
?non_trainable_variables
?layers
xregularization_losses
 ?layer_regularization_losses
?metrics
ytrainable_variables
?layer_metrics
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses*
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
?
?	variables
?non_trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?metrics
?trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
* 

U0
V1*
* 

U0
V1*
?
?	variables
?non_trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?metrics
?trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
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
?
?	variables
?non_trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?metrics
?trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
* 

W0
X1*
* 

W0
X1*
?
?	variables
?non_trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?metrics
?trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
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
?
?	variables
?non_trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?metrics
?trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
* 

Y0
Z1*
* 

Y0
Z1*
?
?	variables
?non_trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?metrics
?trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
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
|
serving_default_input_2Placeholder*(
_output_shapes
:??????????*
dtype0*
shape:??????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_2module_wrapper_9/dense_1/kernelmodule_wrapper_9/dense_1/bias)module_wrapper_11/conv2d_transpose/kernel'module_wrapper_11/conv2d_transpose/bias+module_wrapper_13/conv2d_transpose_1/kernel)module_wrapper_13/conv2d_transpose_1/bias+module_wrapper_15/conv2d_transpose_2/kernel)module_wrapper_15/conv2d_transpose_2/bias!module_wrapper_17/conv2d_3/kernelmodule_wrapper_17/conv2d_3/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *-
f(R&
$__inference_signature_wrapper_537072
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename3module_wrapper_9/dense_1/kernel/Read/ReadVariableOp1module_wrapper_9/dense_1/bias/Read/ReadVariableOp=module_wrapper_11/conv2d_transpose/kernel/Read/ReadVariableOp;module_wrapper_11/conv2d_transpose/bias/Read/ReadVariableOp?module_wrapper_13/conv2d_transpose_1/kernel/Read/ReadVariableOp=module_wrapper_13/conv2d_transpose_1/bias/Read/ReadVariableOp?module_wrapper_15/conv2d_transpose_2/kernel/Read/ReadVariableOp=module_wrapper_15/conv2d_transpose_2/bias/Read/ReadVariableOp5module_wrapper_17/conv2d_3/kernel/Read/ReadVariableOp3module_wrapper_17/conv2d_3/bias/Read/ReadVariableOpConst*
Tin
2*
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
GPU2*0J 8? *(
f#R!
__inference__traced_save_537625
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamemodule_wrapper_9/dense_1/kernelmodule_wrapper_9/dense_1/bias)module_wrapper_11/conv2d_transpose/kernel'module_wrapper_11/conv2d_transpose/bias+module_wrapper_13/conv2d_transpose_1/kernel)module_wrapper_13/conv2d_transpose_1/bias+module_wrapper_15/conv2d_transpose_2/kernel)module_wrapper_15/conv2d_transpose_2/bias!module_wrapper_17/conv2d_3/kernelmodule_wrapper_17/conv2d_3/bias*
Tin
2*
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
GPU2*0J 8? *+
f&R$
"__inference__traced_restore_537665??
?

?
L__inference_module_wrapper_9_layer_call_and_return_conditional_losses_536218

args_0:
&dense_1_matmul_readvariableop_resource:
??@6
'dense_1_biasadd_readvariableop_resource:	?@
identity??dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??@*
dtype0z
dense_1/MatMulMatMulargs_0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????@?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?@*
dtype0?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????@h
IdentityIdentitydense_1/BiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??????????@?
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
i
M__inference_module_wrapper_12_layer_call_and_return_conditional_losses_537227

args_0
identity^
leaky_re_lu_3/LeakyRelu	LeakyReluargs_0*0
_output_shapes
:??????????v
IdentityIdentity%leaky_re_lu_3/LeakyRelu:activations:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
M__inference_module_wrapper_17_layer_call_and_return_conditional_losses_536359

args_0B
'conv2d_3_conv2d_readvariableop_resource:?6
(conv2d_3_biasadd_readvariableop_resource:
identity??conv2d_3/BiasAdd/ReadVariableOp?conv2d_3/Conv2D/ReadVariableOp?
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:?*
dtype0?
conv2d_3/Conv2DConv2Dargs_0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@*
paddingSAME*
strides
?
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@p
conv2d_3/SigmoidSigmoidconv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@k
IdentityIdentityconv2d_3/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:?????????@@?
NoOpNoOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????@@?: : 2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp:X T
0
_output_shapes
:?????????@@?
 
_user_specified_nameargs_0
?
?
1__inference_module_wrapper_9_layer_call_fn_537090

args_0
unknown:
??@
	unknown_0:	?@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_9_layer_call_and_return_conditional_losses_536640p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
i
M__inference_module_wrapper_10_layer_call_and_return_conditional_losses_537148

args_0
identityC
reshape/ShapeShapeargs_0*
T0*
_output_shapes
:e
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Y
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Z
reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :??
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0 reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:}
reshape/ReshapeReshapeargs_0reshape/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????i
IdentityIdentityreshape/Reshape:output:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????@:P L
(
_output_shapes
:??????????@
 
_user_specified_nameargs_0
?
?
M__inference_module_wrapper_17_layer_call_and_return_conditional_losses_537440

args_0B
'conv2d_3_conv2d_readvariableop_resource:?6
(conv2d_3_biasadd_readvariableop_resource:
identity??conv2d_3/BiasAdd/ReadVariableOp?conv2d_3/Conv2D/ReadVariableOp?
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:?*
dtype0?
conv2d_3/Conv2DConv2Dargs_0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@*
paddingSAME*
strides
?
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@p
conv2d_3/SigmoidSigmoidconv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@k
IdentityIdentityconv2d_3/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:?????????@@?
NoOpNoOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????@@?: : 2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp:X T
0
_output_shapes
:?????????@@?
 
_user_specified_nameargs_0
?
?
2__inference_module_wrapper_11_layer_call_fn_537166

args_0#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_11_layer_call_and_return_conditional_losses_536586x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
M__inference_module_wrapper_13_layer_call_and_return_conditional_losses_536528

args_0W
;conv2d_transpose_1_conv2d_transpose_readvariableop_resource:??A
2conv2d_transpose_1_biasadd_readvariableop_resource:	?
identity??)conv2d_transpose_1/BiasAdd/ReadVariableOp?2conv2d_transpose_1/conv2d_transpose/ReadVariableOpN
conv2d_transpose_1/ShapeShapeargs_0*
T0*
_output_shapes
:p
&conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv2d_transpose_1/strided_sliceStridedSlice!conv2d_transpose_1/Shape:output:0/conv2d_transpose_1/strided_slice/stack:output:01conv2d_transpose_1/strided_slice/stack_1:output:01conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B : \
conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B : ]
conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value
B :??
conv2d_transpose_1/stackPack)conv2d_transpose_1/strided_slice:output:0#conv2d_transpose_1/stack/1:output:0#conv2d_transpose_1/stack/2:output:0#conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"conv2d_transpose_1/strided_slice_1StridedSlice!conv2d_transpose_1/stack:output:01conv2d_transpose_1/strided_slice_1/stack:output:03conv2d_transpose_1/strided_slice_1/stack_1:output:03conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
2conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_1_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype0?
#conv2d_transpose_1/conv2d_transposeConv2DBackpropInput!conv2d_transpose_1/stack:output:0:conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0args_0*
T0*0
_output_shapes
:?????????  ?*
paddingSAME*
strides
?
)conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_transpose_1/BiasAddBiasAdd,conv2d_transpose_1/conv2d_transpose:output:01conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  ?{
IdentityIdentity#conv2d_transpose_1/BiasAdd:output:0^NoOp*
T0*0
_output_shapes
:?????????  ??
NoOpNoOp*^conv2d_transpose_1/BiasAdd/ReadVariableOp3^conv2d_transpose_1/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 2V
)conv2d_transpose_1/BiasAdd/ReadVariableOp)conv2d_transpose_1/BiasAdd/ReadVariableOp2h
2conv2d_transpose_1/conv2d_transpose/ReadVariableOp2conv2d_transpose_1/conv2d_transpose/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
2__inference_module_wrapper_11_layer_call_fn_537157

args_0#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_11_layer_call_and_return_conditional_losses_536263x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
i
M__inference_module_wrapper_14_layer_call_and_return_conditional_losses_537311

args_0
identity^
leaky_re_lu_4/LeakyRelu	LeakyReluargs_0*0
_output_shapes
:?????????  ?v
IdentityIdentity%leaky_re_lu_4/LeakyRelu:activations:0*
T0*0
_output_shapes
:?????????  ?"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????  ?:X T
0
_output_shapes
:?????????  ?
 
_user_specified_nameargs_0
?
N
2__inference_module_wrapper_16_layer_call_fn_537385

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????@@?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_16_layer_call_and_return_conditional_losses_536346i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:?????????@@?"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????@@?:X T
0
_output_shapes
:?????????@@?
 
_user_specified_nameargs_0
? 
?
N__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_537518

inputsD
(conv2d_transpose_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: J
stack/3Const*
_output_shapes
: *
dtype0*
value
B :?y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,????????????????????????????*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,????????????????????????????z
IdentityIdentityBiasAdd:output:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,????????????????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
3__inference_conv2d_transpose_2_layer_call_fn_537572

inputs#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_537562?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,????????????????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?

?
*__inference_generator_layer_call_fn_536846

inputs
unknown:
??@
	unknown_0:	?@%
	unknown_1:??
	unknown_2:	?%
	unknown_3:??
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?$
	unknown_7:?
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_generator_layer_call_and_return_conditional_losses_536366w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
1__inference_conv2d_transpose_layer_call_fn_537484

inputs#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_conv2d_transpose_layer_call_and_return_conditional_losses_537474?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,????????????????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
2__inference_module_wrapper_15_layer_call_fn_537334

args_0#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????@@?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_15_layer_call_and_return_conditional_losses_536470x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????@@?`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????  ?: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????  ?
 
_user_specified_nameargs_0
?
N
2__inference_module_wrapper_12_layer_call_fn_537217

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_12_layer_call_and_return_conditional_losses_536274i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?,
?
E__inference_generator_layer_call_and_return_conditional_losses_536366

inputs+
module_wrapper_9_536219:
??@&
module_wrapper_9_536221:	?@4
module_wrapper_11_536264:??'
module_wrapper_11_536266:	?4
module_wrapper_13_536300:??'
module_wrapper_13_536302:	?4
module_wrapper_15_536336:??'
module_wrapper_15_536338:	?3
module_wrapper_17_536360:?&
module_wrapper_17_536362:
identity??)module_wrapper_11/StatefulPartitionedCall?)module_wrapper_13/StatefulPartitionedCall?)module_wrapper_15/StatefulPartitionedCall?)module_wrapper_17/StatefulPartitionedCall?(module_wrapper_9/StatefulPartitionedCall?
(module_wrapper_9/StatefulPartitionedCallStatefulPartitionedCallinputsmodule_wrapper_9_536219module_wrapper_9_536221*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_9_layer_call_and_return_conditional_losses_536218?
!module_wrapper_10/PartitionedCallPartitionedCall1module_wrapper_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_10_layer_call_and_return_conditional_losses_536238?
)module_wrapper_11/StatefulPartitionedCallStatefulPartitionedCall*module_wrapper_10/PartitionedCall:output:0module_wrapper_11_536264module_wrapper_11_536266*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_11_layer_call_and_return_conditional_losses_536263?
!module_wrapper_12/PartitionedCallPartitionedCall2module_wrapper_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_12_layer_call_and_return_conditional_losses_536274?
)module_wrapper_13/StatefulPartitionedCallStatefulPartitionedCall*module_wrapper_12/PartitionedCall:output:0module_wrapper_13_536300module_wrapper_13_536302*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  ?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_13_layer_call_and_return_conditional_losses_536299?
!module_wrapper_14/PartitionedCallPartitionedCall2module_wrapper_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  ?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_14_layer_call_and_return_conditional_losses_536310?
)module_wrapper_15/StatefulPartitionedCallStatefulPartitionedCall*module_wrapper_14/PartitionedCall:output:0module_wrapper_15_536336module_wrapper_15_536338*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????@@?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_15_layer_call_and_return_conditional_losses_536335?
!module_wrapper_16/PartitionedCallPartitionedCall2module_wrapper_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????@@?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_16_layer_call_and_return_conditional_losses_536346?
)module_wrapper_17/StatefulPartitionedCallStatefulPartitionedCall*module_wrapper_16/PartitionedCall:output:0module_wrapper_17_536360module_wrapper_17_536362*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_17_layer_call_and_return_conditional_losses_536359?
IdentityIdentity2module_wrapper_17/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@@?
NoOpNoOp*^module_wrapper_11/StatefulPartitionedCall*^module_wrapper_13/StatefulPartitionedCall*^module_wrapper_15/StatefulPartitionedCall*^module_wrapper_17/StatefulPartitionedCall)^module_wrapper_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????: : : : : : : : : : 2V
)module_wrapper_11/StatefulPartitionedCall)module_wrapper_11/StatefulPartitionedCall2V
)module_wrapper_13/StatefulPartitionedCall)module_wrapper_13/StatefulPartitionedCall2V
)module_wrapper_15/StatefulPartitionedCall)module_wrapper_15/StatefulPartitionedCall2V
)module_wrapper_17/StatefulPartitionedCall)module_wrapper_17/StatefulPartitionedCall2T
(module_wrapper_9/StatefulPartitionedCall(module_wrapper_9/StatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
i
M__inference_module_wrapper_10_layer_call_and_return_conditional_losses_536615

args_0
identityC
reshape/ShapeShapeargs_0*
T0*
_output_shapes
:e
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Y
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Z
reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :??
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0 reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:}
reshape/ReshapeReshapeargs_0reshape/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????i
IdentityIdentityreshape/Reshape:output:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????@:P L
(
_output_shapes
:??????????@
 
_user_specified_nameargs_0
?

?
$__inference_signature_wrapper_537072
input_2
unknown:
??@
	unknown_0:	?@%
	unknown_1:??
	unknown_2:	?%
	unknown_3:??
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?$
	unknown_7:?
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__wrapped_model_536201w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_2
?
?
M__inference_module_wrapper_11_layer_call_and_return_conditional_losses_536263

args_0U
9conv2d_transpose_conv2d_transpose_readvariableop_resource:???
0conv2d_transpose_biasadd_readvariableop_resource:	?
identity??'conv2d_transpose/BiasAdd/ReadVariableOp?0conv2d_transpose/conv2d_transpose/ReadVariableOpL
conv2d_transpose/ShapeShapeargs_0*
T0*
_output_shapes
:n
$conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
conv2d_transpose/strided_sliceStridedSliceconv2d_transpose/Shape:output:0-conv2d_transpose/strided_slice/stack:output:0/conv2d_transpose/strided_slice/stack_1:output:0/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :Z
conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B :[
conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value
B :??
conv2d_transpose/stackPack'conv2d_transpose/strided_slice:output:0!conv2d_transpose/stack/1:output:0!conv2d_transpose/stack/2:output:0!conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:p
&conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv2d_transpose/strided_slice_1StridedSliceconv2d_transpose/stack:output:0/conv2d_transpose/strided_slice_1/stack:output:01conv2d_transpose/strided_slice_1/stack_1:output:01conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
0conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOp9conv2d_transpose_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype0?
!conv2d_transpose/conv2d_transposeConv2DBackpropInputconv2d_transpose/stack:output:08conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0args_0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
'conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp0conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_transpose/BiasAddBiasAdd*conv2d_transpose/conv2d_transpose:output:0/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????y
IdentityIdentity!conv2d_transpose/BiasAdd:output:0^NoOp*
T0*0
_output_shapes
:???????????
NoOpNoOp(^conv2d_transpose/BiasAdd/ReadVariableOp1^conv2d_transpose/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 2R
'conv2d_transpose/BiasAdd/ReadVariableOp'conv2d_transpose/BiasAdd/ReadVariableOp2d
0conv2d_transpose/conv2d_transpose/ReadVariableOp0conv2d_transpose/conv2d_transpose/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?

?
L__inference_module_wrapper_9_layer_call_and_return_conditional_losses_537110

args_0:
&dense_1_matmul_readvariableop_resource:
??@6
'dense_1_biasadd_readvariableop_resource:	?@
identity??dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??@*
dtype0z
dense_1/MatMulMatMulargs_0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????@?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?@*
dtype0?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????@h
IdentityIdentitydense_1/BiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??????????@?
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
i
M__inference_module_wrapper_12_layer_call_and_return_conditional_losses_536274

args_0
identity^
leaky_re_lu_3/LeakyRelu	LeakyReluargs_0*0
_output_shapes
:??????????v
IdentityIdentity%leaky_re_lu_3/LeakyRelu:activations:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
M__inference_module_wrapper_15_layer_call_and_return_conditional_losses_536335

args_0W
;conv2d_transpose_2_conv2d_transpose_readvariableop_resource:??A
2conv2d_transpose_2_biasadd_readvariableop_resource:	?
identity??)conv2d_transpose_2/BiasAdd/ReadVariableOp?2conv2d_transpose_2/conv2d_transpose/ReadVariableOpN
conv2d_transpose_2/ShapeShapeargs_0*
T0*
_output_shapes
:p
&conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv2d_transpose_2/strided_sliceStridedSlice!conv2d_transpose_2/Shape:output:0/conv2d_transpose_2/strided_slice/stack:output:01conv2d_transpose_2/strided_slice/stack_1:output:01conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@\
conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@]
conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value
B :??
conv2d_transpose_2/stackPack)conv2d_transpose_2/strided_slice:output:0#conv2d_transpose_2/stack/1:output:0#conv2d_transpose_2/stack/2:output:0#conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"conv2d_transpose_2/strided_slice_1StridedSlice!conv2d_transpose_2/stack:output:01conv2d_transpose_2/strided_slice_1/stack:output:03conv2d_transpose_2/strided_slice_1/stack_1:output:03conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
2conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_2_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype0?
#conv2d_transpose_2/conv2d_transposeConv2DBackpropInput!conv2d_transpose_2/stack:output:0:conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:0args_0*
T0*0
_output_shapes
:?????????@@?*
paddingSAME*
strides
?
)conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_transpose_2/BiasAddBiasAdd,conv2d_transpose_2/conv2d_transpose:output:01conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????@@?{
IdentityIdentity#conv2d_transpose_2/BiasAdd:output:0^NoOp*
T0*0
_output_shapes
:?????????@@??
NoOpNoOp*^conv2d_transpose_2/BiasAdd/ReadVariableOp3^conv2d_transpose_2/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????  ?: : 2V
)conv2d_transpose_2/BiasAdd/ReadVariableOp)conv2d_transpose_2/BiasAdd/ReadVariableOp2h
2conv2d_transpose_2/conv2d_transpose/ReadVariableOp2conv2d_transpose_2/conv2d_transpose/ReadVariableOp:X T
0
_output_shapes
:?????????  ?
 
_user_specified_nameargs_0
?

?
*__inference_generator_layer_call_fn_536871

inputs
unknown:
??@
	unknown_0:	?@%
	unknown_1:??
	unknown_2:	?%
	unknown_3:??
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?$
	unknown_7:?
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_generator_layer_call_and_return_conditional_losses_536707w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
L__inference_module_wrapper_9_layer_call_and_return_conditional_losses_537100

args_0:
&dense_1_matmul_readvariableop_resource:
??@6
'dense_1_biasadd_readvariableop_resource:	?@
identity??dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??@*
dtype0z
dense_1/MatMulMatMulargs_0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????@?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?@*
dtype0?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????@h
IdentityIdentitydense_1/BiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??????????@?
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
N
2__inference_module_wrapper_14_layer_call_fn_537306

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  ?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_14_layer_call_and_return_conditional_losses_536490i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:?????????  ?"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????  ?:X T
0
_output_shapes
:?????????  ?
 
_user_specified_nameargs_0
?
i
M__inference_module_wrapper_12_layer_call_and_return_conditional_losses_536548

args_0
identity^
leaky_re_lu_3/LeakyRelu	LeakyReluargs_0*0
_output_shapes
:??????????v
IdentityIdentity%leaky_re_lu_3/LeakyRelu:activations:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
1__inference_module_wrapper_9_layer_call_fn_537081

args_0
unknown:
??@
	unknown_0:	?@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_9_layer_call_and_return_conditional_losses_536218p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
i
M__inference_module_wrapper_16_layer_call_and_return_conditional_losses_536432

args_0
identity^
leaky_re_lu_5/LeakyRelu	LeakyReluargs_0*0
_output_shapes
:?????????@@?v
IdentityIdentity%leaky_re_lu_5/LeakyRelu:activations:0*
T0*0
_output_shapes
:?????????@@?"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????@@?:X T
0
_output_shapes
:?????????@@?
 
_user_specified_nameargs_0
?
?
M__inference_module_wrapper_11_layer_call_and_return_conditional_losses_537212

args_0U
9conv2d_transpose_conv2d_transpose_readvariableop_resource:???
0conv2d_transpose_biasadd_readvariableop_resource:	?
identity??'conv2d_transpose/BiasAdd/ReadVariableOp?0conv2d_transpose/conv2d_transpose/ReadVariableOpL
conv2d_transpose/ShapeShapeargs_0*
T0*
_output_shapes
:n
$conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
conv2d_transpose/strided_sliceStridedSliceconv2d_transpose/Shape:output:0-conv2d_transpose/strided_slice/stack:output:0/conv2d_transpose/strided_slice/stack_1:output:0/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :Z
conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B :[
conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value
B :??
conv2d_transpose/stackPack'conv2d_transpose/strided_slice:output:0!conv2d_transpose/stack/1:output:0!conv2d_transpose/stack/2:output:0!conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:p
&conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv2d_transpose/strided_slice_1StridedSliceconv2d_transpose/stack:output:0/conv2d_transpose/strided_slice_1/stack:output:01conv2d_transpose/strided_slice_1/stack_1:output:01conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
0conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOp9conv2d_transpose_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype0?
!conv2d_transpose/conv2d_transposeConv2DBackpropInputconv2d_transpose/stack:output:08conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0args_0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
'conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp0conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_transpose/BiasAddBiasAdd*conv2d_transpose/conv2d_transpose:output:0/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????y
IdentityIdentity!conv2d_transpose/BiasAdd:output:0^NoOp*
T0*0
_output_shapes
:???????????
NoOpNoOp(^conv2d_transpose/BiasAdd/ReadVariableOp1^conv2d_transpose/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 2R
'conv2d_transpose/BiasAdd/ReadVariableOp'conv2d_transpose/BiasAdd/ReadVariableOp2d
0conv2d_transpose/conv2d_transpose/ReadVariableOp0conv2d_transpose/conv2d_transpose/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
M__inference_module_wrapper_17_layer_call_and_return_conditional_losses_537429

args_0B
'conv2d_3_conv2d_readvariableop_resource:?6
(conv2d_3_biasadd_readvariableop_resource:
identity??conv2d_3/BiasAdd/ReadVariableOp?conv2d_3/Conv2D/ReadVariableOp?
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:?*
dtype0?
conv2d_3/Conv2DConv2Dargs_0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@*
paddingSAME*
strides
?
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@p
conv2d_3/SigmoidSigmoidconv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@k
IdentityIdentityconv2d_3/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:?????????@@?
NoOpNoOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????@@?: : 2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp:X T
0
_output_shapes
:?????????@@?
 
_user_specified_nameargs_0
?
?
M__inference_module_wrapper_13_layer_call_and_return_conditional_losses_537296

args_0W
;conv2d_transpose_1_conv2d_transpose_readvariableop_resource:??A
2conv2d_transpose_1_biasadd_readvariableop_resource:	?
identity??)conv2d_transpose_1/BiasAdd/ReadVariableOp?2conv2d_transpose_1/conv2d_transpose/ReadVariableOpN
conv2d_transpose_1/ShapeShapeargs_0*
T0*
_output_shapes
:p
&conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv2d_transpose_1/strided_sliceStridedSlice!conv2d_transpose_1/Shape:output:0/conv2d_transpose_1/strided_slice/stack:output:01conv2d_transpose_1/strided_slice/stack_1:output:01conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B : \
conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B : ]
conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value
B :??
conv2d_transpose_1/stackPack)conv2d_transpose_1/strided_slice:output:0#conv2d_transpose_1/stack/1:output:0#conv2d_transpose_1/stack/2:output:0#conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"conv2d_transpose_1/strided_slice_1StridedSlice!conv2d_transpose_1/stack:output:01conv2d_transpose_1/strided_slice_1/stack:output:03conv2d_transpose_1/strided_slice_1/stack_1:output:03conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
2conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_1_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype0?
#conv2d_transpose_1/conv2d_transposeConv2DBackpropInput!conv2d_transpose_1/stack:output:0:conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0args_0*
T0*0
_output_shapes
:?????????  ?*
paddingSAME*
strides
?
)conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_transpose_1/BiasAddBiasAdd,conv2d_transpose_1/conv2d_transpose:output:01conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  ?{
IdentityIdentity#conv2d_transpose_1/BiasAdd:output:0^NoOp*
T0*0
_output_shapes
:?????????  ??
NoOpNoOp*^conv2d_transpose_1/BiasAdd/ReadVariableOp3^conv2d_transpose_1/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 2V
)conv2d_transpose_1/BiasAdd/ReadVariableOp)conv2d_transpose_1/BiasAdd/ReadVariableOp2h
2conv2d_transpose_1/conv2d_transpose/ReadVariableOp2conv2d_transpose_1/conv2d_transpose/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
N
2__inference_module_wrapper_10_layer_call_fn_537115

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_10_layer_call_and_return_conditional_losses_536238i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????@:P L
(
_output_shapes
:??????????@
 
_user_specified_nameargs_0
? 
?
N__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_537562

inputsD
(conv2d_transpose_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: J
stack/3Const*
_output_shapes
: *
dtype0*
value
B :?y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,????????????????????????????*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,????????????????????????????z
IdentityIdentityBiasAdd:output:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,????????????????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
Ћ
?
E__inference_generator_layer_call_and_return_conditional_losses_537045

inputsK
7module_wrapper_9_dense_1_matmul_readvariableop_resource:
??@G
8module_wrapper_9_dense_1_biasadd_readvariableop_resource:	?@g
Kmodule_wrapper_11_conv2d_transpose_conv2d_transpose_readvariableop_resource:??Q
Bmodule_wrapper_11_conv2d_transpose_biasadd_readvariableop_resource:	?i
Mmodule_wrapper_13_conv2d_transpose_1_conv2d_transpose_readvariableop_resource:??S
Dmodule_wrapper_13_conv2d_transpose_1_biasadd_readvariableop_resource:	?i
Mmodule_wrapper_15_conv2d_transpose_2_conv2d_transpose_readvariableop_resource:??S
Dmodule_wrapper_15_conv2d_transpose_2_biasadd_readvariableop_resource:	?T
9module_wrapper_17_conv2d_3_conv2d_readvariableop_resource:?H
:module_wrapper_17_conv2d_3_biasadd_readvariableop_resource:
identity??9module_wrapper_11/conv2d_transpose/BiasAdd/ReadVariableOp?Bmodule_wrapper_11/conv2d_transpose/conv2d_transpose/ReadVariableOp?;module_wrapper_13/conv2d_transpose_1/BiasAdd/ReadVariableOp?Dmodule_wrapper_13/conv2d_transpose_1/conv2d_transpose/ReadVariableOp?;module_wrapper_15/conv2d_transpose_2/BiasAdd/ReadVariableOp?Dmodule_wrapper_15/conv2d_transpose_2/conv2d_transpose/ReadVariableOp?1module_wrapper_17/conv2d_3/BiasAdd/ReadVariableOp?0module_wrapper_17/conv2d_3/Conv2D/ReadVariableOp?/module_wrapper_9/dense_1/BiasAdd/ReadVariableOp?.module_wrapper_9/dense_1/MatMul/ReadVariableOp?
.module_wrapper_9/dense_1/MatMul/ReadVariableOpReadVariableOp7module_wrapper_9_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??@*
dtype0?
module_wrapper_9/dense_1/MatMulMatMulinputs6module_wrapper_9/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????@?
/module_wrapper_9/dense_1/BiasAdd/ReadVariableOpReadVariableOp8module_wrapper_9_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?@*
dtype0?
 module_wrapper_9/dense_1/BiasAddBiasAdd)module_wrapper_9/dense_1/MatMul:product:07module_wrapper_9/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????@x
module_wrapper_10/reshape/ShapeShape)module_wrapper_9/dense_1/BiasAdd:output:0*
T0*
_output_shapes
:w
-module_wrapper_10/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/module_wrapper_10/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/module_wrapper_10/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'module_wrapper_10/reshape/strided_sliceStridedSlice(module_wrapper_10/reshape/Shape:output:06module_wrapper_10/reshape/strided_slice/stack:output:08module_wrapper_10/reshape/strided_slice/stack_1:output:08module_wrapper_10/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
)module_wrapper_10/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :k
)module_wrapper_10/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :l
)module_wrapper_10/reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :??
'module_wrapper_10/reshape/Reshape/shapePack0module_wrapper_10/reshape/strided_slice:output:02module_wrapper_10/reshape/Reshape/shape/1:output:02module_wrapper_10/reshape/Reshape/shape/2:output:02module_wrapper_10/reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
!module_wrapper_10/reshape/ReshapeReshape)module_wrapper_9/dense_1/BiasAdd:output:00module_wrapper_10/reshape/Reshape/shape:output:0*
T0*0
_output_shapes
:???????????
(module_wrapper_11/conv2d_transpose/ShapeShape*module_wrapper_10/reshape/Reshape:output:0*
T0*
_output_shapes
:?
6module_wrapper_11/conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8module_wrapper_11/conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8module_wrapper_11/conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0module_wrapper_11/conv2d_transpose/strided_sliceStridedSlice1module_wrapper_11/conv2d_transpose/Shape:output:0?module_wrapper_11/conv2d_transpose/strided_slice/stack:output:0Amodule_wrapper_11/conv2d_transpose/strided_slice/stack_1:output:0Amodule_wrapper_11/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*module_wrapper_11/conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :l
*module_wrapper_11/conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B :m
*module_wrapper_11/conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value
B :??
(module_wrapper_11/conv2d_transpose/stackPack9module_wrapper_11/conv2d_transpose/strided_slice:output:03module_wrapper_11/conv2d_transpose/stack/1:output:03module_wrapper_11/conv2d_transpose/stack/2:output:03module_wrapper_11/conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:?
8module_wrapper_11/conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
:module_wrapper_11/conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
:module_wrapper_11/conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
2module_wrapper_11/conv2d_transpose/strided_slice_1StridedSlice1module_wrapper_11/conv2d_transpose/stack:output:0Amodule_wrapper_11/conv2d_transpose/strided_slice_1/stack:output:0Cmodule_wrapper_11/conv2d_transpose/strided_slice_1/stack_1:output:0Cmodule_wrapper_11/conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
Bmodule_wrapper_11/conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOpKmodule_wrapper_11_conv2d_transpose_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype0?
3module_wrapper_11/conv2d_transpose/conv2d_transposeConv2DBackpropInput1module_wrapper_11/conv2d_transpose/stack:output:0Jmodule_wrapper_11/conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0*module_wrapper_10/reshape/Reshape:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
9module_wrapper_11/conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOpBmodule_wrapper_11_conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
*module_wrapper_11/conv2d_transpose/BiasAddBiasAdd<module_wrapper_11/conv2d_transpose/conv2d_transpose:output:0Amodule_wrapper_11/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
)module_wrapper_12/leaky_re_lu_3/LeakyRelu	LeakyRelu3module_wrapper_11/conv2d_transpose/BiasAdd:output:0*0
_output_shapes
:???????????
*module_wrapper_13/conv2d_transpose_1/ShapeShape7module_wrapper_12/leaky_re_lu_3/LeakyRelu:activations:0*
T0*
_output_shapes
:?
8module_wrapper_13/conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
:module_wrapper_13/conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
:module_wrapper_13/conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
2module_wrapper_13/conv2d_transpose_1/strided_sliceStridedSlice3module_wrapper_13/conv2d_transpose_1/Shape:output:0Amodule_wrapper_13/conv2d_transpose_1/strided_slice/stack:output:0Cmodule_wrapper_13/conv2d_transpose_1/strided_slice/stack_1:output:0Cmodule_wrapper_13/conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
,module_wrapper_13/conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B : n
,module_wrapper_13/conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B : o
,module_wrapper_13/conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value
B :??
*module_wrapper_13/conv2d_transpose_1/stackPack;module_wrapper_13/conv2d_transpose_1/strided_slice:output:05module_wrapper_13/conv2d_transpose_1/stack/1:output:05module_wrapper_13/conv2d_transpose_1/stack/2:output:05module_wrapper_13/conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:?
:module_wrapper_13/conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
<module_wrapper_13/conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
<module_wrapper_13/conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
4module_wrapper_13/conv2d_transpose_1/strided_slice_1StridedSlice3module_wrapper_13/conv2d_transpose_1/stack:output:0Cmodule_wrapper_13/conv2d_transpose_1/strided_slice_1/stack:output:0Emodule_wrapper_13/conv2d_transpose_1/strided_slice_1/stack_1:output:0Emodule_wrapper_13/conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
Dmodule_wrapper_13/conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOpMmodule_wrapper_13_conv2d_transpose_1_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype0?
5module_wrapper_13/conv2d_transpose_1/conv2d_transposeConv2DBackpropInput3module_wrapper_13/conv2d_transpose_1/stack:output:0Lmodule_wrapper_13/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:07module_wrapper_12/leaky_re_lu_3/LeakyRelu:activations:0*
T0*0
_output_shapes
:?????????  ?*
paddingSAME*
strides
?
;module_wrapper_13/conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOpDmodule_wrapper_13_conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,module_wrapper_13/conv2d_transpose_1/BiasAddBiasAdd>module_wrapper_13/conv2d_transpose_1/conv2d_transpose:output:0Cmodule_wrapper_13/conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  ??
)module_wrapper_14/leaky_re_lu_4/LeakyRelu	LeakyRelu5module_wrapper_13/conv2d_transpose_1/BiasAdd:output:0*0
_output_shapes
:?????????  ??
*module_wrapper_15/conv2d_transpose_2/ShapeShape7module_wrapper_14/leaky_re_lu_4/LeakyRelu:activations:0*
T0*
_output_shapes
:?
8module_wrapper_15/conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
:module_wrapper_15/conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
:module_wrapper_15/conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
2module_wrapper_15/conv2d_transpose_2/strided_sliceStridedSlice3module_wrapper_15/conv2d_transpose_2/Shape:output:0Amodule_wrapper_15/conv2d_transpose_2/strided_slice/stack:output:0Cmodule_wrapper_15/conv2d_transpose_2/strided_slice/stack_1:output:0Cmodule_wrapper_15/conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
,module_wrapper_15/conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@n
,module_wrapper_15/conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@o
,module_wrapper_15/conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value
B :??
*module_wrapper_15/conv2d_transpose_2/stackPack;module_wrapper_15/conv2d_transpose_2/strided_slice:output:05module_wrapper_15/conv2d_transpose_2/stack/1:output:05module_wrapper_15/conv2d_transpose_2/stack/2:output:05module_wrapper_15/conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:?
:module_wrapper_15/conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
<module_wrapper_15/conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
<module_wrapper_15/conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
4module_wrapper_15/conv2d_transpose_2/strided_slice_1StridedSlice3module_wrapper_15/conv2d_transpose_2/stack:output:0Cmodule_wrapper_15/conv2d_transpose_2/strided_slice_1/stack:output:0Emodule_wrapper_15/conv2d_transpose_2/strided_slice_1/stack_1:output:0Emodule_wrapper_15/conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
Dmodule_wrapper_15/conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOpMmodule_wrapper_15_conv2d_transpose_2_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype0?
5module_wrapper_15/conv2d_transpose_2/conv2d_transposeConv2DBackpropInput3module_wrapper_15/conv2d_transpose_2/stack:output:0Lmodule_wrapper_15/conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:07module_wrapper_14/leaky_re_lu_4/LeakyRelu:activations:0*
T0*0
_output_shapes
:?????????@@?*
paddingSAME*
strides
?
;module_wrapper_15/conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOpDmodule_wrapper_15_conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,module_wrapper_15/conv2d_transpose_2/BiasAddBiasAdd>module_wrapper_15/conv2d_transpose_2/conv2d_transpose:output:0Cmodule_wrapper_15/conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????@@??
)module_wrapper_16/leaky_re_lu_5/LeakyRelu	LeakyRelu5module_wrapper_15/conv2d_transpose_2/BiasAdd:output:0*0
_output_shapes
:?????????@@??
0module_wrapper_17/conv2d_3/Conv2D/ReadVariableOpReadVariableOp9module_wrapper_17_conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:?*
dtype0?
!module_wrapper_17/conv2d_3/Conv2DConv2D7module_wrapper_16/leaky_re_lu_5/LeakyRelu:activations:08module_wrapper_17/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@*
paddingSAME*
strides
?
1module_wrapper_17/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp:module_wrapper_17_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
"module_wrapper_17/conv2d_3/BiasAddBiasAdd*module_wrapper_17/conv2d_3/Conv2D:output:09module_wrapper_17/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@?
"module_wrapper_17/conv2d_3/SigmoidSigmoid+module_wrapper_17/conv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@}
IdentityIdentity&module_wrapper_17/conv2d_3/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:?????????@@?
NoOpNoOp:^module_wrapper_11/conv2d_transpose/BiasAdd/ReadVariableOpC^module_wrapper_11/conv2d_transpose/conv2d_transpose/ReadVariableOp<^module_wrapper_13/conv2d_transpose_1/BiasAdd/ReadVariableOpE^module_wrapper_13/conv2d_transpose_1/conv2d_transpose/ReadVariableOp<^module_wrapper_15/conv2d_transpose_2/BiasAdd/ReadVariableOpE^module_wrapper_15/conv2d_transpose_2/conv2d_transpose/ReadVariableOp2^module_wrapper_17/conv2d_3/BiasAdd/ReadVariableOp1^module_wrapper_17/conv2d_3/Conv2D/ReadVariableOp0^module_wrapper_9/dense_1/BiasAdd/ReadVariableOp/^module_wrapper_9/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????: : : : : : : : : : 2v
9module_wrapper_11/conv2d_transpose/BiasAdd/ReadVariableOp9module_wrapper_11/conv2d_transpose/BiasAdd/ReadVariableOp2?
Bmodule_wrapper_11/conv2d_transpose/conv2d_transpose/ReadVariableOpBmodule_wrapper_11/conv2d_transpose/conv2d_transpose/ReadVariableOp2z
;module_wrapper_13/conv2d_transpose_1/BiasAdd/ReadVariableOp;module_wrapper_13/conv2d_transpose_1/BiasAdd/ReadVariableOp2?
Dmodule_wrapper_13/conv2d_transpose_1/conv2d_transpose/ReadVariableOpDmodule_wrapper_13/conv2d_transpose_1/conv2d_transpose/ReadVariableOp2z
;module_wrapper_15/conv2d_transpose_2/BiasAdd/ReadVariableOp;module_wrapper_15/conv2d_transpose_2/BiasAdd/ReadVariableOp2?
Dmodule_wrapper_15/conv2d_transpose_2/conv2d_transpose/ReadVariableOpDmodule_wrapper_15/conv2d_transpose_2/conv2d_transpose/ReadVariableOp2f
1module_wrapper_17/conv2d_3/BiasAdd/ReadVariableOp1module_wrapper_17/conv2d_3/BiasAdd/ReadVariableOp2d
0module_wrapper_17/conv2d_3/Conv2D/ReadVariableOp0module_wrapper_17/conv2d_3/Conv2D/ReadVariableOp2b
/module_wrapper_9/dense_1/BiasAdd/ReadVariableOp/module_wrapper_9/dense_1/BiasAdd/ReadVariableOp2`
.module_wrapper_9/dense_1/MatMul/ReadVariableOp.module_wrapper_9/dense_1/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
M__inference_module_wrapper_15_layer_call_and_return_conditional_losses_537380

args_0W
;conv2d_transpose_2_conv2d_transpose_readvariableop_resource:??A
2conv2d_transpose_2_biasadd_readvariableop_resource:	?
identity??)conv2d_transpose_2/BiasAdd/ReadVariableOp?2conv2d_transpose_2/conv2d_transpose/ReadVariableOpN
conv2d_transpose_2/ShapeShapeargs_0*
T0*
_output_shapes
:p
&conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv2d_transpose_2/strided_sliceStridedSlice!conv2d_transpose_2/Shape:output:0/conv2d_transpose_2/strided_slice/stack:output:01conv2d_transpose_2/strided_slice/stack_1:output:01conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@\
conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@]
conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value
B :??
conv2d_transpose_2/stackPack)conv2d_transpose_2/strided_slice:output:0#conv2d_transpose_2/stack/1:output:0#conv2d_transpose_2/stack/2:output:0#conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"conv2d_transpose_2/strided_slice_1StridedSlice!conv2d_transpose_2/stack:output:01conv2d_transpose_2/strided_slice_1/stack:output:03conv2d_transpose_2/strided_slice_1/stack_1:output:03conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
2conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_2_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype0?
#conv2d_transpose_2/conv2d_transposeConv2DBackpropInput!conv2d_transpose_2/stack:output:0:conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:0args_0*
T0*0
_output_shapes
:?????????@@?*
paddingSAME*
strides
?
)conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_transpose_2/BiasAddBiasAdd,conv2d_transpose_2/conv2d_transpose:output:01conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????@@?{
IdentityIdentity#conv2d_transpose_2/BiasAdd:output:0^NoOp*
T0*0
_output_shapes
:?????????@@??
NoOpNoOp*^conv2d_transpose_2/BiasAdd/ReadVariableOp3^conv2d_transpose_2/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????  ?: : 2V
)conv2d_transpose_2/BiasAdd/ReadVariableOp)conv2d_transpose_2/BiasAdd/ReadVariableOp2h
2conv2d_transpose_2/conv2d_transpose/ReadVariableOp2conv2d_transpose_2/conv2d_transpose/ReadVariableOp:X T
0
_output_shapes
:?????????  ?
 
_user_specified_nameargs_0
?
?
M__inference_module_wrapper_11_layer_call_and_return_conditional_losses_536586

args_0U
9conv2d_transpose_conv2d_transpose_readvariableop_resource:???
0conv2d_transpose_biasadd_readvariableop_resource:	?
identity??'conv2d_transpose/BiasAdd/ReadVariableOp?0conv2d_transpose/conv2d_transpose/ReadVariableOpL
conv2d_transpose/ShapeShapeargs_0*
T0*
_output_shapes
:n
$conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
conv2d_transpose/strided_sliceStridedSliceconv2d_transpose/Shape:output:0-conv2d_transpose/strided_slice/stack:output:0/conv2d_transpose/strided_slice/stack_1:output:0/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :Z
conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B :[
conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value
B :??
conv2d_transpose/stackPack'conv2d_transpose/strided_slice:output:0!conv2d_transpose/stack/1:output:0!conv2d_transpose/stack/2:output:0!conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:p
&conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv2d_transpose/strided_slice_1StridedSliceconv2d_transpose/stack:output:0/conv2d_transpose/strided_slice_1/stack:output:01conv2d_transpose/strided_slice_1/stack_1:output:01conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
0conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOp9conv2d_transpose_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype0?
!conv2d_transpose/conv2d_transposeConv2DBackpropInputconv2d_transpose/stack:output:08conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0args_0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
'conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp0conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_transpose/BiasAddBiasAdd*conv2d_transpose/conv2d_transpose:output:0/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????y
IdentityIdentity!conv2d_transpose/BiasAdd:output:0^NoOp*
T0*0
_output_shapes
:???????????
NoOpNoOp(^conv2d_transpose/BiasAdd/ReadVariableOp1^conv2d_transpose/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 2R
'conv2d_transpose/BiasAdd/ReadVariableOp'conv2d_transpose/BiasAdd/ReadVariableOp2d
0conv2d_transpose/conv2d_transpose/ReadVariableOp0conv2d_transpose/conv2d_transpose/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
i
M__inference_module_wrapper_14_layer_call_and_return_conditional_losses_536490

args_0
identity^
leaky_re_lu_4/LeakyRelu	LeakyReluargs_0*0
_output_shapes
:?????????  ?v
IdentityIdentity%leaky_re_lu_4/LeakyRelu:activations:0*
T0*0
_output_shapes
:?????????  ?"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????  ?:X T
0
_output_shapes
:?????????  ?
 
_user_specified_nameargs_0
?
i
M__inference_module_wrapper_16_layer_call_and_return_conditional_losses_537400

args_0
identity^
leaky_re_lu_5/LeakyRelu	LeakyReluargs_0*0
_output_shapes
:?????????@@?v
IdentityIdentity%leaky_re_lu_5/LeakyRelu:activations:0*
T0*0
_output_shapes
:?????????@@?"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????@@?:X T
0
_output_shapes
:?????????@@?
 
_user_specified_nameargs_0
?
i
M__inference_module_wrapper_16_layer_call_and_return_conditional_losses_537395

args_0
identity^
leaky_re_lu_5/LeakyRelu	LeakyReluargs_0*0
_output_shapes
:?????????@@?v
IdentityIdentity%leaky_re_lu_5/LeakyRelu:activations:0*
T0*0
_output_shapes
:?????????@@?"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????@@?:X T
0
_output_shapes
:?????????@@?
 
_user_specified_nameargs_0
?

?
*__inference_generator_layer_call_fn_536755
input_2
unknown:
??@
	unknown_0:	?@%
	unknown_1:??
	unknown_2:	?%
	unknown_3:??
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?$
	unknown_7:?
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_generator_layer_call_and_return_conditional_losses_536707w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_2
?,
?
E__inference_generator_layer_call_and_return_conditional_losses_536788
input_2+
module_wrapper_9_536758:
??@&
module_wrapper_9_536760:	?@4
module_wrapper_11_536764:??'
module_wrapper_11_536766:	?4
module_wrapper_13_536770:??'
module_wrapper_13_536772:	?4
module_wrapper_15_536776:??'
module_wrapper_15_536778:	?3
module_wrapper_17_536782:?&
module_wrapper_17_536784:
identity??)module_wrapper_11/StatefulPartitionedCall?)module_wrapper_13/StatefulPartitionedCall?)module_wrapper_15/StatefulPartitionedCall?)module_wrapper_17/StatefulPartitionedCall?(module_wrapper_9/StatefulPartitionedCall?
(module_wrapper_9/StatefulPartitionedCallStatefulPartitionedCallinput_2module_wrapper_9_536758module_wrapper_9_536760*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_9_layer_call_and_return_conditional_losses_536218?
!module_wrapper_10/PartitionedCallPartitionedCall1module_wrapper_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_10_layer_call_and_return_conditional_losses_536238?
)module_wrapper_11/StatefulPartitionedCallStatefulPartitionedCall*module_wrapper_10/PartitionedCall:output:0module_wrapper_11_536764module_wrapper_11_536766*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_11_layer_call_and_return_conditional_losses_536263?
!module_wrapper_12/PartitionedCallPartitionedCall2module_wrapper_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_12_layer_call_and_return_conditional_losses_536274?
)module_wrapper_13/StatefulPartitionedCallStatefulPartitionedCall*module_wrapper_12/PartitionedCall:output:0module_wrapper_13_536770module_wrapper_13_536772*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  ?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_13_layer_call_and_return_conditional_losses_536299?
!module_wrapper_14/PartitionedCallPartitionedCall2module_wrapper_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  ?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_14_layer_call_and_return_conditional_losses_536310?
)module_wrapper_15/StatefulPartitionedCallStatefulPartitionedCall*module_wrapper_14/PartitionedCall:output:0module_wrapper_15_536776module_wrapper_15_536778*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????@@?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_15_layer_call_and_return_conditional_losses_536335?
!module_wrapper_16/PartitionedCallPartitionedCall2module_wrapper_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????@@?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_16_layer_call_and_return_conditional_losses_536346?
)module_wrapper_17/StatefulPartitionedCallStatefulPartitionedCall*module_wrapper_16/PartitionedCall:output:0module_wrapper_17_536782module_wrapper_17_536784*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_17_layer_call_and_return_conditional_losses_536359?
IdentityIdentity2module_wrapper_17/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@@?
NoOpNoOp*^module_wrapper_11/StatefulPartitionedCall*^module_wrapper_13/StatefulPartitionedCall*^module_wrapper_15/StatefulPartitionedCall*^module_wrapper_17/StatefulPartitionedCall)^module_wrapper_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????: : : : : : : : : : 2V
)module_wrapper_11/StatefulPartitionedCall)module_wrapper_11/StatefulPartitionedCall2V
)module_wrapper_13/StatefulPartitionedCall)module_wrapper_13/StatefulPartitionedCall2V
)module_wrapper_15/StatefulPartitionedCall)module_wrapper_15/StatefulPartitionedCall2V
)module_wrapper_17/StatefulPartitionedCall)module_wrapper_17/StatefulPartitionedCall2T
(module_wrapper_9/StatefulPartitionedCall(module_wrapper_9/StatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_2
? 
?
L__inference_conv2d_transpose_layer_call_and_return_conditional_losses_537474

inputsD
(conv2d_transpose_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: J
stack/3Const*
_output_shapes
: *
dtype0*
value
B :?y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,????????????????????????????*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,????????????????????????????z
IdentityIdentityBiasAdd:output:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,????????????????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?.
?
"__inference__traced_restore_537665
file_prefixD
0assignvariableop_module_wrapper_9_dense_1_kernel:
??@?
0assignvariableop_1_module_wrapper_9_dense_1_bias:	?@X
<assignvariableop_2_module_wrapper_11_conv2d_transpose_kernel:??I
:assignvariableop_3_module_wrapper_11_conv2d_transpose_bias:	?Z
>assignvariableop_4_module_wrapper_13_conv2d_transpose_1_kernel:??K
<assignvariableop_5_module_wrapper_13_conv2d_transpose_1_bias:	?Z
>assignvariableop_6_module_wrapper_15_conv2d_transpose_2_kernel:??K
<assignvariableop_7_module_wrapper_15_conv2d_transpose_2_bias:	?O
4assignvariableop_8_module_wrapper_17_conv2d_3_kernel:?@
2assignvariableop_9_module_wrapper_17_conv2d_3_bias:
identity_11??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*)
value BB B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*@
_output_shapes.
,:::::::::::*
dtypes
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp0assignvariableop_module_wrapper_9_dense_1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp0assignvariableop_1_module_wrapper_9_dense_1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp<assignvariableop_2_module_wrapper_11_conv2d_transpose_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp:assignvariableop_3_module_wrapper_11_conv2d_transpose_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp>assignvariableop_4_module_wrapper_13_conv2d_transpose_1_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp<assignvariableop_5_module_wrapper_13_conv2d_transpose_1_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp>assignvariableop_6_module_wrapper_15_conv2d_transpose_2_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp<assignvariableop_7_module_wrapper_15_conv2d_transpose_2_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp4assignvariableop_8_module_wrapper_17_conv2d_3_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp2assignvariableop_9_module_wrapper_17_conv2d_3_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_10Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_11IdentityIdentity_10:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_11Identity_11:output:0*)
_input_shapes
: : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
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
??
?
!__inference__wrapped_model_536201
input_2U
Agenerator_module_wrapper_9_dense_1_matmul_readvariableop_resource:
??@Q
Bgenerator_module_wrapper_9_dense_1_biasadd_readvariableop_resource:	?@q
Ugenerator_module_wrapper_11_conv2d_transpose_conv2d_transpose_readvariableop_resource:??[
Lgenerator_module_wrapper_11_conv2d_transpose_biasadd_readvariableop_resource:	?s
Wgenerator_module_wrapper_13_conv2d_transpose_1_conv2d_transpose_readvariableop_resource:??]
Ngenerator_module_wrapper_13_conv2d_transpose_1_biasadd_readvariableop_resource:	?s
Wgenerator_module_wrapper_15_conv2d_transpose_2_conv2d_transpose_readvariableop_resource:??]
Ngenerator_module_wrapper_15_conv2d_transpose_2_biasadd_readvariableop_resource:	?^
Cgenerator_module_wrapper_17_conv2d_3_conv2d_readvariableop_resource:?R
Dgenerator_module_wrapper_17_conv2d_3_biasadd_readvariableop_resource:
identity??Cgenerator/module_wrapper_11/conv2d_transpose/BiasAdd/ReadVariableOp?Lgenerator/module_wrapper_11/conv2d_transpose/conv2d_transpose/ReadVariableOp?Egenerator/module_wrapper_13/conv2d_transpose_1/BiasAdd/ReadVariableOp?Ngenerator/module_wrapper_13/conv2d_transpose_1/conv2d_transpose/ReadVariableOp?Egenerator/module_wrapper_15/conv2d_transpose_2/BiasAdd/ReadVariableOp?Ngenerator/module_wrapper_15/conv2d_transpose_2/conv2d_transpose/ReadVariableOp?;generator/module_wrapper_17/conv2d_3/BiasAdd/ReadVariableOp?:generator/module_wrapper_17/conv2d_3/Conv2D/ReadVariableOp?9generator/module_wrapper_9/dense_1/BiasAdd/ReadVariableOp?8generator/module_wrapper_9/dense_1/MatMul/ReadVariableOp?
8generator/module_wrapper_9/dense_1/MatMul/ReadVariableOpReadVariableOpAgenerator_module_wrapper_9_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??@*
dtype0?
)generator/module_wrapper_9/dense_1/MatMulMatMulinput_2@generator/module_wrapper_9/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????@?
9generator/module_wrapper_9/dense_1/BiasAdd/ReadVariableOpReadVariableOpBgenerator_module_wrapper_9_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?@*
dtype0?
*generator/module_wrapper_9/dense_1/BiasAddBiasAdd3generator/module_wrapper_9/dense_1/MatMul:product:0Agenerator/module_wrapper_9/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????@?
)generator/module_wrapper_10/reshape/ShapeShape3generator/module_wrapper_9/dense_1/BiasAdd:output:0*
T0*
_output_shapes
:?
7generator/module_wrapper_10/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
9generator/module_wrapper_10/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
9generator/module_wrapper_10/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
1generator/module_wrapper_10/reshape/strided_sliceStridedSlice2generator/module_wrapper_10/reshape/Shape:output:0@generator/module_wrapper_10/reshape/strided_slice/stack:output:0Bgenerator/module_wrapper_10/reshape/strided_slice/stack_1:output:0Bgenerator/module_wrapper_10/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
3generator/module_wrapper_10/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :u
3generator/module_wrapper_10/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :v
3generator/module_wrapper_10/reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :??
1generator/module_wrapper_10/reshape/Reshape/shapePack:generator/module_wrapper_10/reshape/strided_slice:output:0<generator/module_wrapper_10/reshape/Reshape/shape/1:output:0<generator/module_wrapper_10/reshape/Reshape/shape/2:output:0<generator/module_wrapper_10/reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
+generator/module_wrapper_10/reshape/ReshapeReshape3generator/module_wrapper_9/dense_1/BiasAdd:output:0:generator/module_wrapper_10/reshape/Reshape/shape:output:0*
T0*0
_output_shapes
:???????????
2generator/module_wrapper_11/conv2d_transpose/ShapeShape4generator/module_wrapper_10/reshape/Reshape:output:0*
T0*
_output_shapes
:?
@generator/module_wrapper_11/conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Bgenerator/module_wrapper_11/conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Bgenerator/module_wrapper_11/conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
:generator/module_wrapper_11/conv2d_transpose/strided_sliceStridedSlice;generator/module_wrapper_11/conv2d_transpose/Shape:output:0Igenerator/module_wrapper_11/conv2d_transpose/strided_slice/stack:output:0Kgenerator/module_wrapper_11/conv2d_transpose/strided_slice/stack_1:output:0Kgenerator/module_wrapper_11/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
4generator/module_wrapper_11/conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :v
4generator/module_wrapper_11/conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B :w
4generator/module_wrapper_11/conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value
B :??
2generator/module_wrapper_11/conv2d_transpose/stackPackCgenerator/module_wrapper_11/conv2d_transpose/strided_slice:output:0=generator/module_wrapper_11/conv2d_transpose/stack/1:output:0=generator/module_wrapper_11/conv2d_transpose/stack/2:output:0=generator/module_wrapper_11/conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:?
Bgenerator/module_wrapper_11/conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Dgenerator/module_wrapper_11/conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Dgenerator/module_wrapper_11/conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
<generator/module_wrapper_11/conv2d_transpose/strided_slice_1StridedSlice;generator/module_wrapper_11/conv2d_transpose/stack:output:0Kgenerator/module_wrapper_11/conv2d_transpose/strided_slice_1/stack:output:0Mgenerator/module_wrapper_11/conv2d_transpose/strided_slice_1/stack_1:output:0Mgenerator/module_wrapper_11/conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
Lgenerator/module_wrapper_11/conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOpUgenerator_module_wrapper_11_conv2d_transpose_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype0?
=generator/module_wrapper_11/conv2d_transpose/conv2d_transposeConv2DBackpropInput;generator/module_wrapper_11/conv2d_transpose/stack:output:0Tgenerator/module_wrapper_11/conv2d_transpose/conv2d_transpose/ReadVariableOp:value:04generator/module_wrapper_10/reshape/Reshape:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
Cgenerator/module_wrapper_11/conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOpLgenerator_module_wrapper_11_conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
4generator/module_wrapper_11/conv2d_transpose/BiasAddBiasAddFgenerator/module_wrapper_11/conv2d_transpose/conv2d_transpose:output:0Kgenerator/module_wrapper_11/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
3generator/module_wrapper_12/leaky_re_lu_3/LeakyRelu	LeakyRelu=generator/module_wrapper_11/conv2d_transpose/BiasAdd:output:0*0
_output_shapes
:???????????
4generator/module_wrapper_13/conv2d_transpose_1/ShapeShapeAgenerator/module_wrapper_12/leaky_re_lu_3/LeakyRelu:activations:0*
T0*
_output_shapes
:?
Bgenerator/module_wrapper_13/conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Dgenerator/module_wrapper_13/conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Dgenerator/module_wrapper_13/conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
<generator/module_wrapper_13/conv2d_transpose_1/strided_sliceStridedSlice=generator/module_wrapper_13/conv2d_transpose_1/Shape:output:0Kgenerator/module_wrapper_13/conv2d_transpose_1/strided_slice/stack:output:0Mgenerator/module_wrapper_13/conv2d_transpose_1/strided_slice/stack_1:output:0Mgenerator/module_wrapper_13/conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
6generator/module_wrapper_13/conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B : x
6generator/module_wrapper_13/conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B : y
6generator/module_wrapper_13/conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value
B :??
4generator/module_wrapper_13/conv2d_transpose_1/stackPackEgenerator/module_wrapper_13/conv2d_transpose_1/strided_slice:output:0?generator/module_wrapper_13/conv2d_transpose_1/stack/1:output:0?generator/module_wrapper_13/conv2d_transpose_1/stack/2:output:0?generator/module_wrapper_13/conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:?
Dgenerator/module_wrapper_13/conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Fgenerator/module_wrapper_13/conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Fgenerator/module_wrapper_13/conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
>generator/module_wrapper_13/conv2d_transpose_1/strided_slice_1StridedSlice=generator/module_wrapper_13/conv2d_transpose_1/stack:output:0Mgenerator/module_wrapper_13/conv2d_transpose_1/strided_slice_1/stack:output:0Ogenerator/module_wrapper_13/conv2d_transpose_1/strided_slice_1/stack_1:output:0Ogenerator/module_wrapper_13/conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
Ngenerator/module_wrapper_13/conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOpWgenerator_module_wrapper_13_conv2d_transpose_1_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype0?
?generator/module_wrapper_13/conv2d_transpose_1/conv2d_transposeConv2DBackpropInput=generator/module_wrapper_13/conv2d_transpose_1/stack:output:0Vgenerator/module_wrapper_13/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0Agenerator/module_wrapper_12/leaky_re_lu_3/LeakyRelu:activations:0*
T0*0
_output_shapes
:?????????  ?*
paddingSAME*
strides
?
Egenerator/module_wrapper_13/conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOpNgenerator_module_wrapper_13_conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
6generator/module_wrapper_13/conv2d_transpose_1/BiasAddBiasAddHgenerator/module_wrapper_13/conv2d_transpose_1/conv2d_transpose:output:0Mgenerator/module_wrapper_13/conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  ??
3generator/module_wrapper_14/leaky_re_lu_4/LeakyRelu	LeakyRelu?generator/module_wrapper_13/conv2d_transpose_1/BiasAdd:output:0*0
_output_shapes
:?????????  ??
4generator/module_wrapper_15/conv2d_transpose_2/ShapeShapeAgenerator/module_wrapper_14/leaky_re_lu_4/LeakyRelu:activations:0*
T0*
_output_shapes
:?
Bgenerator/module_wrapper_15/conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Dgenerator/module_wrapper_15/conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Dgenerator/module_wrapper_15/conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
<generator/module_wrapper_15/conv2d_transpose_2/strided_sliceStridedSlice=generator/module_wrapper_15/conv2d_transpose_2/Shape:output:0Kgenerator/module_wrapper_15/conv2d_transpose_2/strided_slice/stack:output:0Mgenerator/module_wrapper_15/conv2d_transpose_2/strided_slice/stack_1:output:0Mgenerator/module_wrapper_15/conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
6generator/module_wrapper_15/conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@x
6generator/module_wrapper_15/conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@y
6generator/module_wrapper_15/conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value
B :??
4generator/module_wrapper_15/conv2d_transpose_2/stackPackEgenerator/module_wrapper_15/conv2d_transpose_2/strided_slice:output:0?generator/module_wrapper_15/conv2d_transpose_2/stack/1:output:0?generator/module_wrapper_15/conv2d_transpose_2/stack/2:output:0?generator/module_wrapper_15/conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:?
Dgenerator/module_wrapper_15/conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Fgenerator/module_wrapper_15/conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Fgenerator/module_wrapper_15/conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
>generator/module_wrapper_15/conv2d_transpose_2/strided_slice_1StridedSlice=generator/module_wrapper_15/conv2d_transpose_2/stack:output:0Mgenerator/module_wrapper_15/conv2d_transpose_2/strided_slice_1/stack:output:0Ogenerator/module_wrapper_15/conv2d_transpose_2/strided_slice_1/stack_1:output:0Ogenerator/module_wrapper_15/conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
Ngenerator/module_wrapper_15/conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOpWgenerator_module_wrapper_15_conv2d_transpose_2_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype0?
?generator/module_wrapper_15/conv2d_transpose_2/conv2d_transposeConv2DBackpropInput=generator/module_wrapper_15/conv2d_transpose_2/stack:output:0Vgenerator/module_wrapper_15/conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:0Agenerator/module_wrapper_14/leaky_re_lu_4/LeakyRelu:activations:0*
T0*0
_output_shapes
:?????????@@?*
paddingSAME*
strides
?
Egenerator/module_wrapper_15/conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOpNgenerator_module_wrapper_15_conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
6generator/module_wrapper_15/conv2d_transpose_2/BiasAddBiasAddHgenerator/module_wrapper_15/conv2d_transpose_2/conv2d_transpose:output:0Mgenerator/module_wrapper_15/conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????@@??
3generator/module_wrapper_16/leaky_re_lu_5/LeakyRelu	LeakyRelu?generator/module_wrapper_15/conv2d_transpose_2/BiasAdd:output:0*0
_output_shapes
:?????????@@??
:generator/module_wrapper_17/conv2d_3/Conv2D/ReadVariableOpReadVariableOpCgenerator_module_wrapper_17_conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:?*
dtype0?
+generator/module_wrapper_17/conv2d_3/Conv2DConv2DAgenerator/module_wrapper_16/leaky_re_lu_5/LeakyRelu:activations:0Bgenerator/module_wrapper_17/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@*
paddingSAME*
strides
?
;generator/module_wrapper_17/conv2d_3/BiasAdd/ReadVariableOpReadVariableOpDgenerator_module_wrapper_17_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
,generator/module_wrapper_17/conv2d_3/BiasAddBiasAdd4generator/module_wrapper_17/conv2d_3/Conv2D:output:0Cgenerator/module_wrapper_17/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@?
,generator/module_wrapper_17/conv2d_3/SigmoidSigmoid5generator/module_wrapper_17/conv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@?
IdentityIdentity0generator/module_wrapper_17/conv2d_3/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:?????????@@?
NoOpNoOpD^generator/module_wrapper_11/conv2d_transpose/BiasAdd/ReadVariableOpM^generator/module_wrapper_11/conv2d_transpose/conv2d_transpose/ReadVariableOpF^generator/module_wrapper_13/conv2d_transpose_1/BiasAdd/ReadVariableOpO^generator/module_wrapper_13/conv2d_transpose_1/conv2d_transpose/ReadVariableOpF^generator/module_wrapper_15/conv2d_transpose_2/BiasAdd/ReadVariableOpO^generator/module_wrapper_15/conv2d_transpose_2/conv2d_transpose/ReadVariableOp<^generator/module_wrapper_17/conv2d_3/BiasAdd/ReadVariableOp;^generator/module_wrapper_17/conv2d_3/Conv2D/ReadVariableOp:^generator/module_wrapper_9/dense_1/BiasAdd/ReadVariableOp9^generator/module_wrapper_9/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????: : : : : : : : : : 2?
Cgenerator/module_wrapper_11/conv2d_transpose/BiasAdd/ReadVariableOpCgenerator/module_wrapper_11/conv2d_transpose/BiasAdd/ReadVariableOp2?
Lgenerator/module_wrapper_11/conv2d_transpose/conv2d_transpose/ReadVariableOpLgenerator/module_wrapper_11/conv2d_transpose/conv2d_transpose/ReadVariableOp2?
Egenerator/module_wrapper_13/conv2d_transpose_1/BiasAdd/ReadVariableOpEgenerator/module_wrapper_13/conv2d_transpose_1/BiasAdd/ReadVariableOp2?
Ngenerator/module_wrapper_13/conv2d_transpose_1/conv2d_transpose/ReadVariableOpNgenerator/module_wrapper_13/conv2d_transpose_1/conv2d_transpose/ReadVariableOp2?
Egenerator/module_wrapper_15/conv2d_transpose_2/BiasAdd/ReadVariableOpEgenerator/module_wrapper_15/conv2d_transpose_2/BiasAdd/ReadVariableOp2?
Ngenerator/module_wrapper_15/conv2d_transpose_2/conv2d_transpose/ReadVariableOpNgenerator/module_wrapper_15/conv2d_transpose_2/conv2d_transpose/ReadVariableOp2z
;generator/module_wrapper_17/conv2d_3/BiasAdd/ReadVariableOp;generator/module_wrapper_17/conv2d_3/BiasAdd/ReadVariableOp2x
:generator/module_wrapper_17/conv2d_3/Conv2D/ReadVariableOp:generator/module_wrapper_17/conv2d_3/Conv2D/ReadVariableOp2v
9generator/module_wrapper_9/dense_1/BiasAdd/ReadVariableOp9generator/module_wrapper_9/dense_1/BiasAdd/ReadVariableOp2t
8generator/module_wrapper_9/dense_1/MatMul/ReadVariableOp8generator/module_wrapper_9/dense_1/MatMul/ReadVariableOp:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_2
?,
?
E__inference_generator_layer_call_and_return_conditional_losses_536707

inputs+
module_wrapper_9_536677:
??@&
module_wrapper_9_536679:	?@4
module_wrapper_11_536683:??'
module_wrapper_11_536685:	?4
module_wrapper_13_536689:??'
module_wrapper_13_536691:	?4
module_wrapper_15_536695:??'
module_wrapper_15_536697:	?3
module_wrapper_17_536701:?&
module_wrapper_17_536703:
identity??)module_wrapper_11/StatefulPartitionedCall?)module_wrapper_13/StatefulPartitionedCall?)module_wrapper_15/StatefulPartitionedCall?)module_wrapper_17/StatefulPartitionedCall?(module_wrapper_9/StatefulPartitionedCall?
(module_wrapper_9/StatefulPartitionedCallStatefulPartitionedCallinputsmodule_wrapper_9_536677module_wrapper_9_536679*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_9_layer_call_and_return_conditional_losses_536640?
!module_wrapper_10/PartitionedCallPartitionedCall1module_wrapper_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_10_layer_call_and_return_conditional_losses_536615?
)module_wrapper_11/StatefulPartitionedCallStatefulPartitionedCall*module_wrapper_10/PartitionedCall:output:0module_wrapper_11_536683module_wrapper_11_536685*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_11_layer_call_and_return_conditional_losses_536586?
!module_wrapper_12/PartitionedCallPartitionedCall2module_wrapper_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_12_layer_call_and_return_conditional_losses_536548?
)module_wrapper_13/StatefulPartitionedCallStatefulPartitionedCall*module_wrapper_12/PartitionedCall:output:0module_wrapper_13_536689module_wrapper_13_536691*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  ?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_13_layer_call_and_return_conditional_losses_536528?
!module_wrapper_14/PartitionedCallPartitionedCall2module_wrapper_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  ?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_14_layer_call_and_return_conditional_losses_536490?
)module_wrapper_15/StatefulPartitionedCallStatefulPartitionedCall*module_wrapper_14/PartitionedCall:output:0module_wrapper_15_536695module_wrapper_15_536697*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????@@?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_15_layer_call_and_return_conditional_losses_536470?
!module_wrapper_16/PartitionedCallPartitionedCall2module_wrapper_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????@@?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_16_layer_call_and_return_conditional_losses_536432?
)module_wrapper_17/StatefulPartitionedCallStatefulPartitionedCall*module_wrapper_16/PartitionedCall:output:0module_wrapper_17_536701module_wrapper_17_536703*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_17_layer_call_and_return_conditional_losses_536412?
IdentityIdentity2module_wrapper_17/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@@?
NoOpNoOp*^module_wrapper_11/StatefulPartitionedCall*^module_wrapper_13/StatefulPartitionedCall*^module_wrapper_15/StatefulPartitionedCall*^module_wrapper_17/StatefulPartitionedCall)^module_wrapper_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????: : : : : : : : : : 2V
)module_wrapper_11/StatefulPartitionedCall)module_wrapper_11/StatefulPartitionedCall2V
)module_wrapper_13/StatefulPartitionedCall)module_wrapper_13/StatefulPartitionedCall2V
)module_wrapper_15/StatefulPartitionedCall)module_wrapper_15/StatefulPartitionedCall2V
)module_wrapper_17/StatefulPartitionedCall)module_wrapper_17/StatefulPartitionedCall2T
(module_wrapper_9/StatefulPartitionedCall(module_wrapper_9/StatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
Ћ
?
E__inference_generator_layer_call_and_return_conditional_losses_536958

inputsK
7module_wrapper_9_dense_1_matmul_readvariableop_resource:
??@G
8module_wrapper_9_dense_1_biasadd_readvariableop_resource:	?@g
Kmodule_wrapper_11_conv2d_transpose_conv2d_transpose_readvariableop_resource:??Q
Bmodule_wrapper_11_conv2d_transpose_biasadd_readvariableop_resource:	?i
Mmodule_wrapper_13_conv2d_transpose_1_conv2d_transpose_readvariableop_resource:??S
Dmodule_wrapper_13_conv2d_transpose_1_biasadd_readvariableop_resource:	?i
Mmodule_wrapper_15_conv2d_transpose_2_conv2d_transpose_readvariableop_resource:??S
Dmodule_wrapper_15_conv2d_transpose_2_biasadd_readvariableop_resource:	?T
9module_wrapper_17_conv2d_3_conv2d_readvariableop_resource:?H
:module_wrapper_17_conv2d_3_biasadd_readvariableop_resource:
identity??9module_wrapper_11/conv2d_transpose/BiasAdd/ReadVariableOp?Bmodule_wrapper_11/conv2d_transpose/conv2d_transpose/ReadVariableOp?;module_wrapper_13/conv2d_transpose_1/BiasAdd/ReadVariableOp?Dmodule_wrapper_13/conv2d_transpose_1/conv2d_transpose/ReadVariableOp?;module_wrapper_15/conv2d_transpose_2/BiasAdd/ReadVariableOp?Dmodule_wrapper_15/conv2d_transpose_2/conv2d_transpose/ReadVariableOp?1module_wrapper_17/conv2d_3/BiasAdd/ReadVariableOp?0module_wrapper_17/conv2d_3/Conv2D/ReadVariableOp?/module_wrapper_9/dense_1/BiasAdd/ReadVariableOp?.module_wrapper_9/dense_1/MatMul/ReadVariableOp?
.module_wrapper_9/dense_1/MatMul/ReadVariableOpReadVariableOp7module_wrapper_9_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??@*
dtype0?
module_wrapper_9/dense_1/MatMulMatMulinputs6module_wrapper_9/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????@?
/module_wrapper_9/dense_1/BiasAdd/ReadVariableOpReadVariableOp8module_wrapper_9_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?@*
dtype0?
 module_wrapper_9/dense_1/BiasAddBiasAdd)module_wrapper_9/dense_1/MatMul:product:07module_wrapper_9/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????@x
module_wrapper_10/reshape/ShapeShape)module_wrapper_9/dense_1/BiasAdd:output:0*
T0*
_output_shapes
:w
-module_wrapper_10/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/module_wrapper_10/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/module_wrapper_10/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'module_wrapper_10/reshape/strided_sliceStridedSlice(module_wrapper_10/reshape/Shape:output:06module_wrapper_10/reshape/strided_slice/stack:output:08module_wrapper_10/reshape/strided_slice/stack_1:output:08module_wrapper_10/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
)module_wrapper_10/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :k
)module_wrapper_10/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :l
)module_wrapper_10/reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :??
'module_wrapper_10/reshape/Reshape/shapePack0module_wrapper_10/reshape/strided_slice:output:02module_wrapper_10/reshape/Reshape/shape/1:output:02module_wrapper_10/reshape/Reshape/shape/2:output:02module_wrapper_10/reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
!module_wrapper_10/reshape/ReshapeReshape)module_wrapper_9/dense_1/BiasAdd:output:00module_wrapper_10/reshape/Reshape/shape:output:0*
T0*0
_output_shapes
:???????????
(module_wrapper_11/conv2d_transpose/ShapeShape*module_wrapper_10/reshape/Reshape:output:0*
T0*
_output_shapes
:?
6module_wrapper_11/conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8module_wrapper_11/conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8module_wrapper_11/conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0module_wrapper_11/conv2d_transpose/strided_sliceStridedSlice1module_wrapper_11/conv2d_transpose/Shape:output:0?module_wrapper_11/conv2d_transpose/strided_slice/stack:output:0Amodule_wrapper_11/conv2d_transpose/strided_slice/stack_1:output:0Amodule_wrapper_11/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*module_wrapper_11/conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :l
*module_wrapper_11/conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B :m
*module_wrapper_11/conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value
B :??
(module_wrapper_11/conv2d_transpose/stackPack9module_wrapper_11/conv2d_transpose/strided_slice:output:03module_wrapper_11/conv2d_transpose/stack/1:output:03module_wrapper_11/conv2d_transpose/stack/2:output:03module_wrapper_11/conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:?
8module_wrapper_11/conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
:module_wrapper_11/conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
:module_wrapper_11/conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
2module_wrapper_11/conv2d_transpose/strided_slice_1StridedSlice1module_wrapper_11/conv2d_transpose/stack:output:0Amodule_wrapper_11/conv2d_transpose/strided_slice_1/stack:output:0Cmodule_wrapper_11/conv2d_transpose/strided_slice_1/stack_1:output:0Cmodule_wrapper_11/conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
Bmodule_wrapper_11/conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOpKmodule_wrapper_11_conv2d_transpose_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype0?
3module_wrapper_11/conv2d_transpose/conv2d_transposeConv2DBackpropInput1module_wrapper_11/conv2d_transpose/stack:output:0Jmodule_wrapper_11/conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0*module_wrapper_10/reshape/Reshape:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
9module_wrapper_11/conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOpBmodule_wrapper_11_conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
*module_wrapper_11/conv2d_transpose/BiasAddBiasAdd<module_wrapper_11/conv2d_transpose/conv2d_transpose:output:0Amodule_wrapper_11/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
)module_wrapper_12/leaky_re_lu_3/LeakyRelu	LeakyRelu3module_wrapper_11/conv2d_transpose/BiasAdd:output:0*0
_output_shapes
:???????????
*module_wrapper_13/conv2d_transpose_1/ShapeShape7module_wrapper_12/leaky_re_lu_3/LeakyRelu:activations:0*
T0*
_output_shapes
:?
8module_wrapper_13/conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
:module_wrapper_13/conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
:module_wrapper_13/conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
2module_wrapper_13/conv2d_transpose_1/strided_sliceStridedSlice3module_wrapper_13/conv2d_transpose_1/Shape:output:0Amodule_wrapper_13/conv2d_transpose_1/strided_slice/stack:output:0Cmodule_wrapper_13/conv2d_transpose_1/strided_slice/stack_1:output:0Cmodule_wrapper_13/conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
,module_wrapper_13/conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B : n
,module_wrapper_13/conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B : o
,module_wrapper_13/conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value
B :??
*module_wrapper_13/conv2d_transpose_1/stackPack;module_wrapper_13/conv2d_transpose_1/strided_slice:output:05module_wrapper_13/conv2d_transpose_1/stack/1:output:05module_wrapper_13/conv2d_transpose_1/stack/2:output:05module_wrapper_13/conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:?
:module_wrapper_13/conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
<module_wrapper_13/conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
<module_wrapper_13/conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
4module_wrapper_13/conv2d_transpose_1/strided_slice_1StridedSlice3module_wrapper_13/conv2d_transpose_1/stack:output:0Cmodule_wrapper_13/conv2d_transpose_1/strided_slice_1/stack:output:0Emodule_wrapper_13/conv2d_transpose_1/strided_slice_1/stack_1:output:0Emodule_wrapper_13/conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
Dmodule_wrapper_13/conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOpMmodule_wrapper_13_conv2d_transpose_1_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype0?
5module_wrapper_13/conv2d_transpose_1/conv2d_transposeConv2DBackpropInput3module_wrapper_13/conv2d_transpose_1/stack:output:0Lmodule_wrapper_13/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:07module_wrapper_12/leaky_re_lu_3/LeakyRelu:activations:0*
T0*0
_output_shapes
:?????????  ?*
paddingSAME*
strides
?
;module_wrapper_13/conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOpDmodule_wrapper_13_conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,module_wrapper_13/conv2d_transpose_1/BiasAddBiasAdd>module_wrapper_13/conv2d_transpose_1/conv2d_transpose:output:0Cmodule_wrapper_13/conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  ??
)module_wrapper_14/leaky_re_lu_4/LeakyRelu	LeakyRelu5module_wrapper_13/conv2d_transpose_1/BiasAdd:output:0*0
_output_shapes
:?????????  ??
*module_wrapper_15/conv2d_transpose_2/ShapeShape7module_wrapper_14/leaky_re_lu_4/LeakyRelu:activations:0*
T0*
_output_shapes
:?
8module_wrapper_15/conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
:module_wrapper_15/conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
:module_wrapper_15/conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
2module_wrapper_15/conv2d_transpose_2/strided_sliceStridedSlice3module_wrapper_15/conv2d_transpose_2/Shape:output:0Amodule_wrapper_15/conv2d_transpose_2/strided_slice/stack:output:0Cmodule_wrapper_15/conv2d_transpose_2/strided_slice/stack_1:output:0Cmodule_wrapper_15/conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
,module_wrapper_15/conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@n
,module_wrapper_15/conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@o
,module_wrapper_15/conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value
B :??
*module_wrapper_15/conv2d_transpose_2/stackPack;module_wrapper_15/conv2d_transpose_2/strided_slice:output:05module_wrapper_15/conv2d_transpose_2/stack/1:output:05module_wrapper_15/conv2d_transpose_2/stack/2:output:05module_wrapper_15/conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:?
:module_wrapper_15/conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
<module_wrapper_15/conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
<module_wrapper_15/conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
4module_wrapper_15/conv2d_transpose_2/strided_slice_1StridedSlice3module_wrapper_15/conv2d_transpose_2/stack:output:0Cmodule_wrapper_15/conv2d_transpose_2/strided_slice_1/stack:output:0Emodule_wrapper_15/conv2d_transpose_2/strided_slice_1/stack_1:output:0Emodule_wrapper_15/conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
Dmodule_wrapper_15/conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOpMmodule_wrapper_15_conv2d_transpose_2_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype0?
5module_wrapper_15/conv2d_transpose_2/conv2d_transposeConv2DBackpropInput3module_wrapper_15/conv2d_transpose_2/stack:output:0Lmodule_wrapper_15/conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:07module_wrapper_14/leaky_re_lu_4/LeakyRelu:activations:0*
T0*0
_output_shapes
:?????????@@?*
paddingSAME*
strides
?
;module_wrapper_15/conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOpDmodule_wrapper_15_conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,module_wrapper_15/conv2d_transpose_2/BiasAddBiasAdd>module_wrapper_15/conv2d_transpose_2/conv2d_transpose:output:0Cmodule_wrapper_15/conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????@@??
)module_wrapper_16/leaky_re_lu_5/LeakyRelu	LeakyRelu5module_wrapper_15/conv2d_transpose_2/BiasAdd:output:0*0
_output_shapes
:?????????@@??
0module_wrapper_17/conv2d_3/Conv2D/ReadVariableOpReadVariableOp9module_wrapper_17_conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:?*
dtype0?
!module_wrapper_17/conv2d_3/Conv2DConv2D7module_wrapper_16/leaky_re_lu_5/LeakyRelu:activations:08module_wrapper_17/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@*
paddingSAME*
strides
?
1module_wrapper_17/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp:module_wrapper_17_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
"module_wrapper_17/conv2d_3/BiasAddBiasAdd*module_wrapper_17/conv2d_3/Conv2D:output:09module_wrapper_17/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@?
"module_wrapper_17/conv2d_3/SigmoidSigmoid+module_wrapper_17/conv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@}
IdentityIdentity&module_wrapper_17/conv2d_3/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:?????????@@?
NoOpNoOp:^module_wrapper_11/conv2d_transpose/BiasAdd/ReadVariableOpC^module_wrapper_11/conv2d_transpose/conv2d_transpose/ReadVariableOp<^module_wrapper_13/conv2d_transpose_1/BiasAdd/ReadVariableOpE^module_wrapper_13/conv2d_transpose_1/conv2d_transpose/ReadVariableOp<^module_wrapper_15/conv2d_transpose_2/BiasAdd/ReadVariableOpE^module_wrapper_15/conv2d_transpose_2/conv2d_transpose/ReadVariableOp2^module_wrapper_17/conv2d_3/BiasAdd/ReadVariableOp1^module_wrapper_17/conv2d_3/Conv2D/ReadVariableOp0^module_wrapper_9/dense_1/BiasAdd/ReadVariableOp/^module_wrapper_9/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????: : : : : : : : : : 2v
9module_wrapper_11/conv2d_transpose/BiasAdd/ReadVariableOp9module_wrapper_11/conv2d_transpose/BiasAdd/ReadVariableOp2?
Bmodule_wrapper_11/conv2d_transpose/conv2d_transpose/ReadVariableOpBmodule_wrapper_11/conv2d_transpose/conv2d_transpose/ReadVariableOp2z
;module_wrapper_13/conv2d_transpose_1/BiasAdd/ReadVariableOp;module_wrapper_13/conv2d_transpose_1/BiasAdd/ReadVariableOp2?
Dmodule_wrapper_13/conv2d_transpose_1/conv2d_transpose/ReadVariableOpDmodule_wrapper_13/conv2d_transpose_1/conv2d_transpose/ReadVariableOp2z
;module_wrapper_15/conv2d_transpose_2/BiasAdd/ReadVariableOp;module_wrapper_15/conv2d_transpose_2/BiasAdd/ReadVariableOp2?
Dmodule_wrapper_15/conv2d_transpose_2/conv2d_transpose/ReadVariableOpDmodule_wrapper_15/conv2d_transpose_2/conv2d_transpose/ReadVariableOp2f
1module_wrapper_17/conv2d_3/BiasAdd/ReadVariableOp1module_wrapper_17/conv2d_3/BiasAdd/ReadVariableOp2d
0module_wrapper_17/conv2d_3/Conv2D/ReadVariableOp0module_wrapper_17/conv2d_3/Conv2D/ReadVariableOp2b
/module_wrapper_9/dense_1/BiasAdd/ReadVariableOp/module_wrapper_9/dense_1/BiasAdd/ReadVariableOp2`
.module_wrapper_9/dense_1/MatMul/ReadVariableOp.module_wrapper_9/dense_1/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
M__inference_module_wrapper_13_layer_call_and_return_conditional_losses_537273

args_0W
;conv2d_transpose_1_conv2d_transpose_readvariableop_resource:??A
2conv2d_transpose_1_biasadd_readvariableop_resource:	?
identity??)conv2d_transpose_1/BiasAdd/ReadVariableOp?2conv2d_transpose_1/conv2d_transpose/ReadVariableOpN
conv2d_transpose_1/ShapeShapeargs_0*
T0*
_output_shapes
:p
&conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv2d_transpose_1/strided_sliceStridedSlice!conv2d_transpose_1/Shape:output:0/conv2d_transpose_1/strided_slice/stack:output:01conv2d_transpose_1/strided_slice/stack_1:output:01conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B : \
conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B : ]
conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value
B :??
conv2d_transpose_1/stackPack)conv2d_transpose_1/strided_slice:output:0#conv2d_transpose_1/stack/1:output:0#conv2d_transpose_1/stack/2:output:0#conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"conv2d_transpose_1/strided_slice_1StridedSlice!conv2d_transpose_1/stack:output:01conv2d_transpose_1/strided_slice_1/stack:output:03conv2d_transpose_1/strided_slice_1/stack_1:output:03conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
2conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_1_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype0?
#conv2d_transpose_1/conv2d_transposeConv2DBackpropInput!conv2d_transpose_1/stack:output:0:conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0args_0*
T0*0
_output_shapes
:?????????  ?*
paddingSAME*
strides
?
)conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_transpose_1/BiasAddBiasAdd,conv2d_transpose_1/conv2d_transpose:output:01conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  ?{
IdentityIdentity#conv2d_transpose_1/BiasAdd:output:0^NoOp*
T0*0
_output_shapes
:?????????  ??
NoOpNoOp*^conv2d_transpose_1/BiasAdd/ReadVariableOp3^conv2d_transpose_1/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 2V
)conv2d_transpose_1/BiasAdd/ReadVariableOp)conv2d_transpose_1/BiasAdd/ReadVariableOp2h
2conv2d_transpose_1/conv2d_transpose/ReadVariableOp2conv2d_transpose_1/conv2d_transpose/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
i
M__inference_module_wrapper_10_layer_call_and_return_conditional_losses_536238

args_0
identityC
reshape/ShapeShapeargs_0*
T0*
_output_shapes
:e
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Y
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Z
reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :??
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0 reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:}
reshape/ReshapeReshapeargs_0reshape/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????i
IdentityIdentityreshape/Reshape:output:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????@:P L
(
_output_shapes
:??????????@
 
_user_specified_nameargs_0
?
?
M__inference_module_wrapper_15_layer_call_and_return_conditional_losses_537357

args_0W
;conv2d_transpose_2_conv2d_transpose_readvariableop_resource:??A
2conv2d_transpose_2_biasadd_readvariableop_resource:	?
identity??)conv2d_transpose_2/BiasAdd/ReadVariableOp?2conv2d_transpose_2/conv2d_transpose/ReadVariableOpN
conv2d_transpose_2/ShapeShapeargs_0*
T0*
_output_shapes
:p
&conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv2d_transpose_2/strided_sliceStridedSlice!conv2d_transpose_2/Shape:output:0/conv2d_transpose_2/strided_slice/stack:output:01conv2d_transpose_2/strided_slice/stack_1:output:01conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@\
conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@]
conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value
B :??
conv2d_transpose_2/stackPack)conv2d_transpose_2/strided_slice:output:0#conv2d_transpose_2/stack/1:output:0#conv2d_transpose_2/stack/2:output:0#conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"conv2d_transpose_2/strided_slice_1StridedSlice!conv2d_transpose_2/stack:output:01conv2d_transpose_2/strided_slice_1/stack:output:03conv2d_transpose_2/strided_slice_1/stack_1:output:03conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
2conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_2_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype0?
#conv2d_transpose_2/conv2d_transposeConv2DBackpropInput!conv2d_transpose_2/stack:output:0:conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:0args_0*
T0*0
_output_shapes
:?????????@@?*
paddingSAME*
strides
?
)conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_transpose_2/BiasAddBiasAdd,conv2d_transpose_2/conv2d_transpose:output:01conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????@@?{
IdentityIdentity#conv2d_transpose_2/BiasAdd:output:0^NoOp*
T0*0
_output_shapes
:?????????@@??
NoOpNoOp*^conv2d_transpose_2/BiasAdd/ReadVariableOp3^conv2d_transpose_2/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????  ?: : 2V
)conv2d_transpose_2/BiasAdd/ReadVariableOp)conv2d_transpose_2/BiasAdd/ReadVariableOp2h
2conv2d_transpose_2/conv2d_transpose/ReadVariableOp2conv2d_transpose_2/conv2d_transpose/ReadVariableOp:X T
0
_output_shapes
:?????????  ?
 
_user_specified_nameargs_0
?
?
M__inference_module_wrapper_15_layer_call_and_return_conditional_losses_536470

args_0W
;conv2d_transpose_2_conv2d_transpose_readvariableop_resource:??A
2conv2d_transpose_2_biasadd_readvariableop_resource:	?
identity??)conv2d_transpose_2/BiasAdd/ReadVariableOp?2conv2d_transpose_2/conv2d_transpose/ReadVariableOpN
conv2d_transpose_2/ShapeShapeargs_0*
T0*
_output_shapes
:p
&conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv2d_transpose_2/strided_sliceStridedSlice!conv2d_transpose_2/Shape:output:0/conv2d_transpose_2/strided_slice/stack:output:01conv2d_transpose_2/strided_slice/stack_1:output:01conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@\
conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@]
conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value
B :??
conv2d_transpose_2/stackPack)conv2d_transpose_2/strided_slice:output:0#conv2d_transpose_2/stack/1:output:0#conv2d_transpose_2/stack/2:output:0#conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"conv2d_transpose_2/strided_slice_1StridedSlice!conv2d_transpose_2/stack:output:01conv2d_transpose_2/strided_slice_1/stack:output:03conv2d_transpose_2/strided_slice_1/stack_1:output:03conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
2conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_2_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype0?
#conv2d_transpose_2/conv2d_transposeConv2DBackpropInput!conv2d_transpose_2/stack:output:0:conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:0args_0*
T0*0
_output_shapes
:?????????@@?*
paddingSAME*
strides
?
)conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_transpose_2/BiasAddBiasAdd,conv2d_transpose_2/conv2d_transpose:output:01conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????@@?{
IdentityIdentity#conv2d_transpose_2/BiasAdd:output:0^NoOp*
T0*0
_output_shapes
:?????????@@??
NoOpNoOp*^conv2d_transpose_2/BiasAdd/ReadVariableOp3^conv2d_transpose_2/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????  ?: : 2V
)conv2d_transpose_2/BiasAdd/ReadVariableOp)conv2d_transpose_2/BiasAdd/ReadVariableOp2h
2conv2d_transpose_2/conv2d_transpose/ReadVariableOp2conv2d_transpose_2/conv2d_transpose/ReadVariableOp:X T
0
_output_shapes
:?????????  ?
 
_user_specified_nameargs_0
?
N
2__inference_module_wrapper_16_layer_call_fn_537390

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????@@?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_16_layer_call_and_return_conditional_losses_536432i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:?????????@@?"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????@@?:X T
0
_output_shapes
:?????????@@?
 
_user_specified_nameargs_0
?
i
M__inference_module_wrapper_10_layer_call_and_return_conditional_losses_537134

args_0
identityC
reshape/ShapeShapeargs_0*
T0*
_output_shapes
:e
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Y
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Z
reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :??
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0 reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:}
reshape/ReshapeReshapeargs_0reshape/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????i
IdentityIdentityreshape/Reshape:output:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????@:P L
(
_output_shapes
:??????????@
 
_user_specified_nameargs_0
?
?
3__inference_conv2d_transpose_1_layer_call_fn_537528

inputs#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_537518?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,????????????????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?#
?
__inference__traced_save_537625
file_prefix>
:savev2_module_wrapper_9_dense_1_kernel_read_readvariableop<
8savev2_module_wrapper_9_dense_1_bias_read_readvariableopH
Dsavev2_module_wrapper_11_conv2d_transpose_kernel_read_readvariableopF
Bsavev2_module_wrapper_11_conv2d_transpose_bias_read_readvariableopJ
Fsavev2_module_wrapper_13_conv2d_transpose_1_kernel_read_readvariableopH
Dsavev2_module_wrapper_13_conv2d_transpose_1_bias_read_readvariableopJ
Fsavev2_module_wrapper_15_conv2d_transpose_2_kernel_read_readvariableopH
Dsavev2_module_wrapper_15_conv2d_transpose_2_bias_read_readvariableop@
<savev2_module_wrapper_17_conv2d_3_kernel_read_readvariableop>
:savev2_module_wrapper_17_conv2d_3_bias_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
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
_temp/part?
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
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*)
value BB B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0:savev2_module_wrapper_9_dense_1_kernel_read_readvariableop8savev2_module_wrapper_9_dense_1_bias_read_readvariableopDsavev2_module_wrapper_11_conv2d_transpose_kernel_read_readvariableopBsavev2_module_wrapper_11_conv2d_transpose_bias_read_readvariableopFsavev2_module_wrapper_13_conv2d_transpose_1_kernel_read_readvariableopDsavev2_module_wrapper_13_conv2d_transpose_1_bias_read_readvariableopFsavev2_module_wrapper_15_conv2d_transpose_2_kernel_read_readvariableopDsavev2_module_wrapper_15_conv2d_transpose_2_bias_read_readvariableop<savev2_module_wrapper_17_conv2d_3_kernel_read_readvariableop:savev2_module_wrapper_17_conv2d_3_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
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

identity_1Identity_1:output:0*?
_input_shapes?
?: :
??@:?@:??:?:??:?:??:?:?:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
??@:!

_output_shapes	
:?@:.*
(
_output_shapes
:??:!

_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:-	)
'
_output_shapes
:?: 


_output_shapes
::

_output_shapes
: 
?
i
M__inference_module_wrapper_16_layer_call_and_return_conditional_losses_536346

args_0
identity^
leaky_re_lu_5/LeakyRelu	LeakyReluargs_0*0
_output_shapes
:?????????@@?v
IdentityIdentity%leaky_re_lu_5/LeakyRelu:activations:0*
T0*0
_output_shapes
:?????????@@?"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????@@?:X T
0
_output_shapes
:?????????@@?
 
_user_specified_nameargs_0
?

?
*__inference_generator_layer_call_fn_536389
input_2
unknown:
??@
	unknown_0:	?@%
	unknown_1:??
	unknown_2:	?%
	unknown_3:??
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?$
	unknown_7:?
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_generator_layer_call_and_return_conditional_losses_536366w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_2
?
N
2__inference_module_wrapper_10_layer_call_fn_537120

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_10_layer_call_and_return_conditional_losses_536615i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????@:P L
(
_output_shapes
:??????????@
 
_user_specified_nameargs_0
?
?
2__inference_module_wrapper_17_layer_call_fn_537418

args_0"
unknown:?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_17_layer_call_and_return_conditional_losses_536412w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????@@?: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????@@?
 
_user_specified_nameargs_0
?
?
2__inference_module_wrapper_17_layer_call_fn_537409

args_0"
unknown:?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_17_layer_call_and_return_conditional_losses_536359w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????@@?: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????@@?
 
_user_specified_nameargs_0
?
?
2__inference_module_wrapper_13_layer_call_fn_537250

args_0#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  ?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_13_layer_call_and_return_conditional_losses_536528x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????  ?`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?

?
L__inference_module_wrapper_9_layer_call_and_return_conditional_losses_536640

args_0:
&dense_1_matmul_readvariableop_resource:
??@6
'dense_1_biasadd_readvariableop_resource:	?@
identity??dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??@*
dtype0z
dense_1/MatMulMatMulargs_0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????@?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?@*
dtype0?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????@h
IdentityIdentitydense_1/BiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??????????@?
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
N
2__inference_module_wrapper_14_layer_call_fn_537301

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  ?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_14_layer_call_and_return_conditional_losses_536310i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:?????????  ?"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????  ?:X T
0
_output_shapes
:?????????  ?
 
_user_specified_nameargs_0
?
?
M__inference_module_wrapper_17_layer_call_and_return_conditional_losses_536412

args_0B
'conv2d_3_conv2d_readvariableop_resource:?6
(conv2d_3_biasadd_readvariableop_resource:
identity??conv2d_3/BiasAdd/ReadVariableOp?conv2d_3/Conv2D/ReadVariableOp?
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:?*
dtype0?
conv2d_3/Conv2DConv2Dargs_0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@*
paddingSAME*
strides
?
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@p
conv2d_3/SigmoidSigmoidconv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@k
IdentityIdentityconv2d_3/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:?????????@@?
NoOpNoOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????@@?: : 2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp:X T
0
_output_shapes
:?????????@@?
 
_user_specified_nameargs_0
?
i
M__inference_module_wrapper_12_layer_call_and_return_conditional_losses_537232

args_0
identity^
leaky_re_lu_3/LeakyRelu	LeakyReluargs_0*0
_output_shapes
:??????????v
IdentityIdentity%leaky_re_lu_3/LeakyRelu:activations:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
N
2__inference_module_wrapper_12_layer_call_fn_537222

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_12_layer_call_and_return_conditional_losses_536548i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
M__inference_module_wrapper_13_layer_call_and_return_conditional_losses_536299

args_0W
;conv2d_transpose_1_conv2d_transpose_readvariableop_resource:??A
2conv2d_transpose_1_biasadd_readvariableop_resource:	?
identity??)conv2d_transpose_1/BiasAdd/ReadVariableOp?2conv2d_transpose_1/conv2d_transpose/ReadVariableOpN
conv2d_transpose_1/ShapeShapeargs_0*
T0*
_output_shapes
:p
&conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv2d_transpose_1/strided_sliceStridedSlice!conv2d_transpose_1/Shape:output:0/conv2d_transpose_1/strided_slice/stack:output:01conv2d_transpose_1/strided_slice/stack_1:output:01conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B : \
conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B : ]
conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value
B :??
conv2d_transpose_1/stackPack)conv2d_transpose_1/strided_slice:output:0#conv2d_transpose_1/stack/1:output:0#conv2d_transpose_1/stack/2:output:0#conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"conv2d_transpose_1/strided_slice_1StridedSlice!conv2d_transpose_1/stack:output:01conv2d_transpose_1/strided_slice_1/stack:output:03conv2d_transpose_1/strided_slice_1/stack_1:output:03conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
2conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_1_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype0?
#conv2d_transpose_1/conv2d_transposeConv2DBackpropInput!conv2d_transpose_1/stack:output:0:conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0args_0*
T0*0
_output_shapes
:?????????  ?*
paddingSAME*
strides
?
)conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_transpose_1/BiasAddBiasAdd,conv2d_transpose_1/conv2d_transpose:output:01conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  ?{
IdentityIdentity#conv2d_transpose_1/BiasAdd:output:0^NoOp*
T0*0
_output_shapes
:?????????  ??
NoOpNoOp*^conv2d_transpose_1/BiasAdd/ReadVariableOp3^conv2d_transpose_1/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 2V
)conv2d_transpose_1/BiasAdd/ReadVariableOp)conv2d_transpose_1/BiasAdd/ReadVariableOp2h
2conv2d_transpose_1/conv2d_transpose/ReadVariableOp2conv2d_transpose_1/conv2d_transpose/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
i
M__inference_module_wrapper_14_layer_call_and_return_conditional_losses_536310

args_0
identity^
leaky_re_lu_4/LeakyRelu	LeakyReluargs_0*0
_output_shapes
:?????????  ?v
IdentityIdentity%leaky_re_lu_4/LeakyRelu:activations:0*
T0*0
_output_shapes
:?????????  ?"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????  ?:X T
0
_output_shapes
:?????????  ?
 
_user_specified_nameargs_0
?,
?
E__inference_generator_layer_call_and_return_conditional_losses_536821
input_2+
module_wrapper_9_536791:
??@&
module_wrapper_9_536793:	?@4
module_wrapper_11_536797:??'
module_wrapper_11_536799:	?4
module_wrapper_13_536803:??'
module_wrapper_13_536805:	?4
module_wrapper_15_536809:??'
module_wrapper_15_536811:	?3
module_wrapper_17_536815:?&
module_wrapper_17_536817:
identity??)module_wrapper_11/StatefulPartitionedCall?)module_wrapper_13/StatefulPartitionedCall?)module_wrapper_15/StatefulPartitionedCall?)module_wrapper_17/StatefulPartitionedCall?(module_wrapper_9/StatefulPartitionedCall?
(module_wrapper_9/StatefulPartitionedCallStatefulPartitionedCallinput_2module_wrapper_9_536791module_wrapper_9_536793*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_9_layer_call_and_return_conditional_losses_536640?
!module_wrapper_10/PartitionedCallPartitionedCall1module_wrapper_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_10_layer_call_and_return_conditional_losses_536615?
)module_wrapper_11/StatefulPartitionedCallStatefulPartitionedCall*module_wrapper_10/PartitionedCall:output:0module_wrapper_11_536797module_wrapper_11_536799*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_11_layer_call_and_return_conditional_losses_536586?
!module_wrapper_12/PartitionedCallPartitionedCall2module_wrapper_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_12_layer_call_and_return_conditional_losses_536548?
)module_wrapper_13/StatefulPartitionedCallStatefulPartitionedCall*module_wrapper_12/PartitionedCall:output:0module_wrapper_13_536803module_wrapper_13_536805*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  ?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_13_layer_call_and_return_conditional_losses_536528?
!module_wrapper_14/PartitionedCallPartitionedCall2module_wrapper_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  ?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_14_layer_call_and_return_conditional_losses_536490?
)module_wrapper_15/StatefulPartitionedCallStatefulPartitionedCall*module_wrapper_14/PartitionedCall:output:0module_wrapper_15_536809module_wrapper_15_536811*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????@@?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_15_layer_call_and_return_conditional_losses_536470?
!module_wrapper_16/PartitionedCallPartitionedCall2module_wrapper_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????@@?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_16_layer_call_and_return_conditional_losses_536432?
)module_wrapper_17/StatefulPartitionedCallStatefulPartitionedCall*module_wrapper_16/PartitionedCall:output:0module_wrapper_17_536815module_wrapper_17_536817*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_17_layer_call_and_return_conditional_losses_536412?
IdentityIdentity2module_wrapper_17/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@@?
NoOpNoOp*^module_wrapper_11/StatefulPartitionedCall*^module_wrapper_13/StatefulPartitionedCall*^module_wrapper_15/StatefulPartitionedCall*^module_wrapper_17/StatefulPartitionedCall)^module_wrapper_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????: : : : : : : : : : 2V
)module_wrapper_11/StatefulPartitionedCall)module_wrapper_11/StatefulPartitionedCall2V
)module_wrapper_13/StatefulPartitionedCall)module_wrapper_13/StatefulPartitionedCall2V
)module_wrapper_15/StatefulPartitionedCall)module_wrapper_15/StatefulPartitionedCall2V
)module_wrapper_17/StatefulPartitionedCall)module_wrapper_17/StatefulPartitionedCall2T
(module_wrapper_9/StatefulPartitionedCall(module_wrapper_9/StatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_2
?
?
M__inference_module_wrapper_11_layer_call_and_return_conditional_losses_537189

args_0U
9conv2d_transpose_conv2d_transpose_readvariableop_resource:???
0conv2d_transpose_biasadd_readvariableop_resource:	?
identity??'conv2d_transpose/BiasAdd/ReadVariableOp?0conv2d_transpose/conv2d_transpose/ReadVariableOpL
conv2d_transpose/ShapeShapeargs_0*
T0*
_output_shapes
:n
$conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
conv2d_transpose/strided_sliceStridedSliceconv2d_transpose/Shape:output:0-conv2d_transpose/strided_slice/stack:output:0/conv2d_transpose/strided_slice/stack_1:output:0/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :Z
conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B :[
conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value
B :??
conv2d_transpose/stackPack'conv2d_transpose/strided_slice:output:0!conv2d_transpose/stack/1:output:0!conv2d_transpose/stack/2:output:0!conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:p
&conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv2d_transpose/strided_slice_1StridedSliceconv2d_transpose/stack:output:0/conv2d_transpose/strided_slice_1/stack:output:01conv2d_transpose/strided_slice_1/stack_1:output:01conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
0conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOp9conv2d_transpose_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype0?
!conv2d_transpose/conv2d_transposeConv2DBackpropInputconv2d_transpose/stack:output:08conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0args_0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
'conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp0conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_transpose/BiasAddBiasAdd*conv2d_transpose/conv2d_transpose:output:0/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????y
IdentityIdentity!conv2d_transpose/BiasAdd:output:0^NoOp*
T0*0
_output_shapes
:???????????
NoOpNoOp(^conv2d_transpose/BiasAdd/ReadVariableOp1^conv2d_transpose/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 2R
'conv2d_transpose/BiasAdd/ReadVariableOp'conv2d_transpose/BiasAdd/ReadVariableOp2d
0conv2d_transpose/conv2d_transpose/ReadVariableOp0conv2d_transpose/conv2d_transpose/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
i
M__inference_module_wrapper_14_layer_call_and_return_conditional_losses_537316

args_0
identity^
leaky_re_lu_4/LeakyRelu	LeakyReluargs_0*0
_output_shapes
:?????????  ?v
IdentityIdentity%leaky_re_lu_4/LeakyRelu:activations:0*
T0*0
_output_shapes
:?????????  ?"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????  ?:X T
0
_output_shapes
:?????????  ?
 
_user_specified_nameargs_0
?
?
2__inference_module_wrapper_13_layer_call_fn_537241

args_0#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  ?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_13_layer_call_and_return_conditional_losses_536299x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????  ?`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
2__inference_module_wrapper_15_layer_call_fn_537325

args_0#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????@@?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_module_wrapper_15_layer_call_and_return_conditional_losses_536335x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????@@?`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????  ?: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????  ?
 
_user_specified_nameargs_0"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
<
input_21
serving_default_input_2:0??????????M
module_wrapper_178
StatefulPartitionedCall:0?????????@@tensorflow/serving/predict:??
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
?
_module
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
?
_module
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
?
 _module
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses"
_tf_keras_layer
?
'_module
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses"
_tf_keras_layer
?
._module
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses"
_tf_keras_layer
?
5_module
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses"
_tf_keras_layer
?
<_module
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses"
_tf_keras_layer
?
C_module
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses"
_tf_keras_layer
?
J_module
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses"
_tf_keras_layer
f
Q0
R1
S2
T3
U4
V5
W6
X7
Y8
Z9"
trackable_list_wrapper
f
Q0
R1
S2
T3
U4
V5
W6
X7
Y8
Z9"
trackable_list_wrapper
 "
trackable_list_wrapper
?
[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
*__inference_generator_layer_call_fn_536389
*__inference_generator_layer_call_fn_536846
*__inference_generator_layer_call_fn_536871
*__inference_generator_layer_call_fn_536755?
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
E__inference_generator_layer_call_and_return_conditional_losses_536958
E__inference_generator_layer_call_and_return_conditional_losses_537045
E__inference_generator_layer_call_and_return_conditional_losses_536788
E__inference_generator_layer_call_and_return_conditional_losses_536821?
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
?B?
!__inference__wrapped_model_536201input_2"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
,
`serving_default"
signature_map
?

Qkernel
Rbias
a	variables
bregularization_losses
ctrainable_variables
d	keras_api
e__call__
*f&call_and_return_all_conditional_losses"
_tf_keras_layer
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
?
gnon_trainable_variables

hlayers
imetrics
jlayer_regularization_losses
klayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
1__inference_module_wrapper_9_layer_call_fn_537081
1__inference_module_wrapper_9_layer_call_fn_537090?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
L__inference_module_wrapper_9_layer_call_and_return_conditional_losses_537100
L__inference_module_wrapper_9_layer_call_and_return_conditional_losses_537110?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?
l	variables
mregularization_losses
ntrainable_variables
o	keras_api
p__call__
*q&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
2__inference_module_wrapper_10_layer_call_fn_537115
2__inference_module_wrapper_10_layer_call_fn_537120?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
M__inference_module_wrapper_10_layer_call_and_return_conditional_losses_537134
M__inference_module_wrapper_10_layer_call_and_return_conditional_losses_537148?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?

Skernel
Tbias
w	variables
xregularization_losses
ytrainable_variables
z	keras_api
{__call__
*|&call_and_return_all_conditional_losses"
_tf_keras_layer
.
S0
T1"
trackable_list_wrapper
.
S0
T1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
}non_trainable_variables

~layers
metrics
 ?layer_regularization_losses
?layer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
?2?
2__inference_module_wrapper_11_layer_call_fn_537157
2__inference_module_wrapper_11_layer_call_fn_537166?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
M__inference_module_wrapper_11_layer_call_and_return_conditional_losses_537189
M__inference_module_wrapper_11_layer_call_and_return_conditional_losses_537212?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses"
_generic_user_object
?2?
2__inference_module_wrapper_12_layer_call_fn_537217
2__inference_module_wrapper_12_layer_call_fn_537222?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
M__inference_module_wrapper_12_layer_call_and_return_conditional_losses_537227
M__inference_module_wrapper_12_layer_call_and_return_conditional_losses_537232?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?

Ukernel
Vbias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
.
U0
V1"
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses"
_generic_user_object
?2?
2__inference_module_wrapper_13_layer_call_fn_537241
2__inference_module_wrapper_13_layer_call_fn_537250?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
M__inference_module_wrapper_13_layer_call_and_return_conditional_losses_537273
M__inference_module_wrapper_13_layer_call_and_return_conditional_losses_537296?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses"
_generic_user_object
?2?
2__inference_module_wrapper_14_layer_call_fn_537301
2__inference_module_wrapper_14_layer_call_fn_537306?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
M__inference_module_wrapper_14_layer_call_and_return_conditional_losses_537311
M__inference_module_wrapper_14_layer_call_and_return_conditional_losses_537316?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?

Wkernel
Xbias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
.
W0
X1"
trackable_list_wrapper
.
W0
X1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses"
_generic_user_object
?2?
2__inference_module_wrapper_15_layer_call_fn_537325
2__inference_module_wrapper_15_layer_call_fn_537334?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
M__inference_module_wrapper_15_layer_call_and_return_conditional_losses_537357
M__inference_module_wrapper_15_layer_call_and_return_conditional_losses_537380?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses"
_generic_user_object
?2?
2__inference_module_wrapper_16_layer_call_fn_537385
2__inference_module_wrapper_16_layer_call_fn_537390?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
M__inference_module_wrapper_16_layer_call_and_return_conditional_losses_537395
M__inference_module_wrapper_16_layer_call_and_return_conditional_losses_537400?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?

Ykernel
Zbias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
.
Y0
Z1"
trackable_list_wrapper
.
Y0
Z1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
?2?
2__inference_module_wrapper_17_layer_call_fn_537409
2__inference_module_wrapper_17_layer_call_fn_537418?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
M__inference_module_wrapper_17_layer_call_and_return_conditional_losses_537429
M__inference_module_wrapper_17_layer_call_and_return_conditional_losses_537440?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
3:1
??@2module_wrapper_9/dense_1/kernel
,:*?@2module_wrapper_9/dense_1/bias
E:C??2)module_wrapper_11/conv2d_transpose/kernel
6:4?2'module_wrapper_11/conv2d_transpose/bias
G:E??2+module_wrapper_13/conv2d_transpose_1/kernel
8:6?2)module_wrapper_13/conv2d_transpose_1/bias
G:E??2+module_wrapper_15/conv2d_transpose_2/kernel
8:6?2)module_wrapper_15/conv2d_transpose_2/bias
<::?2!module_wrapper_17/conv2d_3/kernel
-:+2module_wrapper_17/conv2d_3/bias
 "
trackable_list_wrapper
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
$__inference_signature_wrapper_537072input_2"?
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
.
Q0
R1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
Q0
R1"
trackable_list_wrapper
?
a	variables
?non_trainable_variables
?layers
bregularization_losses
 ?layer_regularization_losses
?metrics
ctrainable_variables
?layer_metrics
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses"
_generic_user_object
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
?
l	variables
?non_trainable_variables
?layers
mregularization_losses
 ?layer_regularization_losses
?metrics
ntrainable_variables
?layer_metrics
p__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses"
_generic_user_object
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
.
S0
T1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
S0
T1"
trackable_list_wrapper
?
w	variables
?non_trainable_variables
?layers
xregularization_losses
 ?layer_regularization_losses
?metrics
ytrainable_variables
?layer_metrics
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses"
_generic_user_object
?2?
1__inference_conv2d_transpose_layer_call_fn_537484?
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
annotations? *8?5
3?0,????????????????????????????
?2?
L__inference_conv2d_transpose_layer_call_and_return_conditional_losses_537474?
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
annotations? *8?5
3?0,????????????????????????????
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
?
?	variables
?non_trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?metrics
?trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
.
U0
V1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
?
?	variables
?non_trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?metrics
?trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
3__inference_conv2d_transpose_1_layer_call_fn_537528?
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
annotations? *8?5
3?0,????????????????????????????
?2?
N__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_537518?
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
annotations? *8?5
3?0,????????????????????????????
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
?
?	variables
?non_trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?metrics
?trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
.
W0
X1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
W0
X1"
trackable_list_wrapper
?
?	variables
?non_trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?metrics
?trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
3__inference_conv2d_transpose_2_layer_call_fn_537572?
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
annotations? *8?5
3?0,????????????????????????????
?2?
N__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_537562?
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
annotations? *8?5
3?0,????????????????????????????
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
?
?	variables
?non_trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?metrics
?trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
.
Y0
Z1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
Y0
Z1"
trackable_list_wrapper
?
?	variables
?non_trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?metrics
?trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
trackable_dict_wrapper?
!__inference__wrapped_model_536201?
QRSTUVWXYZ1?.
'?$
"?
input_2??????????
? "M?J
H
module_wrapper_173?0
module_wrapper_17?????????@@?
N__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_537518?UVJ?G
@?=
;?8
inputs,????????????????????????????
? "@?=
6?3
0,????????????????????????????
? ?
3__inference_conv2d_transpose_1_layer_call_fn_537528?UVJ?G
@?=
;?8
inputs,????????????????????????????
? "3?0,?????????????????????????????
N__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_537562?WXJ?G
@?=
;?8
inputs,????????????????????????????
? "@?=
6?3
0,????????????????????????????
? ?
3__inference_conv2d_transpose_2_layer_call_fn_537572?WXJ?G
@?=
;?8
inputs,????????????????????????????
? "3?0,?????????????????????????????
L__inference_conv2d_transpose_layer_call_and_return_conditional_losses_537474?STJ?G
@?=
;?8
inputs,????????????????????????????
? "@?=
6?3
0,????????????????????????????
? ?
1__inference_conv2d_transpose_layer_call_fn_537484?STJ?G
@?=
;?8
inputs,????????????????????????????
? "3?0,?????????????????????????????
E__inference_generator_layer_call_and_return_conditional_losses_536788v
QRSTUVWXYZ9?6
/?,
"?
input_2??????????
p 

 
? "-?*
#? 
0?????????@@
? ?
E__inference_generator_layer_call_and_return_conditional_losses_536821v
QRSTUVWXYZ9?6
/?,
"?
input_2??????????
p

 
? "-?*
#? 
0?????????@@
? ?
E__inference_generator_layer_call_and_return_conditional_losses_536958u
QRSTUVWXYZ8?5
.?+
!?
inputs??????????
p 

 
? "-?*
#? 
0?????????@@
? ?
E__inference_generator_layer_call_and_return_conditional_losses_537045u
QRSTUVWXYZ8?5
.?+
!?
inputs??????????
p

 
? "-?*
#? 
0?????????@@
? ?
*__inference_generator_layer_call_fn_536389i
QRSTUVWXYZ9?6
/?,
"?
input_2??????????
p 

 
? " ??????????@@?
*__inference_generator_layer_call_fn_536755i
QRSTUVWXYZ9?6
/?,
"?
input_2??????????
p

 
? " ??????????@@?
*__inference_generator_layer_call_fn_536846h
QRSTUVWXYZ8?5
.?+
!?
inputs??????????
p 

 
? " ??????????@@?
*__inference_generator_layer_call_fn_536871h
QRSTUVWXYZ8?5
.?+
!?
inputs??????????
p

 
? " ??????????@@?
M__inference_module_wrapper_10_layer_call_and_return_conditional_losses_537134r@?=
&?#
!?
args_0??????????@
?

trainingp ".?+
$?!
0??????????
? ?
M__inference_module_wrapper_10_layer_call_and_return_conditional_losses_537148r@?=
&?#
!?
args_0??????????@
?

trainingp".?+
$?!
0??????????
? ?
2__inference_module_wrapper_10_layer_call_fn_537115e@?=
&?#
!?
args_0??????????@
?

trainingp "!????????????
2__inference_module_wrapper_10_layer_call_fn_537120e@?=
&?#
!?
args_0??????????@
?

trainingp"!????????????
M__inference_module_wrapper_11_layer_call_and_return_conditional_losses_537189~STH?E
.?+
)?&
args_0??????????
?

trainingp ".?+
$?!
0??????????
? ?
M__inference_module_wrapper_11_layer_call_and_return_conditional_losses_537212~STH?E
.?+
)?&
args_0??????????
?

trainingp".?+
$?!
0??????????
? ?
2__inference_module_wrapper_11_layer_call_fn_537157qSTH?E
.?+
)?&
args_0??????????
?

trainingp "!????????????
2__inference_module_wrapper_11_layer_call_fn_537166qSTH?E
.?+
)?&
args_0??????????
?

trainingp"!????????????
M__inference_module_wrapper_12_layer_call_and_return_conditional_losses_537227zH?E
.?+
)?&
args_0??????????
?

trainingp ".?+
$?!
0??????????
? ?
M__inference_module_wrapper_12_layer_call_and_return_conditional_losses_537232zH?E
.?+
)?&
args_0??????????
?

trainingp".?+
$?!
0??????????
? ?
2__inference_module_wrapper_12_layer_call_fn_537217mH?E
.?+
)?&
args_0??????????
?

trainingp "!????????????
2__inference_module_wrapper_12_layer_call_fn_537222mH?E
.?+
)?&
args_0??????????
?

trainingp"!????????????
M__inference_module_wrapper_13_layer_call_and_return_conditional_losses_537273~UVH?E
.?+
)?&
args_0??????????
?

trainingp ".?+
$?!
0?????????  ?
? ?
M__inference_module_wrapper_13_layer_call_and_return_conditional_losses_537296~UVH?E
.?+
)?&
args_0??????????
?

trainingp".?+
$?!
0?????????  ?
? ?
2__inference_module_wrapper_13_layer_call_fn_537241qUVH?E
.?+
)?&
args_0??????????
?

trainingp "!??????????  ??
2__inference_module_wrapper_13_layer_call_fn_537250qUVH?E
.?+
)?&
args_0??????????
?

trainingp"!??????????  ??
M__inference_module_wrapper_14_layer_call_and_return_conditional_losses_537311zH?E
.?+
)?&
args_0?????????  ?
?

trainingp ".?+
$?!
0?????????  ?
? ?
M__inference_module_wrapper_14_layer_call_and_return_conditional_losses_537316zH?E
.?+
)?&
args_0?????????  ?
?

trainingp".?+
$?!
0?????????  ?
? ?
2__inference_module_wrapper_14_layer_call_fn_537301mH?E
.?+
)?&
args_0?????????  ?
?

trainingp "!??????????  ??
2__inference_module_wrapper_14_layer_call_fn_537306mH?E
.?+
)?&
args_0?????????  ?
?

trainingp"!??????????  ??
M__inference_module_wrapper_15_layer_call_and_return_conditional_losses_537357~WXH?E
.?+
)?&
args_0?????????  ?
?

trainingp ".?+
$?!
0?????????@@?
? ?
M__inference_module_wrapper_15_layer_call_and_return_conditional_losses_537380~WXH?E
.?+
)?&
args_0?????????  ?
?

trainingp".?+
$?!
0?????????@@?
? ?
2__inference_module_wrapper_15_layer_call_fn_537325qWXH?E
.?+
)?&
args_0?????????  ?
?

trainingp "!??????????@@??
2__inference_module_wrapper_15_layer_call_fn_537334qWXH?E
.?+
)?&
args_0?????????  ?
?

trainingp"!??????????@@??
M__inference_module_wrapper_16_layer_call_and_return_conditional_losses_537395zH?E
.?+
)?&
args_0?????????@@?
?

trainingp ".?+
$?!
0?????????@@?
? ?
M__inference_module_wrapper_16_layer_call_and_return_conditional_losses_537400zH?E
.?+
)?&
args_0?????????@@?
?

trainingp".?+
$?!
0?????????@@?
? ?
2__inference_module_wrapper_16_layer_call_fn_537385mH?E
.?+
)?&
args_0?????????@@?
?

trainingp "!??????????@@??
2__inference_module_wrapper_16_layer_call_fn_537390mH?E
.?+
)?&
args_0?????????@@?
?

trainingp"!??????????@@??
M__inference_module_wrapper_17_layer_call_and_return_conditional_losses_537429}YZH?E
.?+
)?&
args_0?????????@@?
?

trainingp "-?*
#? 
0?????????@@
? ?
M__inference_module_wrapper_17_layer_call_and_return_conditional_losses_537440}YZH?E
.?+
)?&
args_0?????????@@?
?

trainingp"-?*
#? 
0?????????@@
? ?
2__inference_module_wrapper_17_layer_call_fn_537409pYZH?E
.?+
)?&
args_0?????????@@?
?

trainingp " ??????????@@?
2__inference_module_wrapper_17_layer_call_fn_537418pYZH?E
.?+
)?&
args_0?????????@@?
?

trainingp" ??????????@@?
L__inference_module_wrapper_9_layer_call_and_return_conditional_losses_537100nQR@?=
&?#
!?
args_0??????????
?

trainingp "&?#
?
0??????????@
? ?
L__inference_module_wrapper_9_layer_call_and_return_conditional_losses_537110nQR@?=
&?#
!?
args_0??????????
?

trainingp"&?#
?
0??????????@
? ?
1__inference_module_wrapper_9_layer_call_fn_537081aQR@?=
&?#
!?
args_0??????????
?

trainingp "???????????@?
1__inference_module_wrapper_9_layer_call_fn_537090aQR@?=
&?#
!?
args_0??????????
?

trainingp"???????????@?
$__inference_signature_wrapper_537072?
QRSTUVWXYZ<?9
? 
2?/
-
input_2"?
input_2??????????"M?J
H
module_wrapper_173?0
module_wrapper_17?????????@@