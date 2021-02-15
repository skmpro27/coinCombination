
#! /bin/bash -x

declare -A count
declare -A percen

count=([1]=0 [2]=0 [11]=0 [22]=0 [12]=0 [21]=0)
percen=([1]=0 [2]=0 [11]=0 [22]=0 [12]=0 [21]=0)
for (( i=1; i<=20; i+=1 ))
do
	coin1=$(( RANDOM%2+1 ))
	count[$coin1]=$(( ${count[$coin1]}+1 ))
done

percen[1]=$(( 5*${count[1]} ))
percen[2]=$(( 5*${count[2]} ))

echo "H =" ${percen[1]}"%"
echo "T =" ${percen[2]}"%"

for (( i=1; i<=20; i+=1 ))
do
	coin1=$(( RANDOM%2+1 ))
	coin1=$(( coin1*10 ))
	coin2=$(( RANDOM%2+1 ))
	coin1=$(( coin1+coin2 ))
	count[$coin1]=$(( ${count[$coin1]}+1 ))
done

percen[11]=$(( 5*${count[11]} ))
percen[22]=$(( 5*${count[22]} ))
percen[12]=$(( 5*${count[12]} ))
percen[21]=$(( 5*${count[21]} ))
echo
echo "HH =" ${percen[11]}"%"
echo "TT =" ${percen[22]}"%"
echo "HT =" ${percen[12]}"%"
echo "TH =" ${percen[21]}"%"
