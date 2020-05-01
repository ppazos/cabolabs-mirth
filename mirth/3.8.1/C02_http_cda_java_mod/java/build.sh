echo "Building..."
if [ -d "bin" ]; then
  rm -rf bin/*
  rmdir bin
fi

rm cabolabs_mirth_lib.jar
mkdir bin
javac -d bin src/paquete/*.java
jar -cfv cabolabs_mirth_lib.jar -C bin .

echo "Done!"
