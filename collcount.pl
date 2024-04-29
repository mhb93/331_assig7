% Mary Bolling
% Started: 4-29-2024
% Last updated: 4-29-2024
% CS 331, Assignment 7 Exercise D
% Collatz Function, written in Prolog

% collcount/2
% End condition
collcount(1, 0).
% Do the math
collcount(N, C) :-
    N > 1,
    collmath(N, N1),
    % Check if end condition is met
    collcount(N1, P),
    C is P + 1.

% collmath/2
collmath(N, N1) :-
    % check even or odd
    Q is N mod 2,
    (Q = 0,
        % Even, set new N1
        N1 is N // 2
    ;Q = 1,
        % Odd, set new N1
        N1 is 3 * N + 1).

