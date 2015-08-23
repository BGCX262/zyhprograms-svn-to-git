var st:string;
i:longint;
begin
readln(st);
while i<=length(st) do begin
inc(i);
if (st[i]='{')and(st[i+1]<>'}') then insert('}',st,i+1)
  else if (st[i]='[')and(st[i+1]<>']') then insert(']',st,i+1)
    else if (st[i]='(')and(st[i+1]<>')') then insert(')',st,i+1)
      else if (st[i]='}')and(st[i-1]<>'{') then insert('{',st,i)
        else if (st[i]=']')and(st[i-1]<>'[') then insert('[',st,i)
          else if (st[i]=')')and(st[i-1]<>'(') then insert('(',st,i);
end;
writeln(st);
end.