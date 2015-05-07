#!/bin/bash

function mute() {
	for i in `pactl list sinks short | awk '{print $1}'`; do
		pactl set-sink-mute $i 1
	done
}

function up() {
	for i in `pactl list sinks short | awk '{print $1}'`; do
		pactl set-sink-volume $i +10%
		pactl set-sink-mute $i 0
	done
}

function down() {
	for i in `pactl list sinks short | awk '{print $1}'`; do
		pactl set-sink-volume $i -- -10%
		pactl set-sink-mute $i 0
	done
}

case "$1" in 
	up|+)
		up
	;;
	down|-)
		down
	;;
	mute|m)
		mute
	;;
	*)
esac
