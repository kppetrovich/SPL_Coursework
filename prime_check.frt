: prime_check ( n )
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