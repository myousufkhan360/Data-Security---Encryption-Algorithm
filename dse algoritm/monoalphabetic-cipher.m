%Monoalphabetic
alphabets='abcdefghijklmnopqrstuvwxyz'
k=4
pt='ilikecomputersecurity'
for x=1:length(pt)
    h(x)=strfind(alphabets,pt(x))-1
    p(x)=mod(h(x)+k, 26)
end
for y=1:length(p)
    CT(y)=alphabets(p(y))
end
display(CT)
for x=1:length(ct)
    z=find(ct(x)==alphabets)-1
    p(x)=mod(z-k, 26)
end
for y=1:length(p)
    PT(y)=alphabets(p(y))
end
display(PT)