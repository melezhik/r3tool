
$RAKUBIN -v

timeout 5 $RAKUBIN -e 'my @a; loop { @a.hyper[0] }'

echo exit_status: [$?]
