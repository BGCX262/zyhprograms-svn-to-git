program lxs_1;
var a:array[1..100,1..100] of integer;
s,f,b,c,d,i,j,n:integer;
begin
read(s);
f:=s;b:=s;c:=1;d:=1;
n:=0;
repeat
 for i:=c to f-1 do begin n:=n+1;a[d,i]:=n end;
 for i:=d to b-1 do begin n:=n+1;a[i,f]:=n end;
 for i:=f downto c+1 do begin n:=n+1;a[b,i]:=n end;
 for i:=b downto d+1 do begin n:=n+1;a[i,c]:=n end;
 c:=c+1;d:=d+1;b:=b-1;f:=f-1;
 until n=sqr(s)-(s mod 2);
 if s mod 2=1 then a[s div 2+1,s div 2+1]:=sqr(s);
 for i:=1 to s do begin
 for j:=1 to s do
 write(a[i,j]:5);
 writeln;
 end;
 readln;
 end.
