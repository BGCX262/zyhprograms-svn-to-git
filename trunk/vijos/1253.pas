var cs,d1,c,d2,sum:real;
  n,k,i:longint;
  a,b:array[1..105]of real;
  bo:boolean;
begin
  readln(d1,c,d2,b[1],n);
  a[1]:=0;
  inc(n);
  for i:=2 to n do readln(a[i],b[i]);
  inc(n);
  a[n]:=d1;
  b[n]:=0;
  k:=1;
  cs:=0;
  repeat
    if a[k]+c*d2<a[k+1] then begin
      writeln(-1);
      exit;
    end;
    bo:=false;
    for i:=k+1 to n do
      if b[i]<b[k] then begin
        bo:=true;
        break;
      end;
    if (not bo)or(a[i]-a[k]>c*d2) then begin
      sum:=sum+(c-cs)*b[k];
      cs:=c-(a[k+1]-a[k])/d2;
      inc(k);
    end
    else begin
      if cs>(a[i]-a[k])/d2 then begin
        cs:=cs-(a[i]-a[k])/d2;
        k:=i;
      end
      else begin
        sum:=sum+((a[i]-a[k])/d2-cs)*b[k];
        cs:=0;
        k:=i;
      end;
    end;
  until k=n;
  writeln(sum:0:2);
end.
