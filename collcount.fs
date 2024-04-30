\ Mary Bolling
\ Started: 4-28-2024
\ Last edited: 4-29-2024
\ CS 331, Assignment 7 Exercise B
\ Collatz Function, written in Forth

\ This function taken from the file word.fs by Glenn Chappell
: collmath { n -- c } \ Take variable n
    n 2 mod 0 = if \ Is n even?
        n 2 /
    else \ n must be odd
        n 3 * 1 +
    endif
;

: collcount ( n -- c )
    0 swap
    begin
        dup 1 = if \ You have reached 1, please follow the lighted strips to the exit
            drop exit
        else
            collmath \ Do some math
            swap 1 + swap \ Increment the number of times this has occurred
        endif
    again
;
