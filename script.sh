#!/usr/bin/env bash

YOUR_TOP_LEVEL_FOLDER=""
#改为你的文件夹 用绝对路径 比如 "/Users/Tom/Desktop/bash_boy1/1000"

# 首先找到文件夹

finda_1st_level_dir(){
for dir in $(find $YOUR_TOP_LEVEL_FOLDER -type d -maxdepth 1 -mindepth 1)
do
  echo $dir
done
}

finda_2nd_level_dir(){
for dir in $(find $YOUR_TOP_LEVEL_FOLDER -type d -maxdepth 2 -mindepth 2)
do
  echo $dir
done
}

# 找到了
# finda_2nd_level_dir
# 确认以上代码没问题

# # # # # # # # # # # # # # # # # #

# 然后做一些事

do_someting_in_2nd_level_dir(){
for dir in $(find $YOUR_TOP_LEVEL_FOLDER -type d -maxdepth 2 -mindepth 2)
do
  cd $dir
  mv * ../.
  cd $YOUR_TOP_LEVEL_FOLDER
  rm -rf $dir
done
}

do_someting_in_2nd_level_dir

