var a,b,c:array[1..1000]of longint;
  step,i,w,n:longint;
  st:string;
function hw:boolean;
var i,j:longint;
begin
  i:=1;
  j:=w;
  while (a[i]=a[j])and(i<=j) do begin
    inc(i);dec(j);
  end;
  if i>j then exit(true)
  else exit(false);
end;
begin
  readln(n);
  readln(st);
  w:=length(st);
  for i:=1 to w do
    if st[i] in['0'..'9'] then a[w-i+1]:=ord(st[i])-48
    else a[w-i+1]:=ord(st[i])-55;
  while not(hw)and(step<=30) do begin
    for i:=1 to w do b[w-i+1]:=a[i];
    for i:=1 to w do begin
      c[i]:=c[i]+a[i]+b[i];
      c[i+1]:=c[i] div n;
      c[i]:=c[i] mod n;
    end;
    if c[w+1]>0 then inc(w);
    a:=c;
    fillchar(c,sizeof(c),0);
    inc(step);
  end;
  if step=31 then writeln('Impossible!')
  else writeln('STEP=',step);
end.