: prime_check
  dup 0 < if ." Incorrect argument " else
  dup 2 < if drop 0 else
    dup 2 = if drop 1 else
        dup
        dup 2 / 1 +
        2 do
            r@ % 0
            = if 
                drop 0
                r> drop 
                r@ >r
            else dup then 
        loop
        0 = if 0 else drop 1 then
        then 
    then
then ;

: closest_biggest_prime
    repeat
        1 +
        dup prime_check
    until
;

: get_radical
    dup 1 
    = not 
    if
      dup prime_check
        not 
        if
            dup >r
            2 swap 
            2 /
            swap r>
            1 >r
            repeat
                2dup swap
                % 
                if
                    over >r
                    rot dup 
                    r> >
                    if
                        rot closet_biggest_prime
                        rot 0
                    else 
                        1
                    then
                else
                    swap dup
                    r> *
                    >r closet_biggest_prime 
                    swap 0
                then
            until
            drop drop 
            drop r>
        then
    then 
;