var n,max,i,j:longint;
  ch:char;
  a:array[1..40]of string;
  b:array[1..40,1..40]of boolean;
  c:array[1..40]of boolean;
  d:array[1..40]of longint;
  e:array[1..40,1..40]of longint;
function ok:boolean;
var i:longint;
begin
  for i:=1 to n-1 do
    if not b[d[i],d[i+1]] then exit(false);
  exit(true);
end;
function ss(n,m:longint):boolean;
var i,min:longint;
  tmp:string;
begin
  min:=maxlongint;
  for i:=1 to length(a[n]) do begin
    tmp:=copy(a[n],i,length(a[n])-i+1);
    if pos(tmp,a[m])=1 then
      if min>length(a[n])-i+1 then min:=length(a[n])-i+1;
  end;
  if min<>maxlongint then begin
    e[n,m]:=min;
    exit(true);
  end
  else exit(false);
end;
function le(n:longint):longint;
var i:longint;
begin
  le:=0;
  for i:=1 to n-1 do le:=le+e[d[i],d[i+1]];
end;
procedure asd(tot,now,len:longint);
var i:longint;
begin
  if tot=n+1 then exit;
  if len-le(tot-1)>max then max:=len-le(tot-1);
  for i:=1 to n do
    if (c[i])and(b[d[tot-1],i]) then begin
      c[i]:=false;
      d[tot]:=i;
      asd(tot+1,i,len+length(a[i]));
      c[i]:=true;
    end;
end;
begin
  readln(n);
  for i:=1 to n do readln(a[i]);
  readln(ch);
  for i:=1 to n do a[i+n]:=a[i];
  n:=n*2;
  for i:=1 to n do
  for j:=1 to n do
  if (i<>j) then
  if ss(i,j) then b[i,j]:=true;
  for i:=1 to n do
    if a[i][1]=ch then begin
      fillchar(c,sizeof(c),true);
      c[i]:=false;
      d[1]:=i;
      asd(2,i,length(a[i]));
    end;
  writeln(max);
end.
