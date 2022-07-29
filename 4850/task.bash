
$RAKUBIN -v

$RAKUBIN -e '

my %h;

given "one".comb {
    when 3 { %h{.[0]} = { .[1] } }
}

say "[", %h<o>().raku, "]";

'
