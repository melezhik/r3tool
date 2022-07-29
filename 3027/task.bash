
$RAKUBIN -v

timeout 2 $RAKUBIN -e 'sub ztask( (:$key, :$value) ) {}; ztask ‘foo’.any => ‘bar’;' 2>&1

echo

