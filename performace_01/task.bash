#
#set -x

echo "first candidate: " $($RAKUBIN -v)
echo "second candidate: " $($RAKUBIN2 -v)

echo ==========================================

$RAKUBIN -e 'say "time: ", now - INIT now; say " <== ", Rakudo::Internals.PROGRAM'
$RAKUBIN2 -e 'say "time: ", now - INIT now; say " <== ", Rakudo::Internals.PROGRAM'

echo "==="

$RAKUBIN -e 'say ^10 .map: { $_ == 5 ?? (last)   !! $_ }; say "time: ", now - INIT now; say " <== ", Rakudo::Internals.PROGRAM' 2>&1
$RAKUBIN2 -e 'say ^10 .map: { $_ == 5 ?? (last)   !! $_ }; say "time: ", now - INIT now; say " <== ", Rakudo::Internals.PROGRAM' 2>&1

echo "==="

$RAKUBIN -e 'use v6.e.PREVIEW; say ^10 .map: { $_ == 5 ?? last(42) !! $_ }; say "time: ", now - INIT now; say " <== ", Rakudo::Internals.PROGRAM' 2>&1
$RAKUBIN2 -e 'use v6.e.PREVIEW; say ^10 .map: { $_ == 5 ?? last(42) !! $_ }; say "time: ", now - INIT now; say " <== ", Rakudo::Internals.PROGRAM' 2>&1

echo "==="

$RAKUBIN -e 'use v6.e.PREVIEW; say ^10 .grep: { $_ == 5 ?? (last)  !! $_ %% 2 }; say "time: ", now - INIT now; say " <== ", Rakudo::Internals.PROGRAM'
$RAKUBIN2 -e 'use v6.e.PREVIEW; say ^10 .grep: { $_ == 5 ?? (last) !! $_ %% 2 }; say "time: ", now - INIT now; say " <== ", Rakudo::Internals.PROGRAM'

echo "==="

$RAKUBIN -e 'use v6.e.PREVIEW; say ^10 .grep: { $_ == 5 ?? last()  !! $_ %% 2 }; say "time: ", now - INIT now; say " <== ", Rakudo::Internals.PROGRAM' 2>&1 
$RAKUBIN2 -e 'use v6.e.PREVIEW; say ^10 .grep: { $_ == 5 ?? last() !! $_ %% 2 }; say "time: ", now - INIT now; say " <== ", Rakudo::Internals.PROGRAM' 2>&1 

echo "==="

$RAKUBIN -e 'use v6.e.PREVIEW; say ^10 .grep: { $_ == 5 ?? last(True) !! $_ %% 2 }; say "time: ", now - INIT now; say " <== ", Rakudo::Internals.PROGRAM' 2>&1
$RAKUBIN2 -e 'use v6.e.PREVIEW; say ^10 .grep: { $_ == 5 ?? last(True) !! $_ %% 2 }; say "time: ", now - INIT now; say " <== ", Rakudo::Internals.PROGRAM' 2>&1

echo "==="

$RAKUBIN -e 'use v6.e.PREVIEW; my $i; say do while ++$i < 10 { $i == 5 ?? (last) !! $i }; say "time: ", now - INIT now; say " <== ", Rakudo::Internals.PROGRAM' 2>&1
$RAKUBIN2 -e 'use v6.e.PREVIEW; my $i; say do while ++$i < 10 { $i == 5 ?? (last) !! $i }; say "time: ", now - INIT now; say " <== ", Rakudo::Internals.PROGRAM' 2>&1

echo "==="

$RAKUBIN -e 'use v6.e.PREVIEW; my $i; say do while ++$i < 10 { $i == 5 ?? last(42) !! $i }; say "time: ", now - INIT now; say " <== ", Rakudo::Internals.PROGRAM' 2>&1
$RAKUBIN2 -e 'use v6.e.PREVIEW; my $i; say do while ++$i < 10 { $i == 5 ?? last(42) !! $i }; say "time: ", now - INIT now; say " <== ", Rakudo::Internals.PROGRAM' 2>&1

echo "==="

$RAKUBIN -e 'use v6.e.PREVIEW; dd ^10000 .map: { last slip(42,66) if $_ == 5; $_ }; say "time: ", now - INIT now; say " <== ", Rakudo::Internals.PROGRAM' 2>&1
$RAKUBIN2 -e 'use v6.e.PREVIEW; dd ^10000 .map: { last slip(42,66) if $_ == 5; $_ }; say "time: ", now - INIT now; say " <== ", Rakudo::Internals.PROGRAM' 2>&1

