#!/bin/bash

# Disable echo (we do it ourselves in the UI)
stty -echo

# Set raw.  Disables buffering, etc, so we can handle line editing in java.
stty raw

# Set cursor invisible, so it doesn't blink over our UI
tput civis

# Actually execute the jar and arguments
exec java -jar /data/app/subzero/subzero-cli.jar --ncipher --config /hd/config.yaml > /hd/subzero-cli.stdout 2> /hd/subzero-cli.stderr
