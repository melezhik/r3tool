#!bash

cat $root_dir/task.bash

echo "<<<";
$RAKUBIN -e 'my $s = <42>; $s.substr-rw(0,1) = "3"; say $s' 2>&1
echo ">>>";
