cat $root_dir/task.bash

$RAKUBIN -v


cat << 'HERE' | $RAKUBIN -
my @data = (
   { val => 1, name => 'alpha', },
   { val => 2, name => 'beta',  },
   { val => 3, name => 'gamma', },
   { val => 4, name => 'delta', },
);

say "ex1: ", @data.deepmap({$_ ~~ Numeric ?? $_+10 !! $_ });

say "ex2: ", @data.deepmap({ $_+10 if $_ ~~ Numeric });

HERE
