#!/bin/bash

brew tap facebook/fb
brew install fbsimctl --HEAD

fbsimctl `fbsimctl list | grep Plus | head -n1 | sed 's/ \| .*//'` boot

