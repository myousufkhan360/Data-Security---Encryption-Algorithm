clear all
close all
clc
 m=2;
% the message that should be encrypted
msg='TEST'
X=(double(msg))- 65
% modulo
moduo=26;
n=size(X,2)/m
% Our key
K= [11 8; 3 7] 
% encrypting
Y=0;
for i=1:n
Ytmp = X((i-1)*m+1:i*m)*K
Ytmp=mod(Ytmp,moduo)
Y=[Y Ytmp]
end
Y=Y(2:end)
Ymsg=char(Y+65)
