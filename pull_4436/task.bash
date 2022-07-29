#!bash


$RAKUBIN -v

cat << 'CODE' | $RAKUBIN  -
role Foo[Any ::T]         {  }
role Bar[::T] does Foo[T] {  }
CODE
