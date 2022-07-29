
$RAKUBIN -v

cat << 'HERE' > $cache_dir/code.raku

class Zub {
	method a {
		say "a";
	}
	method b {
		say "b";
	}
}

role Buz {
	has Zub $.zub;

	method zub(--> Zub)  handles <a b> {
		$!zub //= Zub.new;
	}
}

class Foo does Buz {

}

Foo.new.a;

HERE

$RAKUBIN $cache_dir/code.raku 2>&1
