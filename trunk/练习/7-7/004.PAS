VAR n,i,j,s2,t,v,s1,v1,t1:longint;
s:array[1..1000]of string;
BEGIN
readln(n);
for i:=1 to n do readln(s[i]);
for i:=1 to n do begin
s2:=0;s1:=0;t1:=0;t:=0;v:=0;v1:=0;
if pos('{',s[i])<>0 then
  if pos('[',s[i])<>0 then
    if pos('(',s[i])<>0 then
      if pos(')',s[i])<>0 then
        if pos(']',s[i])<>0 then
          if pos('}',s[i])<>0 then
            if pos('{',s[i])<pos('[',s[i]) then
              if pos('[',s[i])<pos('(',s[i]) then
                if pos('(',s[i])<pos(')',s[i]) then
                  if pos(')',s[i])<pos(']',s[i]) then
                    if pos(']',s[i])<pos('}',s[i]) then
                       begin
                           for j:=1 to length(s[i]) do
                                        begin
                                        if (s[i][j]=']') then inc(s2);
                                        if (s[i][j]='(') then inc(t);
                                        if (s[i][j]='{') then inc(v);
                                        if (s[i][j]='}') then inc(v1);
                                        if (s[i][j]='[') then inc(s1);
                                        if (s[i][j]=')') then inc(t1);
                                        end;
                                        if (s2=1)and(t=1)and(v=1)and(v1=1)and(s1=1)and(t1=1) then
                                          writeln('Yes')
                                          else writeln('No');
                                          end
                                                   else writeln('No')
                                                 else writeln('No')
                                               else writeln('No')
                                             else writeln('No')
                                           else writeln('No')
                              else writeln('No')
                            else writeln('No')
                          else writeln('No')
                        else writeln('No')
                      else writeln('No')
                    else if pos('[',s[i])<>0 then
                           if pos('(',s[i])<>0 then
                             if pos(')',s[i])<>0 then
                               if pos(']',s[i])<>0 then
                                 if pos('[',s[i])<pos('(',s[i]) then
                                   if pos('(',s[i])<pos(')',s[i]) then
                                     if pos(')',s[i])<pos(']',s[i]) then begin
                                        for j:=1 to length(s[i]) do
                                        begin
                                        if (s[i][j]=']') then inc(s2);
                                        if (s[i][j]='(') then inc(t);
                                        if (s[i][j]='[') then inc(s1);
                                        if (s[i][j]=')') then inc(t1);
                                        end;
                                        if (s2=1)and(t=1)and(s1=1)and(t1=1) then
                                          writeln('Yes')
                                          else writeln('No');
                                          end
                                                                    else writeln('No')
                                                                  else writeln('No')
                                                                else writeln('No')
                                                   else writeln('No')
                                                 else writeln('No')
                                               else writeln('No')
                                             else if pos('(',s[i])<>0 then
                                                    if pos(')',s[i])<>0 then
                                                      if pos('(',s[i])<pos(')',s[i]) then
                                                        begin
                                                       for j:=1 to length(s[i]) do
                                        begin
                                        if (s[i][j]='(') then inc(t);
                                        if (s[i][j]=')') then inc(t1);
                                        end;
                                        if (t=1)and(t1=1) then
                                          writeln('Yes')
                                          else writeln('No');
                                          end
                                                                          else writeln('No')
                                                                        else writeln('No')
                                                                      else writeln('No');
                                                                      end;
                                                                      end.