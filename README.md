#COBOL on Linux

```
sudo apt-get install open-cobol
root@precise64:~# which cobc
/usr/bin/cobc

root@precise64:~# cat hello.cbl
IDENTIFICATION DIVISION.
PROGRAM-ID. HELLO-WORLD.
* simple hello world program
PROCEDURE DIVISION.
    DISPLAY 'Hello world!'.
    STOP RUN.

root@precise64:~# cobc -free -x -o hello hello.cbl 
/tmp/cob10856_0.c: In function 'HELLO_2DWORLD_':
/tmp/cob10856_0.c:75:7: warning: dereferencing type-punned pointer will break strict-aliasing rules [-Wstrict-aliasing]
/tmp/cob10856_0.c:76:7: warning: dereferencing type-punned pointer will break strict-aliasing rules [-Wstrict-aliasing]
/tmp/cob10856_0.c:77:7: warning: dereferencing type-punned pointer will break strict-aliasing rules [-Wstrict-aliasing]
/tmp/cob10856_0.c:88:3: warning: dereferencing type-punned pointer will break strict-aliasing rules [-Wstrict-aliasing]
/tmp/cob10856_0.c:107:5: warning: dereferencing type-punned pointer will break strict-aliasing rules [-Wstrict-aliasing]
/tmp/cob10856_0.c:111:3: warning: dereferencing type-punned pointer will break strict-aliasing rules [-Wstrict-aliasing]
root@precise64:~# ./hello
Hello world!
```

Ref : http://www.thegeekstuff.com/2010/02/cobol-hello-world-example-how-to-write-compile-and-execute-cobol-program-on-linux-os/
