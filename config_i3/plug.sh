#!/bin/bash
for ((i=10;i--;));do xrandr -q | grep ' connected' | wc -l ;sleep 1;done
