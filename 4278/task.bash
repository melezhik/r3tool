cat $root_dir/task.bash

$RAKUBIN -v

cat << 'HERE' > $cache_root_dir/main.raku
use Main;
HERE

cat << 'HERE' > $cache_root_dir/Main.rakumod

module Main {
    sub MAIN (
        DateTime(Str) :f(:$from) = ~Date.today.DateTime.earlier(:1day),
        DateTime(Str) :t(:$to) where * > $from = ~Date.today.DateTime,
    ) is export {
        say "$from - $to";
    }
}

HERE

$RAKUBIN -I $cache_root_dir $cache_root_dir/main.raku
