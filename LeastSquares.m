% Define epsilon
epsilon = 1e-10;

% Define matrix A and vector b
A = [1, 1; epsilon, 0; 0, epsilon];
b = [-epsilon; 1 + epsilon; 1 - epsilon];

% (b) Compute the least squares solution using the backslash operator
x_backslash = A \ b;
disp('Solution using backslash operator (x_backslash):');
disp(x_backslash);

% (c) Compute the least squares solution using the normal equations
ATA = A' * A;
ATb = A' * b;
x_normal = ATA \ ATb;
disp('Solution using normal equations (x_normal):');
disp(x_normal);

% (d) Compute the least squares solution using Cholesky decomposition
R = chol(ATA);  % Cholesky factorization
y = R' \ ATb;
x_cholesky = R \ y;
disp('Solution using Cholesky decomposition (x_cholesky):');
disp(x_cholesky);

% (e) Compute the least squares solution using QR decomposition
[Q, R_qr] = qr(A, 0);  % QR factorization
x_qr = R_qr \ (Q' * b);
disp('Solution using QR decomposition (x_qr):');
disp(x_qr);
 
% (f) Compute the least squares solution using Singular Value Decomposition (SVD)
[U, S, V] = svd(A, 'econ');  % SVD factorization
x_svd = V * (S \ (U' * b));
disp('Solution using SVD (x_svd):');
disp(x_svd);

% Expected theoretical solution for comparison
x_expected = [1; -1];
expected_norm = norm(x_expected, 2);
disp('Expected theoretical solution (x_expected):');
disp(x_expected);

Display the difference between computed solutions and expected solution

disp('Difference between backslash solution and expected:');
relative_diff_backslash = norm(x_backslash - x_expected, 2) / expected_norm;
disp('Relative difference (backslash):');
disp(relative_diff_backslash);
 
disp('Difference between normal equation solution and expected:');
relative_diff_normal = norm(x_normal - x_expected, 2) / expected_norm;
disp('Relative difference (normal equations):');
disp(relative_diff_normal);
 
disp('Difference between Cholesky solution and expected:');
relative_diff_cholesky = norm(x_cholesky - x_expected, 2) / expected_norm;
disp('Relative difference (Cholesky):');
disp(relative_diff_cholesky);

disp('Difference between QR solution and expected:');
relative_diff_qr = norm(x_qr - x_expected) / expected_norm;
disp('Relative difference (QR):');
disp(relative_diff_qr);
 
disp('Difference between SVD solution and expected:');
relative_diff_svd = norm(x_svd - x_expected) / expected_norm;
disp('Relative difference (SVD):');
disp(relative_diff_svd);

