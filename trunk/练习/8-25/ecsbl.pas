type  
  tree=^tt;   
  tt=record  
    data:integer;   
    left,right:tree;   
  end;   
var  
  root:tree;   
  l,h,x,a:integer;   
  p:packed array[1..1000]of integer;   
  hash:packed array[0..1000]of boolean;   
procedure build(a:tree;depth:integer);   
var  
  l,r:tree;   
begin  
  if depth<h then begin  
    new(l);   
    l^.data:=a^.data*2;   
    l^.left:=nil;   
    l^.right:=nil;   
    a^.left:=l;   
    build(l,depth+1);   
    new(r);   
    r^.data:=a^.data*2+1;   
    r^.left:=nil;   
    r^.right:=nil;   
    a^.right:=r;   
    build(r,depth+1);   
  end;   
end;   
procedure xx(root:tree);   
begin  
  if root<>nil then begin  
    write(p[root^.data],' ');   
    xx(root^.left);   
    xx(root^.right);   
  end;   
end;   
procedure zx(root:tree);   
begin  
  if root<>nil then begin  
    zx(root^.left);   
    write(p[root^.data],' ');   
    zx(root^.right);   
  end;   
end;   
procedure hx(root:tree);   
begin  
  if root<>nil then begin  
    hx(root^.left);   
    hx(root^.right);   
    write(p[root^.data],' ');   
  end;   
end;   
begin  
  readln(h,x);   
  l:=0;   
  fillchar(hash,sizeof(hash),true);   
  while l<(1 shl h)-1 do  
  begin  
    read(a);   
    if hash[a] then begin  
      l:=l+1;   
      p[l]:=a;   
      hash[a]:=false;   
    end;   
  end;   
  new(root);   
  root^.data:=1;   
  root^.left:=nil;   
  root^.right:=nil;   
  build(root,1);   
  if x=1 then xx(root);   
  if x=2 then zx(root);   
  if x=3 then hx(root);   
  writeln;   
end.  