set -e

$RAKUBIN -v

cd $cache_dir

touch --date=@1000 foo.txt

cat << 'HERE' > code.raku

say "foo.txt".IO.created

HERE

$RAKUBIN code.raku
