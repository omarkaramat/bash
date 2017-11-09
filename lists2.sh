#!/bin/bash

# E_BADARGS=65

touch random.txt 

[ -z "$1" ] || [ ! -f "$1" ] || (rm -f "$1"; echo "removed")



