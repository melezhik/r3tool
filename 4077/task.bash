cat $root_dir/task.bash

(echo 'my $x=1;'; echo 'my $x=1;'; echo '4;') | $RAKUBIN 2>&1
