#! /bin/bash
main=$1
type=$2
direct=$3
arch=$4
mkdir $direct
adress=$(find $main -name "*.$2")
num=0
for i in $adress
do
        cp --force --backup=numbered $i $direct 
done
tar -czf $arch $direct
echo "done"
