
set -x
set -e

( time raku -e 'sub a(int @i) { }; my int @j = ^10; a(@j) for ^500000' ) 2>&1
( time raku -e 'sub a(@i) { }; my int @j = ^10; a(@j) for ^500000' ) 2>&1
