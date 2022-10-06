set -e

$RAKUBIN -v

cat << 'HERE' > $cache_dir/code.raku

say "--";
say [1, IterationEnd, 2];
say (1, IterationEnd, 2);
say gather { # Careful not to listify here.
    take 1;
    take IterationEnd;
    take 2;
};
say "--";

HERE

$RAKUBIN $cache_dir/code.raku
