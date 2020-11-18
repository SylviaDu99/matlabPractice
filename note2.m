% Sn = 1 + 1/2 + 1/4 + ... + 1/2^n = 2
s = 0;
tic
for k = 0:4
    s = s + 1/2^k;
end
s
toc % get time from tic

% save var by loop!

% A1 = 7;
% A2 = 14;
% k = 1;
% for k = 1 : 2
%   filename = ['A' num2str(k) '.dat'];
%   varname = ['A' num2str(k)];
%   save(filename, varname, '-ascii');
% end
