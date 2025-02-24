
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/5678]";
say "==================================================";


=begin tomty
%(
  tag => $["rakuast", "closed"]
);
=end tomty

task-run "5678";

