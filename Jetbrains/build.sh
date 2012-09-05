#!/bin/sh

SETTINGS_DIR="IntelliJ IDEA Global Settings"

touch $SETTINGS_DIR
jar cfM settings.jar $SETTINGS_DIR colors
rm -r $SETTINGS_DIR 
