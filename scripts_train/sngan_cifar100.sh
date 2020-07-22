save_path=/path/to/save/
data_path=/path/to/data/folder/
OMP_NUM_THREADS=1 CUDA_VISIBLE_DEVICES=0 python3.6 -u ./train.py \
    --random_seed 10 \
    --net sngan_cifar \
    --dim_z 128 \
    --img_c 3 \
    --fm_base_d 128 --fm_base_g 128 \
    --n_classes 100 \
    --num_bp 1 \
    --r_batch_size 64 --data_path ${data_path} \
    --g_batch_size 64 \
    --shuffle \
    --out_path ${save_path} \
    --bottom_width 4 \
    --img_width 32 \
    --itr_d 5 --lr_d 0.0002 --beta1_d 0.0 --beta2_d 0.9 \
    --itr_g 1 --lr_g 0.0002 --beta1_g 0.0 --beta2_g 0.9 \
    --anneal_lr nll --anneal_lr_p1 0.5 --anneal_lr_p2 50000 \
    --n_gpu 1 --dali --n_workers 1 --da \
    --G_total_itrs 100001 --save_bias 1000 --start_itr 0 \
    --bn_g --sn_d \
    --b_metric hinge --c_metric hinge \
    --c_alph_f 1.0 --c_alph_g 1.0 \
    --pgd_type Linf --pgd_steps 0 --pgd_eps 0.0 --pgd_tau 0.0