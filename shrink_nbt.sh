#!/usr/bin/env bash

# Find all .nbt files and recompress them
find datapack -name '*.nbt' -exec advdef -z4i100000 {} +
