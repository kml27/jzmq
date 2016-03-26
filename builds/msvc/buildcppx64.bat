call vcvarsall.bat x64
mkdir obj

cl /Fo.\obj\ /c /I. /I..\..\..\libzmq\include /I..\..\jzmq-core\src\main\java /I..\..\jzmq-devices\src\main\java /I..\..\jzmq-jni\src\main\java /I"c:\program files\java\jdk1.7.0_40\include"  /I"c:\program files\java\jdk1.7.0_40\include\win32" ..\..\jzmq-jni\src\main\c++\Context.cpp ..\..\jzmq-jni\src\main\c++\Curve.cpp ..\..\jzmq-jni\src\main\c++\Event.cpp ..\..\jzmq-jni\src\main\c++\Poller.cpp ..\..\jzmq-jni\src\main\c++\Socket.cpp ..\..\jzmq-jni\src\main\c++\util.cpp ..\..\jzmq-jni\src\main\c++\ZMQ.cpp


mkdir obj\jarsrc\NATIVE\amd64\Windows
mkdir obj\x64
link /MACHINE:X64  /DEFAULTLIB:..\..\..\libzmq\bin\x64\Release\v120\dynamic\libzmq.lib /OUT:obj\jarsrc\NATIVE\amd64\Windows\libjzmq.dll /IMPLIB:obj\x64\libjzmq.lib /DLL obj\*.obj