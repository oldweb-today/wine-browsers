#!/bin/bash

export WINEDLLOVERRIDES="mshtml="
export WINEPREFIX=/home/browser/.wine

wine wineboot

winecfg

