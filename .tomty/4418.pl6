
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/4418]";
say "==================================================";


=begin tomty
%(
  tag => $["inline-perl", "open", "question"]
);
=end tomty

task-run "4418";

