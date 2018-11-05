clc;
disp('RSA');
 p = 3;
 q = 13;
 e = 5;
 m = 10;
 disp('p =');
 disp(p);
 disp('q =');
 disp(q);
 disp('m =');
 disp(m);
 disp('e =');
 disp(e);
 %step 1: find n
 n = p * q;
 disp('n =');
 disp(n);
 % step 2: find Q(n)
 
 Q = (p-1)*(q-1); 
  disp('Q(n) =');
 disp(Q);
 %step 3: e is already given so we find out d
i=1;
r=1;
while r > 0
    k=(Q*i)+1;
    r=rem(k,e);
    i=i+1;
end
d=k/e;
disp('d =');
 disp(d);
% step4: encryption
 a = power(m,e);
 cf = mod(a,n);
disp('Ciper Text = ')
 disp(cf);
 % decryption:
 b = power(cf ,d);
 ef = mod(b , n);
 disp('Decrypted Text = ')
 disp(ef);
