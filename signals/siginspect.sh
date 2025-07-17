#! /bin/bash


kill -0 $1 2&>/dev/null || { echo $1 is invalid && exit 1 ;}

signals="HUP INT QUIT ILL TRAP IOT BUS FPE KILL USR1 SEGV USR2 PIPE ALRM TERM STKFLT CHLD CONT STOP TSTP TTIN TTOU URG XCPU XFSZ VTALRM PROF WINCH POLL PWR SYS"

i=1;
array=""
for f in $(echo -n $signals | tr " " "\n"); do 
		array[$i]=$f;
		 (( i++ ));
 done

i=1
##for element in "${array[@]}"; do
##	echo element $i is $element;
##	(( i++ ));
## done
pid=$1
siginfos=$(grep -E 'Sig|ShdPnd' /proc/$pid/status | awk ' NR >= 3 {printf "%s\n", $2 }')

ShdPnd=$(echo "$siginfos" | awk 'NR == 1')
SigBlk=$(echo "$siginfos" | awk 'NR == 2')
SigIgn=$(echo "$siginfos" | awk 'NR == 3')
SigCgt=$(echo "$siginfos" | awk 'NR == 4')
echo $SigPnd
function decript()
{
		signalset=""
		for i in {1..64}; do
			if (( (0x$1 >> (i - 1)) & 1 )); then
				signalset="$signalset${array[$i]} "
			fi; 
		done;
		printf "$2: %s\n" "$signalset"
}
decript $ShdPnd "pending signals "
decript $SigBlk "block signals "
decript $SigIgn "ignored signals "
decript $SigCgt "caught signals "
