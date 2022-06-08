cat $root_dir/task.bash

$RAKUBIN -v

$RAKUBIN -e '

say("/");
(1|2).put;
say("/");
put 1|2:;
say("/");
(1|2).&put;
say("/");
put 1|2;
say("/");
'
