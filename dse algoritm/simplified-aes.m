pt =[0,1,0,0,0,0,0,1; 0,1,0,0,0,0,0,1 ];
key = [1 0 1 0 0 0 0 0 ; 1 0 0 1 0 1 0 1];
s0 = [2 5 1 6 1 1 7 1; 2 1 1 3 1 1 2 1];
%Nibble substitution
ns1 = pt(s0);
%shift rows
sho = circshift(ns1,1);
%mixed column
s = [1 0 1 1 1 0 1 1 ; 1 0 1 1 0 1 0 1];
mc = mtimes(s , sho);
%add round key
ad = xor(mc , key);
% round 2

%Nibble substitution
ns2 = ad(s0);
%shift rows
sho1 = circshift(ns1,1);
%mixed column
s = [1 0 1 1 1 0 1 1 ; 1 0 1 1 0 1 0 1];
%mc = circshift(pt(s0),1) * a;
mc1 = mtimes(s , sho1);
%add round key
ad = xor(mc1 , key);
