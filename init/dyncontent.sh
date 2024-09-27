#!/bin/bash

#replace custom strings in lab

ETIPATH="/usr/share/etilabs"

CNT=`head -n 1 $ETIPATH/details | tail -1`
LABNAME=`head -n 2 $ETIPATH/details | tail -1`
LABURL=`head -n 3 $ETIPATH/details | tail -1`

TWODIG=$CNT
if [ ${#TWODIG} -lt 2 ] ; then
  TWODIG="0"$TWODIG
fi

#lab title
##sed -i -e "s/%%LABID%%/Station $CNT/g" /var/www/html/lab/meta/metadata

#labcontent
find /var/www/html/lab -type f -name "*.html" -print0 | xargs -0 sed -i "s/%%LAB_URL%%/$LABURL/g"

#prompt
#sed -i -e "s#outshift>#outshift-lab$CNT>#g" /home/ubuntu/.bashrc