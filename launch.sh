#!/bin/bash
pidof -o %PPID -x $0 >/dev/null && echo "ERROR:Phone already running!" && exit 1
echo "$1" > /tmp/q1w2
cd /opt/setere/piphone
/opt/setere/piphone/audio-on.sh && /opt/setere/piphone/piphone "$1" && /opt/setere/piphone/audio-off.sh
