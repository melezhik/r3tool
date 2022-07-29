#!bash

#
$RAKUBIN -v

echo 'ex1: say ^10 .map: { $_ == 5 ?? (last)   !! $_ }'
$RAKUBIN -e 'say ^10 .map: { $_ == 5 ?? (last)   !! $_ }' 2>&1 # (0 1 2 3 4)

echo 'ex2: use v6.e.PREVIEW; say ^10 .map: { $_ == 5 ?? last(42) !! $_ }'
$RAKUBIN -e 'use v6.e.PREVIEW; say ^10 .map: { $_ == 5 ?? last(42) !! $_ }' 2>&1 # (0 1 2 3 4 42)

# and also in .grep:

echo 'ex3.1: use v6.e.PREVIEW; say ^10 .grep: { $_ == 5 ?? (last)       !! $_ %% 2 }'
$RAKUBIN -e 'use v6.e.PREVIEW; say ^10 .grep: { $_ == 5 ?? (last)       !! $_ %% 2 }' 2>&1 # (0 2 4)

echo 'ex3.2: use v6.e.PREVIEW; say ^10 .grep: { $_ == 5 ?? last()       !! $_ %% 2 }'
$RAKUBIN -e 'use v6.e.PREVIEW; say ^10 .grep: { $_ == 5 ?? last()       !! $_ %% 2 }' 2>&1 # (0 2 4)

echo 'ex4: use v6.e.PREVIEW; say ^10 .grep: { $_ == 5 ?? last(True) !! $_ %% 2 }'
$RAKUBIN -e 'use v6.e.PREVIEW; say ^10 .grep: { $_ == 5 ?? last(True) !! $_ %% 2 }' 2>&1 # (0 2 4 5)

# and any other loop constructs that return values, e.g.:

echo 'ex5: use v6.e.PREVIEW; my $i; say do while ++$i < 10 { $i == 5 ?? (last)   !! $i }'
$RAKUBIN -e 'use v6.e.PREVIEW; my $i; say do while ++$i < 10 { $i == 5 ?? (last)   !! $i }' 2>&1 # (1 2 3 4)

# vs

echo 'ex6: use v6.e.PREVIEW; my $i; say do while ++$i < 10 { $i == 5 ?? last(42) !! $i }'
$RAKUBIN -e 'use v6.e.PREVIEW; my $i; say do while ++$i < 10 { $i == 5 ?? last(42) !! $i }' 2>&1  # (1 2 3 4 42)

echo 'ex7: use v6.e.PREVIEW; dd ^10 .map: { last slip(42,66) if $_ == 5; $_ }'
$RAKUBIN -e 'use v6.e.PREVIEW; dd ^10 .map: { last slip(42,66) if $_ == 5; $_ }' 2>&1

echo
