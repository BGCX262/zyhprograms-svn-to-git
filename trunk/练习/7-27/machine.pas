 var
  a:array[1..100]of longint;
  b:array[1..100]of longint;
  i,j,m,n,max:longint;
  procedure try(step:integer);
   var
    i,max1:longint;
   begin
    if step=n+1 then begin
      max1:=0;
      for i:=1 to n do
       if b[i]>max1 then max1:=b[i];
       if max1<max then max:=max1;
      exit;
    end;
    for i:=1 to m do
     begin
       inc(b[i],a[step]);
       if not(b[i]>=max) then try(step+1);
       b[i]:=b[i]-a[step];
     end;
   end;
   begin
    assign(input,'machine.in');reset(input);
    assign(output,'machine.out');rewrite(output);
    readln(n,m);
    for i:=1 to n do read(a[i]);
    max:=maxint;
    try(1);
    writeln(max);
    close(input);
    close(output);
   end.
