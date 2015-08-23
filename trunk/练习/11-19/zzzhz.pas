var b:array[0..260]of string;
  s:array[0..260]of char;
  bj1,bj:array[0..20]of longint;
  i,j,k,l,tmp,q:longint;
  st:string;
function xh(ch:char):longint;
begin
  case ch of
    ')':xh:=-1;
    '(':xh:=0;
    '*':xh:=1;
    '/':xh:=1;
    '+':xh:=2;
    '-':xh:=2;
  end;
end;
begin
  readln(st);
  i:=1;
  while st<>'' do begin
    if st[i]in['0'..'9'] then begin
      inc(k);
      b[k]:=st[i];
      delete(st,1,1);
      i:=1;
    end
    else begin
      case st[i] of
        '+','-':begin
          if (l<>0)and(bj[q]=0) then begin
            while (xh(st[i])>=xh(s[l]))and(l<>0) do begin
              inc(k);
              b[k]:=s[l];
              l:=l-1;
            end;
            inc(l);
            s[l]:=st[i];
          end
          else begin
            inc(l);
            s[l]:=st[i];
          end;
        end;
        '*','/':begin
          if (l<>0)and(bj[q]=0) then begin
            while xh(st[i])>=xh(s[l]) do begin
              inc(k);
              b[k]:=s[l];
              l:=l-1;
            end;
            inc(l);
            s[l]:=st[i];
          end
          else begin
            inc(l);
            s[l]:=st[i];
          end;
        end;
        '(':begin
          inc(q);
          bj[q]:=1;
          bj1[q]:=l;
        end;
        ')':begin
           while l>bj1[q] do begin
             inc(k);
             b[k]:=s[l];
             l:=l-1;
           end;
           dec(q);
        end;
      end;
      delete(st,1,1);
      i:=1;
    end;
  end;
  while l<>0 do begin
    inc(k);
    b[k]:=s[l];
    l:=l-1;
  end;
  for i:=1 to k-1 do write(b[i],' ');
  writeln(b[k]);
end.
