var st:string;
  i,n:longint;
  fz,fm,m,m1:int64;
procedure jh;
var t:int64;
begin
  t:=fz;
  fz:=fm;
  fm:=t;
end;
function wz(st:string):longint;
var i:longint;
begin
  for i:=1 to length(st) do
    if (st[i]='*')or(st[i]='+')or(st[i]='-')or(st[i]='/')or(st[i]='^') then begin
      wz:=i;
      break;
    end;
end;
function ss(a:int64;m:char;b:int64):int64;
var i:longint;
begin
  case m of
    '-':ss:=a-b;
    '*':ss:=a*b;
    '/':ss:=a div b;
    '+':ss:=a+b;
    '^':begin
      ss:=1;
      for i:=1 to b do ss:=ss*a;
    end;
  end;
end;
begin
  readln(st);
  val(copy(st,1,pos('/',st)-1),fz);
  val(copy(st,pos('/',st)+1,length(st)-pos('/',st)),fm);
  readln(n);
  for i:=1 to n do begin
    readln(st);
    if (st[5]='i')and(length(st)>5) then begin
      st:=copy(st,pos('=',st)+1,length(st)-pos('=',st));
      if (st[5]='i')and(st[length(st)]='i') then begin
        fz:=ss(fz,st[6],fz);
        if fz<0 then fz:=abs(fz);
      end
      else if (st[5]='i')and(st[length(st)]='u') then
      begin
        fz:=ss(fz,st[6],fm);
        if fz<0 then fz:=abs(fz);
      end
      else if (st[5]='u')and(st[length(st)]='u') then
      begin
        fz:=ss(fm,st[6],fm);
        if fz<0 then fz:=abs(fz);
      end
      else if (st[5]='u')and(st[length(st)]='i') then begin
        fz:=ss(fm,st[6],fz);
        if fz<0 then fz:=abs(fz);
      end
      else if (st[5]='i')and(length(st)>5) then
      begin
        val(copy(st,7,length(st)-6),m);
        fz:=ss(fz,st[6],m);
        if fz<0 then fz:=abs(fz);
      end
      else if (st[5]='u')and(length(st)>5) then begin
        val(copy(st,7,length(st)-6),m);
        fz:=ss(fm,st[6],m);
        if fz<0 then fz:=abs(fz);
      end
      else if st[length(st)]='i' then begin
        val(copy(st,1,wz(st)-1),m);
        fz:=ss(m,st[wz(st)],fz);
        if fz<0 then fz:=abs(fz);
      end
      else if st[length(st)]='u' then begin
        val(copy(st,1,wz(st)-1),m);
        fz:=ss(m,st[wz(st)],fm);
        if fz<0 then fz:=abs(fz);
      end
      else begin
        val(copy(st,1,wz(st)-1),m);
        val(copy(st,wz(st)+1,length(st)-wz(st)),m1);
        fz:=ss(m,st[wz(st)],m1);
        if fz<0 then fz:=abs(fz);
      end;
    end
    else if (st[5]='u')and(length(st)>5) then begin
      st:=copy(st,pos('=',st)+1,length(st)-pos('=',st));
      if (st[5]='i')and(st[length(st)]='i') then begin
        fm:=ss(fz,st[6],fz);
        if fm<0 then fm:=abs(fm);
      end
      else if (st[5]='i')and(st[length(st)]='u') then begin
        fm:=ss(fz,st[6],fm);
        if fm<0 then fm:=abs(fm);
      end
      else if (st[5]='u')and(st[length(st)]='u') then begin
        fm:=ss(fm,st[6],fm);
        if fm<0 then fm:=abs(fm);
      end
      else if (st[5]='u')and(st[length(st)]='i') then begin
        fm:=ss(fm,st[6],fz);
        if fm<0 then fm:=abs(fm);
      end
      else if (st[5]='i')and(length(st)>5) then
      begin
        val(copy(st,7,length(st)-6),m);
        fm:=ss(fz,st[6],m);
        if fm<0 then fm:=abs(fm);
      end
      else if (st[5]='u')and(length(st)>5) then begin
        val(copy(st,7,length(st)-6),m);
        fm:=ss(fm,st[6],m);
        if fm<0 then fm:=abs(fm);
      end
      else if st[length(st)]='i' then begin
        val(copy(st,1,wz(st)-1),m);
        fm:=ss(m,st[wz(st)],fz);
        if fm<0 then fm:=abs(fm);
      end
      else if st[length(st)]='u' then begin
        val(copy(st,1,wz(st)-1),m);
        fm:=ss(m,st[wz(st)],fm);
        if fm<0 then fm:=abs(fm);
      end
      else begin
        val(copy(st,1,wz(st)-1),m);
        val(copy(st,wz(st)+1,length(st)-wz(st)),m1);
        fz:=ss(m,st[wz(st)],m1);
        if fm<0 then fm:=abs(fm);
      end;
    end
    else begin
      jh;
    end;
  end;
  if fm=0 then writeln('Error')
  else writeln(fz,'/',fm);
end.