
$RAKUBIN -v

$RAKUBIN -e 'multi foo (int $i) { $i + $i }; my $a = 2; say foo $a' 2>&1

