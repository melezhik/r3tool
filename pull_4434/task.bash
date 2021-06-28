cat $root_dir/task.bash

$RAKUBIN -v

$RAKUBIN -e 'say "ex1 ", modf(0.0).perl'

$RAKUBIN -e 'say "ex2 ", modf(-0.0).perl'

$RAKUBIN -e 'say "ex3 ", modf(0).perl'

$RAKUBIN -e 'say "ex4 ", modf(.6).perl'

$RAKUBIN -e 'say "ex5 ", modf(.6,2).perl'

$RAKUBIN -e 'say "ex6 ", modf(123456789123456789.6,2).perl'

$RAKUBIN -e 'say "ex7 ", modf(+6.2,2).perl'

$RAKUBIN -e 'say "ex8 ", modf(+6.2,100).perl'

$RAKUBIN -e 'say "ex9 ", modf(+6.2,4).perl'
