#!/bin/bash
#sources
#	alsa_output.pci-0000_00_0e.0.analog-stereo.monitor
#	alsa_input.pci-0000_00_0e.0.analog-stereo
#	alsa_output.usb-Android_Android-06.analog-mono.monitor
#	alsa_input.usb-Android_Android-06.analog-mono
#sinks
#	alsa_output.pci-0000_00_0e.0.analog-stere
#	alsa_output.usb-Android_Android-06.analog-mon

pactl load-module module-loopback source="alsa_input.usb-Android_Android-06.analog-mono" sink="alsa_output.pci-0000_00_0e.0.analog-stereo"
pactl load-module module-loopback source="alsa_input.pci-0000_00_0e.0.analog-stereo" sink="alsa_output.usb-Android_Android-06.analog-mono" 

