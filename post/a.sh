
---
title: a.sh
date: 2019-09-22 16:49:06
lastmod: 2019-09-22 16:49:06
draft: false
tags: [content_a,]
categories: [content_a,]
author: "daxin.li"
comment: true
toc: true
reward: true
mathjax: true
---
#!/bin/bash

filelist=`ls .`
for file in $filelist
  do 
    line=`awk 'NR==1{print}' $file`
    if [ a$line == 'a---' ]
      then
        sed -i "1,5d" $file
    fi
done
