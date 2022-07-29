
$RAKUBIN -v

$RAKUBIN -e 'say "ex1 [", "a"  ∊ ["a", "b"], "]"'  2>&1
$RAKUBIN -e 'say "ex2 [", "a"  ∈ ["a", "b"], "]"'  2>&1
$RAKUBIN -e 'say "ex2 [", "a"  ∍ ["a", "b"], "]"'  2>&1
$RAKUBIN -e 'say "ex2 [", "a"  ∋ ["a", "b"], "]"'  2>&1
