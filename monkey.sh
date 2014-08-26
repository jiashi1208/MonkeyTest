#! /bin/sh

echo "a1 a2"

{
   cd a1
   #sh  ../a1.sh
   java -jar ../mra.jar --device-id 20454757 --user-name tuangou --pkg-path .\\BaiduMap-release.apk --pkg-name com.baidu.BaiduMap --pkg-version 7.4.0 --single-duration 1 --series-duration 1

}&

p1=$!

{
  cd a2
  #sh  ../a2.sh
  
  java -jar ../mra.jar --device-id f0bc0450 --user-name tuangou2 --pkg-path .\\BaiduMap-release.apk --pkg-name com.baidu.BaiduMap --pkg-version 7.4.0 --single-duration 1 --series-duration 1


}&
p2=$!

wait $p1 && wait $p2

echo "success"
