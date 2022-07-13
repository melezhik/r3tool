cat $root_dir/task.bash

$RAKUBIN -v

$RAKUBIN -e '
sub fun(List) {} 

fun 2...8;

'
