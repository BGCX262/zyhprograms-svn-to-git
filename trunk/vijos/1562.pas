var s,s1:string;
  i,n,x,step:longint;
begin
  readln(n);
  for i:=1 to n do s:=s+'O';
  for i:=1 to n do s:=s+'*';
  s:=s+'__';
  writeln('step 0:',s);
  x:=n;
  inc(step);
  while x>4 do begin
    s[x]:='_';s[x+1]:='_';s[2*x+1]:='O';s[x*2+2]:='*';
    writeln('step ',step,':',s);
    s[x]:='*';s[x+1]:='*';s[(x-1)*2+1]:='_';s[(x-1)*2+2]:='_';
    inc(step);
    writeln('step ',step,':',s);
    inc(step);
    dec(x);
  end;
  s1:=copy(s,11,(n-4)*2);
  writeln('step ',step,':OOO__***O*'+s1);inc(step);
  writeln('step ',step,':OOO*O**__*'+s1);inc(step);
  writeln('step ',step,':O__*O**OO*'+s1);inc(step);
  writeln('step ',step,':O*O*O*__O*'+s1);inc(step);
  writeln('step ',step,':__O*O*O*O*'+s1);inc(step);
end.