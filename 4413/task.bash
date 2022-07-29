
$RAKUBIN -v

timeout 3 $RAKUBIN -e 'say .list ~ " found:\n" ~ .list given (^100).hyper;' 2>&1

echo

