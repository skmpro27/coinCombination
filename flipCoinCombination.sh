
#! /bin/bash -x

declare -A count

count=([0]=0 [1]=0)
for (( i=1; i<=20; i+=1 ))
do
	coin1=$(( RANDOM%2 ))
	count[$coin1]=$(( ${count[$coin1]}+1 ))
done

percenH=$(( 5*${count[1]} ))
percenT=$(( 5*${count[0]} ))

echo "Heads =" $percenH"%"
echo "Tails =" $percenT"%"
