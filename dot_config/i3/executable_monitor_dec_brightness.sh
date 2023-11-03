#!/bin/bash

currentBrightness=`ddcutil --display 1 getvcp 10 | awk '{print $9}' | cut -d ',' -f1`
ddcutil --display 1 setvcp 10 $(($currentBrightness-20)) 
