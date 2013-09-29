#!/bin/bash
#
# create entry for allinone.html from 
# https://github.com/bockro/ymapscollection
# 
# list items: 
# Moscow 37.6 55.7
# to Yandex point.coords format (lat, long)
# { coords: [55.7, 37.6], text: 'Moscow' }
# 
# City coordinates you can get on
# http://api.yandex.ru/maps/tools/getlonglat/
#
k=0
clist='/tmp/city'
for i in `cat $clist`; do
	((k++));
	if [ $k -eq 1 ];
	then
		name=$i;
	elif [ $k -eq 2 ];
	then
		cor2=$i;
	elif [ $k -eq 3 ];
	then
		cor1=$i;
		k=0;
	echo "{ coords: [$cor1, $cor2], text: '$name' },"
	fi
done;
