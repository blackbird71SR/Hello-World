 (* Classic Modula-2, aka PIM *)  

  MODULE HelloWorld;
  FROM InOut IMPORT WriteString,WriteLn;
  BEGIN
	WriteString("Hello World!");
	WriteLn;
  END HelloWorld.

  (* ISO Modula-2 *)

  MODULE HelloWorld;
  FROM STextIO IMPORT WriteString,WriteLn;
  BEGIN
	WriteString("Hello World!");
	WriteLn;
  END HelloWorld.

  (* Modula-2 R10 *)

  MODULE HelloWorld;
  IMPORT PervasiveIO;
  BEGIN
	WRITE("HelloWorld!\n");
  END HelloWorld.