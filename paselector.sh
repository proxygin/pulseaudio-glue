#/bin/bash

case "$1" in 
	move)
		shift
		for i in `pactl list short sink-inputs | awk '{print $1}'`; do pactl move-sink-input $i $1; done
		pactl set-default-source $1
	;;

	list)
		ACTIVE=`pactl list short sinks | grep RUNNING | awk '{print $1}'`
		pactl list  sinks | egrep -e Sink -e Description: | sed -e 'N;s/\n//g' | sed -e 's/Sink #//g' | sed -e 's/Description: //g' 
		#OUTPUT=$(pactl list  sinks | egrep -e Sink -e Description: | sed -e 'N;s/\n//g' | sed -e 's/Sink #//g' | sed -e 's/Description: //g' | sed -e 's/^'$ACTIVE'/^\[\e[31;1m\]TEST/g')
		#echo -e "$(tput bold) ACTIVE $(tput sgr0)$OUTPUT"
	;;
	*)
esac
