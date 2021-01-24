#!/bin/sh

echo This file can not be run under Sudo.

DESTINATION_DIR=${XDG_DATA_HOME:-~/.local/share}/applications
IN_FILE=io.YGO_OMEGA.Desktop.in
OUT_NAME=io.YGO_OMEGA.desktop

cd $(dirname $0) &&
sed "s|{INSTALL_PATH}|$PWD|" $IN_FILE > $DESTINATION_DIR/$OUT_NAME &&
chmod +x $DESTINATION_DIR/$OUT_NAME
