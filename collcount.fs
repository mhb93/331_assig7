\ Mary Bolling
\ Started: 4-28-2024
\ Last edited: 4-29-2024
\ CS 331, Assignment 7 Exercise B
\ Collatz Function, written in Forth

: collcount ( n -- c )
    \LOCALS| n c |
    0 {c}
    n 1 +
    if
       c . s" " type
    else
        c 1 + to c
        n 2 MOD 0 =
        if
            n 2 / collcount
        else
            n 3 * 1 + collcount
        endif
    endif
;