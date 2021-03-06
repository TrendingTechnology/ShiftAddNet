CUDA_VISIBLE_DEVICES=0 python train_fix.py \
--dataset cifar10 \
--arch resnet20_shiftadd_se \
--save ./temp \
--optimizer sgd \
--switch \
--switch_bar 7 \
--dweight_threshold 5e-3 \
--swa_start 100 \
--swa_lr 0.05 \
--sign_threshold 0.5 \
--swa \
--dist normal \
--eval_only \
--resume ./ShiftAddNet_ckpt/shiftaddnet_fix/resnet20-cifar10-FP32.pth.tar