cat $root_dir/task.bash

$RAKUBIN -v

echo "as_repl >>>"

cat  << 'HERE' | $RAKUBIN --repl-mode=interactive 2>&1
note "abc" #`[[ bladiebla [[  bladiebla ]], "some more";
HERE

echo "<<<"

echo "as_script >>>"

cat  << 'HERE' | $RAKUBIN --repl-mode=non-interactive 2>&1
note "abc" #`[[ bladiebla [[  bladiebla ]], "some more";
HERE

echo "<<<"
