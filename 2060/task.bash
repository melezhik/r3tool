
$RAKUBIN -v

$RAKUBIN -e 'my @a is List = 1, 2, 3; dd @a; @a = 4,5,6; dd @a' 2>$cache_root_dir/out.err

echo "exit code: [$?]"

echo "== err"
cat $cache_root_dir/out.err
echo "==="
  
