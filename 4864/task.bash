
$RAKUBIN -v

$RAKUBIN -e '
sub fun(List) {} 

fun 2...8;

' 2>&1
