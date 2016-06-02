#!/usr/bin/env bash

mkdir ../data/
cd ../data/

curl http://geodata.nationaalgeoregister.nl/aan/extract/aan.zip > aan.zip

unzip aan.zip # results in ~1.5 GB data file
