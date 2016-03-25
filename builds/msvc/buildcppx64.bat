call vcvarsall.bat x64
mkdir obj

cl /D_WINDLL /Fo.\obj\ /c /I. /I..\..\..\libzmq\include /I..\..\jzmq-core\src\main\java /I..\..\jzmq-devices\src\main\java /I..\..\jzmq-jni\src\main\java /I"c:\program files\java\jdk1.7.0_40\include"  /I"c:\program files\java\jdk1.7.0_40\include\win32" ..\..\jzmq-jni\src\main\c++\Context.cpp ..\..\jzmq-jni\src\main\c++\Curve.cpp ..\..\jzmq-jni\src\main\c++\Event.cpp ..\..\jzmq-jni\src\main\c++\Poller.cpp ..\..\jzmq-jni\src\main\c++\Socket.cpp ..\..\jzmq-jni\src\main\c++\util.cpp ..\..\jzmq-jni\src\main\c++\ZMQ.cpp

cd obj
link /MACHINE:X64  /DEFAULTLIB:..\..\..\..\libzmq\bin\x64\Release\v120\dynamic\libzmq.lib /OUT:jzmq.x64.dll /DLL *.obj
REM link /MACHINE:X86  /DEFAULTLIB:..\..\..\..\libzmq\bin\Win32\Release\v120\dynamic\libzmq.lib /OUT:jzmq.x86.dll /DLL *.obj
cd ..
