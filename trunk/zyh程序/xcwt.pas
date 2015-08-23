var c,c0,c1,zero,t3,t1,t4,t2:real;
s,a,b:integer;
begin
zero:=1e-3;
  readln(s,a,b);
  c0:=0;c1:=s;
  repeat
    c:=(c0+c1)/2;
    t3:=c/b;
    t1:=t3+(s-c)/a;
    t4:=(c-t3*a)/(a+b);
    t2:=t3+t4+(s-(t3+t4)*a)/b;
    if t1<t2 then c1:=c else c0:=c;
  until abs(t1-t2)<zero;
  writeln(t1:0:2);
end.
