#!/bin/bash

l=`cat books.org | grep '**'| sed -e '/^$/d' | wc -l | awk '{print $1}'`
i=1
while [ $i -le 5 ]
do
  idx=$((RANDOM%l))
  cat books.org | grep '**'| sed -e '/^$/d' | head -$idx | tail -1
  i=$((i+1))
done
