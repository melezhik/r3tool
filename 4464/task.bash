
$RAKUBIN -v

$RAKUBIN -e 'print "ex1: "; say Uni(97) cmp Uni(97)' 2>&1

$RAKUBIN -e 'print "ex2: "; say Uni(97) ~~ Uni(97)' 2>&1

$RAKUBIN -e 'print "ex3: "; my int @a = 1,2,3; my @b = 1,2,3; dd @a cmp @b' 2>&1

# ----------------------------------------------------------------

echo
