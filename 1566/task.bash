set -e

$RAKUBIN -v

cat << 'HERE' > $cache_dir/code.raku
my &func = &max;
say func([3, 5, 2]);    # OUTPUT: 5

# OR

sub foo(&func, |c) {
    return func(|c);
}

say foo(&max, [3, 5, 2]);    # OUTPUT: 5
HERE

$RAKUBIN $cache_dir/code.raku
