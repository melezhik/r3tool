cat $root_dir/task.bash

$RAKUBIN -v

cat << 'HERE' > $cache_dir/code.raku

use v6.e.PREVIEW; 
dd ^10000 .map: { last slip(42,66) if $_ == 5; $_ }; 
say "time: ", now - INIT now; 

HERE

$RAKUBIN $cache_dir/code.raku
