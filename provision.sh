apt-get install -y open-cobol
which cobc

echo "IDENTIFICATION DIVISION.
PROGRAM-ID. HELLO-WORLD.
* simple hello world program
PROCEDURE DIVISION.
    DISPLAY 'Hello world!'.
    STOP RUN." > hello.cbl

cobc -free -x -o hello hello.cbl 
./hello
