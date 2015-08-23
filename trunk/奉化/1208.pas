const maxn=10;
type arraytype=array [0..maxn,0..maxn] of longint;
var i,j,k,n,i1,i2,j1,j2:longint;
    data:arraytype;
    sum:array [0..maxn,0..maxn,0..maxn,0..maxn] of longint;
function max(x,y:longint):longint;
begin
     if x>y then max:=x else max:=y;
end;
BEGIN
     for i:=1 to maxn do
         for j:=1 to maxn do data[i,j]:=0;
     readln(n);
     repeat
           readln(i,j,k);
           data[i,j]:=k
     until (i=0) and (j=0) and (k=0);
     fillchar(sum,sizeof(sum),0);
     for i1:=1 to n do
         for j1:=1 to n do
             for i2:=1 to n do
                 for j2:=1 to n do
                 begin
                      if sum[i1-1,j1,i2-1,j2]>sum[i1,j1,i2,j2]
                         then sum[i1,j1,i2,j2]:=sum[i1-1,j1,i2-1,j2];
                      if sum[i1-1,j1,i2,j2-1]>sum[i1,j1,i2,j2]
                         then sum[i1,j1,i2,j2]:=sum[i1-1,j1,i2,j2-1];
                      if sum[i1,j1-1,i2-1,j2]>sum[i1,j1,i2,j2]
                         then sum[i1,j1,i2,j2]:=sum[i1,j1-1,i2-1,j2];
                      if sum[i1,j1-1,i2,j2-1]>sum[i1,j1,i2,j2]
                         then sum[i1,j1,i2,j2]:=sum[i1,j1-1,i2,j2-1];
                      sum[i1,j1,i2,j2]:=sum[i1,j1,i2,j2]+data[i1,j1];
                      if (i1<>i2) or (j1<>j2)
                         then sum[i1,j1,i2,j2]:=sum[i1,j1,i2,j2]+data[i2,j2]
                 end;
writeln(sum[n,n,n,n]);
END.