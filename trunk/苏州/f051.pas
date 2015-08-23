var h,s1,v,l,k,t1,t2,left,right:real;
  n,i,sum:longint;
begin
  readln(h,s1,v,l,k,n);
  t1:=sqrt((h-k)/0.5/10);
  t2:=sqrt(h/0.5/10);
  for i:=0 to n-1 do begin
    left:=(s1-i)/v;
    right:=(s1-i+l)/v;
    if (t1<=right-0.00001)and(t2>=left-0.00001) then inc(sum);
  end;
  writeln(sum);
end.
