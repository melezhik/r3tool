set -e

$RAKUBIN -v

cat << 'HERE' > $cache_dir/code.raku

(1..1000000).hyper.map: { die unless $*DISTRO }

HERE

$RAKUBIN $cache_dir/code.raku
