plaintext = 'hello my name is ray nice to meet you';
tp = [5 3 1 4 2];
ltp = numel(tp); 
lp = numel(plaintext); 
plaintext = [plaintext 32*ones(1,ltp*ceil(lp/ltp) - lp)];
ciphertext = reshape(plaintext, ltp, []);
ciphertext = reshape(ciphertext(tp, :), 1, []);