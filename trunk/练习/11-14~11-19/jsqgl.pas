var st,s1:string;
  c,i,j,sum,sumx,n:longint;
  ch:char;
  as:real;
begin
  readln(st);
  c:=pos('=',st);
  for i:=1 to length(st) do
    if st[i]in['a'..'z'] then begin
      ch:=st[i];
      break;
    end;
  if (st[1]='-') then
  begin
    i:=2;
    while (st[i+1]in['0'..'9'])or(st[i+1]=ch) do inc(i);
    s1:=copy(st,1,i);
    if pos(ch,s1)=0 then begin
      val(s1,n);
      sum:=sum+n;
    end
                    else begin
                      delete(s1,pos(ch,s1),1);
                      if s1='' then s1:=s1+'1';
                      if s1='-' then s1:=s1+'1';
                      val(s1,n);
                      sumx:=sumx+n;
                    end;
  end
                 else begin
                   i:=1;
                   while (st[i+1]in['0'..'9'])or(st[i+1]=ch) do inc(i);
                   s1:=copy(st,1,i);
                   if pos(ch,s1)=0 then begin
                     val(s1,n);
                     sum:=sum+n;
                   end
                                   else begin
                                     delete(s1,pos(ch,s1),1);
                                     if s1='' then s1:=s1+'1';
                                     if s1='-' then s1:=s1+'1';
                                     val(s1,n);
                                     sumx:=sumx+n;
                                   end;
                 end;
  while (i<c) do begin
    inc(i);
    if (st[i]='-')or(st[i]='+') then
    begin
      j:=i;
      while (st[j+1]in['0'..'9'])or(st[j+1]=ch) do inc(j);
      s1:=copy(st,i,j-i+1);
      if pos(ch,s1)=0 then begin
                     val(s1,n);
                     sum:=sum+n;
                   end
                      else begin
                        delete(s1,pos(ch,s1),1);
                        if s1='' then s1:=s1+'1';
                        if s1='-' then s1:=s1+'1';
                        val(s1,n);
                        sumx:=sumx+n;
                      end;
    end;
  end;
  if (st[c+1]='-') then
  begin
    i:=c+1;
    while (st[i+1]in['0'..'9'])or(st[i+1]=ch) do inc(i);
    s1:=copy(st,c+1,i-c);
    if s1[1]='-' then begin
      delete(s1,1,1);
      if pos(ch,s1)=0 then begin
        val(s1,n);
        sum:=sum+n;
      end
                      else begin
                        delete(s1,pos(ch,s1),1);
                        if s1='' then s1:=s1+'1';
                        if s1='-' then s1:=s1+'1';
                        val(s1,n);
                        sumx:=sumx+n;
                      end;
    end
                   else if s1[1]='+' then begin
                     delete(s1,1,1);
                     s1:='-'+s1;
                     if pos(ch,s1)=0 then begin
                       val(s1,n);
                       sum:=sum+n;
                     end
                                     else begin
                                       delete(s1,pos(ch,s1),1);
                                       if s1='' then s1:=s1+'1';
                                       if s1='-' then s1:=s1+'1';
                                       val(s1,n);
                                       sumx:=sumx+n;
                                     end;
                   end
                                       else begin
                                         s1:='-'+s1;
                                         if pos(ch,s1)=0 then begin
                                           val(s1,n);
                                           sum:=sum+n;
                                         end
                                                         else begin
                                                           delete(s1,pos(ch,s1),1);
                                                           if s1='' then s1:=s1+'1';
                                                           if s1='-' then s1:=s1+'1';
                                                           val(s1,n);
                                                           sumx:=sumx+n;
                 end; end;                               end
                 else begin
                   i:=c;
                   while (st[i+1]in['0'..'9'])or(st[i+1]=ch) do inc(i);
                   s1:=copy(st,c+1,i-c);
                   if s1[1]='-' then begin
                     delete(s1,1,1);
                     if pos(ch,s1)=0 then begin
                       val(s1,n);
                       sum:=sum+n;
                     end
                                     else begin
                                       delete(s1,pos(ch,s1),1);
                                       if s1='' then s1:=s1+'1';
                                       if s1='-' then s1:=s1+'1';
                                       val(s1,n);
                                       sumx:=sumx+n;
                                     end;
                   end
                                else if s1[1]='+' then begin
                                  delete(s1,1,1);
                                  s1:='-'+s1;
                                  if pos(ch,s1)=0 then begin
                                    val(s1,n);
                                    sum:=sum+n;
                                  end
                                                  else begin
                                                    delete(s1,pos(ch,s1),1);
                                                    if s1='' then s1:=s1+'1';
                                                    if s1='-' then s1:=s1+'1';
                                                    val(s1,n);
                                                    sumx:=sumx+n;
                                                  end;
                                end
                                                  else begin
                                                    s1:='-'+s1;
                                                    if pos(ch,s1)=0 then begin
                                                      val(s1,n);
                                                      sum:=sum+n;
                                                    end
                                                                    else begin
                                                                      delete(s1,pos(ch,s1),1);
                                                                      if s1='' then s1:=s1+'1';
                                                                      if s1='-' then s1:=s1+'1';
                                                                      val(s1,n);
                                                                      sumx:=sumx+n;
                                                                   end;
                 end;end;
  while (i<length(st)) do begin
    inc(i);
    if (st[i]='-')or(st[i]='+') then
    begin
      j:=i;
      while (st[j+1]in['0'..'9'])or(st[j+1]=ch) do inc(j);
      s1:=copy(st,i,j-i+1);
      if s1[1]='-' then begin
        delete(s1,1,1);
        if pos(ch,s1)=0 then begin
          val(s1,n);
          sum:=sum+n;
        end
                        else begin
                          delete(s1,pos(ch,s1),1);
                          if s1='' then s1:=s1+'1';
                          if s1='-' then s1:=s1+'1';
                          val(s1,n);
                          sumx:=sumx+n;
                        end;
      end
                   else if s1[1]='+' then begin
                     delete(s1,1,1);
                     s1:='-'+s1;
                     if pos(ch,s1)=0 then begin
                       val(s1,n);
                       sum:=sum+n;
                     end
                                     else begin
                                       delete(s1,pos(ch,s1),1);
                                       if s1='' then s1:=s1+'1';
                                       if s1='-' then s1:=s1+'1';
                                       val(s1,n);
                                       sumx:=sumx+n;
                                     end;
                   end
                                       else begin
                                         s1:='-'+s1;
                                         if pos(ch,s1)=0 then begin
                                           val(s1,n);
                                           sum:=sum+n;
                                         end
                                                         else begin
                                                           delete(s1,pos(ch,s1),1);
                                                           if s1='' then s1:=s1+'1';
                                                           if s1='-' then s1:=s1+'1';
                                                           val(s1,n);
                                                           sumx:=sumx+n;
                                                         end;
    end;
    end;
    end;
  as:=(-sum)/sumx;
  if as=-0.000 then writeln(ch,'=','0.000')
  else writeln(ch,'=',as:0:3);
end.