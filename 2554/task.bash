cat $root_dir/task.bash

$RAKUBIN -v

$RAKUBIN -e 'my @a[Int] = 1,2,3; dd @a' 2>$cache_root_dir/out.err

echo "exit code: [$?]"

echo "== err"
cat $cache_root_dir/out.err
echo "==="
  
