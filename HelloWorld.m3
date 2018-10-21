MODULE Hello EXPORTS Main;
  IMPORT Stdio, Wr;
  BEGIN
 	Wr.PutText(Stdio.stdout, "Hello World");
  END Hello.

Graphical version
  MODULE Hello EXPORTS Main;
  IMPORT Trestle, TextVBT;
  VAR v := TextVBT.New("Hello World");
  BEGIN
 	Trestle.Intall(v);
 	Trestle.AwaitDelete();
  END Hello.