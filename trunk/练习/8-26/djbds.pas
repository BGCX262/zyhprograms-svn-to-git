var
  s,st:string;
  ans,e,g,i,k,x,n:longint;
  a:array[1..26]of string;
  c:array[1..26]of boolean;
procedure cutit(var ss:string);      //删除空格
begin
  while pos(' ',ss)<>0 do delete(ss,pos(' ',ss),1);
end; 
function f(l,r:longint):longint;
var
  kh,fh,i:longint;
begin
  if l>r then exit;
  kh:=0;   //kh:括号层数
  fh:=0;   //fh:运算符的位置
  for i:=r downto l do
  begin
    if st[i]=')' then inc(kh) else
    if st[i]='(' then dec(kh);
    if kh=0 then
    begin
      if (st[i]in['+','-']) then begin fh:=i; break;end else
      if (st[i]='*')and((fh=0)or(st[fh]in['*','^'])) then fh:=i else
      if (st[i]='^')and(fh=0)then fh:=i;
    end;
  end;
  if fh=0 then    //边界情况的处理
  begin
    if (st[l]='(')and(st[r]=')') then exit(f(l+1,r-1));
    if (st[r]=')')then exit(f(l,r-1));
    if (st[l]='(')then exit(f(l+1,r));
    if st[l]='a' then exit(x);
    f:=0;
    for i:=l to r do f:=f*10+ord(st[i])-ord('0');
  end
  else
  begin      //递归计算运算符两边
    case st[fh]of
      '+':exit((f(l,fh-1)+f(fh+1,r))mod 35111);
      '-':exit((f(l,fh-1)-f(fh+1,r)+35111)mod 35111);
      '*':exit((f(l,fh-1)*f(fh+1,r))mod 35111);
      '^':begin
            f:=1;
            e:=f(l,fh-1);g:=f(fh+1,r);
            for i:=1 to g do f:=f*e mod 35111;
          end;
    end;
  end;
end; 
begin
  readln(s);
  cutit(s);
  readln(n);
  for i:=1 to n do
  begin
    readln(a[i]);
    cutit(a[i]);
  end; 
  x:=9;
  for k:=1 to 8 do
  begin
    inc(x,2);
    st:=s;
    ans:=f(1,length(st));
    for i:=1 to n do if not c[i] then
    begin
      st:=a[i];
      if f(1,length(st))<>ans then c[i]:=true;
    end;
  end;
  for i:=1 to n do
    if not c[i] then write(chr(i+64));
  writeln;
end. 

