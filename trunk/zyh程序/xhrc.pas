var i,j,k,m,n,half:integer;
    matchlist:array [1..1000,1..1000] of integer;
begin
     readln(m);
     n:=1;
     for i:=1 to m do n:=n*2;
     k:=1; matchlist[1,1]:=1; half:=1;
     while k<=m do
     begin
          for i:=1 to half do
              for j:=1 to half do matchlist[i,j+half]:=matchlist[i,j]+half;
          for i:=1 to half do
              for j:=1 to half do
              begin
                   matchlist[i+half,j]:=matchlist[i,j+half];
                   matchlist[i+half,j+half]:=matchlist[i,j]
              end;
          half:=half*2; k:=k+1
     end;
     for i:=1 to n do
     begin
          for j:=1 to n do write(matchlist[i,j]:4);
          writeln
     end;
     readln;
     end.