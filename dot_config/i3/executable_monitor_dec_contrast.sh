#!/bin/bash

currentContrast=`ddcutil --display 1 getvcp 12 | awk '{print $9}' | cut -d ',' -f1`
ddcutil --display 1 setvcp 12 $(($currentContrast-20)) 
