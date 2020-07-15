Both prototxt and model were downloaded from here:
https://github.com/KaimingHe/deep-residual-networks#models

10/30/2017:   Leon Goldgeisser
tf2trt_resnet50.uff and  tf2trt_resnet50.uff.pbtxt were generated from tensorflow
$P4TRUNK/python_samples/models/protobufs/resnet_all-nlayer_50__precision0_randominit.pb

by convert-to-uff models/protobufs/resnet_all-nlayer_50__precision0_randominit.pb -o mydump_resnet_all-nlayer_50__precision0/a.uff -t -O spatial_avg

To run sampleuff
================
.../build/cuda-9.0/7.0/x86_64/sample_uff .../data/ResNet50/tf2trt_resnet50.uff 0 spatial_avg input .../data/ResNet50/ 3,3,224,224
