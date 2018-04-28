del bin\*.* /Q
del cabolabs_mirth_lib.jar
javac -d bin src\paquete\*.java
jar -cfv cabolabs_mirth_lib.jar -C bin .
