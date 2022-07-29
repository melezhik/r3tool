
$RAKUBIN -v

$RAKUBIN -e '

my $p1 = Supply.interval(5);
my $p2 = Supply.interval(2);
my Channel $ch = Channel.new;

my $prom = start react {
     whenever $p1 -> $interval {
         say "5";
     }

     whenever $p2 -> $interval {
         say 2;
     }

     whenever $ch.closed {
         done;
     }

     whenever $ch -> $data {
         say "Data: $data";
     }
}

my $prom2 = start react {
     whenever $p1 -> $interval {
         $ch.send("5.2");
         $ch.close;
     }
     whenever $ch.closed {
         done;
     }
}

my @proms = ($prom, $prom2);
await Promise.allof(@proms);


'
