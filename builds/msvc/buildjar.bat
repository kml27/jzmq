mkdir obj\jarsrc\org\zeromq
robocopy "..\..\jzmq-jni\src\main\java\org\zeromq" "obj\jarsrc\org\zeromq" *.class
robocopy "..\..\jzmq-core\src\main\java\org\zeromq" "obj\jarsrc\org\zeromq" *.class
robocopy "..\..\jzmq-devices\src\main\java\org\zeromq" "obj\jarsrc\org\zeromq" *.class

mkdir jar

jar -cvf jar\jzmq.jar -C .\obj\jarsrc\ .