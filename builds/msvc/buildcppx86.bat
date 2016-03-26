call vcvarsall.bat x86
mkdir obj

cl /Fo.\obj\ /c /I. /I..\..\..\libzmq\include /I..\..\jzmq-core\src\main\java /I..\..\jzmq-devices\src\main\java /I..\..\jzmq-jni\src\main\java /I"c:\program files\java\jdk1.7.0_40\include"  /I"c:\program files\java\jdk1.7.0_40\include\win32" ..\..\jzmq-jni\src\main\c++\Context.cpp ..\..\jzmq-jni\src\main\c++\Curve.cpp ..\..\jzmq-jni\src\main\c++\Event.cpp ..\..\jzmq-jni\src\main\c++\Poller.cpp ..\..\jzmq-jni\src\main\c++\Socket.cpp ..\..\jzmq-jni\src\main\c++\util.cpp ..\..\jzmq-jni\src\main\c++\ZMQ.cpp

mkdir obj\jarsrc\NATIVE\x86\Windows
mkdir obj\x86

link /MACHINE:X86  /DEFAULTLIB:..\..\..\libzmq\bin\Win32\Release\v120\dynamic\libzmq.lib /OUT:obj\jarsrc\NATIVE\x86\Windows\libjzmq.dll /IMPLIB:obj\x86\libjzmq.lib /DLL obj\*.obj
