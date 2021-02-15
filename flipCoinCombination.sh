
#! /bin/bash -x

declare -A count
declare -A percen

count=([1]=0 [2]=0 [11]=0 [22]=0 [12]=0 [21]=0 [111]=0 [222]=0 
[112]=0 [121]=0 [211]=0 [221]=0 [212]=0 [122]=0)

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
	coin2=$(( coin1+coin2 ))
	count[$coin2]=$(( ${count[$coin2]}+1 ))
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

for (( i=1; i<=20; i+=1 ))
do
	coin1=$(( RANDOM%2+1 ))
	coin1=$(( coin1*100 ))
	coin2=$(( RANDOM%2+1 ))
	coin2=$(( coin2*10 ))
	coin3=$(( RANDOM%2+1 ))
	coin3=$(( coin1+coin2+coin3 ))
	count[$coin3]=$(( ${count[$coin3]}+1 ))
done

percen[111]=$(( 5*${count[111]} ))
percen[222]=$(( 5*${count[222]} ))
percen[112]=$(( 5*${count[112]} ))
percen[121]=$(( 5*${count[121]} ))
percen[211]=$(( 5*${count[211]} ))
percen[221]=$(( 5*${count[221]} ))
percen[212]=$(( 5*${count[212]} ))
percen[122]=$(( 5*${count[122]} ))

echo
echo "HHH =" ${percen[111]}"%"
echo "TTT =" ${percen[222]}"%"
echo "HHT =" ${percen[112]}"%"
echo "HTH =" ${percen[121]}"%"
echo "THH =" ${percen[211]}"%"
echo "TTH =" ${percen[221]}"%"
echo "THT =" ${percen[212]}"%"
echo "HTT =" ${percen[122]}"%"
