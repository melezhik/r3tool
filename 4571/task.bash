
$RAKUBIN -v

cat << 'HERE' > $cache_root_dir/code.raku

class ASNType {
    has $.type is rw; # NO BUG IF REMOVE `is rw`
}

my $new-type = Metamodel::ClassHOW.new_type(name => 'LDAPMessage');

my $attribute-type = ASNType.new(type => Int);

my $attr = Attribute.new(name => '$!protocol-op', type => $attribute-type.type, package => $new-type, :has_accessor); # NO BUG IF REMOVE `has_accessor`
$new-type.^add_attribute($attr);

$new-type.^compose;

say $new-type.new; # expected -> type, real:

# Invocant of method 'raku' must be an object instance of type 'Mu', not
# a type object of type 'ProtocolOp'.  Did you forget a '.new'?

HERE

$RAKUBIN $cache_root_dir/code.raku
