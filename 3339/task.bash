cat $root_dir/task.bash

$RAKUBIN -v

echo "as_repl >>>"

cat  << 'HERE' | $RAKUBIN --repl-mode=interactive
note "abc" #`[[ bladiebla [[  bladiebla ]], "some more";
HERE

echo "<<<"

echo "as_script >>>"

cat  << 'HERE' | $RAKUBIN --repl-mode=non-interactive
note "abc" #`[[ bladiebla [[  bladiebla ]], "some more";
HERE

echo "<<<"
