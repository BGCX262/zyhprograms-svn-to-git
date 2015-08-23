type     
   tree=^tt;      
   tt=record     
     data:longint;      
     left,right:tree;      
     boo:boolean;      
   end;      
 var     
   h,i,j,z:longint;      
   root:tree;      
 procedure build(a:tree;depth:integer);      
 var     
   l,r:tree;      
 begin     
   if depth<h then begin     
     new(l);      
     l^.data:=a^.data*2;      
     l^.boo:=false;      
     l^.left:=nil;      
     l^.right:=nil;      
     a^.left:=l;      
     build(l,depth+1);      
     new(r);      
     r^.data:=a^.data*2+1;      
     r^.boo:=false;      
     r^.left:=nil;      
     r^.right:=nil;      
     a^.right:=r;      
     build(r,depth+1);      
   end;      
 end;      
 function bl(root:tree):longint;      
 begin     
   if (root^.left=nil)and(root^.right=nil) then begin     
     bl:=root^.data;      
     root^.boo:=not root^.boo;      
   end     
   else begin     
     if root^.boo=false then begin    
       root^.boo:=not root^.boo;      
       bl:=bl(root^.left);      
     end     
     else if root^.boo=true then begin     
       root^.boo:=not root^.boo;      
       bl:=bl(root^.right);     
     end;      
   end;     
 end;      
 begin     
   readln(h,i);    
   new(root);      
   root^.data:=1;      
   root^.left:=nil;     
   root^.right:=nil;     
   root^.boo:=false;    
   build(root,1);      
   for j:=1 to i do     
     z:=bl(root);      
   writeln(z);      
 end.