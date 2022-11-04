#!/bin/sh
device=4

dataset="stl10"
model="resnet18"

layer_perc=100
num_lay=1


method="RandomForest"
recalculate="False"
outp_calc="True"
noise_calc="True"

echo "Calculating "$method
python main.py $dataset $model $layer_perc $num_lay $method $recalculate $outp_calc $noise_calc $device &> "logs/"$dataset"_"$model"_"$method"_"$layer_perc"_"$num_lay".log" &

pid=$!
wait $pid



method="Ttest"
recalculate="False"
outp_calc="True"
noise_calc="True"

echo "Calculating "$method
python main.py $dataset $model $layer_perc $num_lay $method $recalculate $outp_calc $noise_calc $device &> "logs/"$dataset"_"$model"_"$method"_"$layer_perc"_"$num_lay".log" &

pid=$!
wait $pid


method="KS2Samp"
recalculate="False"
outp_calc="True"
noise_calc="True"

echo "Calculating "$method
python main.py $dataset $model $layer_perc $num_lay $method $recalculate $outp_calc $noise_calc $device &> "logs/"$dataset"_"$model"_"$method"_"$layer_perc"_"$num_lay".log" &


pid=$!
wait $pid


method="KLDivergence"
recalculate="False"
outp_calc="True"
noise_calc="True"

echo "Calculating "$method
python main.py $dataset $model $layer_perc $num_lay $method $recalculate $outp_calc $noise_calc $device &> "logs/"$dataset"_"$model"_"$method"_"$layer_perc"_"$num_lay".log" &

pid=$!
wait $pid


method="Bootstrapping"
recalculate="False"
outp_calc="True"
noise_calc="True"

echo "Calculating "$method
python main.py $dataset $model $layer_perc $num_lay $method $recalculate $outp_calc $noise_calc $device &> "logs/"$dataset"_"$model"_"$method"_"$layer_perc"_"$num_lay".log" &


pid=$!
wait $pid


method="Noise"
recalculate="False"
outp_calc="True"
noise_calc="True"

echo "Calculating "$method
python main.py $dataset $model $layer_perc $num_lay $method $recalculate $outp_calc $noise_calc $device &> "logs/"$dataset"_"$model"_"$method"_"$layer_perc"_"$num_lay".log" &


pid=$!
wait $pid


method="JustNoise"
recalculate="False"
outp_calc="True"
noise_calc="True"

echo "Calculating "$method
python main.py $dataset $model $layer_perc $num_lay $method $recalculate $outp_calc $noise_calc $device &> "logs/"$dataset"_"$model"_"$method"_"$layer_perc"_"$num_lay".log" &


pid=$!
wait $pid
