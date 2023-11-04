#! /bin/bash
 N=$1
 M=$2

if [! -d"random_numbers"];
then mkdir_random_numbers
fi

for i in $(seq 1 $M);
  do
file_name="random_numbers_${i}.txt"

for j in $(seq 1 $N);
  do
echo $RANDOM>>"random_numbers/$file_name"
 done
 done
unique_numbers=$(cat random_numbers/*|sort|uniq|wc -l)
echo"Уже создано$N случайных чисел,повторите$M"
echo"все $unique_numbers уникальных чисел"
