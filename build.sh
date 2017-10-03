#!/bin/bash

mkdir build/ -p
cd build/ 
wget -O- get.pharo.org/60+vmT | bash
./pharo-ui Pharo eval --save "  Metacello new baseline: 'UQL'; repository: 'github://sbragagnolo/UQL/pharo'; load. "
cd .. 


