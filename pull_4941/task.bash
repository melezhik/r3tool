
$RAKUBIN -v

export RAKUDO_MAX_THREADS=illegal

$RAKUBIN -e 'say 1' 2>&1
