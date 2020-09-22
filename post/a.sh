
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

---
title: a.sh
date: 2017-09-11 22:44:46
lastmod: 2017-09-11 22:44:46
draft: false
tags: [content_b,]
categories: [content_b,]
author: "daxin.li"
comment: true
toc: true
reward: true
mathjax: true
---
#!/bin/bash

filelist=`find /usr/local/blog/hugo/content_b -name "*.md"`
for file in $filelist
  do 
    line=`awk 'NR==1{print}' $file`
    if [ a$line == 'a---' ]
      then
       echo $file
       # sed -i "1,5d" $file
    fi
done
