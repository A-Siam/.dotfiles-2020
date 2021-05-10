#!/usr/bin/env bash

for desktop in $(bspc query -D --names)
do
	bsp-layout set tall $desktop -- --master-size 0.55
done
