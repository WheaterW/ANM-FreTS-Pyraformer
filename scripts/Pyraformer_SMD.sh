export CUDA_VISIBLE_DEVICES=2

model_name=Pyraformer

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/ \
  --data_path SMD.csv \
  --model_id SMD_96_96 \
  --model $model_name \
  --data SMD_csv \
  --features MS \
  --seq_len 96 \
  --pred_len 96 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 38 \
  --dec_in 38 \
  --c_out 38 \
  --des 'Exp' \
  --itr 1 \
  --train_epochs 2

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/ \
  --data_path SMD.csv \
  --model_id SMD_96_192 \
  --model $model_name \
  --data SMD_csv \
  --features MS \
  --seq_len 96 \
  --pred_len 192 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 38 \
  --dec_in 38 \
  --c_out 38 \
  --des 'Exp' \
  --itr 1 

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/ \
  --data_path SMD.csv \
  --model_id SMD_96_336 \
  --model $model_name \
  --data SMD_csv \
  --features MS \
  --seq_len 96 \
  --pred_len 336 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 38 \
  --dec_in 38 \
  --c_out 38 \
  --des 'Exp' \
  --itr 1 

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/ \
  --data_path SMD.csv \
  --model_id SMD_96_720 \
  --model $model_name \
  --data SMD_csv \
  --features MS \
  --seq_len 96 \
  --pred_len 720 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 38 \
  --dec_in 38 \
  --c_out 38 \
  --des 'Exp' \
  --itr 1 