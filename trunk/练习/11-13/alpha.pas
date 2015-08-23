var a:array['A'..'Z']of longint;
  a1,b1,c:array[1..26]of longint;
  b:array[0..26]of boolean;
  s1,s2,s3:string;
  n:longint;
function ss:boolean;
var i:longint;
begin
  for i:=1 to n do
    if c[n-i+1]<>a[s3[i]] then exit(false);
  exit(true);
end;
procedure jia;
var i,x:longint;
begin
  x:=0;
  for i:=1 to n do a1[n-i+1]:=a[s1[i]];
  for i:=1 to n do b1[n-i+1]:=a[s2[i]];
  for i:=1 to n do begin
    x:=a1[i]+b1[i]+x;
    c[i]:=x mod n;
    x:=x div n;
  end;
end;
procedure asd(step:longint);
var i:longint;
begin
  if step=n+1 then begin
    fillchar(b1,sizeof(b1),0);
    fillchar(a1,sizeof(a1),0);
    fillchar(c,sizeof(c),0);
    jia;
    if ss then begin
      for i:=1 to n-1 do write(a[chr(64+i)],' ');
      writeln(a[chr(64+n)]);
      close(input);
      close(output);
      halt;
    end;
  end;
  for i:=0 to n-1 do
    if b[i] then begin
      b[i]:=false;
      a[chr(step+64)]:=i;
      asd(step+1);
      b[i]:=true;
    end;
end;
begin
  assign(input,'alpha.in');
  assign(output,'alpha.out');
  reset(input);
  rewrite(output);
  readln(n);
  readln(s1);
  readln(s2);
  readln(s3);
  fillchar(b,sizeof(b),true);
  asd(1);
end.