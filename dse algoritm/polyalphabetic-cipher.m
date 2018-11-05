clear all
p = 'ilikecomputersecurity';
k='sight'
m = 0 : 25;
for t = 1 : 26
n(t , :) = circshift('m' , -(t-1))
end
z1 = length(p);
z2 = length(k);
z3 = ceil(z1/z2);
r = [];
for t = 1 : 25
r = [r t];
end
r1 = r(1 :z1);
l = 'a' : 'z'
for t = 1 : 'z'
a1 = find(l == p(t));
a2 = find(l == r(t));
a3 = n(a1 , a2);
c(t) = l(a2 + 1);
end