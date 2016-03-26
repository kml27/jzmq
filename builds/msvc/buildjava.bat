REM echo off
echo copy configured c++ include to c++ source directory
copy .\config.hpp "..\..\jzmq-jni\src\main\c++\config.hpp"

echo build java classes, java should be in path
javac ..\..\jzmq-jni\src\main\java\org\zeromq\EmbeddedLibraryTools.java ..\..\jzmq-jni\src\main\java\org\zeromq\ZMQException.java ..\..\jzmq-jni\src\main\java\org\zeromq\ZMQ.java ..\..\jzmq-jni\src\main\java\org\zeromq\App.java ..\..\jzmq-devices\src\main\java\org\zeromq\ZMQForwarder.java ..\..\jzmq-devices\src\main\java\org\zeromq\ZMQQueue.java ..\..\jzmq-core\src\main\java\org\zeromq\Utils.java ..\..\jzmq-devices\src\main\java\org\zeromq\ZMQStreamer.java ..\..\jzmq-core\src\main\java\org\zeromq\ZContext.java ..\..\jzmq-core\src\main\java\org\zeromq\ZAuth.java ..\..\jzmq-core\src\main\java\org\zeromq\ZDispatcher.java ..\..\jzmq-core\src\main\java\org\zeromq\ZFrame.java ..\..\jzmq-core\src\main\java\org\zeromq\ZMsg.java ..\..\jzmq-core\src\main\java\org\zeromq\ZThread.java ..\..\jzmq-core\src\main\java\org\zeromq\ZLoop.java

echo create jni headers for jzmq-jni
javah -jni -sourcepath ..\..\jzmq-jni\src\main\java org.zeromq.ZMQException org.zeromq.EmbeddedLibraryTools org.zeromq.ZMQ org.zeromq.App

echo create jni headers for jzmq-core
javah -jni -sourcepath ..\..\jzmq-core\src\main\java org.zeromq.Utils org.zeromq.ZAuth org.zeromq.ZContext org.zeromq.ZDispatcher org.zeromq.ZFrame org.zeromq.ZLoop org.zeromq.ZMsg org.zeromq.ZThread

echo create jni headers for jzmq-devices
javah -jni -sourcepath ..\..\jzmq-devices\src\main\java org.zeromq.ZMQForwarder org.zeromq.ZMQQueue org.zeromq.ZMQStreamer

REM echo on