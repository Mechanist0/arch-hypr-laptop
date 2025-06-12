#!/usr/bin/env bash
nmcli -f GENERAL.STATE con show trolling|grep '\bactivated' 2>/dev/null
CURRENTSTATE=${?}
if [ $CURRENTSTATE != 0 ];
then nmcli connection up trolling; echo "󱚽 ";
else nmcli connection down trolling; echo "󰖩 ";
fi;
