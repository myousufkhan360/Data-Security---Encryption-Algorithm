clc
clear all	
p='balloon'
s=length(p)
t=1
while(t<s)
    if(p(t)==p(t+1))
    p=[p(1:t) 'x' p(t+1:end)]
    s=length(p)
    t=t+2
    else
    t=t+2
    end
end
if (mod(length(p),2)==1)
    p=[p 'x']
end
k='monarchy'
r='a' : 'z'
z=[k r]
for t=1:length (k)
    v=find(z==k(t))
    z(v(2:end))=[]
end
b=find(z=='i')
z(b)=[]
y=reshape(z,5,5)
a=y'
c=1
while(c<=length(p))
    [d1,d2]=find(a==p(c))
    [e1,e2]=find(a==p(c+1))
    if (d1==e1)
        ct(c)=a(d1,mod(d2+1,5))
        ct(c+1)=a(d1,mod(e2+1,5))
            c=c+1
 
    elseif (d2==e2)
        ct(c)=a(mod(d1+1,5),d2)
        ct(c+1)=a(mod(e1+1,5),d2)
    c=c+1
 
else
        ct(c)=a(d1,e2)
        ct(c+1)= a(e1,d2)
     
        c=c+1
    end
end
