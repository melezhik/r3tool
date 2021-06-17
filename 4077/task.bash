cat $root_dir/task.bash

(echo 'my $x=1;'; echo 'my $x=1;'; echo '4;') | raku 2>&1
