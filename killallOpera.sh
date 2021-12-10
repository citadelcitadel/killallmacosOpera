#!/bin/bash
ps auxw |grep Opera.app|cut -c-22|cut -c18-|awk 'BEGIN { ORS = " " } { print }' - | sed -e 's/ /,/g'| sed -e 's/,,/,/g'|sed -e 's/,,/,/g'|sed -e 's/,/\;kill -15 /g'|cut -c 2-|rev|cut -c 9-|rev>./killallmacosOpera
chmod +x ./killallmacosOpera
cat ./killallmacosOpera
./killallmacosOpera
rm ./killallmacosOpera
