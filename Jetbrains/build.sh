#!/bin/sh

MARKER_FILE="IntelliJ IDEA Global Settings"

touch "$MARKER_FILE"
jar cfM settings.jar "$MARKER_FILE" colors options
rm "$MARKER_FILE" 
