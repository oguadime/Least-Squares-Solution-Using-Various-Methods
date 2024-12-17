# Least-Squares-Solution-Using-Various-Methods
A MATLAB script to compute and compare the least squares solutions of an overdetermined system using different numerical techniques.

# Description 
This repository contains a MATLAB script that demonstrates the computation of the least squares solution to a given overdetermined system using various methods, including:
- Backslash operator 
- Normal equations
- Cholesky decomposition
- QR decomposition
- Singular Value Decomposition (SVD)
The solutions are compared to the theoretical solution, and relative differences are calculated to evaluate numerical accuracy.

# Code Overview
The script performs the following steps: 
- Problem Setup: Defines the matrix A and vector b for the overdetermined system. Defines the theoretical expected solution x_expected.
- Computes the least squares solution using: Backslash operator (x_backslash), Normal equations (x_normal), Cholesky decomposition (x_cholesky), QR decomposition (x_qr) and SVD (x_svd).
- Calculates the relative differences between each computed solution and the theoretical expected solution using the 2-norm.

# Usage 
Run the script in MATLAB:
```matlab
% Least Squares Solution Comparison
% Copy and paste the code into MATLAB to execute it.
```
## License
This project is licensed under the MIT License - see the LICENSE file for details.
```
Feel free to adjust any part of this README to better fit your specific needs or preferences.
