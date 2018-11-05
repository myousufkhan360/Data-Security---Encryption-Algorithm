clear all
 a = 'ilikec';
b = ''; 
c = '';
b(2:2:length(a))= a(1:2:end);
c(1:2:length(a))= a(2:2:end);
disp(b);
disp(c);