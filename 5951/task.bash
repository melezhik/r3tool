set -e

$RAKUBIN -v

cat  << 'HERE' | $RAKUBIN

my @tests =
  [],
  [[5, 6, 7],],
  [[1, 2, 3], [5, 4, 3]],
  [[1, 1, 1], [2, 2, 2], [3, 3, 3]];

my @valid = <FAIL FAIL OK OK>;

for @valid Z @tests -> ($is-valid, @case) {
    my @result = [»+«] @case;
    "$is-valid [»+«] {@case.raku} = {@result.raku}".say;
}

HERE

