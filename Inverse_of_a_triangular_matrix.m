function [X, info] = invU(A)
% Finding inverse of a triangular matrix
% X correct, when info=1; other info=0
EPS=1e-10;
[m,n] = size(A);
X = A; 
info = 1;
if m ~= n || any(abs(diag(A)) < EPS)
    info = 0;
    % X = A;
    return;
end
X=diag(1./diag(A)); %diagonal matrix 
for i=1:n
    for j = i + 1:n
        X(i,j) = -X(i,i:j-1)*A(i:j-1,j)/A(j,j);
    end
end
end

% for i=1:n
%     X(i,i) = 1/A(i,i); % index el from 1
%     for j = i + 1:n
%         s = 0;
%         for k = i:j-1
%             s = s + X(i, k) * A(k,j);
%         end
%         X(i, j) = -s/A(j,j);
% 
%     end
% end
