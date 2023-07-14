#!/bin/bash

for dir in `ls`; do
  #echo $dir
  if [ -d $dir ]; then
      sed -i.bak 's/$1/$2/g' $dir/index.html
      echo "sed -i.bak 's/$1/$2/g' $dir/index.html"
      rm $dir/index.html.bak
  fi
done
