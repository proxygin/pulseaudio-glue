Pulseaudio-glue
===============

Or pa-glue. Not sure yet.

Pulseaudio removes a lot of hassle of switching between audio output devices,
and without restarting the stream.
All this is great if you find yourself switching between a bluetooth headset,
the speakers in a connected HDMI device or AirPlay, but I never liked using
`pavucontrol` and you will have died of old age before being done typing
the right pactl/pacmd command.

So I made these scripts to integrate pulseaudio much nicer into my setup
(ArchLinux+AwesomeVM btw).


Notes
=====

`pavol.sh` increase, decrease or mutes the volume on ALL output devices. Note:
Mute is only mute. Mute is not mute/unmute.

Have you ever wanted the audio from Chrome to output to the connected speakers,
the audio from mplayer to the bluetooth headphones and spotify to the HDMI
speakers?

Neither have I.

`paselect.sh` can display all avaliable output devices and move ALL audio
sources to an output device. 


To make it all Awesome
======================

I have include at lua-snippet to put in your AwesomeVM rc.lua. This will
display a list under the cursor for you to select the output device. Remember
to update the awful.key to something that makes sense for you, and put
paselector somewhere Awesome can find it (e.g. cp or symlink paselector.sh to
/usr/bin/paselector).  
