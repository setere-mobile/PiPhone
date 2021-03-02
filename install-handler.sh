#!/bin/bash
mkdir -p ~/.local/share/applications
cp piphone.desktop ~/.local/share/applications
xdg-mime default piphone.desktop x-scheme-handler/tel

