
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/4389]";
say "==================================================
";

=begin tomty
%(
  tag => $["open", "fresh", "modules", "filesystem"]
);
=end tomty

if %*ENV<USER> eq "root" {
  say "skip for root user";
} else {
  task-run "4389";
}

