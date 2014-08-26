I.   工具实现功能介绍
    1. 自动安装apk、自动执行monkey、自动分析monkey执行结果。
    2. 支持跨平台执行

    moa.jar是分析monkey执行结果的jar包、mra.jar是做monkey命令执行的jar包

II.  工具使用方法说明

moa.jar使用方法
Usage: moa -options [args...]


    -dirs [dirs...]        指定要执行分析的monkey的目录，其中包含了一些子目录，
这些子目录中有某一次monkey执行结果。 如果指定了多个目录，目前不会对多个目录中的C
rash做去重
    -duration      <duration>  总的monkey测试的执行时间（小时(8 or 4.5)）
    -monkey        <fileName>  monkey log文件的文件名
    -bugreport     <fileName>  bugreport文件的文件名
    -logcat        <fileName>  logcat文件的文件名
    -trace         <fileName>  traces文件的文件名
    -properties    <fileName>  每一次monkey测试时生成的执行情况文件的文件名

mra.jar使用方法

Usage: java -jar mra.jar -options [args...]

   --device-id <ids...>                 the id list of the devices which is need
 to run monkey test
   --single-duration <duration>         expected one monkey job duration (hour)
   --series-duration <duration>         expected total monkey jobs duration (hou
r)
   --pkg-path <package-path>            package path
   --pkg-name <package-name>            package name
   --pkg-version <package-version>      package version
   --unlock-cmd-path <unlock script>    point to an unlock script path which mus
t be standalone executable




例子：
java -jar mra.jar --device-id 45071c540c04197 --user-name chenyuan01 --pkg-path .\\baidumusic.apk --pkg-name com.ting.mp3.android --pkg-version 3.0 --single-duration 8 --series-duration 16
java -jar moa.jar -dirs .\\logs -monkey monkey_log.txt -logcat logcat_log.txt -bugreport bugreport_log.txt -trace traces_log.txt -properties properties.txt -duration 16

执行本工具时需要更改


--device-id 45071c540c04197
--pkg-path .\\baidumusic.apk
--pkg-name com.ting.mp3.android 
--pkg-version 3.0 
--single-duration 8 
--series-duration 16


需要填写-duration 16也就是monkey的总执行时间

问题描述：
1. 本工具执行完成后，下次执行需要自己清空原来的数据
