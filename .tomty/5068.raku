
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/5068]";
say "==================================================";


=begin tomty
%(
  tag => $["closed","notabug"]
);
=end tomty

task-run "5068";

