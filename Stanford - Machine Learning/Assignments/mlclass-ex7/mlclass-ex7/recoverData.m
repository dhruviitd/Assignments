function X_rec = recoverData(Z, U, K)
%RECOVERDATA Recovers an approximation of the original data when using the 
%projected data
%   X_rec = RECOVERDATA(Z, U, K) recovers an approximation the 
%   original data that has been reduced to K dimensions. It returns the
%   approximate reconstruction in X_rec.
%

% You need to return the following variables correctly.
X_rec = zeros(size(Z, 1), size(U, 1));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the approximation of the data by projecting back
%               onto the original space using the top K eigenvectors in U.
%
for i = 1:size(Z,1) 
    v = Z(i, :)';
    for j = 1 : size(U,1)
        recovered_j = v' * U(j, 1:K)';
        X_rec(i,j) = recovered_j;
    end
end

             
              



% =============================================================

end
