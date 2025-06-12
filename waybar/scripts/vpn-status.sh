#!/usr/bin/env bash
nmcli -f GENERAL.STATE con show trolling|grep '\bactivated' >/dev/null
CURRENTSTATE=${?}
if [ $CURRENTSTATE != 0 ];
then echo "󰖩 ";
else echo "󱚽 ";
fi;
