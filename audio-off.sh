#!/bin/bash
#sources
#	alsa_output.pci-0000_00_0e.0.analog-stereo.monitor
#	alsa_input.pci-0000_00_0e.0.analog-stereo
#	alsa_output.usb-Android_Android-06.analog-mono.monitor
#	alsa_input.usb-Android_Android-06.analog-mono
#sinks
#	alsa_output.pci-0000_00_0e.0.analog-stere
#	alsa_output.usb-Android_Android-06.analog-mon

pactl list modules short|grep module-loopback|awk -e 'BEGIN{FS=" "}{print $1}'| \
	while read i;
	do
		echo $i
		pactl unload-module $i
	done

