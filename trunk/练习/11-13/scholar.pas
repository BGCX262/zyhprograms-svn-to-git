var a:array[1..100]of string;
  b:array[1..100,1..4]of longint;
  c:array[1..100,1..2]of char;
  i,j,max,sum,n:longint;
  name:array[1..100]of string;
procedure asd;
var i,v:longint;
begin
  for i:=1 to n do begin
    v:=pos(' ',a[i]);
    name[i]:=copy(a[i],1,v-1);
    delete(a[i],1,v);
    v:=pos(' ',a[i]);
    val(copy(a[i],1,v-1),b[i,1]);
    delete(a[i],1,v);
    v:=pos(' ',a[i]);
    val(copy(a[i],1,v-1),b[i,2]);
    delete(a[i],1,v);
    c[i,1]:=a[i][1];
    delete(a[i],1,2);
    c[i,2]:=a[i][1];
    delete(a[i],1,2);
    val(a[i],b[i,3]);
  end;
end;

begin
  assign(input,'scholar.in');
  assign(output,'scholar.out');
  reset(input);
  rewrite(output);
  readln(n);
  for i:=1 to n do readln(a[i]);
  asd;
  for i:=1 to n do begin
    if (b[i,1]>80)and(b[i,3]>0) then b[i,4]:=b[i,4]+8000;
    if (b[i,1]>85)and(b[i,2]>80) then b[i,4]:=b[i,4]+4000;
    if (b[i,1]>90) then b[i,4]:=b[i,4]+2000;
    if (b[i,1]>85)and(c[i,2]='Y') then b[i,4]:=b[i,4]+1000;
    if (b[i,2]>80)and(c[i,1]='Y') then b[i,4]:=b[i,4]+850;
    if max<b[i,4] then begin
      max:=b[i,4];
      j:=i;
    end;
    sum:=sum+b[i,4];
  end;
  writeln(name[j]);
  writeln(max);
  writeln(sum);
  close(input);
  close(output);
end.