I.   ����ʵ�ֹ��ܽ���
    1. �Զ���װapk���Զ�ִ��monkey���Զ�����monkeyִ�н����
    2. ֧�ֿ�ƽִ̨��

    moa.jar�Ƿ���monkeyִ�н����jar����mra.jar����monkey����ִ�е�jar��

II.  ����ʹ�÷���˵��

moa.jarʹ�÷���
Usage: moa -options [args...]


    -dirs [dirs...]        ָ��Ҫִ�з�����monkey��Ŀ¼�����а�����һЩ��Ŀ¼��
��Щ��Ŀ¼����ĳһ��monkeyִ�н���� ���ָ���˶��Ŀ¼��Ŀǰ����Զ��Ŀ¼�е�C
rash��ȥ��
    -duration      <duration>  �ܵ�monkey���Ե�ִ��ʱ�䣨Сʱ(8 or 4.5)��
    -monkey        <fileName>  monkey log�ļ����ļ���
    -bugreport     <fileName>  bugreport�ļ����ļ���
    -logcat        <fileName>  logcat�ļ����ļ���
    -trace         <fileName>  traces�ļ����ļ���
    -properties    <fileName>  ÿһ��monkey����ʱ���ɵ�ִ������ļ����ļ���

mra.jarʹ�÷���

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




���ӣ�
java -jar mra.jar --device-id 45071c540c04197 --user-name chenyuan01 --pkg-path .\\baidumusic.apk --pkg-name com.ting.mp3.android --pkg-version 3.0 --single-duration 8 --series-duration 16
java -jar moa.jar -dirs .\\logs -monkey monkey_log.txt -logcat logcat_log.txt -bugreport bugreport_log.txt -trace traces_log.txt -properties properties.txt -duration 16

ִ�б�����ʱ��Ҫ����


--device-id 45071c540c04197
--pkg-path .\\baidumusic.apk
--pkg-name com.ting.mp3.android 
--pkg-version 3.0 
--single-duration 8 
--series-duration 16


��Ҫ��д-duration 16Ҳ����monkey����ִ��ʱ��

����������
1. ������ִ����ɺ��´�ִ����Ҫ�Լ����ԭ��������
