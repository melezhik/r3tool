cat $root_dir/task.bash

$RAKUBIN -v

cat << 'HERE' > $cache_root_dir/prepare.raku 

BEGIN use lib my $libdir = $?FILE.IO.parent(1).add("lib");

constant MODS = 20;

note "Pre-gen modules...";
my @meta_libs;
for 'L1', 'L2' -> $l {
    my $subdir = $libdir.add("Req/$l");
    unless $subdir.d {
        $subdir.mkdir;
    }
    for ^MODS -> $idx {
        my $modname = $idx.fmt('Mod%04d');
        my $modf = $libdir.add("Req/" ~ $l ~ "/" ~ $modname ~ ".rakumod");
        @meta_libs.push: qq«"Req::{$l}::$modname": "lib/Req/{$l}/$modname.rakumod"»;
        my $fullname = "Req::{$l}::$modname";
        unless $modf.e {
            $modf.spurt: qq:to/MODCODE/;
            unit module $fullname;
            our \$ID = $idx;
            MODCODE
        }
    }
}
"META6.json".IO.spurt: qq:to/META6/;
\{
    "name": "require-test",
    "version": "0.0.5",
    "authors": [
        "Vadim Belman"
    ],
    "auth": "zef:vrurg",
    "provides": \{
{ @meta_libs.join(",\n").indent(8) }
    }
}
META6
exit;

HERE

cat << 'HERE' > $cache_root_dir/code.raku

#!/usr/bin/env raku -I.

constant MODS = 20;
constant BATCHES = 100;

BEGIN $*SCHEDULER = ThreadPoolScheduler.new: :max_threads(MODS*BATCHES+32);

my $starter = Promise.new;
my @ready;
my @workers;

sub resolve-package(Str:D $pkg) is raw {
    #::{$pkg}:exists ?? ::($pkg) !! do require ::($pkg) 
    require ::($pkg);
    ::($pkg)
}

my $fmt-lock = Lock.new;
sub modtest($l, $idx, $ready) {
    @ready.push: $ready;
    @workers.push: start {
        $ready.keep;
        await $starter;
        my $modname = $fmt-lock.protect: { "Req::" ~ $l ~ "::" ~ $idx.fmt('Mod%04d') };
        CATCH {
            note "IDX: ", $idx.WHICH if .message.contains('Directive');
            .rethrow
        }
        require ::($modname);
        my $mod := ::($modname);
        #my $mod := resolve-package($modname);
        #note $modname, " -- ", 
        my $id = $mod.WHO<$ID>;
        die "Bad ID " ~ $id.WHICH unless $id.defined && $id == $idx;
    }
}

note "Starting workers...";
for ^BATCHES {
    for 'L1', 'L2' -> $l {
        for ^MODS -> $idx {
            modtest($l, $idx, Promise.new)
        }
    }
}

await @ready;
$starter.keep;
await @workers;

note "Done.";

HERE

cd $cache_root_dir

pwd

$RAKUBIN prepare.raku 2>&1

set +e

timeout 20 $RAKUBIN -I lib code.raku 2>&1

echo "exit code: " $?

