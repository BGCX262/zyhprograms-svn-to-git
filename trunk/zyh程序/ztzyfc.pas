{for i:=0 to n-1 do
for j:=1 to n-i do
for k:=0 to t do
if k<=name then f[j,j+i,k]:=0
else if i=0 then f[j,j,k:=max(f[j,j,k-1],a[i,k-name])
else begin
maxi:=0;
for l:=j to j+i do
for m:=0 to k do
maxi:=max(maxi,f[j,l,m]+f[l+1,j+i,k-m])
f[j,j+i,k]:=maxi;
end;}
