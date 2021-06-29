#!bash

#cat $root_dir/task.bash

$RAKUBIN -v

echo 'ex1: say ^10 .map: { $_ == 5 ?? (last)   !! $_ }'
$RAKUBIN -e 'say ^10 .map: { $_ == 5 ?? (last)   !! $_ }' 2>&1 # (0 1 2 3 4)

echo 'ex2: say ^10 .map: { $_ == 5 ?? last(42) !! $_ }'
$RAKUBIN -e 'say ^10 .map: { $_ == 5 ?? last(42) !! $_ }' 2>&1 # (0 1 2 3 4 42)

# and also in .grep:

echo 'ex3.1: say ^10 .grep: { $_ == 5 ?? (last)       !! $_ %% 2 }'
$RAKUBIN -e 'say ^10 .grep: { $_ == 5 ?? (last)       !! $_ %% 2 }' 2>&1 # (0 2 4)

echo 'ex3.2: say ^10 .grep: { $_ == 5 ?? last()       !! $_ %% 2 }'
$RAKUBIN -e 'say ^10 .grep: { $_ == 5 ?? last()       !! $_ %% 2 }' 2>&1 # (0 2 4)

echo 'ex4: say ^10 .grep: { $_ == 5 ?? last(True) !! $_ %% 2 }'
$RAKUBIN -e 'say ^10 .grep: { $_ == 5 ?? last(True) !! $_ %% 2 }' 2>&1 # (0 2 4 5)

# and any other loop constructs that return values, e.g.:

echo 'ex5: my $i; say do while ++$i < 10 { $i == 5 ?? (last)   !! $i }'
$RAKUBIN -e 'my $i; say do while ++$i < 10 { $i == 5 ?? (last)   !! $i }' 2>&1 # (1 2 3 4)

# vs

echo 'ex6: my $i; say do while ++$i < 10 { $i == 5 ?? last(42) !! $i }'
$RAKUBIN -e 'my $i; say do while ++$i < 10 { $i == 5 ?? last(42) !! $i }' 2>&1  # (1 2 3 4 42)

echo 'ex7: dd ^10 .map: { last slip(42,66) if $_ == 5; $_ }'
$RAKUBIN -e 'dd ^10 .map: { last slip(42,66) if $_ == 5; $_ }' 2>&1

echo
