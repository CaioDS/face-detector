Ϝ
??
.
Abs
x"T
y"T"
Ttype:

2	
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
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
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
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.8.02v2.8.0-0-g3f878cff5b68??

y
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	? *
shared_namedense_1/kernel
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	? *
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
~
conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:

@*
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:

@*
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:@*
dtype0
?
conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?* 
shared_nameconv2d_1/kernel
|
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*'
_output_shapes
:@?*
dtype0
s
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_1/bias
l
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes	
:?*
dtype0
?
conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??* 
shared_nameconv2d_2/kernel
}
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*(
_output_shapes
:??*
dtype0
s
conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_2/bias
l
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes	
:?*
dtype0
?
conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??* 
shared_nameconv2d_3/kernel
}
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*(
_output_shapes
:??*
dtype0
s
conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_3/bias
l
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes	
:?*
dtype0
v
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?H? *
shared_namedense/kernel
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
?H? *
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:? *
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:? *
dtype0

NoOpNoOp
?A
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?@
value?@B?@ B?@
?
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
* 
* 
?
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
layer-8
layer_with_weights-4
layer-9
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
?
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses* 
?

$kernel
%bias
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses*
Z
,0
-1
.2
/3
04
15
26
37
48
59
$10
%11*
Z
,0
-1
.2
/3
04
15
26
37
48
59
$10
%11*
* 
?
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

;serving_default* 
* 
?

,kernel
-bias
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses*
?
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses* 
?

.kernel
/bias
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses*
?
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses* 
?

0kernel
1bias
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses*
?
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses* 
?

2kernel
3bias
`	variables
atrainable_variables
bregularization_losses
c	keras_api
d__call__
*e&call_and_return_all_conditional_losses*
?
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j__call__
*k&call_and_return_all_conditional_losses* 
?

4kernel
5bias
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
p__call__
*q&call_and_return_all_conditional_losses*
J
,0
-1
.2
/3
04
15
26
37
48
59*
J
,0
-1
.2
/3
04
15
26
37
48
59*
* 
?
rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
wnon_trainable_variables

xlayers
ymetrics
zlayer_regularization_losses
{layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses* 
* 
* 
^X
VARIABLE_VALUEdense_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

$0
%1*

$0
%1*
* 
?
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
?layer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses*
* 
* 
MG
VARIABLE_VALUEconv2d/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEconv2d/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_1/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEconv2d_1/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_2/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEconv2d_2/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_3/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEconv2d_3/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEdense/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
dense/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
* 
'
0
1
2
3
4*
* 
* 
* 
* 

,0
-1*

,0
-1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses* 
* 
* 

.0
/1*

.0
/1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses* 
* 
* 

00
11*

00
11*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses* 
* 
* 

20
31*

20
31*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
`	variables
atrainable_variables
bregularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
f	variables
gtrainable_variables
hregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses* 
* 
* 

40
51*

40
51*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
l	variables
mtrainable_variables
nregularization_losses
p__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses*
* 
* 
* 
J
0
1
2
3
4
5
6
7
8
9*
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
* 
* 
* 
* 
* 
* 
?
serving_default_input_imgPlaceholder*/
_output_shapes
:?????????dd*
dtype0*$
shape:?????????dd
?
serving_default_validation_imgPlaceholder*/
_output_shapes
:?????????dd*
dtype0*$
shape:?????????dd
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_imgserving_default_validation_imgconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasdense/kernel
dense/biasdense_1/kerneldense_1/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8? *,
f'R%
#__inference_signature_wrapper_18074
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp!conv2d/kernel/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOp#conv2d_3/kernel/Read/ReadVariableOp!conv2d_3/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOpConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *'
f"R 
__inference__traced_save_18446
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_1/kerneldense_1/biasconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasdense/kernel
dense/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? **
f%R#
!__inference__traced_restore_18492??	
?
d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_17099

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
@@*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

?
)__inference_embedding_layer_call_fn_18124

inputs!
unknown:

@
	unknown_0:@$
	unknown_1:@?
	unknown_2:	?%
	unknown_3:??
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:
?H? 
	unknown_8:	? 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????? *,
_read_only_resource_inputs

	
*2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_17369p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:?????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????dd: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????dd
 
_user_specified_nameinputs
?
?
I__inference_SiameseNetwork_layer_call_and_return_conditional_losses_17671

inputs
inputs_1)
embedding_17632:

@
embedding_17634:@*
embedding_17636:@?
embedding_17638:	?+
embedding_17640:??
embedding_17642:	?+
embedding_17644:??
embedding_17646:	?#
embedding_17648:
?H? 
embedding_17650:	?  
dense_1_17665:	? 
dense_1_17667:
identity??dense_1/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?#embedding/StatefulPartitionedCall_1?
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_17632embedding_17634embedding_17636embedding_17638embedding_17640embedding_17642embedding_17644embedding_17646embedding_17648embedding_17650*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????? *,
_read_only_resource_inputs

	
*2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_17369?
#embedding/StatefulPartitionedCall_1StatefulPartitionedCallinputs_1embedding_17632embedding_17634embedding_17636embedding_17638embedding_17640embedding_17642embedding_17644embedding_17646embedding_17648embedding_17650*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????? *,
_read_only_resource_inputs

	
*2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_17369?
distance/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0,embedding/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_distance_layer_call_and_return_conditional_losses_17531?
dense_1/StatefulPartitionedCallStatefulPartitionedCall!distance/PartitionedCall:output:0dense_1_17665dense_1_17667*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_17544w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_1/StatefulPartitionedCall"^embedding/StatefulPartitionedCall$^embedding/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*a
_input_shapesP
N:?????????dd:?????????dd: : : : : : : : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2J
#embedding/StatefulPartitionedCall_1#embedding/StatefulPartitionedCall_1:W S
/
_output_shapes
:?????????dd
 
_user_specified_nameinputs:WS
/
_output_shapes
:?????????dd
 
_user_specified_nameinputs
?
?
(__inference_conv2d_3_layer_call_fn_18344

inputs#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_17198x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????		?: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????		?
 
_user_specified_nameinputs
??
?
 __inference__wrapped_model_17090
	input_img
validation_imgX
>siamesenetwork_embedding_conv2d_conv2d_readvariableop_resource:

@M
?siamesenetwork_embedding_conv2d_biasadd_readvariableop_resource:@[
@siamesenetwork_embedding_conv2d_1_conv2d_readvariableop_resource:@?P
Asiamesenetwork_embedding_conv2d_1_biasadd_readvariableop_resource:	?\
@siamesenetwork_embedding_conv2d_2_conv2d_readvariableop_resource:??P
Asiamesenetwork_embedding_conv2d_2_biasadd_readvariableop_resource:	?\
@siamesenetwork_embedding_conv2d_3_conv2d_readvariableop_resource:??P
Asiamesenetwork_embedding_conv2d_3_biasadd_readvariableop_resource:	?Q
=siamesenetwork_embedding_dense_matmul_readvariableop_resource:
?H? M
>siamesenetwork_embedding_dense_biasadd_readvariableop_resource:	? H
5siamesenetwork_dense_1_matmul_readvariableop_resource:	? D
6siamesenetwork_dense_1_biasadd_readvariableop_resource:
identity??-SiameseNetwork/dense_1/BiasAdd/ReadVariableOp?,SiameseNetwork/dense_1/MatMul/ReadVariableOp?6SiameseNetwork/embedding/conv2d/BiasAdd/ReadVariableOp?8SiameseNetwork/embedding/conv2d/BiasAdd_1/ReadVariableOp?5SiameseNetwork/embedding/conv2d/Conv2D/ReadVariableOp?7SiameseNetwork/embedding/conv2d/Conv2D_1/ReadVariableOp?8SiameseNetwork/embedding/conv2d_1/BiasAdd/ReadVariableOp?:SiameseNetwork/embedding/conv2d_1/BiasAdd_1/ReadVariableOp?7SiameseNetwork/embedding/conv2d_1/Conv2D/ReadVariableOp?9SiameseNetwork/embedding/conv2d_1/Conv2D_1/ReadVariableOp?8SiameseNetwork/embedding/conv2d_2/BiasAdd/ReadVariableOp?:SiameseNetwork/embedding/conv2d_2/BiasAdd_1/ReadVariableOp?7SiameseNetwork/embedding/conv2d_2/Conv2D/ReadVariableOp?9SiameseNetwork/embedding/conv2d_2/Conv2D_1/ReadVariableOp?8SiameseNetwork/embedding/conv2d_3/BiasAdd/ReadVariableOp?:SiameseNetwork/embedding/conv2d_3/BiasAdd_1/ReadVariableOp?7SiameseNetwork/embedding/conv2d_3/Conv2D/ReadVariableOp?9SiameseNetwork/embedding/conv2d_3/Conv2D_1/ReadVariableOp?5SiameseNetwork/embedding/dense/BiasAdd/ReadVariableOp?7SiameseNetwork/embedding/dense/BiasAdd_1/ReadVariableOp?4SiameseNetwork/embedding/dense/MatMul/ReadVariableOp?6SiameseNetwork/embedding/dense/MatMul_1/ReadVariableOp?
5SiameseNetwork/embedding/conv2d/Conv2D/ReadVariableOpReadVariableOp>siamesenetwork_embedding_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:

@*
dtype0?
&SiameseNetwork/embedding/conv2d/Conv2DConv2D	input_img=SiameseNetwork/embedding/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[[@*
paddingVALID*
strides
?
6SiameseNetwork/embedding/conv2d/BiasAdd/ReadVariableOpReadVariableOp?siamesenetwork_embedding_conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
'SiameseNetwork/embedding/conv2d/BiasAddBiasAdd/SiameseNetwork/embedding/conv2d/Conv2D:output:0>SiameseNetwork/embedding/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[[@?
$SiameseNetwork/embedding/conv2d/ReluRelu0SiameseNetwork/embedding/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:?????????[[@?
.SiameseNetwork/embedding/max_pooling2d/MaxPoolMaxPool2SiameseNetwork/embedding/conv2d/Relu:activations:0*/
_output_shapes
:?????????..@*
ksize
@@*
paddingSAME*
strides
?
7SiameseNetwork/embedding/conv2d_1/Conv2D/ReadVariableOpReadVariableOp@siamesenetwork_embedding_conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
(SiameseNetwork/embedding/conv2d_1/Conv2DConv2D7SiameseNetwork/embedding/max_pooling2d/MaxPool:output:0?SiameseNetwork/embedding/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????((?*
paddingVALID*
strides
?
8SiameseNetwork/embedding/conv2d_1/BiasAdd/ReadVariableOpReadVariableOpAsiamesenetwork_embedding_conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
)SiameseNetwork/embedding/conv2d_1/BiasAddBiasAdd1SiameseNetwork/embedding/conv2d_1/Conv2D:output:0@SiameseNetwork/embedding/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????((??
&SiameseNetwork/embedding/conv2d_1/ReluRelu2SiameseNetwork/embedding/conv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:?????????((??
0SiameseNetwork/embedding/max_pooling2d_1/MaxPoolMaxPool4SiameseNetwork/embedding/conv2d_1/Relu:activations:0*0
_output_shapes
:??????????*
ksize
@@*
paddingSAME*
strides
?
7SiameseNetwork/embedding/conv2d_2/Conv2D/ReadVariableOpReadVariableOp@siamesenetwork_embedding_conv2d_2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
(SiameseNetwork/embedding/conv2d_2/Conv2DConv2D9SiameseNetwork/embedding/max_pooling2d_1/MaxPool:output:0?SiameseNetwork/embedding/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
8SiameseNetwork/embedding/conv2d_2/BiasAdd/ReadVariableOpReadVariableOpAsiamesenetwork_embedding_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
)SiameseNetwork/embedding/conv2d_2/BiasAddBiasAdd1SiameseNetwork/embedding/conv2d_2/Conv2D:output:0@SiameseNetwork/embedding/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
&SiameseNetwork/embedding/conv2d_2/ReluRelu2SiameseNetwork/embedding/conv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:???????????
0SiameseNetwork/embedding/max_pooling2d_2/MaxPoolMaxPool4SiameseNetwork/embedding/conv2d_2/Relu:activations:0*0
_output_shapes
:?????????		?*
ksize
@@*
paddingSAME*
strides
?
7SiameseNetwork/embedding/conv2d_3/Conv2D/ReadVariableOpReadVariableOp@siamesenetwork_embedding_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
(SiameseNetwork/embedding/conv2d_3/Conv2DConv2D9SiameseNetwork/embedding/max_pooling2d_2/MaxPool:output:0?SiameseNetwork/embedding/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
8SiameseNetwork/embedding/conv2d_3/BiasAdd/ReadVariableOpReadVariableOpAsiamesenetwork_embedding_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
)SiameseNetwork/embedding/conv2d_3/BiasAddBiasAdd1SiameseNetwork/embedding/conv2d_3/Conv2D:output:0@SiameseNetwork/embedding/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
&SiameseNetwork/embedding/conv2d_3/ReluRelu2SiameseNetwork/embedding/conv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:??????????w
&SiameseNetwork/embedding/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? $  ?
(SiameseNetwork/embedding/flatten/ReshapeReshape4SiameseNetwork/embedding/conv2d_3/Relu:activations:0/SiameseNetwork/embedding/flatten/Const:output:0*
T0*(
_output_shapes
:??????????H?
4SiameseNetwork/embedding/dense/MatMul/ReadVariableOpReadVariableOp=siamesenetwork_embedding_dense_matmul_readvariableop_resource* 
_output_shapes
:
?H? *
dtype0?
%SiameseNetwork/embedding/dense/MatMulMatMul1SiameseNetwork/embedding/flatten/Reshape:output:0<SiameseNetwork/embedding/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????? ?
5SiameseNetwork/embedding/dense/BiasAdd/ReadVariableOpReadVariableOp>siamesenetwork_embedding_dense_biasadd_readvariableop_resource*
_output_shapes	
:? *
dtype0?
&SiameseNetwork/embedding/dense/BiasAddBiasAdd/SiameseNetwork/embedding/dense/MatMul:product:0=SiameseNetwork/embedding/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????? ?
&SiameseNetwork/embedding/dense/SigmoidSigmoid/SiameseNetwork/embedding/dense/BiasAdd:output:0*
T0*(
_output_shapes
:?????????? ?
7SiameseNetwork/embedding/conv2d/Conv2D_1/ReadVariableOpReadVariableOp>siamesenetwork_embedding_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:

@*
dtype0?
(SiameseNetwork/embedding/conv2d/Conv2D_1Conv2Dvalidation_img?SiameseNetwork/embedding/conv2d/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[[@*
paddingVALID*
strides
?
8SiameseNetwork/embedding/conv2d/BiasAdd_1/ReadVariableOpReadVariableOp?siamesenetwork_embedding_conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
)SiameseNetwork/embedding/conv2d/BiasAdd_1BiasAdd1SiameseNetwork/embedding/conv2d/Conv2D_1:output:0@SiameseNetwork/embedding/conv2d/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[[@?
&SiameseNetwork/embedding/conv2d/Relu_1Relu2SiameseNetwork/embedding/conv2d/BiasAdd_1:output:0*
T0*/
_output_shapes
:?????????[[@?
0SiameseNetwork/embedding/max_pooling2d/MaxPool_1MaxPool4SiameseNetwork/embedding/conv2d/Relu_1:activations:0*/
_output_shapes
:?????????..@*
ksize
@@*
paddingSAME*
strides
?
9SiameseNetwork/embedding/conv2d_1/Conv2D_1/ReadVariableOpReadVariableOp@siamesenetwork_embedding_conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
*SiameseNetwork/embedding/conv2d_1/Conv2D_1Conv2D9SiameseNetwork/embedding/max_pooling2d/MaxPool_1:output:0ASiameseNetwork/embedding/conv2d_1/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????((?*
paddingVALID*
strides
?
:SiameseNetwork/embedding/conv2d_1/BiasAdd_1/ReadVariableOpReadVariableOpAsiamesenetwork_embedding_conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
+SiameseNetwork/embedding/conv2d_1/BiasAdd_1BiasAdd3SiameseNetwork/embedding/conv2d_1/Conv2D_1:output:0BSiameseNetwork/embedding/conv2d_1/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????((??
(SiameseNetwork/embedding/conv2d_1/Relu_1Relu4SiameseNetwork/embedding/conv2d_1/BiasAdd_1:output:0*
T0*0
_output_shapes
:?????????((??
2SiameseNetwork/embedding/max_pooling2d_1/MaxPool_1MaxPool6SiameseNetwork/embedding/conv2d_1/Relu_1:activations:0*0
_output_shapes
:??????????*
ksize
@@*
paddingSAME*
strides
?
9SiameseNetwork/embedding/conv2d_2/Conv2D_1/ReadVariableOpReadVariableOp@siamesenetwork_embedding_conv2d_2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
*SiameseNetwork/embedding/conv2d_2/Conv2D_1Conv2D;SiameseNetwork/embedding/max_pooling2d_1/MaxPool_1:output:0ASiameseNetwork/embedding/conv2d_2/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
:SiameseNetwork/embedding/conv2d_2/BiasAdd_1/ReadVariableOpReadVariableOpAsiamesenetwork_embedding_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
+SiameseNetwork/embedding/conv2d_2/BiasAdd_1BiasAdd3SiameseNetwork/embedding/conv2d_2/Conv2D_1:output:0BSiameseNetwork/embedding/conv2d_2/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
(SiameseNetwork/embedding/conv2d_2/Relu_1Relu4SiameseNetwork/embedding/conv2d_2/BiasAdd_1:output:0*
T0*0
_output_shapes
:???????????
2SiameseNetwork/embedding/max_pooling2d_2/MaxPool_1MaxPool6SiameseNetwork/embedding/conv2d_2/Relu_1:activations:0*0
_output_shapes
:?????????		?*
ksize
@@*
paddingSAME*
strides
?
9SiameseNetwork/embedding/conv2d_3/Conv2D_1/ReadVariableOpReadVariableOp@siamesenetwork_embedding_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
*SiameseNetwork/embedding/conv2d_3/Conv2D_1Conv2D;SiameseNetwork/embedding/max_pooling2d_2/MaxPool_1:output:0ASiameseNetwork/embedding/conv2d_3/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
:SiameseNetwork/embedding/conv2d_3/BiasAdd_1/ReadVariableOpReadVariableOpAsiamesenetwork_embedding_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
+SiameseNetwork/embedding/conv2d_3/BiasAdd_1BiasAdd3SiameseNetwork/embedding/conv2d_3/Conv2D_1:output:0BSiameseNetwork/embedding/conv2d_3/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
(SiameseNetwork/embedding/conv2d_3/Relu_1Relu4SiameseNetwork/embedding/conv2d_3/BiasAdd_1:output:0*
T0*0
_output_shapes
:??????????y
(SiameseNetwork/embedding/flatten/Const_1Const*
_output_shapes
:*
dtype0*
valueB"???? $  ?
*SiameseNetwork/embedding/flatten/Reshape_1Reshape6SiameseNetwork/embedding/conv2d_3/Relu_1:activations:01SiameseNetwork/embedding/flatten/Const_1:output:0*
T0*(
_output_shapes
:??????????H?
6SiameseNetwork/embedding/dense/MatMul_1/ReadVariableOpReadVariableOp=siamesenetwork_embedding_dense_matmul_readvariableop_resource* 
_output_shapes
:
?H? *
dtype0?
'SiameseNetwork/embedding/dense/MatMul_1MatMul3SiameseNetwork/embedding/flatten/Reshape_1:output:0>SiameseNetwork/embedding/dense/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????? ?
7SiameseNetwork/embedding/dense/BiasAdd_1/ReadVariableOpReadVariableOp>siamesenetwork_embedding_dense_biasadd_readvariableop_resource*
_output_shapes	
:? *
dtype0?
(SiameseNetwork/embedding/dense/BiasAdd_1BiasAdd1SiameseNetwork/embedding/dense/MatMul_1:product:0?SiameseNetwork/embedding/dense/BiasAdd_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????? ?
(SiameseNetwork/embedding/dense/Sigmoid_1Sigmoid1SiameseNetwork/embedding/dense/BiasAdd_1:output:0*
T0*(
_output_shapes
:?????????? ?
SiameseNetwork/distance/subSub*SiameseNetwork/embedding/dense/Sigmoid:y:0,SiameseNetwork/embedding/dense/Sigmoid_1:y:0*
T0*(
_output_shapes
:?????????? v
SiameseNetwork/distance/AbsAbsSiameseNetwork/distance/sub:z:0*
T0*(
_output_shapes
:?????????? ?
,SiameseNetwork/dense_1/MatMul/ReadVariableOpReadVariableOp5siamesenetwork_dense_1_matmul_readvariableop_resource*
_output_shapes
:	? *
dtype0?
SiameseNetwork/dense_1/MatMulMatMulSiameseNetwork/distance/Abs:y:04SiameseNetwork/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-SiameseNetwork/dense_1/BiasAdd/ReadVariableOpReadVariableOp6siamesenetwork_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
SiameseNetwork/dense_1/BiasAddBiasAdd'SiameseNetwork/dense_1/MatMul:product:05SiameseNetwork/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
SiameseNetwork/dense_1/SigmoidSigmoid'SiameseNetwork/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????q
IdentityIdentity"SiameseNetwork/dense_1/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????

NoOpNoOp.^SiameseNetwork/dense_1/BiasAdd/ReadVariableOp-^SiameseNetwork/dense_1/MatMul/ReadVariableOp7^SiameseNetwork/embedding/conv2d/BiasAdd/ReadVariableOp9^SiameseNetwork/embedding/conv2d/BiasAdd_1/ReadVariableOp6^SiameseNetwork/embedding/conv2d/Conv2D/ReadVariableOp8^SiameseNetwork/embedding/conv2d/Conv2D_1/ReadVariableOp9^SiameseNetwork/embedding/conv2d_1/BiasAdd/ReadVariableOp;^SiameseNetwork/embedding/conv2d_1/BiasAdd_1/ReadVariableOp8^SiameseNetwork/embedding/conv2d_1/Conv2D/ReadVariableOp:^SiameseNetwork/embedding/conv2d_1/Conv2D_1/ReadVariableOp9^SiameseNetwork/embedding/conv2d_2/BiasAdd/ReadVariableOp;^SiameseNetwork/embedding/conv2d_2/BiasAdd_1/ReadVariableOp8^SiameseNetwork/embedding/conv2d_2/Conv2D/ReadVariableOp:^SiameseNetwork/embedding/conv2d_2/Conv2D_1/ReadVariableOp9^SiameseNetwork/embedding/conv2d_3/BiasAdd/ReadVariableOp;^SiameseNetwork/embedding/conv2d_3/BiasAdd_1/ReadVariableOp8^SiameseNetwork/embedding/conv2d_3/Conv2D/ReadVariableOp:^SiameseNetwork/embedding/conv2d_3/Conv2D_1/ReadVariableOp6^SiameseNetwork/embedding/dense/BiasAdd/ReadVariableOp8^SiameseNetwork/embedding/dense/BiasAdd_1/ReadVariableOp5^SiameseNetwork/embedding/dense/MatMul/ReadVariableOp7^SiameseNetwork/embedding/dense/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*a
_input_shapesP
N:?????????dd:?????????dd: : : : : : : : : : : : 2^
-SiameseNetwork/dense_1/BiasAdd/ReadVariableOp-SiameseNetwork/dense_1/BiasAdd/ReadVariableOp2\
,SiameseNetwork/dense_1/MatMul/ReadVariableOp,SiameseNetwork/dense_1/MatMul/ReadVariableOp2p
6SiameseNetwork/embedding/conv2d/BiasAdd/ReadVariableOp6SiameseNetwork/embedding/conv2d/BiasAdd/ReadVariableOp2t
8SiameseNetwork/embedding/conv2d/BiasAdd_1/ReadVariableOp8SiameseNetwork/embedding/conv2d/BiasAdd_1/ReadVariableOp2n
5SiameseNetwork/embedding/conv2d/Conv2D/ReadVariableOp5SiameseNetwork/embedding/conv2d/Conv2D/ReadVariableOp2r
7SiameseNetwork/embedding/conv2d/Conv2D_1/ReadVariableOp7SiameseNetwork/embedding/conv2d/Conv2D_1/ReadVariableOp2t
8SiameseNetwork/embedding/conv2d_1/BiasAdd/ReadVariableOp8SiameseNetwork/embedding/conv2d_1/BiasAdd/ReadVariableOp2x
:SiameseNetwork/embedding/conv2d_1/BiasAdd_1/ReadVariableOp:SiameseNetwork/embedding/conv2d_1/BiasAdd_1/ReadVariableOp2r
7SiameseNetwork/embedding/conv2d_1/Conv2D/ReadVariableOp7SiameseNetwork/embedding/conv2d_1/Conv2D/ReadVariableOp2v
9SiameseNetwork/embedding/conv2d_1/Conv2D_1/ReadVariableOp9SiameseNetwork/embedding/conv2d_1/Conv2D_1/ReadVariableOp2t
8SiameseNetwork/embedding/conv2d_2/BiasAdd/ReadVariableOp8SiameseNetwork/embedding/conv2d_2/BiasAdd/ReadVariableOp2x
:SiameseNetwork/embedding/conv2d_2/BiasAdd_1/ReadVariableOp:SiameseNetwork/embedding/conv2d_2/BiasAdd_1/ReadVariableOp2r
7SiameseNetwork/embedding/conv2d_2/Conv2D/ReadVariableOp7SiameseNetwork/embedding/conv2d_2/Conv2D/ReadVariableOp2v
9SiameseNetwork/embedding/conv2d_2/Conv2D_1/ReadVariableOp9SiameseNetwork/embedding/conv2d_2/Conv2D_1/ReadVariableOp2t
8SiameseNetwork/embedding/conv2d_3/BiasAdd/ReadVariableOp8SiameseNetwork/embedding/conv2d_3/BiasAdd/ReadVariableOp2x
:SiameseNetwork/embedding/conv2d_3/BiasAdd_1/ReadVariableOp:SiameseNetwork/embedding/conv2d_3/BiasAdd_1/ReadVariableOp2r
7SiameseNetwork/embedding/conv2d_3/Conv2D/ReadVariableOp7SiameseNetwork/embedding/conv2d_3/Conv2D/ReadVariableOp2v
9SiameseNetwork/embedding/conv2d_3/Conv2D_1/ReadVariableOp9SiameseNetwork/embedding/conv2d_3/Conv2D_1/ReadVariableOp2n
5SiameseNetwork/embedding/dense/BiasAdd/ReadVariableOp5SiameseNetwork/embedding/dense/BiasAdd/ReadVariableOp2r
7SiameseNetwork/embedding/dense/BiasAdd_1/ReadVariableOp7SiameseNetwork/embedding/dense/BiasAdd_1/ReadVariableOp2l
4SiameseNetwork/embedding/dense/MatMul/ReadVariableOp4SiameseNetwork/embedding/dense/MatMul/ReadVariableOp2p
6SiameseNetwork/embedding/dense/MatMul_1/ReadVariableOp6SiameseNetwork/embedding/dense/MatMul_1/ReadVariableOp:Z V
/
_output_shapes
:?????????dd
#
_user_specified_name	input_img:_[
/
_output_shapes
:?????????dd
(
_user_specified_namevalidation_img
?

?
B__inference_dense_1_layer_call_and_return_conditional_losses_17544

inputs1
matmul_readvariableop_resource:	? -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	? *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
A__inference_conv2d_layer_call_and_return_conditional_losses_18265

inputs8
conv2d_readvariableop_resource:

@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:

@*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[[@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[[@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????[[@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????[[@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????dd: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????dd
 
_user_specified_nameinputs
?'
?
D__inference_embedding_layer_call_and_return_conditional_losses_17230

inputs&
conv2d_17145:

@
conv2d_17147:@)
conv2d_1_17163:@?
conv2d_1_17165:	?*
conv2d_2_17181:??
conv2d_2_17183:	?*
conv2d_3_17199:??
conv2d_3_17201:	?
dense_17224:
?H? 
dense_17226:	? 
identity??conv2d/StatefulPartitionedCall? conv2d_1/StatefulPartitionedCall? conv2d_2/StatefulPartitionedCall? conv2d_3/StatefulPartitionedCall?dense/StatefulPartitionedCall?
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_17145conv2d_17147*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????[[@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_17144?
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????..@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_17099?
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_17163conv2d_1_17165*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????((?*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_17162?
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_17111?
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_17181conv2d_2_17183*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_17180?
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????		?* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_17123?
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv2d_3_17199conv2d_3_17201*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_17198?
flatten/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????H* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_17210?
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_17224dense_17226*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????? *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_17223v
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:?????????? ?
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????dd: : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:W S
/
_output_shapes
:?????????dd
 
_user_specified_nameinputs
?
?
C__inference_distance_layer_call_and_return_conditional_losses_18225
input_embedding
validation_embedding
identityd
subSubinput_embeddingvalidation_embedding*
T0*(
_output_shapes
:?????????? F
AbsAbssub:z:0*
T0*(
_output_shapes
:?????????? P
IdentityIdentityAbs:y:0*
T0*(
_output_shapes
:?????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:?????????? :?????????? :Y U
(
_output_shapes
:?????????? 
)
_user_specified_nameinput_embedding:^Z
(
_output_shapes
:?????????? 
.
_user_specified_namevalidation_embedding
?
?
C__inference_conv2d_1_layer_call_and_return_conditional_losses_17162

inputs9
conv2d_readvariableop_resource:@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????((?*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????((?Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????((?j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:?????????((?w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????..@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????..@
 
_user_specified_nameinputs
?

?
)__inference_embedding_layer_call_fn_17253
input_image!
unknown:

@
	unknown_0:@$
	unknown_1:@?
	unknown_2:	?%
	unknown_3:??
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:
?H? 
	unknown_8:	? 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_imageunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????? *,
_read_only_resource_inputs

	
*2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_17230p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:?????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????dd: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
/
_output_shapes
:?????????dd
%
_user_specified_nameinput_image
?
?
.__inference_SiameseNetwork_layer_call_fn_17578
	input_img
validation_img!
unknown:

@
	unknown_0:@$
	unknown_1:@?
	unknown_2:	?%
	unknown_3:??
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:
?H? 
	unknown_8:	? 
	unknown_9:	? 

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCall	input_imgvalidation_imgunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8? *R
fMRK
I__inference_SiameseNetwork_layer_call_and_return_conditional_losses_17551o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*a
_input_shapesP
N:?????????dd:?????????dd: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
/
_output_shapes
:?????????dd
#
_user_specified_name	input_img:_[
/
_output_shapes
:?????????dd
(
_user_specified_namevalidation_img
?
?
C__inference_distance_layer_call_and_return_conditional_losses_17531
input_embedding
validation_embedding
identityd
subSubinput_embeddingvalidation_embedding*
T0*(
_output_shapes
:?????????? F
AbsAbssub:z:0*
T0*(
_output_shapes
:?????????? P
IdentityIdentityAbs:y:0*
T0*(
_output_shapes
:?????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:?????????? :?????????? :Y U
(
_output_shapes
:?????????? 
)
_user_specified_nameinput_embedding:^Z
(
_output_shapes
:?????????? 
.
_user_specified_namevalidation_embedding
?

?
B__inference_dense_1_layer_call_and_return_conditional_losses_18245

inputs1
matmul_readvariableop_resource:	? -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	? *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
^
B__inference_flatten_layer_call_and_return_conditional_losses_17210

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? $  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????HY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????H"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
^
B__inference_flatten_layer_call_and_return_conditional_losses_18366

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? $  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????HY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????H"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
(__inference_conv2d_2_layer_call_fn_18314

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
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_17180x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
C__inference_conv2d_2_layer_call_and_return_conditional_losses_18325

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
)__inference_embedding_layer_call_fn_17417
input_image!
unknown:

@
	unknown_0:@$
	unknown_1:@?
	unknown_2:	?%
	unknown_3:??
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:
?H? 
	unknown_8:	? 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_imageunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????? *,
_read_only_resource_inputs

	
*2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_17369p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:?????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????dd: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
/
_output_shapes
:?????????dd
%
_user_specified_nameinput_image
?4
?
D__inference_embedding_layer_call_and_return_conditional_losses_18168

inputs?
%conv2d_conv2d_readvariableop_resource:

@4
&conv2d_biasadd_readvariableop_resource:@B
'conv2d_1_conv2d_readvariableop_resource:@?7
(conv2d_1_biasadd_readvariableop_resource:	?C
'conv2d_2_conv2d_readvariableop_resource:??7
(conv2d_2_biasadd_readvariableop_resource:	?C
'conv2d_3_conv2d_readvariableop_resource:??7
(conv2d_3_biasadd_readvariableop_resource:	?8
$dense_matmul_readvariableop_resource:
?H? 4
%dense_biasadd_readvariableop_resource:	? 
identity??conv2d/BiasAdd/ReadVariableOp?conv2d/Conv2D/ReadVariableOp?conv2d_1/BiasAdd/ReadVariableOp?conv2d_1/Conv2D/ReadVariableOp?conv2d_2/BiasAdd/ReadVariableOp?conv2d_2/Conv2D/ReadVariableOp?conv2d_3/BiasAdd/ReadVariableOp?conv2d_3/Conv2D/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:

@*
dtype0?
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[[@*
paddingVALID*
strides
?
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[[@f
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:?????????[[@?
max_pooling2d/MaxPoolMaxPoolconv2d/Relu:activations:0*/
_output_shapes
:?????????..@*
ksize
@@*
paddingSAME*
strides
?
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPool:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????((?*
paddingVALID*
strides
?
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????((?k
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:?????????((??
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu:activations:0*0
_output_shapes
:??????????*
ksize
@@*
paddingSAME*
strides
?
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
conv2d_2/Conv2DConv2D max_pooling2d_1/MaxPool:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????k
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:???????????
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/Relu:activations:0*0
_output_shapes
:?????????		?*
ksize
@@*
paddingSAME*
strides
?
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
conv2d_3/Conv2DConv2D max_pooling2d_2/MaxPool:output:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????k
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:??????????^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? $  ?
flatten/ReshapeReshapeconv2d_3/Relu:activations:0flatten/Const:output:0*
T0*(
_output_shapes
:??????????H?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
?H? *
dtype0?
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????? 
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:? *
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????? c
dense/SigmoidSigmoiddense/BiasAdd:output:0*
T0*(
_output_shapes
:?????????? a
IdentityIdentitydense/Sigmoid:y:0^NoOp*
T0*(
_output_shapes
:?????????? ?
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????dd: : : : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????dd
 
_user_specified_nameinputs
?
?
I__inference_SiameseNetwork_layer_call_and_return_conditional_losses_17958
inputs_0
inputs_1I
/embedding_conv2d_conv2d_readvariableop_resource:

@>
0embedding_conv2d_biasadd_readvariableop_resource:@L
1embedding_conv2d_1_conv2d_readvariableop_resource:@?A
2embedding_conv2d_1_biasadd_readvariableop_resource:	?M
1embedding_conv2d_2_conv2d_readvariableop_resource:??A
2embedding_conv2d_2_biasadd_readvariableop_resource:	?M
1embedding_conv2d_3_conv2d_readvariableop_resource:??A
2embedding_conv2d_3_biasadd_readvariableop_resource:	?B
.embedding_dense_matmul_readvariableop_resource:
?H? >
/embedding_dense_biasadd_readvariableop_resource:	? 9
&dense_1_matmul_readvariableop_resource:	? 5
'dense_1_biasadd_readvariableop_resource:
identity??dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?'embedding/conv2d/BiasAdd/ReadVariableOp?)embedding/conv2d/BiasAdd_1/ReadVariableOp?&embedding/conv2d/Conv2D/ReadVariableOp?(embedding/conv2d/Conv2D_1/ReadVariableOp?)embedding/conv2d_1/BiasAdd/ReadVariableOp?+embedding/conv2d_1/BiasAdd_1/ReadVariableOp?(embedding/conv2d_1/Conv2D/ReadVariableOp?*embedding/conv2d_1/Conv2D_1/ReadVariableOp?)embedding/conv2d_2/BiasAdd/ReadVariableOp?+embedding/conv2d_2/BiasAdd_1/ReadVariableOp?(embedding/conv2d_2/Conv2D/ReadVariableOp?*embedding/conv2d_2/Conv2D_1/ReadVariableOp?)embedding/conv2d_3/BiasAdd/ReadVariableOp?+embedding/conv2d_3/BiasAdd_1/ReadVariableOp?(embedding/conv2d_3/Conv2D/ReadVariableOp?*embedding/conv2d_3/Conv2D_1/ReadVariableOp?&embedding/dense/BiasAdd/ReadVariableOp?(embedding/dense/BiasAdd_1/ReadVariableOp?%embedding/dense/MatMul/ReadVariableOp?'embedding/dense/MatMul_1/ReadVariableOp?
&embedding/conv2d/Conv2D/ReadVariableOpReadVariableOp/embedding_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:

@*
dtype0?
embedding/conv2d/Conv2DConv2Dinputs_0.embedding/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[[@*
paddingVALID*
strides
?
'embedding/conv2d/BiasAdd/ReadVariableOpReadVariableOp0embedding_conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
embedding/conv2d/BiasAddBiasAdd embedding/conv2d/Conv2D:output:0/embedding/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[[@z
embedding/conv2d/ReluRelu!embedding/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:?????????[[@?
embedding/max_pooling2d/MaxPoolMaxPool#embedding/conv2d/Relu:activations:0*/
_output_shapes
:?????????..@*
ksize
@@*
paddingSAME*
strides
?
(embedding/conv2d_1/Conv2D/ReadVariableOpReadVariableOp1embedding_conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
embedding/conv2d_1/Conv2DConv2D(embedding/max_pooling2d/MaxPool:output:00embedding/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????((?*
paddingVALID*
strides
?
)embedding/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp2embedding_conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
embedding/conv2d_1/BiasAddBiasAdd"embedding/conv2d_1/Conv2D:output:01embedding/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????((?
embedding/conv2d_1/ReluRelu#embedding/conv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:?????????((??
!embedding/max_pooling2d_1/MaxPoolMaxPool%embedding/conv2d_1/Relu:activations:0*0
_output_shapes
:??????????*
ksize
@@*
paddingSAME*
strides
?
(embedding/conv2d_2/Conv2D/ReadVariableOpReadVariableOp1embedding_conv2d_2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
embedding/conv2d_2/Conv2DConv2D*embedding/max_pooling2d_1/MaxPool:output:00embedding/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
)embedding/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp2embedding_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
embedding/conv2d_2/BiasAddBiasAdd"embedding/conv2d_2/Conv2D:output:01embedding/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????
embedding/conv2d_2/ReluRelu#embedding/conv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:???????????
!embedding/max_pooling2d_2/MaxPoolMaxPool%embedding/conv2d_2/Relu:activations:0*0
_output_shapes
:?????????		?*
ksize
@@*
paddingSAME*
strides
?
(embedding/conv2d_3/Conv2D/ReadVariableOpReadVariableOp1embedding_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
embedding/conv2d_3/Conv2DConv2D*embedding/max_pooling2d_2/MaxPool:output:00embedding/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
)embedding/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp2embedding_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
embedding/conv2d_3/BiasAddBiasAdd"embedding/conv2d_3/Conv2D:output:01embedding/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????
embedding/conv2d_3/ReluRelu#embedding/conv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:??????????h
embedding/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? $  ?
embedding/flatten/ReshapeReshape%embedding/conv2d_3/Relu:activations:0 embedding/flatten/Const:output:0*
T0*(
_output_shapes
:??????????H?
%embedding/dense/MatMul/ReadVariableOpReadVariableOp.embedding_dense_matmul_readvariableop_resource* 
_output_shapes
:
?H? *
dtype0?
embedding/dense/MatMulMatMul"embedding/flatten/Reshape:output:0-embedding/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????? ?
&embedding/dense/BiasAdd/ReadVariableOpReadVariableOp/embedding_dense_biasadd_readvariableop_resource*
_output_shapes	
:? *
dtype0?
embedding/dense/BiasAddBiasAdd embedding/dense/MatMul:product:0.embedding/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????? w
embedding/dense/SigmoidSigmoid embedding/dense/BiasAdd:output:0*
T0*(
_output_shapes
:?????????? ?
(embedding/conv2d/Conv2D_1/ReadVariableOpReadVariableOp/embedding_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:

@*
dtype0?
embedding/conv2d/Conv2D_1Conv2Dinputs_10embedding/conv2d/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[[@*
paddingVALID*
strides
?
)embedding/conv2d/BiasAdd_1/ReadVariableOpReadVariableOp0embedding_conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
embedding/conv2d/BiasAdd_1BiasAdd"embedding/conv2d/Conv2D_1:output:01embedding/conv2d/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[[@~
embedding/conv2d/Relu_1Relu#embedding/conv2d/BiasAdd_1:output:0*
T0*/
_output_shapes
:?????????[[@?
!embedding/max_pooling2d/MaxPool_1MaxPool%embedding/conv2d/Relu_1:activations:0*/
_output_shapes
:?????????..@*
ksize
@@*
paddingSAME*
strides
?
*embedding/conv2d_1/Conv2D_1/ReadVariableOpReadVariableOp1embedding_conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
embedding/conv2d_1/Conv2D_1Conv2D*embedding/max_pooling2d/MaxPool_1:output:02embedding/conv2d_1/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????((?*
paddingVALID*
strides
?
+embedding/conv2d_1/BiasAdd_1/ReadVariableOpReadVariableOp2embedding_conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
embedding/conv2d_1/BiasAdd_1BiasAdd$embedding/conv2d_1/Conv2D_1:output:03embedding/conv2d_1/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????((??
embedding/conv2d_1/Relu_1Relu%embedding/conv2d_1/BiasAdd_1:output:0*
T0*0
_output_shapes
:?????????((??
#embedding/max_pooling2d_1/MaxPool_1MaxPool'embedding/conv2d_1/Relu_1:activations:0*0
_output_shapes
:??????????*
ksize
@@*
paddingSAME*
strides
?
*embedding/conv2d_2/Conv2D_1/ReadVariableOpReadVariableOp1embedding_conv2d_2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
embedding/conv2d_2/Conv2D_1Conv2D,embedding/max_pooling2d_1/MaxPool_1:output:02embedding/conv2d_2/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
+embedding/conv2d_2/BiasAdd_1/ReadVariableOpReadVariableOp2embedding_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
embedding/conv2d_2/BiasAdd_1BiasAdd$embedding/conv2d_2/Conv2D_1:output:03embedding/conv2d_2/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
embedding/conv2d_2/Relu_1Relu%embedding/conv2d_2/BiasAdd_1:output:0*
T0*0
_output_shapes
:???????????
#embedding/max_pooling2d_2/MaxPool_1MaxPool'embedding/conv2d_2/Relu_1:activations:0*0
_output_shapes
:?????????		?*
ksize
@@*
paddingSAME*
strides
?
*embedding/conv2d_3/Conv2D_1/ReadVariableOpReadVariableOp1embedding_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
embedding/conv2d_3/Conv2D_1Conv2D,embedding/max_pooling2d_2/MaxPool_1:output:02embedding/conv2d_3/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
+embedding/conv2d_3/BiasAdd_1/ReadVariableOpReadVariableOp2embedding_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
embedding/conv2d_3/BiasAdd_1BiasAdd$embedding/conv2d_3/Conv2D_1:output:03embedding/conv2d_3/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
embedding/conv2d_3/Relu_1Relu%embedding/conv2d_3/BiasAdd_1:output:0*
T0*0
_output_shapes
:??????????j
embedding/flatten/Const_1Const*
_output_shapes
:*
dtype0*
valueB"???? $  ?
embedding/flatten/Reshape_1Reshape'embedding/conv2d_3/Relu_1:activations:0"embedding/flatten/Const_1:output:0*
T0*(
_output_shapes
:??????????H?
'embedding/dense/MatMul_1/ReadVariableOpReadVariableOp.embedding_dense_matmul_readvariableop_resource* 
_output_shapes
:
?H? *
dtype0?
embedding/dense/MatMul_1MatMul$embedding/flatten/Reshape_1:output:0/embedding/dense/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????? ?
(embedding/dense/BiasAdd_1/ReadVariableOpReadVariableOp/embedding_dense_biasadd_readvariableop_resource*
_output_shapes	
:? *
dtype0?
embedding/dense/BiasAdd_1BiasAdd"embedding/dense/MatMul_1:product:00embedding/dense/BiasAdd_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????? {
embedding/dense/Sigmoid_1Sigmoid"embedding/dense/BiasAdd_1:output:0*
T0*(
_output_shapes
:?????????? ?
distance/subSubembedding/dense/Sigmoid:y:0embedding/dense/Sigmoid_1:y:0*
T0*(
_output_shapes
:?????????? X
distance/AbsAbsdistance/sub:z:0*
T0*(
_output_shapes
:?????????? ?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	? *
dtype0?
dense_1/MatMulMatMuldistance/Abs:y:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????f
dense_1/SigmoidSigmoiddense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????b
IdentityIdentitydense_1/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp(^embedding/conv2d/BiasAdd/ReadVariableOp*^embedding/conv2d/BiasAdd_1/ReadVariableOp'^embedding/conv2d/Conv2D/ReadVariableOp)^embedding/conv2d/Conv2D_1/ReadVariableOp*^embedding/conv2d_1/BiasAdd/ReadVariableOp,^embedding/conv2d_1/BiasAdd_1/ReadVariableOp)^embedding/conv2d_1/Conv2D/ReadVariableOp+^embedding/conv2d_1/Conv2D_1/ReadVariableOp*^embedding/conv2d_2/BiasAdd/ReadVariableOp,^embedding/conv2d_2/BiasAdd_1/ReadVariableOp)^embedding/conv2d_2/Conv2D/ReadVariableOp+^embedding/conv2d_2/Conv2D_1/ReadVariableOp*^embedding/conv2d_3/BiasAdd/ReadVariableOp,^embedding/conv2d_3/BiasAdd_1/ReadVariableOp)^embedding/conv2d_3/Conv2D/ReadVariableOp+^embedding/conv2d_3/Conv2D_1/ReadVariableOp'^embedding/dense/BiasAdd/ReadVariableOp)^embedding/dense/BiasAdd_1/ReadVariableOp&^embedding/dense/MatMul/ReadVariableOp(^embedding/dense/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*a
_input_shapesP
N:?????????dd:?????????dd: : : : : : : : : : : : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2R
'embedding/conv2d/BiasAdd/ReadVariableOp'embedding/conv2d/BiasAdd/ReadVariableOp2V
)embedding/conv2d/BiasAdd_1/ReadVariableOp)embedding/conv2d/BiasAdd_1/ReadVariableOp2P
&embedding/conv2d/Conv2D/ReadVariableOp&embedding/conv2d/Conv2D/ReadVariableOp2T
(embedding/conv2d/Conv2D_1/ReadVariableOp(embedding/conv2d/Conv2D_1/ReadVariableOp2V
)embedding/conv2d_1/BiasAdd/ReadVariableOp)embedding/conv2d_1/BiasAdd/ReadVariableOp2Z
+embedding/conv2d_1/BiasAdd_1/ReadVariableOp+embedding/conv2d_1/BiasAdd_1/ReadVariableOp2T
(embedding/conv2d_1/Conv2D/ReadVariableOp(embedding/conv2d_1/Conv2D/ReadVariableOp2X
*embedding/conv2d_1/Conv2D_1/ReadVariableOp*embedding/conv2d_1/Conv2D_1/ReadVariableOp2V
)embedding/conv2d_2/BiasAdd/ReadVariableOp)embedding/conv2d_2/BiasAdd/ReadVariableOp2Z
+embedding/conv2d_2/BiasAdd_1/ReadVariableOp+embedding/conv2d_2/BiasAdd_1/ReadVariableOp2T
(embedding/conv2d_2/Conv2D/ReadVariableOp(embedding/conv2d_2/Conv2D/ReadVariableOp2X
*embedding/conv2d_2/Conv2D_1/ReadVariableOp*embedding/conv2d_2/Conv2D_1/ReadVariableOp2V
)embedding/conv2d_3/BiasAdd/ReadVariableOp)embedding/conv2d_3/BiasAdd/ReadVariableOp2Z
+embedding/conv2d_3/BiasAdd_1/ReadVariableOp+embedding/conv2d_3/BiasAdd_1/ReadVariableOp2T
(embedding/conv2d_3/Conv2D/ReadVariableOp(embedding/conv2d_3/Conv2D/ReadVariableOp2X
*embedding/conv2d_3/Conv2D_1/ReadVariableOp*embedding/conv2d_3/Conv2D_1/ReadVariableOp2P
&embedding/dense/BiasAdd/ReadVariableOp&embedding/dense/BiasAdd/ReadVariableOp2T
(embedding/dense/BiasAdd_1/ReadVariableOp(embedding/dense/BiasAdd_1/ReadVariableOp2N
%embedding/dense/MatMul/ReadVariableOp%embedding/dense/MatMul/ReadVariableOp2R
'embedding/dense/MatMul_1/ReadVariableOp'embedding/dense/MatMul_1/ReadVariableOp:Y U
/
_output_shapes
:?????????dd
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:?????????dd
"
_user_specified_name
inputs/1
?
?
.__inference_SiameseNetwork_layer_call_fn_17874
inputs_0
inputs_1!
unknown:

@
	unknown_0:@$
	unknown_1:@?
	unknown_2:	?%
	unknown_3:??
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:
?H? 
	unknown_8:	? 
	unknown_9:	? 

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8? *R
fMRK
I__inference_SiameseNetwork_layer_call_and_return_conditional_losses_17671o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*a
_input_shapesP
N:?????????dd:?????????dd: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:?????????dd
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:?????????dd
"
_user_specified_name
inputs/1
?'
?
D__inference_embedding_layer_call_and_return_conditional_losses_17483
input_image&
conv2d_17453:

@
conv2d_17455:@)
conv2d_1_17459:@?
conv2d_1_17461:	?*
conv2d_2_17465:??
conv2d_2_17467:	?*
conv2d_3_17471:??
conv2d_3_17473:	?
dense_17477:
?H? 
dense_17479:	? 
identity??conv2d/StatefulPartitionedCall? conv2d_1/StatefulPartitionedCall? conv2d_2/StatefulPartitionedCall? conv2d_3/StatefulPartitionedCall?dense/StatefulPartitionedCall?
conv2d/StatefulPartitionedCallStatefulPartitionedCallinput_imageconv2d_17453conv2d_17455*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????[[@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_17144?
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????..@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_17099?
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_17459conv2d_1_17461*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????((?*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_17162?
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_17111?
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_17465conv2d_2_17467*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_17180?
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????		?* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_17123?
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv2d_3_17471conv2d_3_17473*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_17198?
flatten/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????H* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_17210?
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_17477dense_17479*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????? *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_17223v
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:?????????? ?
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????dd: : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:\ X
/
_output_shapes
:?????????dd
%
_user_specified_nameinput_image
?'
?
D__inference_embedding_layer_call_and_return_conditional_losses_17450
input_image&
conv2d_17420:

@
conv2d_17422:@)
conv2d_1_17426:@?
conv2d_1_17428:	?*
conv2d_2_17432:??
conv2d_2_17434:	?*
conv2d_3_17438:??
conv2d_3_17440:	?
dense_17444:
?H? 
dense_17446:	? 
identity??conv2d/StatefulPartitionedCall? conv2d_1/StatefulPartitionedCall? conv2d_2/StatefulPartitionedCall? conv2d_3/StatefulPartitionedCall?dense/StatefulPartitionedCall?
conv2d/StatefulPartitionedCallStatefulPartitionedCallinput_imageconv2d_17420conv2d_17422*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????[[@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_17144?
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????..@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_17099?
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_17426conv2d_1_17428*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????((?*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_17162?
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_17111?
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_17432conv2d_2_17434*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_17180?
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????		?* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_17123?
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv2d_3_17438conv2d_3_17440*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_17198?
flatten/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????H* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_17210?
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_17444dense_17446*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????? *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_17223v
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:?????????? ?
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????dd: : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:\ X
/
_output_shapes
:?????????dd
%
_user_specified_nameinput_image
?
?
C__inference_conv2d_3_layer_call_and_return_conditional_losses_18355

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????		?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????		?
 
_user_specified_nameinputs
?
f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_18305

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
@@*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?4
?
D__inference_embedding_layer_call_and_return_conditional_losses_18212

inputs?
%conv2d_conv2d_readvariableop_resource:

@4
&conv2d_biasadd_readvariableop_resource:@B
'conv2d_1_conv2d_readvariableop_resource:@?7
(conv2d_1_biasadd_readvariableop_resource:	?C
'conv2d_2_conv2d_readvariableop_resource:??7
(conv2d_2_biasadd_readvariableop_resource:	?C
'conv2d_3_conv2d_readvariableop_resource:??7
(conv2d_3_biasadd_readvariableop_resource:	?8
$dense_matmul_readvariableop_resource:
?H? 4
%dense_biasadd_readvariableop_resource:	? 
identity??conv2d/BiasAdd/ReadVariableOp?conv2d/Conv2D/ReadVariableOp?conv2d_1/BiasAdd/ReadVariableOp?conv2d_1/Conv2D/ReadVariableOp?conv2d_2/BiasAdd/ReadVariableOp?conv2d_2/Conv2D/ReadVariableOp?conv2d_3/BiasAdd/ReadVariableOp?conv2d_3/Conv2D/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:

@*
dtype0?
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[[@*
paddingVALID*
strides
?
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[[@f
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:?????????[[@?
max_pooling2d/MaxPoolMaxPoolconv2d/Relu:activations:0*/
_output_shapes
:?????????..@*
ksize
@@*
paddingSAME*
strides
?
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPool:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????((?*
paddingVALID*
strides
?
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????((?k
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:?????????((??
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu:activations:0*0
_output_shapes
:??????????*
ksize
@@*
paddingSAME*
strides
?
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
conv2d_2/Conv2DConv2D max_pooling2d_1/MaxPool:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????k
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:???????????
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/Relu:activations:0*0
_output_shapes
:?????????		?*
ksize
@@*
paddingSAME*
strides
?
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
conv2d_3/Conv2DConv2D max_pooling2d_2/MaxPool:output:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????k
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:??????????^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? $  ?
flatten/ReshapeReshapeconv2d_3/Relu:activations:0flatten/Const:output:0*
T0*(
_output_shapes
:??????????H?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
?H? *
dtype0?
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????? 
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:? *
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????? c
dense/SigmoidSigmoiddense/BiasAdd:output:0*
T0*(
_output_shapes
:?????????? a
IdentityIdentitydense/Sigmoid:y:0^NoOp*
T0*(
_output_shapes
:?????????? ?
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????dd: : : : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????dd
 
_user_specified_nameinputs
?
?
I__inference_SiameseNetwork_layer_call_and_return_conditional_losses_17771
	input_img
validation_img)
embedding_17732:

@
embedding_17734:@*
embedding_17736:@?
embedding_17738:	?+
embedding_17740:??
embedding_17742:	?+
embedding_17744:??
embedding_17746:	?#
embedding_17748:
?H? 
embedding_17750:	?  
dense_1_17765:	? 
dense_1_17767:
identity??dense_1/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?#embedding/StatefulPartitionedCall_1?
!embedding/StatefulPartitionedCallStatefulPartitionedCall	input_imgembedding_17732embedding_17734embedding_17736embedding_17738embedding_17740embedding_17742embedding_17744embedding_17746embedding_17748embedding_17750*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????? *,
_read_only_resource_inputs

	
*2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_17230?
#embedding/StatefulPartitionedCall_1StatefulPartitionedCallvalidation_imgembedding_17732embedding_17734embedding_17736embedding_17738embedding_17740embedding_17742embedding_17744embedding_17746embedding_17748embedding_17750*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????? *,
_read_only_resource_inputs

	
*2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_17230?
distance/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0,embedding/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_distance_layer_call_and_return_conditional_losses_17531?
dense_1/StatefulPartitionedCallStatefulPartitionedCall!distance/PartitionedCall:output:0dense_1_17765dense_1_17767*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_17544w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_1/StatefulPartitionedCall"^embedding/StatefulPartitionedCall$^embedding/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*a
_input_shapesP
N:?????????dd:?????????dd: : : : : : : : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2J
#embedding/StatefulPartitionedCall_1#embedding/StatefulPartitionedCall_1:Z V
/
_output_shapes
:?????????dd
#
_user_specified_name	input_img:_[
/
_output_shapes
:?????????dd
(
_user_specified_namevalidation_img
?
?
'__inference_dense_1_layer_call_fn_18234

inputs
unknown:	? 
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_17544o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
&__inference_conv2d_layer_call_fn_18254

inputs!
unknown:

@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????[[@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_17144w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????[[@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????dd: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????dd
 
_user_specified_nameinputs
?

?
@__inference_dense_layer_call_and_return_conditional_losses_18386

inputs2
matmul_readvariableop_resource:
?H? .
biasadd_readvariableop_resource:	? 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
?H? *
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????? s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:? *
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????? W
SigmoidSigmoidBiasAdd:output:0*
T0*(
_output_shapes
:?????????? [
IdentityIdentitySigmoid:y:0^NoOp*
T0*(
_output_shapes
:?????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????H: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????H
 
_user_specified_nameinputs
?
d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_18275

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
@@*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
I__inference_SiameseNetwork_layer_call_and_return_conditional_losses_17814
	input_img
validation_img)
embedding_17775:

@
embedding_17777:@*
embedding_17779:@?
embedding_17781:	?+
embedding_17783:??
embedding_17785:	?+
embedding_17787:??
embedding_17789:	?#
embedding_17791:
?H? 
embedding_17793:	?  
dense_1_17808:	? 
dense_1_17810:
identity??dense_1/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?#embedding/StatefulPartitionedCall_1?
!embedding/StatefulPartitionedCallStatefulPartitionedCall	input_imgembedding_17775embedding_17777embedding_17779embedding_17781embedding_17783embedding_17785embedding_17787embedding_17789embedding_17791embedding_17793*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????? *,
_read_only_resource_inputs

	
*2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_17369?
#embedding/StatefulPartitionedCall_1StatefulPartitionedCallvalidation_imgembedding_17775embedding_17777embedding_17779embedding_17781embedding_17783embedding_17785embedding_17787embedding_17789embedding_17791embedding_17793*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????? *,
_read_only_resource_inputs

	
*2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_17369?
distance/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0,embedding/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_distance_layer_call_and_return_conditional_losses_17531?
dense_1/StatefulPartitionedCallStatefulPartitionedCall!distance/PartitionedCall:output:0dense_1_17808dense_1_17810*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_17544w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_1/StatefulPartitionedCall"^embedding/StatefulPartitionedCall$^embedding/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*a
_input_shapesP
N:?????????dd:?????????dd: : : : : : : : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2J
#embedding/StatefulPartitionedCall_1#embedding/StatefulPartitionedCall_1:Z V
/
_output_shapes
:?????????dd
#
_user_specified_name	input_img:_[
/
_output_shapes
:?????????dd
(
_user_specified_namevalidation_img
?'
?
D__inference_embedding_layer_call_and_return_conditional_losses_17369

inputs&
conv2d_17339:

@
conv2d_17341:@)
conv2d_1_17345:@?
conv2d_1_17347:	?*
conv2d_2_17351:??
conv2d_2_17353:	?*
conv2d_3_17357:??
conv2d_3_17359:	?
dense_17363:
?H? 
dense_17365:	? 
identity??conv2d/StatefulPartitionedCall? conv2d_1/StatefulPartitionedCall? conv2d_2/StatefulPartitionedCall? conv2d_3/StatefulPartitionedCall?dense/StatefulPartitionedCall?
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_17339conv2d_17341*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????[[@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_17144?
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????..@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_17099?
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_17345conv2d_1_17347*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????((?*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_17162?
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_17111?
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_17351conv2d_2_17353*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_17180?
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????		?* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_17123?
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv2d_3_17357conv2d_3_17359*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_17198?
flatten/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????H* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_17210?
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_17363dense_17365*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????? *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_17223v
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:?????????? ?
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????dd: : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:W S
/
_output_shapes
:?????????dd
 
_user_specified_nameinputs
?1
?
!__inference__traced_restore_18492
file_prefix2
assignvariableop_dense_1_kernel:	? -
assignvariableop_1_dense_1_bias::
 assignvariableop_2_conv2d_kernel:

@,
assignvariableop_3_conv2d_bias:@=
"assignvariableop_4_conv2d_1_kernel:@?/
 assignvariableop_5_conv2d_1_bias:	?>
"assignvariableop_6_conv2d_2_kernel:??/
 assignvariableop_7_conv2d_2_bias:	?>
"assignvariableop_8_conv2d_3_kernel:??/
 assignvariableop_9_conv2d_3_bias:	?4
 assignvariableop_10_dense_kernel:
?H? -
assignvariableop_11_dense_bias:	? 
identity_13??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*-
value$B"B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*H
_output_shapes6
4:::::::::::::*
dtypes
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOpassignvariableop_dense_1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp assignvariableop_2_conv2d_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOpassignvariableop_3_conv2d_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_1_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_1_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv2d_2_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv2d_2_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp"assignvariableop_8_conv2d_3_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp assignvariableop_9_conv2d_3_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp assignvariableop_10_dense_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpassignvariableop_11_dense_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_12Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_13IdentityIdentity_12:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_13Identity_13:output:0*-
_input_shapes
: : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112(
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
?
?
C__inference_conv2d_3_layer_call_and_return_conditional_losses_17198

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????		?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????		?
 
_user_specified_nameinputs
?
C
'__inference_flatten_layer_call_fn_18360

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????H* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_17210a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????H"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
%__inference_dense_layer_call_fn_18375

inputs
unknown:
?H? 
	unknown_0:	? 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????? *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_17223p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:?????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????H: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????H
 
_user_specified_nameinputs
?
?
I__inference_SiameseNetwork_layer_call_and_return_conditional_losses_18042
inputs_0
inputs_1I
/embedding_conv2d_conv2d_readvariableop_resource:

@>
0embedding_conv2d_biasadd_readvariableop_resource:@L
1embedding_conv2d_1_conv2d_readvariableop_resource:@?A
2embedding_conv2d_1_biasadd_readvariableop_resource:	?M
1embedding_conv2d_2_conv2d_readvariableop_resource:??A
2embedding_conv2d_2_biasadd_readvariableop_resource:	?M
1embedding_conv2d_3_conv2d_readvariableop_resource:??A
2embedding_conv2d_3_biasadd_readvariableop_resource:	?B
.embedding_dense_matmul_readvariableop_resource:
?H? >
/embedding_dense_biasadd_readvariableop_resource:	? 9
&dense_1_matmul_readvariableop_resource:	? 5
'dense_1_biasadd_readvariableop_resource:
identity??dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?'embedding/conv2d/BiasAdd/ReadVariableOp?)embedding/conv2d/BiasAdd_1/ReadVariableOp?&embedding/conv2d/Conv2D/ReadVariableOp?(embedding/conv2d/Conv2D_1/ReadVariableOp?)embedding/conv2d_1/BiasAdd/ReadVariableOp?+embedding/conv2d_1/BiasAdd_1/ReadVariableOp?(embedding/conv2d_1/Conv2D/ReadVariableOp?*embedding/conv2d_1/Conv2D_1/ReadVariableOp?)embedding/conv2d_2/BiasAdd/ReadVariableOp?+embedding/conv2d_2/BiasAdd_1/ReadVariableOp?(embedding/conv2d_2/Conv2D/ReadVariableOp?*embedding/conv2d_2/Conv2D_1/ReadVariableOp?)embedding/conv2d_3/BiasAdd/ReadVariableOp?+embedding/conv2d_3/BiasAdd_1/ReadVariableOp?(embedding/conv2d_3/Conv2D/ReadVariableOp?*embedding/conv2d_3/Conv2D_1/ReadVariableOp?&embedding/dense/BiasAdd/ReadVariableOp?(embedding/dense/BiasAdd_1/ReadVariableOp?%embedding/dense/MatMul/ReadVariableOp?'embedding/dense/MatMul_1/ReadVariableOp?
&embedding/conv2d/Conv2D/ReadVariableOpReadVariableOp/embedding_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:

@*
dtype0?
embedding/conv2d/Conv2DConv2Dinputs_0.embedding/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[[@*
paddingVALID*
strides
?
'embedding/conv2d/BiasAdd/ReadVariableOpReadVariableOp0embedding_conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
embedding/conv2d/BiasAddBiasAdd embedding/conv2d/Conv2D:output:0/embedding/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[[@z
embedding/conv2d/ReluRelu!embedding/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:?????????[[@?
embedding/max_pooling2d/MaxPoolMaxPool#embedding/conv2d/Relu:activations:0*/
_output_shapes
:?????????..@*
ksize
@@*
paddingSAME*
strides
?
(embedding/conv2d_1/Conv2D/ReadVariableOpReadVariableOp1embedding_conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
embedding/conv2d_1/Conv2DConv2D(embedding/max_pooling2d/MaxPool:output:00embedding/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????((?*
paddingVALID*
strides
?
)embedding/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp2embedding_conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
embedding/conv2d_1/BiasAddBiasAdd"embedding/conv2d_1/Conv2D:output:01embedding/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????((?
embedding/conv2d_1/ReluRelu#embedding/conv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:?????????((??
!embedding/max_pooling2d_1/MaxPoolMaxPool%embedding/conv2d_1/Relu:activations:0*0
_output_shapes
:??????????*
ksize
@@*
paddingSAME*
strides
?
(embedding/conv2d_2/Conv2D/ReadVariableOpReadVariableOp1embedding_conv2d_2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
embedding/conv2d_2/Conv2DConv2D*embedding/max_pooling2d_1/MaxPool:output:00embedding/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
)embedding/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp2embedding_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
embedding/conv2d_2/BiasAddBiasAdd"embedding/conv2d_2/Conv2D:output:01embedding/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????
embedding/conv2d_2/ReluRelu#embedding/conv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:???????????
!embedding/max_pooling2d_2/MaxPoolMaxPool%embedding/conv2d_2/Relu:activations:0*0
_output_shapes
:?????????		?*
ksize
@@*
paddingSAME*
strides
?
(embedding/conv2d_3/Conv2D/ReadVariableOpReadVariableOp1embedding_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
embedding/conv2d_3/Conv2DConv2D*embedding/max_pooling2d_2/MaxPool:output:00embedding/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
)embedding/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp2embedding_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
embedding/conv2d_3/BiasAddBiasAdd"embedding/conv2d_3/Conv2D:output:01embedding/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????
embedding/conv2d_3/ReluRelu#embedding/conv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:??????????h
embedding/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? $  ?
embedding/flatten/ReshapeReshape%embedding/conv2d_3/Relu:activations:0 embedding/flatten/Const:output:0*
T0*(
_output_shapes
:??????????H?
%embedding/dense/MatMul/ReadVariableOpReadVariableOp.embedding_dense_matmul_readvariableop_resource* 
_output_shapes
:
?H? *
dtype0?
embedding/dense/MatMulMatMul"embedding/flatten/Reshape:output:0-embedding/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????? ?
&embedding/dense/BiasAdd/ReadVariableOpReadVariableOp/embedding_dense_biasadd_readvariableop_resource*
_output_shapes	
:? *
dtype0?
embedding/dense/BiasAddBiasAdd embedding/dense/MatMul:product:0.embedding/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????? w
embedding/dense/SigmoidSigmoid embedding/dense/BiasAdd:output:0*
T0*(
_output_shapes
:?????????? ?
(embedding/conv2d/Conv2D_1/ReadVariableOpReadVariableOp/embedding_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:

@*
dtype0?
embedding/conv2d/Conv2D_1Conv2Dinputs_10embedding/conv2d/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[[@*
paddingVALID*
strides
?
)embedding/conv2d/BiasAdd_1/ReadVariableOpReadVariableOp0embedding_conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
embedding/conv2d/BiasAdd_1BiasAdd"embedding/conv2d/Conv2D_1:output:01embedding/conv2d/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[[@~
embedding/conv2d/Relu_1Relu#embedding/conv2d/BiasAdd_1:output:0*
T0*/
_output_shapes
:?????????[[@?
!embedding/max_pooling2d/MaxPool_1MaxPool%embedding/conv2d/Relu_1:activations:0*/
_output_shapes
:?????????..@*
ksize
@@*
paddingSAME*
strides
?
*embedding/conv2d_1/Conv2D_1/ReadVariableOpReadVariableOp1embedding_conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
embedding/conv2d_1/Conv2D_1Conv2D*embedding/max_pooling2d/MaxPool_1:output:02embedding/conv2d_1/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????((?*
paddingVALID*
strides
?
+embedding/conv2d_1/BiasAdd_1/ReadVariableOpReadVariableOp2embedding_conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
embedding/conv2d_1/BiasAdd_1BiasAdd$embedding/conv2d_1/Conv2D_1:output:03embedding/conv2d_1/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????((??
embedding/conv2d_1/Relu_1Relu%embedding/conv2d_1/BiasAdd_1:output:0*
T0*0
_output_shapes
:?????????((??
#embedding/max_pooling2d_1/MaxPool_1MaxPool'embedding/conv2d_1/Relu_1:activations:0*0
_output_shapes
:??????????*
ksize
@@*
paddingSAME*
strides
?
*embedding/conv2d_2/Conv2D_1/ReadVariableOpReadVariableOp1embedding_conv2d_2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
embedding/conv2d_2/Conv2D_1Conv2D,embedding/max_pooling2d_1/MaxPool_1:output:02embedding/conv2d_2/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
+embedding/conv2d_2/BiasAdd_1/ReadVariableOpReadVariableOp2embedding_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
embedding/conv2d_2/BiasAdd_1BiasAdd$embedding/conv2d_2/Conv2D_1:output:03embedding/conv2d_2/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
embedding/conv2d_2/Relu_1Relu%embedding/conv2d_2/BiasAdd_1:output:0*
T0*0
_output_shapes
:???????????
#embedding/max_pooling2d_2/MaxPool_1MaxPool'embedding/conv2d_2/Relu_1:activations:0*0
_output_shapes
:?????????		?*
ksize
@@*
paddingSAME*
strides
?
*embedding/conv2d_3/Conv2D_1/ReadVariableOpReadVariableOp1embedding_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
embedding/conv2d_3/Conv2D_1Conv2D,embedding/max_pooling2d_2/MaxPool_1:output:02embedding/conv2d_3/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
+embedding/conv2d_3/BiasAdd_1/ReadVariableOpReadVariableOp2embedding_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
embedding/conv2d_3/BiasAdd_1BiasAdd$embedding/conv2d_3/Conv2D_1:output:03embedding/conv2d_3/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
embedding/conv2d_3/Relu_1Relu%embedding/conv2d_3/BiasAdd_1:output:0*
T0*0
_output_shapes
:??????????j
embedding/flatten/Const_1Const*
_output_shapes
:*
dtype0*
valueB"???? $  ?
embedding/flatten/Reshape_1Reshape'embedding/conv2d_3/Relu_1:activations:0"embedding/flatten/Const_1:output:0*
T0*(
_output_shapes
:??????????H?
'embedding/dense/MatMul_1/ReadVariableOpReadVariableOp.embedding_dense_matmul_readvariableop_resource* 
_output_shapes
:
?H? *
dtype0?
embedding/dense/MatMul_1MatMul$embedding/flatten/Reshape_1:output:0/embedding/dense/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????? ?
(embedding/dense/BiasAdd_1/ReadVariableOpReadVariableOp/embedding_dense_biasadd_readvariableop_resource*
_output_shapes	
:? *
dtype0?
embedding/dense/BiasAdd_1BiasAdd"embedding/dense/MatMul_1:product:00embedding/dense/BiasAdd_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????? {
embedding/dense/Sigmoid_1Sigmoid"embedding/dense/BiasAdd_1:output:0*
T0*(
_output_shapes
:?????????? ?
distance/subSubembedding/dense/Sigmoid:y:0embedding/dense/Sigmoid_1:y:0*
T0*(
_output_shapes
:?????????? X
distance/AbsAbsdistance/sub:z:0*
T0*(
_output_shapes
:?????????? ?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	? *
dtype0?
dense_1/MatMulMatMuldistance/Abs:y:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????f
dense_1/SigmoidSigmoiddense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????b
IdentityIdentitydense_1/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp(^embedding/conv2d/BiasAdd/ReadVariableOp*^embedding/conv2d/BiasAdd_1/ReadVariableOp'^embedding/conv2d/Conv2D/ReadVariableOp)^embedding/conv2d/Conv2D_1/ReadVariableOp*^embedding/conv2d_1/BiasAdd/ReadVariableOp,^embedding/conv2d_1/BiasAdd_1/ReadVariableOp)^embedding/conv2d_1/Conv2D/ReadVariableOp+^embedding/conv2d_1/Conv2D_1/ReadVariableOp*^embedding/conv2d_2/BiasAdd/ReadVariableOp,^embedding/conv2d_2/BiasAdd_1/ReadVariableOp)^embedding/conv2d_2/Conv2D/ReadVariableOp+^embedding/conv2d_2/Conv2D_1/ReadVariableOp*^embedding/conv2d_3/BiasAdd/ReadVariableOp,^embedding/conv2d_3/BiasAdd_1/ReadVariableOp)^embedding/conv2d_3/Conv2D/ReadVariableOp+^embedding/conv2d_3/Conv2D_1/ReadVariableOp'^embedding/dense/BiasAdd/ReadVariableOp)^embedding/dense/BiasAdd_1/ReadVariableOp&^embedding/dense/MatMul/ReadVariableOp(^embedding/dense/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*a
_input_shapesP
N:?????????dd:?????????dd: : : : : : : : : : : : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2R
'embedding/conv2d/BiasAdd/ReadVariableOp'embedding/conv2d/BiasAdd/ReadVariableOp2V
)embedding/conv2d/BiasAdd_1/ReadVariableOp)embedding/conv2d/BiasAdd_1/ReadVariableOp2P
&embedding/conv2d/Conv2D/ReadVariableOp&embedding/conv2d/Conv2D/ReadVariableOp2T
(embedding/conv2d/Conv2D_1/ReadVariableOp(embedding/conv2d/Conv2D_1/ReadVariableOp2V
)embedding/conv2d_1/BiasAdd/ReadVariableOp)embedding/conv2d_1/BiasAdd/ReadVariableOp2Z
+embedding/conv2d_1/BiasAdd_1/ReadVariableOp+embedding/conv2d_1/BiasAdd_1/ReadVariableOp2T
(embedding/conv2d_1/Conv2D/ReadVariableOp(embedding/conv2d_1/Conv2D/ReadVariableOp2X
*embedding/conv2d_1/Conv2D_1/ReadVariableOp*embedding/conv2d_1/Conv2D_1/ReadVariableOp2V
)embedding/conv2d_2/BiasAdd/ReadVariableOp)embedding/conv2d_2/BiasAdd/ReadVariableOp2Z
+embedding/conv2d_2/BiasAdd_1/ReadVariableOp+embedding/conv2d_2/BiasAdd_1/ReadVariableOp2T
(embedding/conv2d_2/Conv2D/ReadVariableOp(embedding/conv2d_2/Conv2D/ReadVariableOp2X
*embedding/conv2d_2/Conv2D_1/ReadVariableOp*embedding/conv2d_2/Conv2D_1/ReadVariableOp2V
)embedding/conv2d_3/BiasAdd/ReadVariableOp)embedding/conv2d_3/BiasAdd/ReadVariableOp2Z
+embedding/conv2d_3/BiasAdd_1/ReadVariableOp+embedding/conv2d_3/BiasAdd_1/ReadVariableOp2T
(embedding/conv2d_3/Conv2D/ReadVariableOp(embedding/conv2d_3/Conv2D/ReadVariableOp2X
*embedding/conv2d_3/Conv2D_1/ReadVariableOp*embedding/conv2d_3/Conv2D_1/ReadVariableOp2P
&embedding/dense/BiasAdd/ReadVariableOp&embedding/dense/BiasAdd/ReadVariableOp2T
(embedding/dense/BiasAdd_1/ReadVariableOp(embedding/dense/BiasAdd_1/ReadVariableOp2N
%embedding/dense/MatMul/ReadVariableOp%embedding/dense/MatMul/ReadVariableOp2R
'embedding/dense/MatMul_1/ReadVariableOp'embedding/dense/MatMul_1/ReadVariableOp:Y U
/
_output_shapes
:?????????dd
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:?????????dd
"
_user_specified_name
inputs/1
?
f
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_18335

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
@@*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
(__inference_conv2d_1_layer_call_fn_18284

inputs"
unknown:@?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????((?*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_17162x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????((?`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????..@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????..@
 
_user_specified_nameinputs
?
I
-__inference_max_pooling2d_layer_call_fn_18270

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_17099?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

?
@__inference_dense_layer_call_and_return_conditional_losses_17223

inputs2
matmul_readvariableop_resource:
?H? .
biasadd_readvariableop_resource:	? 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
?H? *
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????? s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:? *
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????? W
SigmoidSigmoidBiasAdd:output:0*
T0*(
_output_shapes
:?????????? [
IdentityIdentitySigmoid:y:0^NoOp*
T0*(
_output_shapes
:?????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????H: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????H
 
_user_specified_nameinputs
?
?
.__inference_SiameseNetwork_layer_call_fn_17844
inputs_0
inputs_1!
unknown:

@
	unknown_0:@$
	unknown_1:@?
	unknown_2:	?%
	unknown_3:??
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:
?H? 
	unknown_8:	? 
	unknown_9:	? 

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8? *R
fMRK
I__inference_SiameseNetwork_layer_call_and_return_conditional_losses_17551o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*a
_input_shapesP
N:?????????dd:?????????dd: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:?????????dd
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:?????????dd
"
_user_specified_name
inputs/1
?
f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_17111

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
@@*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
K
/__inference_max_pooling2d_2_layer_call_fn_18330

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_17123?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
K
/__inference_max_pooling2d_1_layer_call_fn_18300

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_17111?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
A__inference_conv2d_layer_call_and_return_conditional_losses_17144

inputs8
conv2d_readvariableop_resource:

@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:

@*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[[@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????[[@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????[[@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????[[@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????dd: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????dd
 
_user_specified_nameinputs
?
?
I__inference_SiameseNetwork_layer_call_and_return_conditional_losses_17551

inputs
inputs_1)
embedding_17492:

@
embedding_17494:@*
embedding_17496:@?
embedding_17498:	?+
embedding_17500:??
embedding_17502:	?+
embedding_17504:??
embedding_17506:	?#
embedding_17508:
?H? 
embedding_17510:	?  
dense_1_17545:	? 
dense_1_17547:
identity??dense_1/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?#embedding/StatefulPartitionedCall_1?
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_17492embedding_17494embedding_17496embedding_17498embedding_17500embedding_17502embedding_17504embedding_17506embedding_17508embedding_17510*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????? *,
_read_only_resource_inputs

	
*2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_17230?
#embedding/StatefulPartitionedCall_1StatefulPartitionedCallinputs_1embedding_17492embedding_17494embedding_17496embedding_17498embedding_17500embedding_17502embedding_17504embedding_17506embedding_17508embedding_17510*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????? *,
_read_only_resource_inputs

	
*2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_17230?
distance/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0,embedding/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_distance_layer_call_and_return_conditional_losses_17531?
dense_1/StatefulPartitionedCallStatefulPartitionedCall!distance/PartitionedCall:output:0dense_1_17545dense_1_17547*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_17544w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_1/StatefulPartitionedCall"^embedding/StatefulPartitionedCall$^embedding/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*a
_input_shapesP
N:?????????dd:?????????dd: : : : : : : : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2J
#embedding/StatefulPartitionedCall_1#embedding/StatefulPartitionedCall_1:W S
/
_output_shapes
:?????????dd
 
_user_specified_nameinputs:WS
/
_output_shapes
:?????????dd
 
_user_specified_nameinputs
?
f
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_17123

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
@@*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
C__inference_conv2d_2_layer_call_and_return_conditional_losses_17180

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
C__inference_conv2d_1_layer_call_and_return_conditional_losses_18295

inputs9
conv2d_readvariableop_resource:@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????((?*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????((?Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????((?j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:?????????((?w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????..@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????..@
 
_user_specified_nameinputs
?
g
(__inference_distance_layer_call_fn_18218
input_embedding
validation_embedding
identity?
PartitionedCallPartitionedCallinput_embeddingvalidation_embedding*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_distance_layer_call_and_return_conditional_losses_17531a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:?????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:?????????? :?????????? :Y U
(
_output_shapes
:?????????? 
)
_user_specified_nameinput_embedding:^Z
(
_output_shapes
:?????????? 
.
_user_specified_namevalidation_embedding
?
?
.__inference_SiameseNetwork_layer_call_fn_17728
	input_img
validation_img!
unknown:

@
	unknown_0:@$
	unknown_1:@?
	unknown_2:	?%
	unknown_3:??
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:
?H? 
	unknown_8:	? 
	unknown_9:	? 

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCall	input_imgvalidation_imgunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8? *R
fMRK
I__inference_SiameseNetwork_layer_call_and_return_conditional_losses_17671o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*a
_input_shapesP
N:?????????dd:?????????dd: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
/
_output_shapes
:?????????dd
#
_user_specified_name	input_img:_[
/
_output_shapes
:?????????dd
(
_user_specified_namevalidation_img
?"
?
__inference__traced_save_18446
file_prefix-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop,
(savev2_conv2d_kernel_read_readvariableop*
&savev2_conv2d_bias_read_readvariableop.
*savev2_conv2d_1_kernel_read_readvariableop,
(savev2_conv2d_1_bias_read_readvariableop.
*savev2_conv2d_2_kernel_read_readvariableop,
(savev2_conv2d_2_bias_read_readvariableop.
*savev2_conv2d_3_kernel_read_readvariableop,
(savev2_conv2d_3_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop
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
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*-
value$B"B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop*savev2_conv2d_1_kernel_read_readvariableop(savev2_conv2d_1_bias_read_readvariableop*savev2_conv2d_2_kernel_read_readvariableop(savev2_conv2d_2_bias_read_readvariableop*savev2_conv2d_3_kernel_read_readvariableop(savev2_conv2d_3_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2?
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
?: :	? ::

@:@:@?:?:??:?:??:?:
?H? :? : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	? : 

_output_shapes
::,(
&
_output_shapes
:

@: 

_output_shapes
:@:-)
'
_output_shapes
:@?:!

_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:.	*
(
_output_shapes
:??:!


_output_shapes	
:?:&"
 
_output_shapes
:
?H? :!

_output_shapes	
:? :

_output_shapes
: 
?

?
)__inference_embedding_layer_call_fn_18099

inputs!
unknown:

@
	unknown_0:@$
	unknown_1:@?
	unknown_2:	?%
	unknown_3:??
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:
?H? 
	unknown_8:	? 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????? *,
_read_only_resource_inputs

	
*2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_17230p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:?????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????dd: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????dd
 
_user_specified_nameinputs
?
?
#__inference_signature_wrapper_18074
	input_img
validation_img!
unknown:

@
	unknown_0:@$
	unknown_1:@?
	unknown_2:	?%
	unknown_3:??
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:
?H? 
	unknown_8:	? 
	unknown_9:	? 

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCall	input_imgvalidation_imgunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8? *)
f$R"
 __inference__wrapped_model_17090o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*a
_input_shapesP
N:?????????dd:?????????dd: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
/
_output_shapes
:?????????dd
#
_user_specified_name	input_img:_[
/
_output_shapes
:?????????dd
(
_user_specified_namevalidation_img"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
G
	input_img:
serving_default_input_img:0?????????dd
Q
validation_img?
 serving_default_validation_img:0?????????dd;
dense_10
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_network
"
_tf_keras_input_layer
"
_tf_keras_input_layer
?
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
layer-8
layer_with_weights-4
layer-9
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_network
?
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses"
_tf_keras_layer
?

$kernel
%bias
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses"
_tf_keras_layer
v
,0
-1
.2
/3
04
15
26
37
48
59
$10
%11"
trackable_list_wrapper
v
,0
-1
.2
/3
04
15
26
37
48
59
$10
%11"
trackable_list_wrapper
 "
trackable_list_wrapper
?
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
.__inference_SiameseNetwork_layer_call_fn_17578
.__inference_SiameseNetwork_layer_call_fn_17844
.__inference_SiameseNetwork_layer_call_fn_17874
.__inference_SiameseNetwork_layer_call_fn_17728?
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
I__inference_SiameseNetwork_layer_call_and_return_conditional_losses_17958
I__inference_SiameseNetwork_layer_call_and_return_conditional_losses_18042
I__inference_SiameseNetwork_layer_call_and_return_conditional_losses_17771
I__inference_SiameseNetwork_layer_call_and_return_conditional_losses_17814?
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
 __inference__wrapped_model_17090	input_imgvalidation_img"?
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
;serving_default"
signature_map
"
_tf_keras_input_layer
?

,kernel
-bias
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses"
_tf_keras_layer
?
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses"
_tf_keras_layer
?

.kernel
/bias
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses"
_tf_keras_layer
?
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses"
_tf_keras_layer
?

0kernel
1bias
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses"
_tf_keras_layer
?
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses"
_tf_keras_layer
?

2kernel
3bias
`	variables
atrainable_variables
bregularization_losses
c	keras_api
d__call__
*e&call_and_return_all_conditional_losses"
_tf_keras_layer
?
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j__call__
*k&call_and_return_all_conditional_losses"
_tf_keras_layer
?

4kernel
5bias
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
p__call__
*q&call_and_return_all_conditional_losses"
_tf_keras_layer
f
,0
-1
.2
/3
04
15
26
37
48
59"
trackable_list_wrapper
f
,0
-1
.2
/3
04
15
26
37
48
59"
trackable_list_wrapper
 "
trackable_list_wrapper
?
rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_embedding_layer_call_fn_17253
)__inference_embedding_layer_call_fn_18099
)__inference_embedding_layer_call_fn_18124
)__inference_embedding_layer_call_fn_17417?
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
D__inference_embedding_layer_call_and_return_conditional_losses_18168
D__inference_embedding_layer_call_and_return_conditional_losses_18212
D__inference_embedding_layer_call_and_return_conditional_losses_17450
D__inference_embedding_layer_call_and_return_conditional_losses_17483?
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
wnon_trainable_variables

xlayers
ymetrics
zlayer_regularization_losses
{layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
?2?
(__inference_distance_layer_call_fn_18218?
???
FullArgSpec>
args6?3
jself
jinput_embedding
jvalidation_embedding
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
?2?
C__inference_distance_layer_call_and_return_conditional_losses_18225?
???
FullArgSpec>
args6?3
jself
jinput_embedding
jvalidation_embedding
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
!:	? 2dense_1/kernel
:2dense_1/bias
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
?layer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses"
_generic_user_object
?2?
'__inference_dense_1_layer_call_fn_18234?
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
B__inference_dense_1_layer_call_and_return_conditional_losses_18245?
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
':%

@2conv2d/kernel
:@2conv2d/bias
*:(@?2conv2d_1/kernel
:?2conv2d_1/bias
+:)??2conv2d_2/kernel
:?2conv2d_2/bias
+:)??2conv2d_3/kernel
:?2conv2d_3/bias
 :
?H? 2dense/kernel
:? 2
dense/bias
 "
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
#__inference_signature_wrapper_18074	input_imgvalidation_img"?
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
,0
-1"
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
?2?
&__inference_conv2d_layer_call_fn_18254?
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
A__inference_conv2d_layer_call_and_return_conditional_losses_18265?
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
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses"
_generic_user_object
?2?
-__inference_max_pooling2d_layer_call_fn_18270?
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
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_18275?
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
.
.0
/1"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
?2?
(__inference_conv2d_1_layer_call_fn_18284?
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
C__inference_conv2d_1_layer_call_and_return_conditional_losses_18295?
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
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses"
_generic_user_object
?2?
/__inference_max_pooling2d_1_layer_call_fn_18300?
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
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_18305?
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
.
00
11"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses"
_generic_user_object
?2?
(__inference_conv2d_2_layer_call_fn_18314?
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
C__inference_conv2d_2_layer_call_and_return_conditional_losses_18325?
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
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses"
_generic_user_object
?2?
/__inference_max_pooling2d_2_layer_call_fn_18330?
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
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_18335?
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
.
20
31"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
`	variables
atrainable_variables
bregularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses"
_generic_user_object
?2?
(__inference_conv2d_3_layer_call_fn_18344?
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
C__inference_conv2d_3_layer_call_and_return_conditional_losses_18355?
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
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
f	variables
gtrainable_variables
hregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses"
_generic_user_object
?2?
'__inference_flatten_layer_call_fn_18360?
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
B__inference_flatten_layer_call_and_return_conditional_losses_18366?
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
.
40
51"
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
l	variables
mtrainable_variables
nregularization_losses
p__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses"
_generic_user_object
?2?
%__inference_dense_layer_call_fn_18375?
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
@__inference_dense_layer_call_and_return_conditional_losses_18386?
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
f
0
1
2
3
4
5
6
7
8
9"
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper?
I__inference_SiameseNetwork_layer_call_and_return_conditional_losses_17771?,-./012345$%y?v
o?l
b?_
+?(
	input_img?????????dd
0?-
validation_img?????????dd
p 

 
? "%?"
?
0?????????
? ?
I__inference_SiameseNetwork_layer_call_and_return_conditional_losses_17814?,-./012345$%y?v
o?l
b?_
+?(
	input_img?????????dd
0?-
validation_img?????????dd
p

 
? "%?"
?
0?????????
? ?
I__inference_SiameseNetwork_layer_call_and_return_conditional_losses_17958?,-./012345$%r?o
h?e
[?X
*?'
inputs/0?????????dd
*?'
inputs/1?????????dd
p 

 
? "%?"
?
0?????????
? ?
I__inference_SiameseNetwork_layer_call_and_return_conditional_losses_18042?,-./012345$%r?o
h?e
[?X
*?'
inputs/0?????????dd
*?'
inputs/1?????????dd
p

 
? "%?"
?
0?????????
? ?
.__inference_SiameseNetwork_layer_call_fn_17578?,-./012345$%y?v
o?l
b?_
+?(
	input_img?????????dd
0?-
validation_img?????????dd
p 

 
? "???????????
.__inference_SiameseNetwork_layer_call_fn_17728?,-./012345$%y?v
o?l
b?_
+?(
	input_img?????????dd
0?-
validation_img?????????dd
p

 
? "???????????
.__inference_SiameseNetwork_layer_call_fn_17844?,-./012345$%r?o
h?e
[?X
*?'
inputs/0?????????dd
*?'
inputs/1?????????dd
p 

 
? "???????????
.__inference_SiameseNetwork_layer_call_fn_17874?,-./012345$%r?o
h?e
[?X
*?'
inputs/0?????????dd
*?'
inputs/1?????????dd
p

 
? "???????????
 __inference__wrapped_model_17090?,-./012345$%q?n
g?d
b?_
+?(
	input_img?????????dd
0?-
validation_img?????????dd
? "1?.
,
dense_1!?
dense_1??????????
C__inference_conv2d_1_layer_call_and_return_conditional_losses_18295m./7?4
-?*
(?%
inputs?????????..@
? ".?+
$?!
0?????????((?
? ?
(__inference_conv2d_1_layer_call_fn_18284`./7?4
-?*
(?%
inputs?????????..@
? "!??????????((??
C__inference_conv2d_2_layer_call_and_return_conditional_losses_18325n018?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
(__inference_conv2d_2_layer_call_fn_18314a018?5
.?+
)?&
inputs??????????
? "!????????????
C__inference_conv2d_3_layer_call_and_return_conditional_losses_18355n238?5
.?+
)?&
inputs?????????		?
? ".?+
$?!
0??????????
? ?
(__inference_conv2d_3_layer_call_fn_18344a238?5
.?+
)?&
inputs?????????		?
? "!????????????
A__inference_conv2d_layer_call_and_return_conditional_losses_18265l,-7?4
-?*
(?%
inputs?????????dd
? "-?*
#? 
0?????????[[@
? ?
&__inference_conv2d_layer_call_fn_18254_,-7?4
-?*
(?%
inputs?????????dd
? " ??????????[[@?
B__inference_dense_1_layer_call_and_return_conditional_losses_18245]$%0?-
&?#
!?
inputs?????????? 
? "%?"
?
0?????????
? {
'__inference_dense_1_layer_call_fn_18234P$%0?-
&?#
!?
inputs?????????? 
? "???????????
@__inference_dense_layer_call_and_return_conditional_losses_18386^450?-
&?#
!?
inputs??????????H
? "&?#
?
0?????????? 
? z
%__inference_dense_layer_call_fn_18375Q450?-
&?#
!?
inputs??????????H
? "??????????? ?
C__inference_distance_layer_call_and_return_conditional_losses_18225?j?g
`?]
*?'
input_embedding?????????? 
/?,
validation_embedding?????????? 
? "&?#
?
0?????????? 
? ?
(__inference_distance_layer_call_fn_18218?j?g
`?]
*?'
input_embedding?????????? 
/?,
validation_embedding?????????? 
? "??????????? ?
D__inference_embedding_layer_call_and_return_conditional_losses_17450z
,-./012345D?A
:?7
-?*
input_image?????????dd
p 

 
? "&?#
?
0?????????? 
? ?
D__inference_embedding_layer_call_and_return_conditional_losses_17483z
,-./012345D?A
:?7
-?*
input_image?????????dd
p

 
? "&?#
?
0?????????? 
? ?
D__inference_embedding_layer_call_and_return_conditional_losses_18168u
,-./012345??<
5?2
(?%
inputs?????????dd
p 

 
? "&?#
?
0?????????? 
? ?
D__inference_embedding_layer_call_and_return_conditional_losses_18212u
,-./012345??<
5?2
(?%
inputs?????????dd
p

 
? "&?#
?
0?????????? 
? ?
)__inference_embedding_layer_call_fn_17253m
,-./012345D?A
:?7
-?*
input_image?????????dd
p 

 
? "??????????? ?
)__inference_embedding_layer_call_fn_17417m
,-./012345D?A
:?7
-?*
input_image?????????dd
p

 
? "??????????? ?
)__inference_embedding_layer_call_fn_18099h
,-./012345??<
5?2
(?%
inputs?????????dd
p 

 
? "??????????? ?
)__inference_embedding_layer_call_fn_18124h
,-./012345??<
5?2
(?%
inputs?????????dd
p

 
? "??????????? ?
B__inference_flatten_layer_call_and_return_conditional_losses_18366b8?5
.?+
)?&
inputs??????????
? "&?#
?
0??????????H
? ?
'__inference_flatten_layer_call_fn_18360U8?5
.?+
)?&
inputs??????????
? "???????????H?
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_18305?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
/__inference_max_pooling2d_1_layer_call_fn_18300?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_18335?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
/__inference_max_pooling2d_2_layer_call_fn_18330?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_18275?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
-__inference_max_pooling2d_layer_call_fn_18270?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
#__inference_signature_wrapper_18074?,-./012345$%???
? 
??~
8
	input_img+?(
	input_img?????????dd
B
validation_img0?-
validation_img?????????dd"1?.
,
dense_1!?
dense_1?????????