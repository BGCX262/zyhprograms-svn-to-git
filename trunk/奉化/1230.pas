var zero,s,a,b,c,t1,t2,t3,t4,c1,c0:real;
begin
zero:=1e-10;
  readln(s,a,b);
  c0:=1;c1:=s;
  repeat
    c:=(c0+c1)/2;
    t3:=c/b;
    t1:=t3+(s-c)/a;
    t4:=(c-t3*a)/(a+b);
    t2:=t3+t4+(s-(t3+t4)*a)/b;
    if t1<t2 then c1:=c else c0:=c;
  until abs(t1-t2)<zero;
  writeln(t1:0:6);
end.