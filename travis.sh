#!/bin/bash

brew tap facebook/fb
brew install fbsimctl --HEAD

SIM=`fbsimctl list | grep Plus | head -n1 | sed 's/ \| .*//'`
fbsimctl "$SIM" boot
fbsimctl "$SIM" install LNPopupControllerExample.app
fbsimctl "$SIM" list_apps
fbsimctl "$SIM" launch com.LeoNatan.LNPopupControllerExample-
