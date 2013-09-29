Create page with collection of points
using Yandex.Maps API

example bockro.github.io/ymapscollection/index.html

using citygen.sh you can 
create entry for allinone.html from

list items:
Moscow 37.6 55.7
Novosibirsk 82.9 55.4

to Yandex point.coords format (lat, long)

{ coords: [55.7, 37.6], text: 'Moscow' }
{ coords: [55.4, 82.9], text: 'Novosibirsk' },

City coordinates you can get on
http://api.yandex.ru/maps/tools/getlonglat/
