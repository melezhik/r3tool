cat $root_dir/task.bash

$RAKUBIN -v

$RAKUBIN -e '5 [&say] 6' 2>$root_dir/warnings.txt

echo ">>>"
echo there should no be warnings here ...
echo if they are, there is a bug ...
cat $root_dir/warnings.txt
echo "<<<"


